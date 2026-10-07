using System.Collections.Generic;
using UnityEngine;
using LitJson;
using System;

public class InkInfoManager : MonoBehaviour
{   
    
    private List<NPCInkJosnInfo> npcInkInfos;
    private List<PassPortInfo> npcPassPortInfos;

    // 根据天数和序号获取npc的名字配置其下面的所有ink信息。
    private Dictionary<Tuple<int, int>, NPCInkJosnInfo> npcInkDic = new Dictionary<Tuple<int, int>, NPCInkJosnInfo>();
    private Dictionary<int, NPCInkJosnInfo> npcIDInkDic = new Dictionary<int, NPCInkJosnInfo>();
    // 根据npc名字和阶段获取对应的Ink名称
    private Dictionary<Tuple<string, InkStage>, string> inkStageDic = new Dictionary<Tuple<string, InkStage>, string>();

    private Dictionary<Tuple<int, InkStage>, string> inkStageIdDic = new Dictionary<Tuple<int, InkStage>, string>();


    // 通过Ink名称获取InkStageInfo的相关信息
    private Dictionary<string, InkStageInfo> inkStageInfoDic = new Dictionary<string, InkStageInfo>();
    // 酆都文牒信息
    private Dictionary<string, PassPortInfo> passportInfoDic = new Dictionary<string, PassPortInfo>();
    private Dictionary<int, PassPortInfo> passportInfoIdDic = new Dictionary<int, PassPortInfo>();

    public static InkInfoManager Instance;

    private List<InkStage> inkStageLists = new List<InkStage> {InkStage.PreTalk
                                                                ,InkStage.ComparisonTable
                                                                ,InkStage.SpecialComparisonTable
                                                                ,InkStage.JudgeCompelete
                                                                ,InkStage.Trial
                                                                ,InkStage.Resurrection
                                                                ,InkStage.Evidence
                                                                ,InkStage.Bribe
                                                                ,InkStage.TrialComplete
                                                                ,InkStage.Prefont};

    private void Awake() {
        if (Instance != null) {
            Debug.LogWarning("InkInfoManager has already exsited!");
        }
        Instance = this;

        // 读取npc的ink信息
        TextAsset textAsset = Resources.Load<TextAsset>(InfoPath.inkExcelPath);
        
        npcInkInfos = JsonMapper.ToObject<List<NPCInkJosnInfo>>(textAsset.ToString());
        Debug.Log(npcInkInfos[0]);

        foreach (var npcInfo in npcInkInfos) {
            npcInkDic.Add(new Tuple<int, int>((int)npcInfo.Day, (int)npcInfo.Index), npcInfo);
            npcIDInkDic.Add((int)npcInfo.Id, npcInfo);

            foreach (var inkStage in inkStageLists) {
                BuildInkStageInfo(npcInfo, inkStage);
            }     
        }


        // 读取酆都文牒上的信息
        textAsset = Resources.Load<TextAsset>(InfoPath.passPortInfoPath);
        npcPassPortInfos = JsonMapper.ToObject<List<PassPortInfo>>(textAsset.ToString());
        foreach (var npcInfo in npcPassPortInfos) {
            passportInfoDic.Add(npcInfo.npcName, npcInfo);
            passportInfoIdDic.Add((int)npcInfo.id, npcInfo);
        }

    }

    private void BuildInkStageInfo(NPCInkJosnInfo npcInfo, InkStage inkStage) {
        InkStageInfo inkStageInfo = new InkStageInfo{
            npcName = npcInfo.NpcName
        };

        // TODO: 之后有不同阶段的ink需要进行添加
        switch (inkStage) {
            case InkStage.PreTalk:
                if (npcInfo.PreTalk == null)
                    return;
                inkStageInfo.inkName = npcInfo.PreTalk;
                inkStageInfo.inkStage = InkStage.PreTalk;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.PreTalk), npcInfo.PreTalk);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.PreTalk), npcInfo.PreTalk);
                break;
            case InkStage.ComparisonTable:
                if (npcInfo.ComparisonTable == null)
                    return;
                inkStageInfo.canMutliTrigger = true;
                inkStageInfo.inkName = npcInfo.ComparisonTable;
                inkStageInfo.inkStage = InkStage.ComparisonTable;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.ComparisonTable), npcInfo.ComparisonTable);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.ComparisonTable), npcInfo.ComparisonTable);
                break;
            case InkStage.SpecialComparisonTable:
                if (npcInfo.SpecialComparisonTable == null)
                    return;
                inkStageInfo.canMutliTrigger = true;
                inkStageInfo.inkName = npcInfo.SpecialComparisonTable;
                inkStageInfo.inkStage = InkStage.SpecialComparisonTable;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.SpecialComparisonTable), npcInfo.SpecialComparisonTable);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.SpecialComparisonTable), npcInfo.SpecialComparisonTable);
                break;
            case InkStage.JudgeCompelete:
                if (npcInfo.JudgeCompelete == null)
                    return;
                inkStageInfo.inkName = npcInfo.JudgeCompelete;
                inkStageInfo.inkStage = InkStage.JudgeCompelete;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.JudgeCompelete), npcInfo.JudgeCompelete);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.JudgeCompelete), npcInfo.JudgeCompelete);
                break;
            case InkStage.Trial:
                if (npcInfo.Trial == null)
                    return;
                inkStageInfo.inkName = npcInfo.Trial;
                inkStageInfo.inkStage = InkStage.Trial;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.Trial), npcInfo.Trial);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.Trial), npcInfo.Trial);
                break;
            case InkStage.Resurrection:
                if (npcInfo.Resurrection == null)
                    return;
                inkStageInfo.inkName = npcInfo.Resurrection;
                inkStageInfo.inkStage = InkStage.Resurrection;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.Resurrection), npcInfo.Resurrection);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.Resurrection), npcInfo.Resurrection);
                break;    
            case InkStage.Evidence:
                if (npcInfo.Evidence == null)
                    return;
                inkStageInfo.canMutliTrigger = true;
                inkStageInfo.inkName = npcInfo.Evidence;
                inkStageInfo.inkStage = InkStage.Evidence;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.Evidence), npcInfo.Evidence);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.Evidence), npcInfo.Evidence);
                break;
            case InkStage.Bribe:
                if (npcInfo.Bribe == null)
                    return;
                inkStageInfo.inkName = npcInfo.Bribe;
                inkStageInfo.inkStage = InkStage.Bribe;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.Bribe), npcInfo.Bribe);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.Bribe), npcInfo.Bribe);
                break;
            case InkStage.TrialComplete:
                if (npcInfo.TrialComplete == null)
                    return;
                inkStageInfo.inkName = npcInfo.TrialComplete;
                inkStageInfo.inkStage = InkStage.TrialComplete;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.TrialComplete), npcInfo.TrialComplete);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.TrialComplete), npcInfo.TrialComplete);
                break;
            case InkStage.Prefont:
                if (npcInfo.Prefont == null)
                    return;
                inkStageInfo.inkName = npcInfo.Prefont;
                inkStageInfo.inkStage = InkStage.Prefont;
                inkStageIdDic.Add(new Tuple<int, InkStage>((int)npcInfo.Id, InkStage.Prefont), npcInfo.Prefont);
                inkStageDic.Add(new Tuple<string, InkStage>(npcInfo.NpcName, InkStage.Prefont), npcInfo.Prefont);
                break;

            default:
                Debug.LogWarning("ink不属于现有任意阶段");
                break;
        }

        inkStageInfoDic.Add(inkStageInfo.inkName, inkStageInfo);
    }

   

    public NPCInkJosnInfo NPCinkStageInfo(int id) {
        if (npcIDInkDic.ContainsKey(id)) {
            return npcIDInkDic[id];
        }
        else {
            Debug.LogWarning("ID为" + id + "的npc不存在!");
            return null;
        }
    }

     // 返回当前天数，对应序号npc的所有ink文件名
    public NPCInkJosnInfo CheckNPCInfo(int day, int index) {
        Tuple<int, int> key = new Tuple<int, int>(day, index);
        if (npcInkDic.ContainsKey(key)) {
            return npcInkDic[key];
        }
        else {
            Debug.LogWarning("天数为" + day + ",序号为" + index + "的npc不存在!");
            return null;
        }
    }

    // 返回对应npc名字，对应阶段的ink文件名
    public string NPCinkStageInfo(string npcName, InkStage inkStage) {
        Tuple<string, InkStage> key = new Tuple<string, InkStage>(npcName, inkStage);

        if (inkStageDic.ContainsKey(key)) {
            return inkStageDic[key];
        }
        else {
            Debug.LogWarning("NPC: " + npcName +"不存在状态在" + inkStage + "的Ink文件");
            return null;
        }
    }

    // 返回对应npc的ID，对应阶段的ink文件名
    public string NPCinkStageInfo(int id, InkStage inkStage) {
        Tuple<int, InkStage> key = new Tuple<int, InkStage>(id, inkStage);

        if (inkStageIdDic.ContainsKey(key)) {
            return inkStageIdDic[key];
        }
        else {
            Debug.LogWarning("ID: " + id +"不存在状态在" + inkStage + "的Ink文件");
            return null;
        }
    }

    // 返回某个ink文件的InkStageInfo，其中包含该ink的各类信息
    public InkStageInfo CheckInkStageInfo(string inkName) {
        if (inkStageInfoDic.ContainsKey(inkName)) {
            return inkStageInfoDic[inkName];
        }
        else {
            Debug.LogWarning(inkName +" 不存在InkStageInfo");
            return null;
        }
    }

    // 返回对应npc名字的酆都文牒信息
    public PassPortInfo CheckNPCPassPortInfo(string npcName) {
        if (passportInfoDic.ContainsKey(npcName)) {
            return passportInfoDic[npcName];
        }
        else {
            Debug.LogWarning(npcName +"没有酆都文牒信息!");
            return null;
        }
    }

    public PassPortInfo CheckNPCPassPortInfo(int npcID) {
        if (passportInfoIdDic.ContainsKey(npcID)) {
            return passportInfoIdDic[npcID];
        }
        else {
            Debug.LogWarning(npcID +"没有酆都文牒信息!");
            return null;
        }
    }
    
}
