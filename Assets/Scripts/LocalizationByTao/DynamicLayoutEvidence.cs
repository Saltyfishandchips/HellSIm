using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;

public class DynamicLayoutEvidence : MonoBehaviour
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
            uiText.fontSize = 2;
            uiText.characterSpacing = 0;
            uiText.lineSpacing = 0;
            uiText.font = Resources.Load<TMP_FontAsset>("SSBFont");
        }

        if(LanguageManager.isEnglish)
        {
            uiText.fontSize = 2;
            uiText.characterSpacing = 0;
            uiText.lineSpacing = 0;
            uiText.font = Resources.Load<TMP_FontAsset>("SSBFont");
        }
        // 添加更多语言的排版设置
    }
}
