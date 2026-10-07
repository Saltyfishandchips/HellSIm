using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// 计算审判提交的文件
public class TrailCalculator : MonoBehaviour
{
    // 酆都文牒
    public static bool isFDWDSubmit = false;
    // 证物是否提交
    public static bool isEvidenceSubmit = false;
    // 未接受的贿赂是否提交
    public static bool isBribeSubmit = false;

    // 短暂反阳是否提交（非必须）
    private static bool isTempryTicketSubmit = false;
    private static bool hasCal = false;
    private string inkName;

    // 记录npc的结局，id,<选边, idx>
    public static List<Tuple<int, Tuple<int, int>>> endList = new List<Tuple<int, Tuple<int, int>>>();

    private BirdManager birdManager;

    // 拒绝贿赂的事件
    public static event EventHandler OnBribeReject;
    
    private void Start() {
        birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
    }


    // Update is called once per frame
    void Update()
    {
        // if (isBribeSubmit && isFDWDSubmit && isEvidenceSubmit && !hasCal) 
        if (isBribeSubmit && isFDWDSubmit && isEvidenceSubmit && !hasCal) {
            hasCal = true;
            // TODO:计算结果值
            
            // if (isTempryTicketSubmit) {
            //     // 短暂反阳
            //     inkName = InkInfoManager.Instance.NPCinkStageInfo(TrialNPCManager.currentNPC, InkStage.TrialComplete);
            //     DialogueManager.Instance.CacheInkFile(inkName, 3);
            // }

            inkName = InkInfoManager.Instance.NPCinkStageInfo((int)TrialInfoManager.Instance.currentNpcInfo.id, InkStage.TrialComplete);
            if (RewardSticks.stickerLists.Count == 0) {
                // 没有奖励或是惩罚
                
                DialogueManager.Instance.CacheInkFile(inkName, 4);
                // [名， 情]
                PlayerData.Instance.fame += TrialInfoManager.Instance.currentNpcInfo.nothing[0];
                PlayerData.Instance.affection += TrialInfoManager.Instance.currentNpcInfo.nothing[1];
            }
            else if (RewardSticks.currentChosenSide) {
                // 奖励
                DialogueManager.Instance.CacheInkFile(inkName, 1);

                PlayerData.Instance.fame += TrialInfoManager.Instance.currentNpcInfo.reward[0];
                PlayerData.Instance.affection += TrialInfoManager.Instance.currentNpcInfo.reward[1];

            }
            else if (!RewardSticks.currentChosenSide){
                // 惩罚
                DialogueManager.Instance.CacheInkFile(inkName, 2);

                PlayerData.Instance.fame += TrialInfoManager.Instance.currentNpcInfo.penalty[0];
                PlayerData.Instance.affection += TrialInfoManager.Instance.currentNpcInfo.penalty[1];
            }
            // TODO：记录玩家对每个NPC的赏罚 endList已经记录



        }
    }

    /// <summary>
    /// Sent when another object enters a trigger collider attached to this
    /// object (2D physics only).
    /// </summary>
    /// <param name="other">The other Collider2D involved in this collision.</param>
    void OnTriggerEnter2D(Collider2D other)
    {
        

        if (other.name == "Fengduwendie(Clone)") {
            if (!StickerBox.hasSealed || !isBribeSubmit) {
                return;
            }
            AudioManager.Instance.PlaySFX("PaperDropDown");
            // 关闭酆都文牒提交
            GameObject.Find("Passport").transform.GetChild(0).gameObject.SetActive(false);

            isFDWDSubmit = true;
            // 记录结局
            RecordEnd();
            Destroy(other.gameObject);
        }
        else if (other.name == "BribeMoney(Clone)") {
            isBribeSubmit = true;
            
            other.gameObject.GetComponent<BribeMoney>().BagMoveOut();
            other.gameObject.GetComponent<BribeMoney>().animator.enabled = false;
            other.gameObject.GetComponent<BribeMoney>().rejectImage.gameObject.SetActive(false);

            string[] str = {"新来的，真是清正廉明呀！", "不错不错，新来的！", "(在某处金翎好感度+ 1)"};
            string[] str_EN = {"Newcomer, truly upright and incorruptible!", "Good Job!Newcomer!", "(Somewhere, Jin Ling's favorability +1)"};
            if (LanguageManager.isEnglish) {
                birdManager.BirdTalk(str_EN[UnityEngine.Random.Range(0, 3)], BirdStage.Bribe);
            }
            else {
                birdManager.BirdTalk(str[UnityEngine.Random.Range(0, 3)], BirdStage.Bribe);
            }
            
            Destroy(other.gameObject);

            // 发送拒绝贿赂的委托
            OnBribeReject.Invoke(this, EventArgs.Empty);
        }
        else if (other.name == "TempryGoHome(Clone)") {
            isTempryTicketSubmit = true;
            Destroy(other.gameObject);
        }
    }

    public static void Init() {
        isFDWDSubmit = false;
        isBribeSubmit = false;
        isTempryTicketSubmit = false;
        hasCal = false;

        // 清空玩家的贴纸列表
        RewardSticks.stickerLists.RemoveRange(0, RewardSticks.stickerLists.Count);
    }

    private void RecordEnd() {
        int idx = 0;
        if (RewardSticks.stickerLists.Count > 0) {
            //NOTE:现阶段只有一张，因此可以直接用[0]表示
            RewardSticks rewardSticks = RewardSticks.stickerLists[0].GetComponent<RewardSticks>();
            // 记录序号
            idx = rewardSticks.idx;
        }

        if (RewardSticks.stickerLists.Count == 0) {
            endList.Add(new Tuple<int, Tuple<int, int>>((int)TrialInfoManager.Instance.currentNpcInfo.id, new Tuple<int, int>(0, idx)));
        }
        else if (RewardSticks.currentChosenSide) {
            endList.Add(new Tuple<int, Tuple<int, int>>((int)TrialInfoManager.Instance.currentNpcInfo.id, new Tuple<int, int>(1, idx)));
        }
        else if (!RewardSticks.currentChosenSide){
            endList.Add(new Tuple<int, Tuple<int, int>>((int)TrialInfoManager.Instance.currentNpcInfo.id, new Tuple<int, int>(-1, idx)));
        }
    }

    private void OnDestroy() {
        endList.RemoveRange(0, endList.Count);
    }
}
