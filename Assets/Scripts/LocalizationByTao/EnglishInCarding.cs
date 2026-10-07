using System.Collections;
using System.Collections.Generic;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using UnityEngine;
using UnityEngine.UI;

public class EnglishInCarding : MonoBehaviour
{
    //用于本地化加载静态图片
    public GameObject ShuLiGo;
    public GameObject YinDaoImageGo;

    public string Spritepath;

    // Start is called before the first frame update
    void Start()
    {
        Spritepath = "EnSprite/";
        UpdateFont();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void UpdateFont()
    {
        var currentLocale = LocalizationSettings.SelectedLocale;
        //currentLocale.LocaleName == "English (en)"
        if ( LanguageManager.isEnglish == true )
        {
            ShuLiGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "ShuLiBG");
            YinDaoImageGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "YinDao2");
        }
        else if (currentLocale.LocaleName == "zh-Hans")
        {
           
        }
        // 添加其他语言的判断
    }
}
