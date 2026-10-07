using UnityEngine.UI;
using UnityEngine;
using System.Collections.Generic;
using LitJson;
using TMPro;
using DG.Tweening;

public class QuestStageManger : MonoBehaviour
{
    public static Button fingerButton;
    public GameObject QuestFail;
    // private GameObject seal;

    // 单个证据信息
    private static Dictionary<int, EvidenceInfo> evidenceInfoDic = new Dictionary<int, EvidenceInfo>();
    private static Dictionary<int, List<EvidenceInfo>> evidenceListInfoDic = new Dictionary<int, List<EvidenceInfo>>();
    
    // 一天的所有证物list
    public static List<EvidenceInfo> dayEvidenceList;
    
    // 单个ink所需的证物信息list
    public static  List<EvidenceInfo> currentEvidenceList = new List<EvidenceInfo>();
    public static int currentEvidenceIdx = 0;

    public GameObject toggle;
    public GameObject doubtBoard;
    private TextMeshProUGUI[] doubtTexts;
    
    // 证物背景板
    public EvidenceBox evidenceBox;

    public Transform dialoguePanel;

    // 质询背景
    public Image questBG;

    private void Awake() {
        
        // 读取证物信息
        TextAsset textAsset = Resources.Load<TextAsset>(InfoPath.evidenceInfoPath);
        List<EvidenceInfo> evidenceInfos = JsonMapper.ToObject<List<EvidenceInfo>>(textAsset.ToString());
        foreach (var evidenceInfo in evidenceInfos) {
            evidenceInfoDic.Add((int)evidenceInfo.id, evidenceInfo);
        }

        // 根据天数存储证物的列表
        textAsset = Resources.Load<TextAsset>(InfoPath.evidenceListInfoPath);
        List<QusetEvidenceListInfo> qusetEvidenceListInfos = JsonMapper.ToObject<List<QusetEvidenceListInfo>>(textAsset.ToString());
        foreach (var qusetEvidenceListInfo in qusetEvidenceListInfos) {
            string[] ids = qusetEvidenceListInfo.evidenceList.Split(",");
            List<EvidenceInfo> evidenceInfoList = new List<EvidenceInfo>();
            foreach (var id in ids) {
                EvidenceInfo evidenceInfo = CheckEvidence(int.Parse(id));
                evidenceInfoList.Add(evidenceInfo); 
            }
            evidenceListInfoDic.Add((int)qusetEvidenceListInfo.day, evidenceInfoList);
        }  

        // TODO：天数改变为变量
        dayEvidenceList = evidenceListInfoDic[TrialTotalInfo.currentDay];
        
        // seal = GameObject.Find("FengduSeal");
        fingerButton = GameObject.Find("FingerButton").GetComponent<Button>();
        fingerButton.onClick.AddListener(() => {
            // 惊堂木音效
            AudioManager.Instance.PlaySFX("Wood");
            QuestStart();
            fingerButton.enabled = false;
        });
        
        // 质询环节的三个疑点
        doubtTexts = doubtBoard.GetComponentsInChildren<TextMeshProUGUI>();
    }

    private void Start() {
        TrialStageManager.OnTrialStageChanged += QuestEnd;

        // 生成证物
        evidenceBox.GenEvidence();
        doubtBoard.SetActive(false);
        
    }

    private void QuestStart() {
        // BGM设置
        AudioManager.Instance.PlayBackgroundMusic("Quest1");

        // seal.SetActive(false);
        toggle.SetActive(false);
        doubtBoard.SetActive(true);

        doubtTexts[0].text = TrialInfoManager.Instance.currentNpcInfo.npcTopic1;
        doubtTexts[1].text = TrialInfoManager.Instance.currentNpcInfo.npcTopic2;
        doubtTexts[2].text = TrialInfoManager.Instance.currentNpcInfo.npcTopic3;

        string inkName = InkInfoManager.Instance.NPCinkStageInfo((int)TrialInfoManager.Instance.currentNpcInfo.id, InkStage.Evidence);
        TextAsset textAsset = Resources.Load<TextAsset>(InfoPath.inkPath + inkName);
        EvidenceDialogueManager.Instance.InitializedStroy(inkName, textAsset);

        string evidence = (string)EvidenceDialogueManager.Instance.currentStory.variablesState["currentEvidenceList"];
        if (evidence != "") {
            string[] tempList = evidence.Split(",");
            foreach (var str in tempList) {
                currentEvidenceList.Add(CheckEvidence(int.Parse(str)));
            }
        }
        
        

        evidenceBox.EvidenceListShow(true);
        fingerButton.gameObject.SetActive(false);

        // 证据错误触发回调,回到之前的段落
        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("backNode", (string varName, object newValue) => {
            string node = (string) EvidenceDialogueManager.Instance.currentStory.variablesState["node"];
            EvidenceDialogueManager.Instance.currentStory.ChoosePathString(node);
        });

        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("playerHealth", (string varName, object newValue) => {
            // 
            if ((int)newValue <= 0) {   
                // 显示黑屏
                QuestFail.SetActive(true);
                currentEvidenceIdx = 0;
                // 重新进入对话
                QuestFail.GetComponentInChildren<Button>().onClick.AddListener(() => {
                    QuestFail.SetActive(false);
                    QuestStart();
                }); 
            }
        });

        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("shackCamera", (string varName, object newValue) => {
            // 相机抖动
            dialoguePanel.DOShakePosition(1f, 10).SetAutoKill();
            
        });

        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("questBG", (string varName, object newValue) => {
            // 望乡台背景
            if ((bool)newValue) {
                // 切换望乡台背景音乐
                AudioManager.Instance.PlayBackgroundMusic("WxtBGM");
                questBG.sprite = Resources.Load<Sprite>("UI/WXBG");
            }
            else {
                questBG.sprite = Resources.Load<Sprite>("UI/TrialBG");
            }
            
        });
        

        // 三个话题
        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("topic1", (string varName, object newValue) => {
            doubtTexts[0].text = "<s>" + doubtTexts[0].text + "</s>";
        });

        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("topic2", (string varName, object newValue) => {
            doubtTexts[1].text = "<s>" + doubtTexts[1].text + "</s>";
        });

        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("topic3", (string varName, object newValue) => {
            doubtTexts[2].text = "<s>" + doubtTexts[2].text + "</s>";
        });


        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("BGMChange", (string varName, object newValue) => {
            // 望乡台背景
            if ((bool)newValue) {
                AudioManager.Instance.PlayBackgroundMusic("Quest2");
            }
            
        });
        
    }

    private void QuestEnd(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage > TrialStage.Quest) {
            // seal.SetActive(true);
            questBG.sprite = Resources.Load<Sprite>("UI/TrialBG");
            evidenceBox.EvidenceListShow(false);
            toggle.SetActive(true);

            doubtBoard.SetActive(false);

            // 清空ink证物list以及索引
            currentEvidenceList.RemoveRange(0, currentEvidenceList.Count);
            currentEvidenceIdx = 0;

            // 淡出
            // AudioManager.Instance.FadeOutBackgroundMusic(1.0F);
            AudioManager.Instance.PlayBackgroundMusic("Main2");
        }
        if (trialStageChangedArgs.trialStage == TrialStage.PreTalk) {
            // 惊堂木出现
            fingerButton.gameObject.SetActive(true);
        }

        
    }


    public static EvidenceInfo CheckEvidence(int id) {
        if (evidenceInfoDic.ContainsKey(id)) {
            return evidenceInfoDic[id];
        }
        else {
            Debug.LogWarning(id + "没有证物信息");
            return null;
        }
    }

    public static List<EvidenceInfo> CheckEvidenceList(int day) {
        if (evidenceListInfoDic.ContainsKey(day)) {
            return evidenceListInfoDic[day];
        }
        else {
            Debug.LogWarning(day + "没有证物信息");
            return null;
        }
    }

    private void OnDestroy() {
        TrialStageManager.OnTrialStageChanged -= QuestEnd;
        evidenceInfoDic.Clear();
        evidenceListInfoDic.Clear();
    }

    
}
