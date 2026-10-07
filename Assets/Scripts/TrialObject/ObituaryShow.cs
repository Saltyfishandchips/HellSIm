using UnityEngine.UI;
using TMPro;
using UnityEngine;

public class ObituaryShow : MonoBehaviour
{
    [SerializeField] private GameObject rightTextList;
    [SerializeField] private GameObject topics;
    private Image npcSprite;
     // 画押按钮
    public static Button fingerButton;
    private GameObject npcSpriteGb;
    private Animator animator;

    private void Awake() {
        fingerButton = GameObject.Find("FingerButton").GetComponent<Button>();
        fingerButton.enabled = false;
        npcSpriteGb = GameObject.Find("NPCSprite");
        npcSprite = npcSpriteGb.GetComponent<Image>();
        animator =  npcSpriteGb.GetComponent<Animator>();
    }   

    private void Start() {
        ReFreshObituray(new TrialStageChangedArgs(TrialStage.PreTalk));
        TrialStageManager.OnTrialStageChanged += TrialStageChangedEvent;
        DialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;
        
        // 更新左上角npc立绘
        npcSprite.sprite = Resources.Load<Sprite>("TrialCharacterSprite/" + TrialTotalInfo.currentDay + "_" + TrialTotalInfo.currentDayIndex);  
    }

    private void TrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage == TrialStage.End) {
            // 审判结束
            return;
        }
        ReFreshObituray(trialStageChangedArgs);
        // 更新下一个npc的生死簿
        if (trialStageChangedArgs.trialStage == TrialStage.PreTalk) {
            // 播放前日谈
            int npcID = (int)TrialInfoManager.Instance.currentNpcInfo.id;
            string inkName = InkInfoManager.Instance.NPCinkStageInfo(npcID, InkStage.Trial);
            DialogueManager.Instance.CacheInkFile(inkName, 0);

            // 更新左上角npc立绘
            npcSprite.sprite = Resources.Load<Sprite>("TrialCharacterSprite/" + TrialTotalInfo.currentDay + "_" + TrialTotalInfo.currentDayIndex);
            // npcSprite.sprite = Resources.Load<Sprite>(TrialInfoManager.Instance.currentNpcInfo.npcName);
        }
        else if (trialStageChangedArgs.trialStage == TrialStage.Quest) {
            // 可以开启审判阶段
            fingerButton.enabled = true;
        }
    }

    private void OnStoryEndEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        if (inkStageInfoArgs.inkStageInfo.inkStage == InkStage.TrialComplete) {
            // 右侧后日谈结束
            animator.SetBool("Exit", true);
            animator.enabled = true;
            
        }
    }

    // 更新生死簿
    private void ReFreshObituray(TrialStageChangedArgs trialStageChangedArgs) {
        TextMeshPro[] text = rightTextList.GetComponentsInChildren<TextMeshPro>();
        foreach (var tex in text) {
            tex.text = null;
        }
        TrialObituary trialObituary = TrialInfoManager.Instance.CheckNPCTrialObituaryInfo((int)TrialInfoManager.Instance.currentNpcInfo.id);
        // 姓名、命数、功德、罪业
        text[0].text = trialObituary.npcName;
        text[1].text = trialObituary.npcFate;
        // 质询完成后填写功德和罪业
        if (trialStageChangedArgs.trialStage > TrialStage.Quest) {
            text[2].text = trialObituary.npcMerits;
            text[3].text = trialObituary.npcGuilty;
        }
        

        // 三个话题
        text = topics.GetComponentsInChildren<TextMeshPro>();
        text[0].text = trialObituary.npcTopic1;
        text[1].text = trialObituary.npcTopic2;
        text[2].text = trialObituary.npcTopic3;
    }
    
    private void OnDestroy() {
        TrialStageManager.OnTrialStageChanged -= TrialStageChangedEvent;
        DialogueManager.Instance.OnStoryEnd -= OnStoryEndEvent;
    }
}
