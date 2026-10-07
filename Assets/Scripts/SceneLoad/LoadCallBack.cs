using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LoadCallBack : MonoBehaviour
{

    private TimerManager timerManager = new TimerManager();
    private int timerID;

    private void Awake() {
        timerManager.Init();
        timerID = timerManager.Schedule(LoadSceneCallBack, 1.5f, 0);
    }
    // Update is called once per frame
    void Update()
    {
        timerManager.Update();
    }

    private void LoadSceneCallBack() {
        SceneLoader.LoadSceneCallBack();
    }

    private void OnDestroy() {
        timerManager.Unschedule(timerID);
    }
}
