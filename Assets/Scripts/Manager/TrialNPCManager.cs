using System;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public enum TrailStage {
    Trial,
    Resurrection,
    Evidence,
    Bribe,
    Complete
}

public class TrialNPCManager : MonoBehaviour
{

    public static  NPCInkJosnInfo npcInkJosnInfo;
    // 当前npc名字
    public static string currentNPC;

    // 画押按钮
    public static Button fingerButton;

    // 现阶段npc拥有的证物数量
    private int npcEvidentNum = 3;
    private int currentEvidentNum = 0;

    public class TrialStageArgs: EventArgs {
        public TrailStage trailStage;

        public TrialStageArgs(TrailStage stage) {
            trailStage = stage;
        }
    }

    public static EventHandler<TrialStageArgs> OnTrialStageChanged;

    public FlowManager flowManager;

    private TimerManager timerManager = new TimerManager();
    private int timerID;

    private void Awake() {
        timerManager.Init();
        fingerButton = GameObject.Find("FingerButton").GetComponent<Button>();
    }

    private void Start() {
        // 开始审判对话
        fingerButton.onClick.AddListener(() => {
            // currentNPC = FlowDataManager.Instance.currentNpcData.npcName;
            string inkName = InkInfoManager.Instance.NPCinkStageInfo(currentNPC, InkStage.Trial);
            DialogueManager.Instance.CacheInkFile(inkName, 0);
            if (FlowDataManager.Instance.currentNpcData.npcObjection == NpcIsObjection.No) {
                fingerButton.image.sprite = Resources.Load<Sprite>("UI/FingerComplete");
            }
            fingerButton.enabled = false;
        });

        // 绑定事件 
        DialogueManager.Instance.OnStoryEnd += TraiStoryEnd;
        OnTrialStageChanged += TrailStageChanged;

    }

    /// <summary>
    /// Update is called every frame, if the MonoBehaviour is enabled.
    /// </summary>
    void Update()
    {
        timerManager.Update();
    }


    // 对话结束触发阶段转换
    private void TraiStoryEnd(object sender, InkStageInfoArgs inkStageInfoArgs) {
        InkStageInfo inkStageInfo = inkStageInfoArgs.inkStageInfo;
        InkStage inkStage = inkStageInfo.inkStage;
        switch (inkStage) {
            // 进入请求还阳模式
            case InkStage.Trial:
                OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Resurrection));
                // 酆都文牒初始化
                GameObject tempryGoHome = Instantiate(Resources.Load<GameObject>("Prefab/TempryGoHome"));
                tempryGoHome.transform.position = new Vector3(240, -7, 0);
                break;
            // 进入证物模式：
            case InkStage.Resurrection:
                OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Evidence));
                break;
            // 进入贿赂
            case InkStage.Evidence:
                

                currentEvidentNum++;
                if (currentEvidentNum >= npcEvidentNum) {
                    OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Bribe));
                }
                
                break;
            // 进入判决
            case InkStage.Bribe:
                //TODO: 贿赂逻辑：
                OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Complete)); 
                break;
            // 判决结束，返回审核
            case InkStage.TrialComplete:
                // TODO: 播动画，然后跳转场景与结点
                timerID = timerManager.Schedule(JumpToJudge, 3, 0);
                // JumpToJudge();
                break;

        }
    }

    private void TrailStageChanged(object sender, TrialStageArgs trailStageArgs) {
        TrailStage stage = trailStageArgs.trailStage;
        string inkName;
        switch (stage) {
            case TrailStage.Trial:
                break;
            // 短暂还阳请求
            case TrailStage.Resurrection:
                inkName = InkInfoManager.Instance.NPCinkStageInfo(currentNPC, InkStage.Resurrection);
                // npc没有短暂反阳环节，直接跳到下一环节。
                if (inkName == null) {
                    OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Evidence));
                    return;
                }
                
                // 3秒后出现反阳对话
                DialogueManager.Instance.CacheInkFile(inkName, 0, 3);
                break;
                
            case TrailStage.Evidence:
                
                inkName = InkInfoManager.Instance.NPCinkStageInfo(currentNPC, InkStage.Evidence);
                if (inkName == null) {// npc没有证物环节，直接跳到下一环节。
                    OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Bribe));
                    // 结算的证物置真
                    TrailCalculator.isEvidenceSubmit = true;
                }
                else {
                    // 开启逆转裁判阶段
                }
                break;
            case TrailStage.Bribe:
                // npc没有贿赂环节，直接跳到下一环节。
                
                inkName = InkInfoManager.Instance.NPCinkStageInfo(currentNPC, InkStage.Bribe);
                if (inkName == null) {
                    OnTrialStageChanged?.Invoke(this, new TrialStageArgs(TrailStage.Complete));
                    TrailCalculator.isBribeSubmit = true;
                    return;
                }
                GameObject gb = Instantiate(Resources.Load<GameObject>("Prefab/BribeMoney"));
                gb.transform.position = new Vector3(124, 25, 0);
                DialogueManager.Instance.CacheInkFile(inkName, 0, 3);
                break;
            case TrailStage.Complete:
                break;
        }
    }


    private void OnDestroy() {
        DialogueManager.Instance.OnStoryEnd -= TraiStoryEnd;
        OnTrialStageChanged -= TrailStageChanged;
    }

    private void JumpToJudge() {
        timerManager.Unschedule(timerID);

        // 销毁所有对话
        ChatPanelManager.Instance.DestoryAllBubble();

        // 如果存在短暂反阳，需要销毁
        GameObject tempryGoHome = GameObject.Find("TempryGoHome(Clone)");
        if (tempryGoHome) {
            Destroy(tempryGoHome);
        }

        // UI隐藏显示
        GameObject mainCamera = Camera.main.gameObject;
        UIController uiController = GameObject.Find("UIController").GetComponent<UIController>();
        uiController.HideTrialUI();

        // 镜头移动
        mainCamera.transform.DOMove(new Vector3(0, 0 , -100), 1f).OnComplete(() => {
            uiController.ShowJudgeUI();

            // 结点跳转
            flowManager.JumpToNode();
            flowManager.currentNode.Execute();
        });
        GameObject npcHead = GameObject.Find("PeopleKuang");
        npcHead.transform.DOMove(new Vector3(-53.65f, npcHead.transform.position.y, 0), 1f);
        GameObject smallArea = GameObject.Find("Xiaotu");
        smallArea.transform.DOMove(new Vector3(-23.5577f, smallArea.transform.position.y, 0), 1f);

        // 跳转到下一结点
        if(FlowDataManager.Instance.todayCurrentNum == FlowDataManager.Instance.todayTotalnum)
        {
            TrialNode tempNode = flowManager.currentNode as TrialNode;
            tempNode.EndCondition = true;
        }
        
    }

    public static void TrialNPCManagerInit() {
        fingerButton.enabled = true;
        fingerButton.image.sprite = Resources.Load<Sprite>("UI/FingerStart");
    }

}
