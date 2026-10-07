using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCSprite : MonoBehaviour
{
    private Animator animator;
    private Image image;
    void Start()
    {
        image = GetComponent<Image>();
        animator = GetComponent<Animator>();
    }

    

    public void BlackImage() {
        if (TrialStageManager.currentTrialStage == TrialStage.End) {
            return;
        }
        animator.enabled = true;
        image.sprite = Resources.Load<Sprite>("UI/NPCEnterExitAnim/" + TrialInfoManager.Instance.currentNpcInfo.id);
    }

    public void RealImage() {
        if (TrialStageManager.currentTrialStage == TrialStage.End) {
            return;
        }
        animator.enabled = false;
        image.sprite = Resources.Load<Sprite>("UI/NPCEnterExitAnim/" + TrialInfoManager.Instance.currentNpcInfo.id);
    }

    public void ExitComplete() {
        animator.SetBool("Exit", false);

    }
}
