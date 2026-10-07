using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GuideAnim : MonoBehaviour
{   
    private TimerManager timerManager = new TimerManager();
    private int timerID;
    public GameObject hand;

    public GameObject guideList;
    public Button bookButton;
    public Button guideButton;
    public Button startButton;

    // Start is called before the first frame update
    void Start()
    {
        timerManager.Init();
        EvidenceDialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;

        bookButton.onClick.AddListener(() => {
            guideList.SetActive(false);
            timerID = timerManager.Schedule(HandHide, 4f, 0);
        });

        guideButton.onClick.AddListener(() => {
            TrialTotalInfo.currentDay = 0;
            SceneLoader.LoadScene("JudgeScene");
        });

        startButton.onClick.AddListener(() => {
            TrialTotalInfo.currentDay = 1;
            SceneLoader.LoadScene("JudgeScene");
        });


        guideList.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        timerManager.Update();
    }

    private void OnStoryEndEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        if (inkStageInfoArgs.inkName == "GameStartInk") {
            // TODO：增加白无常的带领关卡
            guideList.SetActive(true);
        }
    }
    
    private void HandHide() {
        timerManager.Unschedule(timerID);
        hand.SetActive(false);
    }

    private void OnDestroy() {
        EvidenceDialogueManager.Instance.OnStoryEnd -= OnStoryEndEvent;
    }


    
}
