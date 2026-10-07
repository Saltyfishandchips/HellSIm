using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseChanger : MonoBehaviour
{
    private string targetTag = "YinZhang";
    private string luyinObjectTag = "Luyin" ;
    private string yinZhangQuName = "YinZhangQu";
    private bool isFollowing;
    private GameObject selectedObject; 
    private Dictionary<GameObject, Vector3> originalLocalPositions = new Dictionary<GameObject, Vector3>(); // 存储所有物体的初始 localPosition
    public Sprite[] spritesRed;
    public UIController uIController;
    void Start()
    {
        isFollowing = false;
        selectedObject = null;

        GameObject[] objects = GameObject.FindGameObjectsWithTag(targetTag);
        foreach (GameObject obj in objects)
        {
            originalLocalPositions[obj] = obj.transform.localPosition;
        }
        uIController = GameObject.Find("UIController").GetComponent<UIController>();
    }

    void Update()
    {
        // 检测鼠标左键点击
        if (Input.GetMouseButtonDown(0))
        {
            if (isFollowing)
            {
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit[] hits = Physics.RaycastAll(ray);
                if (hits.Length != 0)
                {
                    foreach(RaycastHit hit in hits)
                    {
                        if (hit.collider != null && hit.collider.gameObject.CompareTag(luyinObjectTag) )
                        {

                            Transform childTransform = hit.collider.gameObject.transform.Find(yinZhangQuName);
                            if(childTransform.gameObject.activeInHierarchy)
                            {
                                switch(selectedObject.name)
                                {
                                    case "guiyin":
                                        childTransform.GetComponent<SpriteRenderer>().sprite = spritesRed[0];
                                        FlowDataManager.Instance.playerChoice = NpcResult.Guiyin;
                                        break;
                                    case "fanyang":
                                        childTransform.GetComponent<SpriteRenderer>().sprite = spritesRed[1];
                                        FlowDataManager.Instance.playerChoice = NpcResult.FanYang;
                                        break;
                                    case "yijiao":
                                        childTransform.GetComponent<SpriteRenderer>().sprite = spritesRed[2];
                                        FlowDataManager.Instance.playerChoice = NpcResult.YiJiao;
                                        break;
                                }
                                AudioManager.Instance.PlaySFX("Stamp");
                                Color temp = new Color(255.0f,255.0f,255.0f,255.0f);
                                childTransform.GetComponent<SpriteRenderer>().color = temp;
                            }
                        }
                    }
                    
                }

                // 如果正在跟随，再次点击则停止跟随并返回原位
                isFollowing = false;
                if (selectedObject != null)
                {
                    selectedObject.transform.localPosition = originalLocalPositions[selectedObject];
                    ChangeLayer(selectedObject,0);
                    ChangeOrderInLayer(selectedObject,0);
                    selectedObject = null; // 重置选中的物体
                    AudioManager.Instance.PlaySFX("ZhangPutDown");
                }
            }
            else
            {
                // 如果未在跟随，检查是否点击了带有指定标签的物体
                Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                if (Physics.Raycast(ray, out hit))
                {
                    GameObject hitObject = hit.collider.gameObject;
                    if (hitObject != null && hitObject.CompareTag(targetTag))
                    {
                        if(uIController.isZhangClick)
                        {
                            // 如果点击了带有指定标签的物体，则开始跟随鼠标
                            selectedObject = hit.collider.gameObject;
                            isFollowing = true;
                            ChangeLayer(selectedObject,7);
                            ChangeOrderInLayer(selectedObject,4);
                            AudioManager.Instance.PlaySFX("ZhangPutUp");
                        }
                    }
                }
            }
        }

        // 如果正在跟随，则让选中的物体跟随鼠标移动
        if (isFollowing && selectedObject != null)
        {
            Vector3 mousePosition = Input.mousePosition;
            mousePosition.z = Mathf.Abs(Camera.main.transform.position.z - selectedObject.transform.position.z); // 根据物体距离摄像机的距离设置z坐标
            Vector3 worldPosition = Camera.main.ScreenToWorldPoint(mousePosition);
            selectedObject.transform.position = worldPosition;
        }
    }

    public void ChangeLayer(GameObject go ,int layerIndex)
    {
        // 检查 layerIndex 是否在有效范围内
        if (layerIndex >= 0 && layerIndex < 32) // Unity 支持 0 到 31 的 layer
        {
            go.layer = layerIndex;
        }
        else
        {
            Debug.LogError("Layer index " + layerIndex + " is out of range!");
        }
    }
    public void ChangeOrderInLayer(GameObject go, int newOrder)
    {
        // 获取SpriteRenderer组件
        SpriteRenderer spriteRenderer = go.GetComponent<SpriteRenderer>();

        if (spriteRenderer != null)
        {
            spriteRenderer.sortingOrder = newOrder;
        }
        else
        {
            Debug.LogError("No SpriteRenderer component found on " + gameObject.name);
        }
    }
}
