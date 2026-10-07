using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RelationshipManager : MonoBehaviour
{
    [SerializeField] private Button relationshipButton;
    [SerializeField] private Button questRelationshipButton;
    [SerializeField] private Button tutorialButton;
    [SerializeField] private GameObject seal;
    [SerializeField] private GameObject tutorialPage;
    private GameObject relationship;
    private void Awake() {
        relationship = GameObject.Find("Relationship");
        GameObject gb = Resources.Load<GameObject>("Prefab/Day" + TrialTotalInfo.currentDay.ToString() + "_Relationship");
        gb = Instantiate(gb);
        gb.transform.SetParent(relationship.transform);
        gb.transform.localScale = Vector3.one;


        gb.GetComponent<TrialRelationship>().seal = seal;
        tutorialPage.GetComponent<TrialTutorial>().seal = seal;

        relationshipButton.onClick.AddListener(() => {
            // 按钮按下声音
            AudioManager.Instance.PlaySFX("UIClick4");

            GameObject FDWDSeal = GameObject.Find("Seal");
            
            if (FDWDSeal) {
                gb.GetComponent<TrialRelationship>().FDWDSeal = FDWDSeal;
                FDWDSeal.SetActive(false);
            }
            if (TrialStageManager.currentTrialStage > TrialStage.Quest)  {

                seal.SetActive(false);
            }
            
            gb.SetActive(true);
        });

        questRelationshipButton.onClick.AddListener(() => {
            // 按钮按下声音
            AudioManager.Instance.PlaySFX("UIClick4");

            GameObject FDWDSeal = GameObject.Find("Seal");
            
            if (FDWDSeal) {
                gb.GetComponent<TrialRelationship>().FDWDSeal = FDWDSeal;
                FDWDSeal.SetActive(false);
            }
            // seal.SetActive(false);
            gb.SetActive(true);
        });

        // 引导按钮
        tutorialButton.onClick.AddListener(() => {
            // 按钮按下声音
            AudioManager.Instance.PlaySFX("UIClick4");

            GameObject FDWDSeal = GameObject.Find("Seal");
            
            if (FDWDSeal) {
                tutorialPage.GetComponent<TrialTutorial>().FDWDSeal = FDWDSeal;
                FDWDSeal.SetActive(false);
            }
            tutorialPage.GetComponent<TrialTutorial>().UpdateTutorial();
            tutorialPage.SetActive(true);
        });

        // gb.SetActive(false);
        // 这里会使得关系图还没初始化
    }
}
