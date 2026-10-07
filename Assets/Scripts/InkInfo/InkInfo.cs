using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class NPCInkJosnInfo{

    // npc下所有的ink信息
    public float Id;
    public float Day;
    public float Index;
    public string NpcName = null;
    //审核前日谈
    public string PreTalk = null;
    public string ComparisonTable = null;
    public string SpecialComparisonTable = null;
    public string JudgeCompelete = null;
    public string Trial = null;
    public string Resurrection = null;
    public string Evidence = null;
    public string Bribe = null;
    public string TrialComplete = null;

    // 预审单长对话
    public string Prefont = null;
}


public class BirdDialogueInfo {
    public float ID;
    public float Day;
    public float Index;
    public string Name;

    public string LeftPreTalk;
    public string LeftComparisons;

    public string LeftEvidenceUndo;
    public string LeftComparisonsUndo;
    public string BothUndo;


    public string Reward;
    public string Penalty;
    public string Return;
    public string SpecialPerson;
    public string TrialStart;
    public string Bribe;

}


// 记录单个Ink的相关信息
public class InkStageInfo {
    // ink是否可以多次触发
    public bool canMutliTrigger = false;
    // 对话是否已经触发
    public bool isTrigger = false;
    // ink属于哪一个阶段
    public InkStage inkStage;
    // ink的名字
    public string inkName;
    // ink所属的npc名字
    public string npcName;
    // public List<bool> memberTriggerlist = new List<bool>(10);
    public bool[] memberTriggerlist = new bool[20];
}

public enum InkStage {
    //审核前日谈
    PreTalk,
    // 对照表ink（需要根据玩家选择的toggle进行相应对话）
    ComparisonTable,
    // 异常鬼魂的没有路引选项,ink能够填写异常鬼魂登记表，需要记录玩家选项，会对游戏产生影响
    SpecialComparisonTable,
    // 审核结束，触发后日谈（这里也需要根据玩家选项触发对应ink的部分对话）
    JudgeCompelete,
    // 右侧开始，开始审判，即玩家点击指纹按钮。
    Trial,
    // npc无异议后，可能会出现反阳请求
    Resurrection,
    // 证物ink，需要玩家选择不同的证物触发对话
    Evidence,
    // 贿赂，两种选择只会触发一次
    Bribe,
    // 审判结束，根据玩家的选择触发相应对话
    TrialComplete,

    // 预审单长对话
    Prefont

}

public class InkChoiceEffectArgs:EventArgs {
    public string choiceEffect;

    public InkChoiceEffectArgs(string choiceEffect) {
        this.choiceEffect = choiceEffect;
    }
}

public class InkStageInfoArgs:EventArgs {
    public string inkName;
    public InkStageInfo inkStageInfo;

    public InkStageInfoArgs(string inkName, InkStageInfo inkStageInfo) {
        this.inkName = inkName;
        this.inkStageInfo = inkStageInfo;
    }
}

// 金翎对话阶段
public enum BirdStage {
    // 左侧前日谈
    LeftPreTalk,
    // 证物未触发，对照表未触发，两者都未触发时，金翎提示
    LeftEvidenceUndo,
    LeftComparisonsUndo,
    BothUndo,
    // 左侧对照表
    LeftComparisons,
    Correct,
    Wrong,
    Return,
    Special,
    // 右侧前日谈
    TrialStart,
    Bribe
}

// 酆都文牒信息
public class PassPortInfo {
    public float id;
    public float day;
    public float idx;
    public string npcName;
    public string npcRace;
    public string spriteName;
}

