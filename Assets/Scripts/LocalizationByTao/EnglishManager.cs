using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;
using UnityEngine.UI;

public class EnglishManager : MonoBehaviour
{
    //用于本地化加载静态图片
    public GameObject YushenDanGo;
    public GameObject InfoTable;
    public GameObject StampBoxGO;
    public GameObject GuiYinZhangGo;
    public GameObject FanYangZhangGo;
    public GameObject EvidenceBoxGo;
    public GameObject StartInquiryBackGo;
    public GameObject YinDaoImageGO;
    public GameObject ToggleCheckImageGo;
    public GameObject GuiZeToggleLabelGo;
    public GameObject XinXiToggleLabelGo;
    public GameObject nenwuguanxituBtnGo;
    public GameObject DailyGo;

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
            YushenDanGo.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(Spritepath + "YushenDan");
            InfoTable.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(Spritepath + "InfoTableComparison");
            StampBoxGO.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(Spritepath + "StampBox");
            GuiYinZhangGo.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(Spritepath + "GuiYinZhang");
            FanYangZhangGo.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(Spritepath + "FanYangZhang");
            EvidenceBoxGo.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(Spritepath + "EvidenceBox");
            StartInquiryBackGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "StartInquiry");
            YinDaoImageGO.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "YinDao1");
            ToggleCheckImageGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "LuYinOver");
            GuiZeToggleLabelGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "GuiZe");
            XinXiToggleLabelGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "Info");
            nenwuguanxituBtnGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "Rc1");
            DailyGo.GetComponent<Image>().sprite = Resources.Load<Sprite>(Spritepath + "Daily");
        }
        else if (currentLocale.LocaleName == "zh-Hans")
        {
           
        }
        // 添加其他语言的判断
    }
}
