using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DraggableUI : MonoBehaviour, IPointerClickHandler,IPointerDownHandler, IDragHandler, IPointerUpHandler
{ 
    public RectTransform rectTransform;
    public Vector3 initialPosition;
    private bool isFollowingMouse = false;
    private bool isDrag = false;
    public int tagId;
    public string targetTag = "DropZone";  // 目标区域的Tag
    private Canvas canvas;  // 需要获取Canvas用于坐标转换
    private ResultCheck resultCheck;
    void Awake()
    {
        canvas = GameObject.Find("Canvas").GetComponent<Canvas>();
        rectTransform = GetComponent<RectTransform>();
        initialPosition = rectTransform.localPosition;  // 记录初始位置
        
        resultCheck = GameObject.Find("ResultChecker").GetComponent<ResultCheck>();
    }

    void Update()
    {
        // 如果正在跟随鼠标，则更新位置
        if (isFollowingMouse)
        {
            // 将鼠标位置转换为UI元素的局部位置
            Vector2 localPoint;
            RectTransformUtility.ScreenPointToLocalPointInRectangle(canvas.transform as RectTransform, Input.mousePosition, canvas.worldCamera, out localPoint);
            rectTransform.localPosition = localPoint;
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if (isFollowingMouse)
        {
            // 第二次点击时，检查是否在放置区域内
            GameObject clickedObject = GetUIElementUnderMouse();
            if (clickedObject != null && clickedObject.CompareTag(targetTag))
            {
                TargetUI targetUI = clickedObject.GetComponent<TargetUI>();
                if(targetUI.isPlaced)
                {
                    //有东西
                    targetUI.placedGo.transform.localPosition = targetUI.placedGo.GetComponent<DraggableUI>().initialPosition;
                    targetUI.placedGo = rectTransform.gameObject;
                    targetUI.placedId = tagId;
                    isFollowingMouse = false;  // 停止跟随鼠标
                    rectTransform.localPosition = clickedObject.transform.localPosition;

                    resultCheck.occupyed = false;
                }
                else
                {
                    //如果区域内没有东西
                    isFollowingMouse = false;  // 停止跟随鼠标
                    rectTransform.localPosition = clickedObject.transform.localPosition;
                    targetUI.isPlaced = true;
                    targetUI.placedGo = rectTransform.gameObject;
                    targetUI.placedId = tagId;

                    resultCheck.occupyed = false;
                    AudioManager.Instance.PlaySFX("StickerUp");
                }
            }
            else
            {
                // 如果不在目标区域，回到初始位置
                rectTransform.localPosition = initialPosition;
                isFollowingMouse = false;
                resultCheck.occupyed = false;
            }
        }
        else
        {
            GameObject clickedObject = GetUIElementUnderMouse();
            if (clickedObject != null && clickedObject.CompareTag(targetTag))
            {
                TargetUI targetUI = clickedObject.GetComponent<TargetUI>();
                targetUI.isPlaced = false;
                targetUI.placedGo = null;
                targetUI.placedId = 0;
            }
            // 第一次点击时，开始跟随鼠标
            isFollowingMouse = true;
            resultCheck.occupyed = true;
            AudioManager.Instance.PlaySFX("StickerUp");
        }
    }

    // 获取鼠标下的UI元素
    private GameObject GetUIElementUnderMouse()
    {
        PointerEventData pointerData = new PointerEventData(EventSystem.current)
        {
            position = Input.mousePosition
        };

        var raycastResults = new System.Collections.Generic.List<RaycastResult>();
        EventSystem.current.RaycastAll(pointerData, raycastResults);

        foreach (RaycastResult result in raycastResults)
        {
            if (result.gameObject.CompareTag(targetTag))
            {
                return result.gameObject;
            }
        }

        return null;
    }

    // 替换UI元素位置
    private void ReplaceUI(GameObject targetObject)
    {
        RectTransform targetRect = targetObject.GetComponent<RectTransform>();

        // 交换当前位置
        Vector3 originalPosition = rectTransform.localPosition;
        rectTransform.localPosition = targetRect.localPosition;
        targetRect.localPosition = originalPosition;

        // 标记当前元素已放置，停止跟随
        isFollowingMouse = false;
    }


    public void OnPointerDown(PointerEventData eventData)
    {
        GameObject clickedObject = GetUIElementUnderMouse();
        if (clickedObject != null && clickedObject.CompareTag(targetTag))
        {
                TargetUI targetUI = clickedObject.GetComponent<TargetUI>();
                targetUI.isPlaced = false;
                targetUI.placedGo = null;
                targetUI.placedId = 0;
        }
        isDrag = true;
        isFollowingMouse = true;
        AudioManager.Instance.PlaySFX("StickerUp");
        resultCheck.occupyed = true;
        
        // 将鼠标位置转换为UI元素的局部位置
        Vector2 localPoint;
        RectTransformUtility.ScreenPointToLocalPointInRectangle(canvas.transform as RectTransform, Input.mousePosition, canvas.worldCamera, out localPoint);
        rectTransform.localPosition = localPoint;
    }

    public void OnDrag(PointerEventData eventData)
    {
        // 将鼠标位置转换为UI元素的局部位置
        Vector2 localPoint;
        RectTransformUtility.ScreenPointToLocalPointInRectangle(canvas.transform as RectTransform, Input.mousePosition, canvas.worldCamera, out localPoint);
        rectTransform.localPosition = localPoint;
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        // 释放后的逻辑可以在这里处理

        // if(isDrag == true)
        // {
        //     GameObject clickedObject = GetUIElementUnderMouse();
        //     if (clickedObject != null && clickedObject.CompareTag(targetTag))
        //     {
        //         TargetUI targetUI = clickedObject.GetComponent<TargetUI>();
        //         if(targetUI.isPlaced)
        //         {
        //             //有东西
        //             targetUI.placedGo.transform.localPosition = targetUI.placedGo.GetComponent<DraggableUI>().initialPosition;
        //             targetUI.placedGo = rectTransform.gameObject;
        //             targetUI.placedId = tagId;
        //             isDrag = false;  // 停止跟随鼠标
        //             rectTransform.localPosition = clickedObject.transform.localPosition;

        //             resultCheck.occupyed = false;
        //         }
        //         else
        //         {
        //             //如果区域内没有东西
        //             isDrag = false;  // 停止跟随鼠标
        //             rectTransform.localPosition = clickedObject.transform.localPosition;
        //             targetUI.isPlaced = true;
        //             targetUI.placedGo = rectTransform.gameObject;
        //             targetUI.placedId = tagId;

        //             resultCheck.occupyed = false;
        //             AudioManager.Instance.PlaySFX("StickerUp");
        //         }
        //     }
        //     else
        //     {
        //         // 如果不在目标区域，回到初始位置
        //         rectTransform.localPosition = initialPosition;
        //         isDrag = false;
        //         resultCheck.occupyed = false;
        //     }
        // }
    }
}

