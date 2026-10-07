using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class SettlementRelationship : MonoBehaviour
{
    private TextMeshProUGUI[] texts;

    private void Awake() {
        texts = transform.GetChild(0).gameObject.GetComponentsInChildren<TextMeshProUGUI>();
        
        // 更新赏罚
        for (int i = 0; i < TrailCalculator.endList.Count; ++i) {
            texts[i].text = CheckRelationshipStr(TrailCalculator.endList[i].Item2);
        }
    }

    public void ReFreshReward() {
        texts = transform.GetChild(0).gameObject.GetComponentsInChildren<TextMeshProUGUI>();
        
        // 更新赏罚
        for (int i = 0; i < TrailCalculator.endList.Count; ++i) {
            texts[i].text = CheckRelationshipStr(TrailCalculator.endList[i].Item2);
        }
    }

    private void Start() {
        // 更新赏罚
        for (int i = 0; i < TrailCalculator.endList.Count; ++i) {
            texts[i].text = CheckRelationshipStr(TrailCalculator.endList[i].Item2);
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
}
