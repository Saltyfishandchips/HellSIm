using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;
using TMPro;

public class FDWDCard : MonoBehaviour
{
    private GameObject originObject;
    private GameObject largerObject;
    private Transform parentTransform;
    // private Button fingerPrintButton;
    private Vector3 targetPos;
    private float durationTime = 1f;
    private float scaleFactor = 1.02f;
    private Vector3 originScale;
    private Vector3 largerScale;

    private TextMeshPro nameText;
    private TextMeshPro raceText;
    private SpriteRenderer npcSprite;

    private GameObject seal;

    private SpriteRenderer spriteRenderer;
    private void Awake() {
        originObject = transform.GetChild(0).gameObject;
        largerObject = transform.GetChild(1).gameObject;
        
        parentTransform = transform.parent;
        // fingerPrintButton = GameObject.Find("FingerButton").GetComponent<Button>();

        spriteRenderer = GetComponent<SpriteRenderer>();
        spriteRenderer.bounds = originObject.GetComponent<SpriteRenderer>().bounds;

        BoxCollider2D boxCollider2D = parentTransform.GetComponent<BoxCollider2D>();
        boxCollider2D.offset = new Vector2(0, 12);

        seal = GameObject.Find("Seal");
        seal.SetActive(false);

        // if (fingerPrintButton) {
        //     fingerPrintButton.onClick.AddListener(() => {
        //         canMove = true;
        //     });
        // }
        
        targetPos = GameObject.Find("FDWDMoveInPos").transform.position;

        originScale = transform.localScale;
        largerScale = transform.localScale * scaleFactor;

        // 获取文字TextMesh
        nameText = largerObject.transform.GetChild(0).GetComponent<TextMeshPro>();
        raceText = largerObject.transform.GetChild(1).GetComponent<TextMeshPro>();
        npcSprite = largerObject.transform.GetChild(2).GetComponent<SpriteRenderer>();
        // 重新生成酆都文牒时，可以贴贴纸
        StickerBox.hasSealed = false;
    }

    /// <summary>
    /// Start is called on the frame when a script is enabled just before
    /// any of the Update methods is called the first time.
    /// </summary>
    void Start()
    {
        parentTransform.transform.DOMove(targetPos, durationTime).OnComplete(() => {
            // 播放扔下文件的音效
            AudioManager.Instance.PlaySFX("DropDown");
            parentTransform.GetComponent<UIExchangeDrag>().boundaryCheck = true;
        });

        InfoInit((int)TrialInfoManager.Instance.currentNpcInfo.id);
    }

    private void Update() {
        // if (canMove) {
        //     parentTransform.transform.DOMove(targetPos, durationTime).OnComplete(() => {
        //         canMove = false;
        //         parentTransform.GetComponent<UIExchangeDrag>().boundaryCheck = true;
        //     });
        // }
        RaycastCheck();
    }

    private void RaycastCheck() {
        Vector3 mousePos = Input.mousePosition;
        mousePos.z = 10;

        Vector3 screenPos = Camera.main.ScreenToWorldPoint(mousePos);

        RaycastHit2D hit = Physics2D.Raycast(screenPos, Vector2.zero);
        if (originObject.gameObject.activeInHierarchy) {
            ScaleChange(hit);
            ClickChange(hit);
        }
    }

    private void ScaleChange(RaycastHit2D hit2D) {
        if (hit2D && hit2D.transform.tag == "Fengduwendie") {    
            transform.localScale = largerScale;
        }
        else {
            transform.localScale = originScale;
        }
    }

    private void ClickChange(RaycastHit2D hit2D) {
        if (Input.GetMouseButton(0)) {
            if (hit2D && hit2D.transform.tag == "Fengduwendie") {
                // 酆都文牒展开音效
                AudioManager.Instance.PlaySFX("PickUp");

                SpriteRenderer spriteRenderer = GetComponent<SpriteRenderer>();
                spriteRenderer.bounds = largerObject.GetComponent<SpriteRenderer>().bounds;
                BoxCollider2D boxCollider2D = parentTransform.GetComponent<BoxCollider2D>();
                boxCollider2D.offset = Vector2.zero;
                originObject.SetActive(false);
                largerObject.SetActive(true);
            }
        }
    }

    // 显示酆都印章
    public void ShowSeal() {
        seal.SetActive(true);
        // 禁用贴纸
        StickerBox.hasSealed = true;
        
    }

    // TODO:初始化酆都文牒信息
    public void InfoInit(int id) {
        PassPortInfo passPortInfo = InkInfoManager.Instance.CheckNPCPassPortInfo(id);
        nameText.text = passPortInfo.npcName;
        raceText.text = passPortInfo.npcRace;
        // NOTE:之后npc的头像图片位置改变时，这里也需要改变读取位置
        Sprite sprite = Resources.Load<Sprite>(InfoPath.fdwdSpritePath + passPortInfo.day + "_" + passPortInfo.idx);
        npcSprite.sprite = sprite;
        npcSprite.transform.localScale = new Vector3 (1.8f, 1.8f, 1);
    }

    public void InfoInit(int day, int index) {
        
    }

    public void InfoInit(string npcName) {
        PassPortInfo passPortInfo = InkInfoManager.Instance.CheckNPCPassPortInfo(npcName);
        nameText.text = passPortInfo.npcName;
        raceText.text = passPortInfo.npcRace;
        // NOTE:之后npc的头像图片位置改变时，这里也需要改变读取位置
        // Sprite sprite = Resources.Load<Sprite>(InfoPath.fdwdSpritePath + npcName);
        Sprite sprite = Resources.Load<Sprite>(InfoPath.fdwdSpritePath + passPortInfo.day + "_" + passPortInfo.idx);
        npcSprite.sprite = sprite;
        npcSprite.transform.localScale = new Vector3 (1.8f, 1.8f, 1);
    }
}
