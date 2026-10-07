using UnityEngine;
using UnityEngine.UI;

public class OpenCGManager : MonoBehaviour
{
    // 开场动画
    public Animator animator;
    public Image cg1;
    public Image cg2;
    public Button button;
    public static string cgPath = "UI/OpenCG/";
    public static int count = 1;

    private void Awake() {
        animator.enabled = false;
        // 本地化
        if (LanguageManager.isEnglish) {
            cgPath += "EN/";
        }

        cg1.sprite = Resources.Load<Sprite>(cgPath + 1);
        cg2.sprite = Resources.Load<Sprite>(cgPath + 2);
        button.onClick.AddListener(() => {
            if (count >= 7) {
                gameObject.SetActive(false);
                TextAsset textAsset = Resources.Load<TextAsset>(InfoPath.inkPath + "OpenCG/" + "GameStartInk");
                EvidenceDialogueManager.Instance.InitializedStroy("GameStartInk",textAsset);
                return;
            }
            count++;
            button.enabled = false;
            animator.enabled = true;
            
        });
    }

    
}
