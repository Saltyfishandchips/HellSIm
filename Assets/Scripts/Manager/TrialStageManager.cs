using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum TrialStage {
    // 前日谈
    PreTalk,
    // 质询阶段
    Quest,
    // 贿赂阶段
    Bribe,
    // 审判阶段
    Trial,
    // 结算阶段
    End
}

public class TrialStageChangedArgs: EventArgs {
    public TrialStage trialStage;
    public TrialStageChangedArgs(TrialStage trialStage) {
        this.trialStage = trialStage;
    }
}

public class TrialStageManager : MonoBehaviour
{
    // 审判当前阶段
    public static TrialStage currentTrialStage;
    public static event EventHandler<TrialStageChangedArgs> OnTrialStageChanged;

    private TimerManager timerManager = new TimerManager();
    private int timerID;

    private void Awake() {
        timerManager.Init();
    }

    private void Start() {
        DialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;
        EvidenceDialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;

        // 开始时刻
        currentTrialStage = TrialStage.PreTalk;
        // 2s后开始调用delegete
        timerID = timerManager.Schedule(FirstTimeInvoke, 2, 0);
        AudioManager.Instance.PlaySFX("ToTheTrial");

        // BGM设置
        AudioManager.Instance.PlayBackgroundMusic("Main2");
    }

    private void Update() {
        timerManager.Update();
    }

    private void OnStoryEndEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        // 对话结束
        InkStage inkStage = inkStageInfoArgs.inkStageInfo.inkStage;
        switch (inkStage) {
            case InkStage.Trial: // 前日谈结束
                currentTrialStage = TrialStage.Quest;
                OnTrialStageChanged?.Invoke(this, new TrialStageChangedArgs(TrialStage.Quest)); // 进入质询
                break;
            case InkStage.Evidence: // 质询结束
                TrailCalculator.isEvidenceSubmit = true;
                if (InkInfoManager.Instance.NPCinkStageInfo((int)TrialInfoManager.Instance.currentNpcInfo.id, InkStage.Bribe) == null) { // NPC没有贿赂环节
                    currentTrialStage = TrialStage.Trial;
                    TrailCalculator.isBribeSubmit = true;
                    OnTrialStageChanged?.Invoke(this, new TrialStageChangedArgs(TrialStage.Trial)); // 进入审判
                }
                else {
                    currentTrialStage = TrialStage.Bribe;
                    OnTrialStageChanged?.Invoke(this, new TrialStageChangedArgs(TrialStage.Bribe)); // 进入贿赂
                }
                break;
            case InkStage.Bribe: // 贿赂结束
                currentTrialStage = TrialStage.Trial;
                OnTrialStageChanged?.Invoke(this, new TrialStageChangedArgs(TrialStage.Trial)); // 进入审判
                break;
            case InkStage.TrialComplete: // 后日谈结束
                // 跳转下一个人，或者结束
                if (TrialInfoManager.Instance.TrialStageInit()) {
                    timerID = timerManager.Schedule(FirstTimeInvoke, 6, 0);
                }
                else { // 直接结束
                    currentTrialStage = TrialStage.End; // 结算阶段
                    OnTrialStageChanged?.Invoke(this, new TrialStageChangedArgs(TrialStage.End));
                }
                break;
            default:
                Debug.LogError("TrialStageManager进入错误阶段, inkStage为" + inkStage);
                break;
        }
        
    }
    
    private void FirstTimeInvoke() {
        timerManager.Unschedule(timerID);
        ChatPanelManager.Instance.DestoryAllBubble();
        TrailCalculator.Init();
        OnTrialStageChanged?.Invoke(this, new TrialStageChangedArgs(TrialStage.PreTalk));
        currentTrialStage = TrialStage.PreTalk;
    }

    private void OnDestroy() {
        DialogueManager.Instance.OnStoryEnd -= OnStoryEndEvent;
    }
}
