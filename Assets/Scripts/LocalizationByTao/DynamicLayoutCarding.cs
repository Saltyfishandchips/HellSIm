using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using UnityEngine.UI;

public class DynamicLayoutCarding : MonoBehaviour
{
    // Start is called before the first frame update
    private Image[] images;
    void Start()
    {
        images = GetAllImages(gameObject.transform);
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
            int idx = 1;
            foreach(Image i in images)
            {
                i.sprite = Resources.Load<Sprite>("EnSprite/yushendan" +CardingManager.dayCountCarding+"_"+idx);
                idx++;
            }
        }
        // 添加更多语言的排版设置
    }

    Image[] GetAllImages(Transform parent)
    {
        // 获取所有 Image 组件
        Image[] allImages = parent.GetComponentsInChildren<Image>(true);
        
        // 过滤出名字为 "Image" 的组件
        return System.Array.FindAll(allImages, img => img.gameObject.name == "Image");
    }
}
