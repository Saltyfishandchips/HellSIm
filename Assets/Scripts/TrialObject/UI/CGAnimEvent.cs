using UnityEngine;
using UnityEngine.UI;

public class CGAnimEvent : MonoBehaviour
{
    public Image cg_1;
    public Image cg_2;
    private Animator animator;
    public Button button;

    private void Awake() {
        animator = GetComponent<Animator>();
    }

    public void CGStart() {
        
    }

    public void CGEnd() {
        animator.enabled = false;
        Sprite sprite = Resources.Load<Sprite>(OpenCGManager.cgPath + OpenCGManager.count);
        cg_1.sprite = sprite;
        cg_1.color = new Color(cg_2.color.r, cg_2.color.g, cg_2.color.b, 1);
        cg_2.color = new Color(cg_2.color.r, cg_2.color.g, cg_2.color.b, 0);
         sprite = Resources.Load<Sprite>(OpenCGManager.cgPath + (OpenCGManager.count + 1));
        cg_2.sprite = sprite;
        button.enabled = true;
    }
}
