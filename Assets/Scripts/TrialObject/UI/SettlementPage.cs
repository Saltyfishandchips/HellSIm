using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using LitJson;
using System;
using DG.Tweening;
using UnityEngine.SceneManagement;

public class SettlementPage : MonoBehaviour
{
    [SerializeField] private GameObject settlementPage;
    [SerializeField] private GameObject settlementRelationship;
    // 结局Text
    [SerializeField] private TextMeshProUGUI endText;
    // 属性Text
    // 名望
    [SerializeField] private TextMeshProUGUI propertyJustice;
    // 情义
    [SerializeField] private TextMeshProUGUI propertyPopular;

    [SerializeField] private Button endButton;

    [SerializeField] private GameObject EndCGBG;
    [SerializeField] private GameObject EndCG;

    // 结局记录
    private List<NPCEnding> npcEndings;
    private Dictionary<int, NPCEnding> npcEndingsIdDic = new Dictionary<int, NPCEnding>();
    private GameObject gb;

    // 初始名望值与初始情义值
    private int initFame;
    private int initPopular;
    private void Awake() {
        // 生成
        gb = Resources.Load<GameObject>("Prefab/Day" + TrialTotalInfo.currentDay.ToString() + "_SettlementRelationship");
        gb = Instantiate(gb);
        gb.transform.SetParent(settlementRelationship.transform);
        gb.transform.localScale = Vector3.one;
        gb.transform.localPosition = Vector3.zero;

        settlementPage.SetActive(false);

        initFame = PlayerData.Instance.fame;
        initPopular = PlayerData.Instance.affection;
        endButton.enabled = false;

        TextAsset textAsset = Resources.Load<TextAsset>(InfoPath.npcEndingPath);
        npcEndings = JsonMapper.ToObject<List<NPCEnding>>(textAsset.ToString());
        foreach (var npcEnding in npcEndings) {
            npcEndingsIdDic.Add((int)npcEnding.id, npcEnding);
        }
    }
    // Start is called before the first frame update
    private void Start()
    {
        TrialStageManager.OnTrialStageChanged += OnTrialStageChangedEvent;

        endButton.onClick.AddListener(() => {
            DOTween.KillAll();
            // 进入二维码界面
            // 进入加载界面
            // SceneLoader.LoadScene("EndTestScene");
            // SceneManager.LoadScene("EndTestScene");
            EndCGBG.SetActive(true);
            EndCG.SetActive(true);
            EndCG.GetComponent<Animator>().enabled = false;
            if (LanguageManager.isEnglish) {
                EndCG.GetComponent<Image>().sprite = Resources.Load<Sprite>("UI/EndCG/EN/EndCG" + (TrialTotalInfo.currentDay - 1));
            }
            else {
                EndCG.GetComponent<Image>().sprite = Resources.Load<Sprite>("UI/EndCG/EndCG" + (TrialTotalInfo.currentDay - 1));
            }
            
            EndCG.GetComponent<Animator>().enabled = true;
        });
    }

    // 更新结局
    private void RefreshEnding() {
        // 更新结局
        string str = null;
        for (int i = 0; i < TrailCalculator.endList.Count; ++i) {
            str += CheckEndStr(TrailCalculator.endList[i]);
            str += "\n";
        }

        endText.text = null;
        int length = str.Length;

        // 英文缩小结局字体
        if (LanguageManager.isEnglish) {
            endText.fontSize = 18;
        }

        endText.DOText(str, length * 0.05f).SetEase(Ease.Linear).SetAutoKill().OnComplete(() => {
            endButton.enabled = true;
        });
    }

    private void RefreshProperty() {
        if (LanguageManager.isEnglish) {
            propertyJustice.text = "Reputation: "  + CheckValue(initFame) + "<sprite=0>" + CheckValue(PlayerData.Instance.fame);
            propertyPopular.text = "Friendship: " +  CheckValue(initPopular) + "<sprite=0>" + CheckValue(PlayerData.Instance.affection);
        }
        else {
            propertyJustice.text = "名望: "  + CheckValue(initFame) + "<sprite=0>" + CheckValue(PlayerData.Instance.fame);
            propertyPopular.text = "情义: " +  CheckValue(initPopular) + "<sprite=0>" + CheckValue(PlayerData.Instance.affection);
        }
        

    }

    private void OnTrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage == TrialStage.End) {
            
            RefreshEnding();
            RefreshProperty();
            SettlementPageShow();
            gb.GetComponent<SettlementRelationship>().ReFreshReward();
        }
    }

    // 显示结算页面
    private void SettlementPageShow() {
        settlementPage.SetActive(true);
    }

    private string CheckEndStr(Tuple<int, Tuple<int, int>> tuple) {
        
        int id = tuple.Item1;
        int side = tuple.Item2.Item1;
        int endIdx = tuple.Item2.Item2;
        NPCEnding ending = CheckNPCEnding(id);
        if (side == 0) {
            return ending.nothing;
        }
        else if (side == 1) {
            switch (endIdx) {
                case 1:
                    return ending.reward1;
                case 2:
                    return ending.reward2;
                case 3:
                    return ending.reward3;
                default:
                    break;
            }
        }
        else if (side == -1)
        {
             switch (endIdx) {
                case 1:
                    return ending.punish1;
                case 2:
                    return ending.punish2;
                case 3:
                    return ending.punish3;
                default:
                    break;
            }
        }
        return null;
    }

    private string CheckValue(int value) {
        if (value >= 0 && value < 40) {
            if (LanguageManager.isEnglish) {
                return "Low";
            }
            return "低";
        }
        else if (value >= 40 && value < 60) {
            if (LanguageManager.isEnglish) {
                return "Medium";
            }
            return "中";
        }
        else {
            if (LanguageManager.isEnglish) {
                return "High";
            }
            return "高";
        }
    }

    // 使用ID查询NPC结局
    private NPCEnding CheckNPCEnding(int id) {
        if (npcEndingsIdDic.ContainsKey(id)) {
            return npcEndingsIdDic[id];
        }
        else {
            Debug.LogError(id + "不存在结局!");
            return null;
        }
    }


    private void OnDestroy() {
        TrialStageManager.OnTrialStageChanged -= OnTrialStageChangedEvent;
    }

}
