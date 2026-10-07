using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class BribeRejectShow : MonoBehaviour
{
    [SerializeField] private GameObject vis;
    [SerializeField] private GameObject img;
    [SerializeField] private Image hp;

    // Start is called before the first frame update
    void Start()
    {
        vis.SetActive(false);
        TrailCalculator.OnBribeReject += OnBribeRejectEvent;
    }

    private void OnBribeRejectEvent(object sender, EventArgs eventArgs) {
        
        Image yyImg = img.GetComponent<Image>();
        if (TrialTotalInfo.currentDay == 1 && TrialTotalInfo.currentDayIndex == 6) {
            GameObject FDSeal = GameObject.Find("FengduSeal");
            GameObject relationShipIcon = GameObject.Find("RelationShipIcon");
            FDSeal.SetActive(false);
            relationShipIcon.SetActive(false);

            hp.sprite = Resources.Load<Sprite>("UI/YyTest/HP1");
            if (LanguageManager.isEnglish) {
                yyImg.sprite = Resources.Load<Sprite>("UI/YyTest/EN/Yy1");
            }
            else {
                yyImg.sprite = Resources.Load<Sprite>("UI/YyTest/Yy1");
            }
           
            vis.SetActive(true);
            img.transform.DOShakePosition(2f, 2).SetAutoKill().OnComplete(() => {
                AudioManager.Instance.PlaySFX("YyShake");

                if (LanguageManager.isEnglish) {
                    yyImg.sprite = Resources.Load<Sprite>("UI/YyTest/EN/Yy2");
                }
                else {
                    yyImg.sprite = Resources.Load<Sprite>("UI/YyTest/Yy2");
                }
                
                hp.sprite = Resources.Load<Sprite>("UI/YyTest/HP2");
                img.transform.DOShakePosition(2f, 8).SetAutoKill().OnComplete(() => {
                    // 增加音效
                    AudioManager.Instance.PlaySFX("YyShake1");

                    if (LanguageManager.isEnglish) {
                        yyImg.sprite = Resources.Load<Sprite>("UI/YyTest/EN/Yy3");
                    }
                    else {
                        yyImg.sprite = Resources.Load<Sprite>("UI/YyTest/Yy3");
                    }

                    img.transform.DOShakePosition(3f, 20).SetAutoKill().OnComplete(() => {
                        FDSeal.SetActive(true);
                        relationShipIcon.SetActive(true);
                        vis.SetActive(false);
                    });
                });
            });
        }
    }

    private void OnDestroy() {
        TrailCalculator.OnBribeReject -= OnBribeRejectEvent;
    }

}
