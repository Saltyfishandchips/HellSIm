using System;
using System.Collections;
using System.Collections.Generic;
using LitJson;
using UnityEngine;

public class TrialInfoManager : MonoBehaviour
{
    public static TrialInfoManager Instance;
    public TrialObituary currentNpcInfo;
    // 右侧生死簿的信息
    private Dictionary<string, TrialObituary> npcTrialObituaryDic = new Dictionary<string, TrialObituary>();
    private Dictionary<int, TrialObituary> npcIdTrialObituaryDic = new Dictionary<int, TrialObituary>();
    private Dictionary<Tuple<int, int>, TrialObituary> npcDayIdxTrialObituaryDic = new Dictionary<Tuple<int, int>, TrialObituary>();

    private void Awake() {
        if (Instance != null) {
            Debug.LogError("TrailInfoManager has already existed!");
        }
        Instance = this;

        TextAsset trialObituary = Resources.Load<TextAsset>(InfoPath.trialObituaryPath);
        List<TrialObituary> TrialObituaryList = JsonMapper.ToObject<List<TrialObituary>>(trialObituary.ToString());

        foreach (var info in TrialObituaryList) {
            npcTrialObituaryDic.Add(info.npcName, info);
            npcIdTrialObituaryDic.Add((int)info.id, info);
            npcDayIdxTrialObituaryDic.Add(new Tuple<int, int>((int)info.day, (int)info.index), info);

            string[] str = info.bribeStr.Split(",");
            info.bribe = new int[] {int.Parse(str[0]), int.Parse(str[1])};

            str = info.rewardStr.Split(",");
            info.reward = new int[] {int.Parse(str[0]), int.Parse(str[1])};

            str = info.penaltyStr.Split(",");
            info.penalty = new int[] {int.Parse(str[0]), int.Parse(str[1])};

            str = info.nothingStr.Split(",");
            info.nothing = new int[] {int.Parse(str[0]), int.Parse(str[1])};
        }

        // 初始化当前NPC信息
        currentNpcInfo = CheckNPCTrialObituaryInfo(TrialTotalInfo.currentDay, TrialTotalInfo.currentDayIndex);
        TrialTotalInfo.currentNPCId = (int)currentNpcInfo.id;
    }

    private void Start() {
        // 给DoTween扩容
        DG.Tweening.DOTween.SetTweensCapacity(tweenersCapacity:4000, sequencesCapacity:200);
    }

    public TrialObituary CheckNPCTrialObituaryInfo(int day, int idx) {
        Tuple<int, int> tuple = new Tuple<int, int>(day, idx);
        if (npcDayIdxTrialObituaryDic.ContainsKey(tuple)) {
            return npcDayIdxTrialObituaryDic[tuple];
        }
        else {
            Debug.LogWarning("序号与" + tuple + "不存在TrialObituary的信息");
            return null;
        }
    }

    public TrialObituary CheckNPCTrialObituaryInfo(string npcName) {
        if (npcTrialObituaryDic.ContainsKey(npcName)) {
            return npcTrialObituaryDic[npcName];
        }
        else {
            Debug.LogWarning(npcName + "不存在TrialObituary的信息");
            return null;
        }
        
    }

    public TrialObituary CheckNPCTrialObituaryInfo(int id) {
        if (npcIdTrialObituaryDic.ContainsKey(id)) {
            return npcIdTrialObituaryDic[id];
        }
        else {
            Debug.LogWarning(id + "不存在TrialObituary的信息");
            return null;
        }
        
    }

    public bool TrialStageInit() {
        TrialTotalInfo.currentDayIndex++;
        currentNpcInfo = CheckNPCTrialObituaryInfo(TrialTotalInfo.currentDay, TrialTotalInfo.currentDayIndex);
        if (currentNpcInfo != null) {
            
        }
        else {
            if (TrialTotalInfo.currentDay <= 2) {
                // 第二天的npc，因此不能继续
                // TODO：更新下一天的npc序号，连接不同天数的故事
                TrialTotalInfo.currentDayIndex = 1;
                TrialTotalInfo.currentDay++;

                return false;
            }
            // 找不到下一个NPC
            // TODO：进入结局
            return false;
        }
        TrialTotalInfo.currentNPCId = (int)currentNpcInfo.id;
        return true;
    }

}
