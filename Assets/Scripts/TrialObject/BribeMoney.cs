using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class BribeMoney : MonoBehaviour
{
    private GameObject bribeArea;
    private Vector3 targetPos;
    // 钱袋子移动位置
    private Vector3 moveInPos;
    private Vector3 moveOutPos;

    private UIExchangeDrag uiExchangeDrag;

    private float durationTime = 0.5f;

    private BirdManager birdManager;

    public bool hasTakenBribe = false;

    private GameObject rejectGb;
    public Image rejectImage;
    public Animator animator;

    private void Awake() {
        bribeArea = GameObject.Find("BribeBag");
        moveInPos = GameObject.Find("BribeBagMoveInPos").transform.position;
        moveOutPos = GameObject.Find("BribeBagStartPos").transform.position;
        bribeArea.transform.position = moveOutPos;

        targetPos = GameObject.Find("BribeMoneyMoveInPos").transform.position;
        birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
        uiExchangeDrag = GetComponent<UIExchangeDrag>();
        uiExchangeDrag.boundaryCheck = false;

        rejectGb = GameObject.Find("BribeReject");
        rejectImage = rejectGb.transform.GetChild(0).GetComponent<Image>();
        animator = rejectGb.GetComponent<Animator>();
    }

    private void Start() {
        // 显示贿赂
        gameObject.SetActive(true);
        bribeArea.SetActive(true);

        transform.DOMove(targetPos, 0.8f).OnComplete(() => {
            uiExchangeDrag.boundaryCheck = true;
        }).SetAutoKill();

        // 元宝丢下声音
        AudioManager.Instance.PlaySFX("YuanBaoDrop");
    }

    /// <summary>
    /// Called when the mouse enters the GUIElement or Collider.
    /// </summary>
    void OnMouseEnter()
    {
        
        rejectImage.gameObject.SetActive(true);
        animator.enabled = true;
        bribeArea.transform.DOMove(moveInPos, durationTime).SetAutoKill();
    }

    private void OnMouseExit() {

        rejectImage.gameObject.SetActive(false);
        animator.enabled = false;
        bribeArea.transform.DOMove(moveOutPos, durationTime).SetAutoKill();
    }


    /// <summary>
    /// Sent when another object enters a trigger collider attached to this
    /// object (2D physics only).
    /// </summary>
    /// <param name="other">The other Collider2D involved in this collision.</param>
    private void OnTriggerEnter2D(Collider2D other) {
        Debug.Log("Enter");
        if (other.gameObject.tag == "bag") {
            // 收下贿赂声音
            AudioManager.Instance.PlaySFX("MoneyReceive");

            hasTakenBribe = true;
            TrailCalculator.isBribeSubmit = true;
            PlayerData.Instance.fame += TrialInfoManager.Instance.currentNpcInfo.bribe[0];
            PlayerData.Instance.affection += TrialInfoManager.Instance.currentNpcInfo.bribe[1];
            // if (BirdManager.Instance.isEyeOpen) {
            //     // moneyUI.ShowAddText(moneyValue, true);
            //     // TODO：名望、情义值变更

            //     // 接受贿赂后计算布尔值也为真
            //     Destroy(gameObject);
            //     bribeArea.transform.DOMove(moveOutPos, durationTime);
            //     // TODO：这里需要获取npc的id或者序号,金翎对话
            //     // BirdManager.Instance.BirdTalk(BirdManager.Instance.BirdDialogue(FlowDataManager.Instance.currentNpcData.id, BirdStage.Bribe), BirdStage.Bribe);
            // }
            // else {
            //     // moneyUI.ShowAddText(moneyValue, false);
            //     // TODO：名望、情义值变更
                
                
            // }
            // 收下贿赂后，金翎会进行对哈
            // TODO：获取npc的id，找到对应金翎的对话

            // 改变玩家的情义值和名望值
            string birdTalk = birdManager.BirdDialogue((int)TrialInfoManager.Instance.currentNpcInfo.id, BirdStage.Bribe);
            birdManager.BirdTalk(birdTalk, BirdStage.Bribe);
            
            Destroy(gameObject);
            bribeArea.transform.DOMove(moveOutPos, durationTime).SetAutoKill();
            rejectImage.gameObject.SetActive(false);
            animator.enabled = false;
            
        }
    }

    public void BagMoveOut() {
        bribeArea.transform.DOMove(moveOutPos, durationTime).SetAutoKill();
    }
    
}
