using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ChapterList : MonoBehaviour
{
    private Button[] buttons;
    public GameObject buttonList;
    // Start is called before the first frame update
    void Start()
    {
        buttons = GetComponentsInChildren<Button>();
        // 序章
        buttons[0].onClick.AddListener(() => {
            TrialTotalInfo.currentDay = 0;
            SceneLoader.LoadScene("JudgeScene");
        });

        // 第一章
        buttons[1].onClick.AddListener(() => {
            TrialTotalInfo.currentDay = 1;
            PlayerData.Instance.fame = 50;
            PlayerData.Instance.affection = 50;
            SceneLoader.LoadScene("JudgeScene");
        });

        // 第二章
        buttons[2].onClick.AddListener(() => {
            TrialTotalInfo.currentDay = 2;
            PlayerData.Instance.fame = 50;
            PlayerData.Instance.affection = 50;
            SceneLoader.LoadScene("JudgeScene");
        });

        // 返回
        buttons[3].onClick.AddListener(() => {
            GetComponent<Animator>().SetBool("Hide", true);
        });
        // // 新版本，第二章先不发上去返回
        // buttons[1].onClick.AddListener(() => {
        //     GetComponent<Animator>().SetBool("Hide", true);
        // });

    }

    void ChapterHide() {
        GetComponent<Animator>().SetBool("Hide", false);
        foreach (var button in buttons) {
            PointerEventData eventData = null;
            button.GetComponent<StartButton>().OnPointerExit(eventData);
        }
        gameObject.SetActive(false);
        buttonList.SetActive(true);
    }
}
