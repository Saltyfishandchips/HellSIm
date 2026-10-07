using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGMPlayer : MonoBehaviour
{
    private void Start() {
        // 背景音乐
        AudioManager.Instance.PlayBackgroundMusic("WxtBGM");
    }
}
