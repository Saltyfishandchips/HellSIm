using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class InfoTabelToggleChanger : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public Sprite normalSprite; //正常状态
    public Sprite hoverSprite; //悬浮状态
    public Sprite highLightSprite; //选中状态
    private Toggle toggle;
    private Image image;
    private int indexInInfoTable;
    private bool toggleNameValue;
    // Start is called before the first frame update
    void Start()
    {
        toggle = GetComponent<Toggle>();

        image = transform.GetChild(0).GetComponent<Image>();
        // 为Toggle添加事件监听器
        toggle.onValueChanged.AddListener(OnToggleValueChanged);

        indexInInfoTable = transform.parent.transform.GetSiblingIndex();
        toggleNameValue = transform.gameObject.name == "ToggleF"? false:true;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    // 当鼠标进入 UI 元素时调用
    public void OnPointerEnter(PointerEventData eventData)
    {
        if (image != null && toggle.isOn == false)
        {
            image.sprite = hoverSprite;
        }
    }

    // 当鼠标离开 UI 元素时调用
    public void OnPointerExit(PointerEventData eventData)
    {
        if (image != null && toggle.isOn == false)
        {
            image.sprite = normalSprite;
        }
    }


    public void OnToggleValueChanged(bool isOn)
    {
        if(isOn == true)
        {
            if(indexInInfoTable<5)
            {
                FlowDataManager.Instance.infoComparisonArray[indexInInfoTable] = toggleNameValue == false? false:true;
            }

            AudioManager.Instance.PlaySFX("InfoToggle");
            if(transform.gameObject.name == "ToggleCheck")
            {
                // if(FlowDataManager.Instance.playerProgress == FlowDataManager.Instance.currentNpcData.paperDifference)
                // {
                //     //选完了
                //     image.sprite = highLightSprite;
                //     string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
                //     DialogueManager.Instance.CacheInkFile(inkName,indexInInfoTable + 1);
                //     //
                //     FlowDataManager.Instance.InfoTableMove(Vector3.left);
                //     GameObject.Find("ZhangBtn").GetComponent<Button>().onClick.Invoke();

                //     //判断对错

                // }
                // else
                // {
                //     image.sprite = normalSprite;
                //     toggle.isOn = false;
                // }
                if(IsCheck(FlowDataManager.Instance.infoComparisonArray,FlowDataManager.Instance.currentNpcData.paperDifference))
                {
                    //选完了
                    image.sprite = highLightSprite;
                    string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
                    DialogueManager.Instance.CacheInkFile(inkName,indexInInfoTable + 1);
                    //
                    FlowDataManager.Instance.InfoTableMove(Vector3.left);
                    GameObject.Find("ZhangBtn").GetComponent<Button>().onClick.Invoke();
                    
                }
                else
                {
                    image.sprite = normalSprite;
                    toggle.isOn = false;
                    BirdManager birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
                    string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.Return);
                    birdManager.BirdTalk(str, BirdStage.Return);
                    FlowDataManager.Instance.toggleCheck.interactable = false; 
                }
            }
            else
            {
                image.sprite = highLightSprite;
            }
            

            if(FlowDataManager.Instance.toggleInfo[indexInInfoTable]==false && indexInInfoTable!=5)
            {
                FlowDataManager.Instance.toggleInfo[indexInInfoTable]=true;
                if(toggleNameValue == false)
                {
                    string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
                    DialogueManager.Instance.CacheInkFile(inkName,indexInInfoTable + 1);
                }
                else if(toggleNameValue == true)
                {
                    string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
                    DialogueManager.Instance.CacheInkFile(inkName,indexInInfoTable + 7);
                }

                bool tempRes = true;
                for(int i=0;i<5;i++)
                {
                    if(!FlowDataManager.Instance.toggleInfo[i])
                    {
                        tempRes = false;
                    }
                }
                if(tempRes)
                {
                    FlowDataManager.Instance.toggleCheck.gameObject.SetActive(true);
                }
            }

            if(toggleNameValue==false && IsBitSet(FlowDataManager.Instance.currentNpcData.paperDifference,indexInInfoTable) )
            {
                //选对
                if(IsBitSet(FlowDataManager.Instance.playerProgress,indexInInfoTable))
                {
                    //选过了
                }
                else
                {
                    //没选过
                    FlowDataManager.Instance.playerProgress += (int)Mathf.Pow(2,indexInInfoTable);
                    // if(FlowDataManager.Instance.playerProgress == FlowDataManager.Instance.currentNpcData.paperDifference)
                    // {
                    //     FlowDataManager.Instance.toggleCheck.gameObject.SetActive(true);
                    // }
                    string temp = "";
                    if(LanguageManager.isEnglish)
                    {
                        switch(indexInInfoTable + 1)
                        {
                            case 1:
                                temp = "Name  "; 
                                break;

                            case 2:
                                temp = "Gender  "; 
                                break;

                            case 3:
                                temp = "Brith  "; 
                                break;

                            case 4:
                                temp = "Death  "; 
                                break;

                            case 5:
                                temp = "Area  "; 
                                break;
                        }
                    }
                    else
                    {
                        switch(indexInInfoTable + 1)
                        {
                            case 1:
                                temp = "姓名  "; 
                                break;

                            case 2:
                                temp = "性别  "; 
                                break;

                            case 3:
                                temp = "生辰  "; 
                                break;

                            case 4:
                                temp = "死期  "; 
                                break;

                            case 5:
                                temp = "辖区  "; 
                                break;
                        }
                    }
                    FlowDataManager.Instance.errorRecordTMP.text += temp;
                    AudioManager.Instance.PlaySFX("YuShenDanWritng");
                    
                }
            }
            else if(toggleNameValue==false && !IsBitSet(FlowDataManager.Instance.currentNpcData.paperDifference,indexInInfoTable))
            {
                //选错
            }
        }
        else
        {
            image.sprite = normalSprite;
        }
    }

    private bool IsBitSet(int number, int i)
    {
        return (number & (1 << i)) != 0;
    }

    private bool IsCheck(bool[] boolArray ,int num)
    {   
        for(int i=0;i<5;i++)
        {
            if(IsBitSet(num,i) && boolArray[i]==true)
            {
                return false;
            }
            else if(!IsBitSet(num,i) && boolArray[i]==false)
            {
                return false;
            }
        }
        return true;
    }
}
