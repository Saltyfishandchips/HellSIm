using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogoEnd : MonoBehaviour
{
    // Start is called before the first frame update
    public StartButtonList startButtonList;
    public CircleRound circleRound;

    private void Start() {
        AudioManager.Instance.PlayBackgroundMusic("GameStartBGM");
    }

    private void LogoEndAnim() {
        startButtonList.gameObject.SetActive(true);
        circleRound.enabled = true;
    }
}
