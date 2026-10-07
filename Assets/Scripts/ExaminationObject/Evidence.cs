using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Parsed;

// [RequireComponent(typeof(BoxCollider))]
public class Evidence : MonoBehaviour,IIdentifiable
{
    public int day{ get; set; }
    public int id { get; set; }
    public string evidenceName;
    public SpriteRenderer BackgroundSpriteRender; // 背景
    public SpriteRenderer EvidenceImageSpriteRender; // 证物本体
    public GameObject TextsObject;  // 用于显示描述的UI对象
    public TMP_Text descriptionText;  // 文本组件 
    public TMP_Text titleText; // 标题
    public Sprite backgroundHover;
    public Sprite backgroundUnHover;
    public bool isOrigin;
    public string descriptionString;
    public string spriteName;

    // public Evidence(Sprite _sprite, string _descriptionText)
    // {
    //     EvidenceImageSpriteRender.sprite = _sprite;
    //     descriptionText.text = _descriptionText;
    // }

    // Start is called before the first frame update
    void Start()
    {
        BackgroundSpriteRender = transform.GetChild(1).gameObject.GetComponent<SpriteRenderer>();
        EvidenceImageSpriteRender = transform.GetChild(2).gameObject.GetComponent<SpriteRenderer>();
        TextsObject = transform.GetChild(0).gameObject;
        if (TextsObject != null)
        {
            // 获取UI文本组件
            titleText = TextsObject.transform.GetChild(0).GetComponent<TMP_Text>();
            descriptionText = TextsObject.transform.GetChild(1).GetComponent<TMP_Text>();

            // 确保描述UI一开始是隐藏的
            TextsObject.SetActive(false);
        }

        backgroundHover = Resources.Load<Sprite>("UI/EvidenceLight");
        backgroundUnHover = Resources.Load<Sprite>("UI/EvidenceAn");
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnMouseEnter()
    {
        if(FlowDataManager.isYinDao == false)
        {
            // 当鼠标悬停在物体上时，显示描述文本
            if (TextsObject != null)
            {
                descriptionText.text = descriptionString;
                titleText.text = evidenceName;
                TextsObject.SetActive(true);
            }

            // if(BackgroundSpriteRender!=null)
            // {
            //     BackgroundSpriteRender.sprite = backgroundHover;
            // }
        }
    }

    void OnMouseExit()
    {
        // 当鼠标离开物体时，隐藏描述文本
        if (TextsObject != null)
        {
            TextsObject.SetActive(false);
        }

        // if(BackgroundSpriteRender!=null)
        // {
        //     BackgroundSpriteRender.sprite = backgroundUnHover;
        // }
    }
}
