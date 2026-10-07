using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;

public class DynamicLayoutXinXi : MonoBehaviour
{
    private TMP_Text uiText;
    // Start is called before the first frame update
    void Start()
    {
        uiText = transform.gameObject.GetComponent<TMP_Text>();
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
            uiText.fontSize = 5;
            uiText.gameObject.transform.localPosition -= new Vector3(0.12f,0.0f,0.0f);
        }
        // 添加更多语言的排版设置
    }
}
