using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LitJson;
using System;
using TMPro;
using DG.Tweening;

public class BirdDialogueEvnetArgs:EventArgs {
    public BirdStage stage;
    public BirdDialogueEvnetArgs(BirdStage birdStage) {
        stage = birdStage;
    }
}

public class BirdManager : MonoBehaviour
{

    [SerializeField] private GameObject BirdDialoguePannel;
    [SerializeField] private TextMeshProUGUI birdDialogueText;

    // public static BirdManager Instance;

    public bool isEyeOpen = true;
    private TextAsset inkBirdJson;
    private List<BirdDialogueInfo> birdDialogueInfos;

    private Dictionary<int, BirdDialogueInfo> birdDialogueDic = new Dictionary<int, BirdDialogueInfo>();
    private Dictionary<Tuple<int, int>, BirdDialogueInfo> birdDialogueIdxDic = new Dictionary<Tuple<int, int>, BirdDialogueInfo>();

    private Dictionary<string, BirdDialogueInfo> birdDialogueNameDic = new Dictionary<string, BirdDialogueInfo>();
    private TimerManager timerManager = new TimerManager();
    private int timerID;

    public static event EventHandler<BirdDialogueEvnetArgs> OnBirdTalkEnd;

    private BirdStage birdStage;

    private void Awake() {
        // if (Instance != null) {
        //     throw new Exception("BirdManager.Instance has exsited!");
        // }
        // Instance = this;
        // Tips：
        inkBirdJson = Resources.Load<TextAsset>(InfoPath.inkBirdExcelPath);
        
        birdDialogueInfos = JsonMapper.ToObject<List<BirdDialogueInfo>>(inkBirdJson.ToString());

        foreach (var birdDialogueInfo in birdDialogueInfos) {
            birdDialogueDic.Add((int)birdDialogueInfo.ID, birdDialogueInfo);
            birdDialogueIdxDic.Add(new Tuple<int, int>((int)birdDialogueInfo.Day, (int)birdDialogueInfo.Index), birdDialogueInfo);
            birdDialogueNameDic.Add(birdDialogueInfo.Name, birdDialogueInfo);
        }

        // BirdDialoguePannel = GameObject.Find("BirdTalk");
        // birdDialogueText = BirdDialoguePannel.GetComponentInChildren<TextMeshProUGUI>();

        BirdDialoguePannel.SetActive(false);
        timerManager.Init();
    }

    private void Start() {
        TrialStageManager.OnTrialStageChanged += OnTrialStageChangedEvent;
    }

    private void OnTrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage == TrialStage.Quest) {
            string str = BirdDialogue((int)TrialInfoManager.Instance.currentNpcInfo.id, BirdStage.TrialStart);
            BirdTalk(str, BirdStage.TrialStart);
        }
        else if (trialStageChangedArgs.trialStage == TrialStage.Trial) {
            string str = BirdDialogue((int)TrialInfoManager.Instance.currentNpcInfo.id, BirdStage.Special);
            if (str is null) {
                return;
            }
            BirdTalk(str, BirdStage.Special);
        }
    }

    private void Update() {
        timerManager.Update();
    }

    void BirdEyeOpen() {
        isEyeOpen = true;
    }

    void BirdEyeClose() {
        isEyeOpen = false;
    }

    public string BirdDialogue(int ID, BirdStage birdStage) {
        BirdDialogueInfo birdInfo;
        if (birdDialogueDic.ContainsKey(ID)) {
            birdInfo = birdDialogueDic[ID];
            return CheckBirdDialogue(birdInfo, birdStage);
        }
        else {
            Debug.LogWarning("ID为" + ID + "不存在金翎的对话");
        }
        return null;
    }

    public string BirdDialogue(int day, int index, BirdStage birdStage) {
        Tuple<int, int> idx = new Tuple<int, int>(day, index);
        BirdDialogueInfo birdInfo;
        if (birdDialogueIdxDic.ContainsKey(idx)) {
            birdInfo = birdDialogueIdxDic[idx];
            return CheckBirdDialogue(birdInfo, birdStage);
        }
        else {
            Debug.LogWarning("天数与序号" + idx + "不存在金翎的对话");
        }
        return null;
    }

    public string BirdDialogue(string npcName, BirdStage birdStage) {
        BirdDialogueInfo birdInfo;
        if (birdDialogueNameDic.ContainsKey(npcName)) {
            birdInfo = birdDialogueNameDic[npcName];
            return CheckBirdDialogue(birdInfo, birdStage);
        }
        else {
            Debug.LogWarning("姓名为" + npcName + "不存在金翎的对话");
        }
        return null;
    }


    private string CheckBirdDialogue(BirdDialogueInfo birdInfo, BirdStage birdStage) {
        switch (birdStage) {
            case BirdStage.LeftPreTalk:
                return birdInfo.LeftPreTalk;
            case BirdStage.LeftComparisons:
                return birdInfo.LeftComparisons;
            case BirdStage.LeftEvidenceUndo:
                return birdInfo.LeftEvidenceUndo;
            case BirdStage.LeftComparisonsUndo:
                return birdInfo.LeftComparisonsUndo;
            case BirdStage.BothUndo:
                return birdInfo.BothUndo;
            case BirdStage.Correct:
                return birdInfo.Reward;
            case BirdStage.Wrong:
                return birdInfo.Penalty;
            case BirdStage.Return:
                return birdInfo.Return;
            case BirdStage.Special:
                return birdInfo.SpecialPerson;
            case BirdStage.TrialStart:
                return birdInfo.TrialStart;
            case BirdStage.Bribe:
                return birdInfo.Bribe;
        }
        Debug.LogWarning(birdInfo.Name + "不存在" + birdStage + "阶段的对话");
        return null;
    }


    public void BirdTalk(string dialogue, BirdStage birdStage) {
        timerManager.Unschedule(timerID);
        BirdDialoguePannel.SetActive(true);
        int length = dialogue.Length;
        ///增加打字机动画
        var t = DOTween.To(() => string.Empty, value => birdDialogueText.text = value, dialogue, length * 0.05f).SetEase(Ease.Linear).OnComplete(() => {
                this.birdStage = birdStage;
                timerID = timerManager.Schedule(HideText, 2f, 0);
            });
        // //富文本
        t.SetOptions(true).SetAutoKill();
        AudioManager.Instance.PlaySFX("Bird");
    }
    
    public void BirdTalk(string dialogue, string count, BirdStage birdStage) {
        timerManager.Unschedule(timerID);
        BirdDialoguePannel.SetActive(true);
        int length = dialogue.Length;
        dialogue = String.Format(dialogue, count);
        ///增加打字机动画
        var t = DOTween.To(() => string.Empty, value => birdDialogueText.text = value, dialogue, length * 0.05f).SetEase(Ease.Linear).OnComplete(() => {
                this.birdStage = birdStage;
                timerID = timerManager.Schedule(HideText, 2f, 0);
            });
        // //富文本
        t.SetOptions(true).SetAutoKill();
        
    }

    private void HideText() {
        BirdDialoguePannel.SetActive(false);
        timerManager.Unschedule(timerID);
        OnBirdTalkEnd?.Invoke(this, new BirdDialogueEvnetArgs(birdStage));
    }

    private void OnDestroy() {

        TrialStageManager.OnTrialStageChanged -= OnTrialStageChangedEvent;
    }
    

}
