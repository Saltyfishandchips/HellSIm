using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;

public class DynamicLayoutLuYin : MonoBehaviour
{
    private RectTransform[] uiTexts; // UI 文本组件

    void Start()
    {
        uiTexts = new RectTransform[5];
        for(int i=0;i<5;i++)
        {
            uiTexts[i] = transform.GetChild(i).GetComponent<RectTransform>();
        }

        UpdateLayout();
    }

    void UpdateLayout()
    {
        var currentLocale = LocalizationSettings.SelectedLocale;
        
        if (currentLocale.LocaleName == "zh-Hans") // 简体中文
        {

        }
        else if (currentLocale.LocaleName == "English (en)") // 英文
        {
            for(int i=0;i<5;i++)
            {
                uiTexts[i].localPosition +=new Vector3(0.25f,0.0f,0.0f);
            }
        }
        // 添加更多语言的排版设置
    }
}
