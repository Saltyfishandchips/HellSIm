using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;

public class DaynamicLayoutPerson : MonoBehaviour
{
    private GameObject parentObject; // 需要查找的父物体

    private List<Transform> squares;
    void Start()
    {
        parentObject = this.gameObject;

        squares = FindAllChildrenByName(parentObject.transform, "Square");
        
        // 从列表中移除第一个找到的物体
        if (squares.Count > 0)
        {
            squares.RemoveAt(0); // 移除第一个元素
        }
        
        UpdateLayout();
    }

    List<Transform> FindAllChildrenByName(Transform parent, string name)
    {
        List<Transform> foundObjects = new List<Transform>();

        foreach (Transform child in parent)
        {
            if (child.name == name)
            {
                foundObjects.Add(child);
            }

            // 递归查找子物体
            foundObjects.AddRange(FindAllChildrenByName(child, name));
        }

        return foundObjects;
    }

    void UpdateLayout()
    {
        var currentLocale = LocalizationSettings.SelectedLocale;
        
        if (currentLocale.LocaleName == "zh-Hans") // 简体中文
        {

        }
        else if (currentLocale.LocaleName == "English (en)") // 英文
        {
            int idx = 1;
            foreach(Transform square in squares)
            {
                square.gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EnSprite/yushendan" + FlowDataManager.Instance.dayCount + "_" + idx);
                idx++;
            }
        }
        // 添加更多语言的排版设置
    }
}
