using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;

public class DynamicLayoutRenWu : MonoBehaviour
{

    // Start is called before the first frame update
    void Start()
    {
        UpdateLayout();
    }

    // Update is called once per frame
    void UpdateLayout()
    {
        var currentLocale = LocalizationSettings.SelectedLocale;
        
        if (currentLocale.LocaleName == "zh-Hans") // 简体中文
        {

        }
        else if (currentLocale.LocaleName == "English (en)") // 英文
        {
            GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EnSprite/renwuDay"+FlowDataManager.Instance.dayCount);
        }
        // 添加更多语言的排版设置
    }
}
