using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class TrialRelationship : MonoBehaviour
{
    private TextMeshProUGUI[] textList;
    private Button[] buttonList;
    private Image[] titleList;
    private Button closeButton;
    private Image preQuality;
    public GameObject seal;

    public GameObject FDWDSeal;

    private void Awake() {
        textList = GameObject.Find("Texts").GetComponentsInChildren<TextMeshProUGUI>();
        buttonList = GameObject.Find("Buttons").GetComponentsInChildren<Button>();
        titleList = GameObject.Find("NameTitle").GetComponentsInChildren<Image>();
        closeButton = GameObject.Find("CloseButton").GetComponentInChildren<Button>();
        preQuality = GameObject.Find("Prequalification").GetComponent<Image>();

        
    }

    // Start is called before the first frame update
    void Start()
    {
        TrialStageManager.OnTrialStageChanged += OnTrialStageChangedEvent;
        DialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;

        foreach (var title in titleList) {
            title.gameObject.SetActive(false);
        }

        for (int i = 0; i < buttonList.Count(); ++i) {
            int idx = new int();
            idx = i;
            buttonList[i].onClick.AddListener(() => {
                // 人物关系图按钮音效
                AudioManager.Instance.PlaySFX("UIClick4");

                foreach (var title in titleList) {
                    title.gameObject.SetActive(false);
                }

                titleList[idx].gameObject.SetActive(true);
                // TODO:读取npc预审表
                Sprite sprite = Resources.Load<Sprite>(InfoPath.preTrialpath + TrialTotalInfo.currentDay.ToString() + "_" + (idx + 1));
                preQuality.sprite = sprite;
            });
            
        }

        foreach (var text in textList) {
            text.text = null;
        }

        closeButton.onClick.AddListener(() => {
            gameObject.SetActive(false);
            if (TrialStageManager.currentTrialStage > TrialStage.Quest)  {
                seal.SetActive(true);
            }
            if (FDWDSeal != null) {
                FDWDSeal.SetActive(true);
            }
            
            
        });

        // 
        gameObject.SetActive(false);
    }

    private void OnTrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage == TrialStage.PreTalk) {
            // 更新当前审判人物的预审单
            foreach (var title in titleList) {
                title.gameObject.SetActive(false);
            }
            titleList[TrialTotalInfo.currentDayIndex - 1].gameObject.SetActive(true);
            preQuality.sprite = Resources.Load<Sprite>(InfoPath.preTrialpath + TrialTotalInfo.currentDay.ToString() + "_" + TrialTotalInfo.currentDayIndex.ToString());
        }

        // 更新人物关系图
        if (TrailCalculator.endList.Count < 1) {
            return;
        }

        for (int i = 0; i < TrailCalculator.endList.Count; ++i) {
            textList[i].text = CheckRelationshipStr(TrailCalculator.endList[i].Item2);
        }
    }

    private void OnStoryEndEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        // 更新人物关系图
        if (TrailCalculator.endList.Count < 1) {
            return;
        }

        if (inkStageInfoArgs.inkStageInfo.inkStage == InkStage.TrialComplete) {
            for (int i = 0; i < TrailCalculator.endList.Count; ++i) {
                textList[i].text = CheckRelationshipStr(TrailCalculator.endList[i].Item2);
            }

            
        }
        
    }

    private string CheckRelationshipStr(Tuple<int, int> tuple) {
        string text = null;
        if (tuple.Item1 == 0) {
            // 没有奖赏
            text = null;
        }
        else if (tuple.Item1 == 1) {
            // 奖赏
            switch (tuple.Item2) {
                case 1:
                    if (LanguageManager.isEnglish) {
                        text = "Small Reward";
                    }
                    else {
                        text = "阴间荣华安乐";
                    }
                    
                    break;
                case 2:
                    if (LanguageManager.isEnglish) {
                        text = "Medium Reward";
                    }
                    else {
                        text = "下世轮回添福";
                    }
                    break;
                case 3:
                    if (LanguageManager.isEnglish) {
                        text = "Large Reward";
                    }
                    else {
                        text = "六道轮回升阶";
                    }
                    break;
            }
        }
        else if (tuple.Item1 == -1 ) {
            // 惩罚
            switch (tuple.Item2) {
                case 1:
                    if (LanguageManager.isEnglish) {
                        text = "Small Punish";
                    }
                    else {
                        text = "阳间供养充公";
                    }
                    
                    break;
                case 2:
                    if (LanguageManager.isEnglish) {
                        text = "Medium Punish";
                    }
                    else {
                        text = "堕入幽冥地狱";
                    }
                    break;
                case 3:
                    if (LanguageManager.isEnglish) {
                        text = "Large Punish";
                    }
                    else {
                        text = "六道轮回降阶";
                    }
                    break;
            }
        }
        return text;
    }

    private void OnDestroy() {
        TrialStageManager.OnTrialStageChanged -= OnTrialStageChangedEvent;
        DialogueManager.Instance.OnStoryEnd -= OnStoryEndEvent;
    }
}
