using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TrialTutorial : MonoBehaviour
{
    public GameObject seal;
    public GameObject FDWDSeal;
    public Button closeButton;

    public Image image;

    private void Awake() {
        
    }

    // Start is called before the first frame update
    void Start()
    {
        closeButton.onClick.AddListener(() => {
            gameObject.SetActive(false);
            if (TrialStageManager.currentTrialStage > TrialStage.Quest)  {
                seal.SetActive(true);
            }
            if (FDWDSeal != null) {
                FDWDSeal.SetActive(true);
            }
        });
    }

    public void UpdateTutorial() {
        if (seal != null) {
            seal.SetActive(false);
        }

        Sprite sprite;
        if (TrialStageManager.currentTrialStage > TrialStage.Quest) {
            if (LanguageManager.isEnglish) {
                sprite = Resources.Load<Sprite>("TutorialSprite/TutorialAfterQuest_EN");
            }
            else {
                sprite = Resources.Load<Sprite>("TutorialSprite/TutorialAfterQuest");
            }
            
        }
        else {
            if (LanguageManager.isEnglish) {
                sprite = Resources.Load<Sprite>("TutorialSprite/TutorialBeforeQuest_EN");
            }
            else {
                sprite = Resources.Load<Sprite>("TutorialSprite/TutorialBeforeQuest");
            }
        }
        image.gameObject.GetComponent<RectTransform>().sizeDelta = new Vector2(sprite.bounds.size.x * 100, sprite.bounds.size.y * 100);
        image.sprite = sprite;

    }
}
