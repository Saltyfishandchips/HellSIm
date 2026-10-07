using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;

public class RewardSticks : MonoBehaviour
{
    // 文件编号
    public int idx;
    private bool isInBox = false;
    private bool isReward = false;
    private Texture2D mouseTexture;
    private TextMeshPro stickText;
    private bool isSticker = false;

    // 当前鼠标选中贴纸的序号
    public static int currentChosenIdx = 0;
    public static bool currentChosenSide = true;
    public static List<GameObject> stickerLists = new List<GameObject>();
    public static bool listSide = false;

    private  GameObject stikerGrid;

    private void Awake() {
        stickText = GetComponentInChildren<TextMeshPro>();
    }

    private void Update() {
        // if (stikerGrid is null) {
            
        // }
        stikerGrid = GameObject.Find("StikerGrid");

        if (StickerBox.hasSealed) {
            return;
        }

        if (Input.GetMouseButtonUp(0)) {
            Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
            Ray2D ray = new Ray2D(mousePos, Vector2.zero);
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, Vector2.zero, Mathf.Infinity, 1 << LayerMask.NameToLayer("Default"));  

            if (!hit) {
                // Debug.Log(hit.collider.name != "RewardSticker(Clone)");
                Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
                currentChosenIdx = 0;
                isSticker = false;
            }
            if (isSticker && hit && hit.collider.name != "RewardSticker(Clone)" && hit.collider.name != "PunishSticker(Clone)") {
                Debug.Log(hit.collider.name);
                Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
                // 酆都文牒上添加贴纸
                if (hit.collider.name == "Fengduwendie(Clone)") {
                    if (listSide != currentChosenSide) {
                        DestoryStickerLists();
                    }

                    if (stickerLists.Count >= 1) {
                        isSticker = false;
                        return;
                    }
                    
                    

                    GameObject instance;
                    if (currentChosenSide) {
                        instance = Instantiate(Resources.Load<GameObject>("Prefab/RewardSticker"));
                        RewardSticks rewardSticks = instance.GetComponent<RewardSticks>();
                        rewardSticks.SetStickerIdx(currentChosenIdx, false, true);
                        
                        // 播放贴纸拿起声音
                        AudioManager.Instance.PlaySFX("StickerDown");
                    }
                    else {
                        instance = Instantiate(Resources.Load<GameObject>("Prefab/PunishSticker"));
                        RewardSticks rewardSticks = instance.GetComponent<RewardSticks>();
                        rewardSticks.SetStickerIdx(currentChosenIdx, false, false);

                        // 播放贴纸拿起声音
                        AudioManager.Instance.PlaySFX("StickerDown");
                    }
                    listSide = currentChosenSide;
                    instance.transform.localPosition = new Vector3(mousePos.x, mousePos.y, 0);
                    instance.transform.SetParent(stikerGrid.transform, true);  
                    stickerLists.Add(instance);
                }
                isSticker = false;
            }
        }
    }
    public void SetStickerIdx(int index, bool flag, bool reward) {
        idx = index;
        isInBox = flag; 
        isReward = reward;

        // 设置贴纸文字
        string text = null;
        if (isReward) {
            switch (idx) {
                case 1:
                    if (LanguageManager.isEnglish) {
                        text = "Small Reward";
                    }
                    else {
                        text = "阴间荣华安乐";
                    }
                    
                    break;
                case 2:
                    if (LanguageManager.isEnglish) {
                        text = "Medium Reward";
                    }
                    else {
                        text = "下世轮回添福";
                    }
                    break;
                case 3:
                    if (LanguageManager.isEnglish) {
                        text = "Large Reward";
                    }
                    else {
                    text = "六道轮回升阶";
                    }
                    break;
                default:
                    break;
            }
        } else {
            switch (idx) {
                case 1:
                    if (LanguageManager.isEnglish) {
                        text = "Small Punish";
                    }
                    else {
                        text = "阳间供养充公";
                    }
                    break;
                case 2:
                    if (LanguageManager.isEnglish) {
                        text = "Medium Punish";
                    }
                    else {
                        text = "堕入幽冥地狱";
                    }
                    break;
                case 3:
                    if (LanguageManager.isEnglish) {
                        text = "Large Punish";
                    }
                    else {
                        text = "六道轮回降阶";
                    }
                    break;
                default:
                    break;
            }
        }

        stickText.text = text;
    }

    private void OnMouseDown() {
        if (EventSystem.current.IsPointerOverGameObject()) {
            return;
        }

        if (StickerBox.hasSealed) {
            return;
        }
        if (!isInBox) {
            for (int i = 0; i < stickerLists.Count; ++i) {
                if (stickerLists[i] == gameObject) {
                    stickerLists.RemoveAt(i);
                    break;
                }
            }
            Destroy(gameObject);
            return;
        }
        // 播放贴纸拿起声音
        AudioManager.Instance.PlaySFX("StickerPickup");

        if (isReward) {
            mouseTexture = Resources.Load<Texture2D >("UI/RewardSticker");
            isSticker = true;
        }
        else {
            mouseTexture = Resources.Load<Texture2D >("UI/PunishSticker");
            isSticker = true;
        }
        
        // Texture2D cursorTexture = sprite.texture;
        Cursor.SetCursor(mouseTexture, Vector2.zero, CursorMode.Auto);
        if (isReward) {
            currentChosenSide = true;
        }
        else {
            currentChosenSide = false;
        }
        currentChosenIdx = idx;
        Debug.Log(idx);
    }


    /// <summary>
    /// OnMouseDrag is called when the user has clicked on a GUIElement or Collider
    /// and is still holding down the mouse.
    /// </summary>
    void OnMouseDrag()
    {
        if (EventSystem.current.IsPointerOverGameObject()) {
            return;
        }

        if (StickerBox.hasSealed) {
            return;
        }
        // if (!isInBox) {
        //     for (int i = 0; i < stickerLists.Count; ++i) {
        //         if (stickerLists[i] == gameObject) {
        //             stickerLists.RemoveAt(i);
        //             break;
        //         }
        //     }
        //     Destroy(gameObject);
        //     return;
        // }

        if (isReward) {
            mouseTexture = Resources.Load<Texture2D >("UI/RewardSticker");
            isSticker = true;
        }
        else {
            mouseTexture = Resources.Load<Texture2D >("UI/PunishSticker");
            isSticker = true;
        }
        
        // Texture2D cursorTexture = sprite.texture;
        Cursor.SetCursor(mouseTexture, Vector2.zero, CursorMode.Auto);
        if (isReward) {
            currentChosenSide = true;
        }
        else {
            currentChosenSide = false;
        }
        currentChosenIdx = idx;
        // Debug.Log(idx);

        
    }

    private void DestoryStickerLists() {
        for (int i = 0; i < stickerLists.Count; ++i) {
            Destroy(stickerLists[i]);
        }
        stickerLists.RemoveRange(0, stickerLists.Count);
    }
}
