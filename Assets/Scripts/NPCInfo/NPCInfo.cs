using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// 右侧审判的具体信息
public static class TrialTotalInfo {
    // 当前NPC的ID
    public static int currentNPCId = 1;
    // 当前天数 TODO:修改天数
    public static int currentDay = 0;
    // 当前天数NPC的Index
    public static int currentDayIndex = 1;
    // public static List<Tuple<int, Tuple<int, int>>> endList = new List<Tuple<int, Tuple<int, int>>>();
}

// 右侧生死簿信息
public class TrialObituary {
    public float id;
    public float day;
    public float index;
    public string npcName;
    // 命数
    public string npcFate;
    // 功德
    public string npcMerits;
    // 罪业
    public string npcGuilty;
    // 话题，现在限制在3个
    public string npcTopic1;
    public string npcTopic2;
    public string npcTopic3;

    public string bribeStr;
    public string rewardStr;
    public string penaltyStr;
    public string nothingStr;

    public string npcSprite;

    public int[] bribe;
    public int[] reward;
    public int[] penalty;
    public int[] nothing;
}

// 单个证据信息
public class EvidenceInfo {
    public float id;
    public string npcName;
    public string evidenceName;
    public string sprite;
    public string describe;

}

// 质询时所需的证物列表信息
public class QusetEvidenceListInfo {
    public float day;
    public float evidenceNum;
    public string evidenceList;

}

// 结局信息
public class NPCEnding {
    public float id;
    public float day;
    public float index;
    public string npcName;
    public string nothing;
    public string reward1;
    public string reward2;
    public string reward3;
    public string punish1;
    public string punish2;
    public string punish3;
}