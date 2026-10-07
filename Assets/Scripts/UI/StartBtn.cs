using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems; // 处理UI事件

public class StartBtn : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public Button button; // 拖入 Inspector 中的 Button
    private Image buttonImage; // 用来改变背景的 Image
    public Sprite hoverSprite;
    public Sprite normalSprite;
    public float rotateSpeed = 50f; // 旋转速度
     private Transform childTransform; // 子物体的 Transform

    void Start()
    {
        button = GetComponent<Button>();
        // 获取按钮的 Image 组件
        buttonImage = button.GetComponent<Image>();
        // 获取子物体的 Transform
        if (button.transform.childCount > 0)
        {
            childTransform = button.transform.GetChild(0); // 假设只有一个子物体
        }
    }

    private void Update() 
    {
          // 持续旋转 Image 的 RectTransform
        if (buttonImage != null)
        {
            buttonImage.rectTransform.Rotate(Vector3.forward * rotateSpeed * Time.deltaTime);
        }

         // 保持子物体不旋转
        if (childTransform != null)
        {
            // 通过设置固定旋转角度，保持子物体的旋转为初始状态
            childTransform.rotation = Quaternion.identity; // 或者根据需要调整旋转
        }
    }

    // 当鼠标进入按钮时触发
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (buttonImage != null)
        {
            buttonImage.sprite = hoverSprite;
        }
    }

    // 当鼠标离开按钮时触发
    public void OnPointerExit(PointerEventData eventData)
    {
        if (buttonImage != null)
        {
            buttonImage.sprite = normalSprite;
        }
    }
}
