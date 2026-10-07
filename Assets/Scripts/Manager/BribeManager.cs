using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BribeManager : MonoBehaviour
{
    [SerializeField] GameObject bribeMoney;
    [SerializeField] GameObject bribeArea;

    private void Awake() {
        bribeMoney.SetActive(false);
        bribeArea.SetActive(false);
    }

    private void Start() {
        TrialNPCManager.OnTrialStageChanged += TrialStageChangedEvent;
    }

    private void TrialStageChangedEvent(object sender, TrialNPCManager.TrialStageArgs trialStageArgs) {
        if (trialStageArgs.trailStage == TrailStage.Bribe) {
            bribeMoney.SetActive(true);
        }
    }

    private void OnDestroy() {
        TrialNPCManager.OnTrialStageChanged -= TrialStageChangedEvent;
    }

}
