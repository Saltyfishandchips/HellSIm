using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndCGEvent : MonoBehaviour
{

    void JumpToEnd()
    {   
        //TODO：第二天先ban，之后第二天实装后取消注释
        if (TrialTotalInfo.currentDay <= 2) {
            SceneLoader.LoadScene("JudgeScene");
        }
        else {
            // SceneLoader.LoadScene("EndTestScene");
            // 跳转结局
            SceneLoader.LoadScene("EndingScene");
        }
        
        // SceneLoader.LoadScene("EndTestScene");
    }
}
