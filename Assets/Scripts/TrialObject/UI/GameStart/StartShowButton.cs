using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StartShowButton : MonoBehaviour
{
    public Animator logoAnimator;
    private Button button;
    private TimerManager timerManager = new TimerManager();
    private int timerID;
    private void Awake() {
        button = GetComponent<Button>();
        timerManager.Init();
        logoAnimator.enabled = false;
        button.onClick.AddListener(() => {
            logoAnimator.enabled = true;
        });
        timerID = timerManager.Schedule(HideLogoDelay, 8, 0);
    }

    private void Update() {
        timerManager.Update();
    }

    private void HideLogoDelay() {
        timerManager.Unschedule(timerID);
        if (!logoAnimator.enabled) {
            logoAnimator.enabled = true;
        }

    }

}
