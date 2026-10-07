using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class AnimShake : MonoBehaviour,IAnimCallBack
{
    public static AnimShake animShake;
    
    public static AnimShake PlayAnimShake(int id, int[] shake, float[] time,  string side = "Trial")
    {
        GameObject shakePrefab = Resources.Load<GameObject>("Prefab/NPCShake");
        GameObject temp = Instantiate(shakePrefab);

        GameObject zhang = null;
        temp.transform.SetParent(GameObject.Find("MainCanvas").transform);
        if (side == "Judge") {    
            zhang = GameObject.Find("zhang_left");
            zhang.SetActive(false);
        }
        
        temp.transform.localScale = Vector3.one;

        Sprite sprite = null;
        // 本地化
        if (LanguageManager.isEnglish) {
            sprite = Resources.Load<Sprite>("NPCShakeAnim/EN/" + side + "/" + id + "_1");
        }
        else {
            sprite = Resources.Load<Sprite>("NPCShakeAnim/" + side + "/" + id + "_1");
        }
        // Sprite sprite = Resources.Load<Sprite>("NPCShakeAnim/" + side + "/" + id + "_1");
        Image img = temp.transform.GetChild(1).GetComponent<Image>();
        img.sprite = sprite;
        img.transform.DOShakePosition(time[0], shake[0]).SetAutoKill().OnComplete(() => {
                if (LanguageManager.isEnglish) {
                    sprite = Resources.Load<Sprite>("NPCShakeAnim/EN/" + side + "/" + id + "_2");
                }
                else {
                    sprite = Resources.Load<Sprite>("NPCShakeAnim/" + side + "/" + id + "_2");
                }
                img.sprite = sprite;

                // img.sprite = Resources.Load<Sprite>("NPCShakeAnim/" + side + "/" + id + "_2");
                img.transform.DOShakePosition(time[1], shake[1]).SetAutoKill().OnComplete(() => {
                    
                    if (LanguageManager.isEnglish) {
                        sprite = Resources.Load<Sprite>("NPCShakeAnim/EN/" + side + "/" + id + "_3");
                    }
                    else {
                        sprite = Resources.Load<Sprite>("NPCShakeAnim/" + side + "/" + id + "_3");
                    }
                    img.sprite = sprite;

                    // img.sprite = Resources.Load<Sprite>("NPCShakeAnim/" + side + "/" + id + "_3");
                    img.transform.DOShakePosition(time[2], shake[2]).SetAutoKill().OnComplete(() => {
                        if (side != "Trial") {
                            zhang.SetActive(true);
                        }
                        EvidenceDialogueManager.Instance.isAnim = false;
                        Destroy(temp);
                    });
                });
            });


        return animShake;
    }

}
