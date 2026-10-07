using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;

public class DynamicLayoutDoubtPoint : MonoBehaviour
{
    private TMP_Text uiText;
    // Start is called before the first frame update
    void Start()
    {
        uiText = GetComponent<TMP_Text>();
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
            uiText.fontSize = 20;
            uiText.font = Resources.Load<TMP_FontAsset>("SSBFont");
        }


        if(LanguageManager.isEnglish)
        {
            uiText.fontSize = 20;
            uiText.font = Resources.Load<TMP_FontAsset>("SSBFont");
        }
        // 添加更多语言的排版设置
    }
}
