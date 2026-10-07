using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class HoverDescription : MonoBehaviour
{
    public string descriptionText = "This is a description.";  // 要显示的描述文本
    public GameObject descriptionObject;  // 用于显示描述的UI对象

    private TMP_Text descriptionUIText;  // UI文本组件

    void Start()
    {
        descriptionObject = transform.GetChild(0).gameObject;
        if (descriptionObject != null)
        {
            // 获取UI文本组件
            descriptionUIText = descriptionObject.GetComponent<TMP_Text>();

            // 确保描述UI一开始是隐藏的
            descriptionObject.SetActive(false);
        }
    }

    void OnMouseEnter()
    {
        // 当鼠标悬停在物体上时，显示描述文本
        if (descriptionUIText != null)
        {
            descriptionUIText.text = descriptionText;
            descriptionObject.SetActive(true);
        }
    }

    void OnMouseExit()
    {
        // 当鼠标离开物体时，隐藏描述文本
        if (descriptionUIText != null)
        {
            descriptionObject.SetActive(false);
        }
    }
}
