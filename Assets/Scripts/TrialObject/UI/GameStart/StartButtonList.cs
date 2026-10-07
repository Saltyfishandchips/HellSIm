using UnityEngine.EventSystems;
using UnityEngine;
using UnityEngine.UI;

public class StartButtonList : MonoBehaviour
{
    private Button[] buttons;
    private Animator animator;
    public GameObject chapterList;
    public GameObject SettingList;

    public static bool isSetting = false;

    public void Awake()
    {
        
        buttons = GetComponentsInChildren<Button>();
        animator = GetComponent<Animator>();
        
        // 开始
        buttons[0].onClick.AddListener(() => {
            AudioManager.Instance.PlaySFX("UIClick3");
            // 进入加载界面
            SceneLoader.LoadScene("TutorialScene");
            // SceneManager.LoadScene("JudgeScene");
        });
        // 选择章节
        buttons[1].onClick.AddListener(() => {
            AudioManager.Instance.PlaySFX("UIClick3");
            animator.SetBool("Hide", true);
            isSetting = false;
            // foreach (var button in buttons) {
            //     button.enabled = false;
            // }
        });

        // 游戏设置
        buttons[2].onClick.AddListener(() => {
            AudioManager.Instance.PlaySFX("UIClick3");
            animator.SetBool("Hide", true);
            isSetting = true;

        });

        // 结束
        buttons[3].onClick.AddListener(() => {
            AudioManager.Instance.PlaySFX("UIClick3");
            Application.Quit();
        });
    }

    private void Start() {
        
        // foreach (var button in buttons) {
        //     button.enabled = true;
        // }
    }

    void ButtonListHide() {
        animator.SetBool("Hide", false);
        foreach (var button in buttons) {
            PointerEventData eventData = null;
            button.GetComponent<StartButton>().OnPointerExit(eventData);
        }

        
        if (!isSetting){
            //章节选择
            chapterList.SetActive(true);
        }
        else {
            // 游戏设置
            SettingList.SetActive(true);
        }
        
        gameObject.SetActive(false);
    }
}
