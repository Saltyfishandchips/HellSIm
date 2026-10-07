using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class EndingManager : MonoBehaviour
{
    public Button endingButton;
    public TextMeshProUGUI tipsText;
    public TextMeshProUGUI finText;
    public Image endImage;
    public Animator animator;

    public Button clickButton;

    // Start is called before the first frame update
    void Start()
    {
        // 背景音乐
        AudioManager.Instance.PlayBackgroundMusic("WxtBGM");
        ChoseEnd();

        clickButton.onClick.AddListener(() => {
            HideAnim();
        });

        endingButton.gameObject.SetActive(true);
        endingButton.onClick.AddListener(() => {
            // 跳转结局
            SceneLoader.LoadScene("GameStartScene");
        });
        endingButton.gameObject.SetActive(false);
    }



    void EndingHide() {
        animator.SetBool("Hide", false);
        endingButton.gameObject.SetActive(true);
        tipsText.gameObject.SetActive(true);
        finText.gameObject.SetActive(true);
        
        endImage.gameObject.SetActive(false);
        clickButton.gameObject.SetActive(false);
    }

    void HideAnim() {
        animator.SetBool("Hide", true);
    }


    void ChoseEnd() {
        string ending = null;
        if (PlayerData.Instance.fame >= 60 && PlayerData.Instance.affection >= 60) {
            ending = "Ending1";
        }
        else if (PlayerData.Instance.fame >= 60 && PlayerData.Instance.affection < 60) {
            ending = "Ending2";
        }
        else if (PlayerData.Instance.fame < 60 && PlayerData.Instance.affection >= 60) {
            ending = "Ending3";
        }
        else {
            ending = "Ending4";
        }

        if (LanguageManager.isEnglish) {
            endImage.sprite = Resources.Load<Sprite>("UI/EndingCG/EN/" + ending);
        }
        else {
            endImage.sprite = Resources.Load<Sprite>("UI/EndingCG/" + ending);
        }
        
    }
}
