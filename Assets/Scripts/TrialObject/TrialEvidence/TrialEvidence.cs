using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class TrialEvidence : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    private Image[] images;
    private Transform[] transforms;
    private TextMeshProUGUI NameText;
    private TextMeshProUGUI describeText;
    private Button evidenceButton;

    private int id;
    private void Awake() {
        images = GetComponentsInChildren<Image>();
        transforms = GetComponentsInChildren<Transform>();
        evidenceButton = GetComponent<Button>();
        NameText = transforms[2].GetComponentsInChildren<TextMeshProUGUI>()[0];
        describeText = transforms[2].GetComponentsInChildren<TextMeshProUGUI>()[1];
        transforms[2].gameObject.SetActive(false);
        // images[2]代表证物image
    }

    public void OnPointerEnter(PointerEventData eventData) {
        if (TrialBlood.canShowDescribe) {
            transforms[2].gameObject.SetActive(true);
        }
    }   

    public void OnPointerExit(PointerEventData eventData) {
        transforms[2].gameObject.SetActive(false);
    }

    public void SetEvidence(int id) {
        // 设置证物描述
        NameText.text = QuestStageManger.CheckEvidence(id).evidenceName;
        describeText.text = QuestStageManger.CheckEvidence(id).describe;

        // 设置证物图片
        Sprite image = Resources.Load<Sprite>(InfoPath.trialEvidenceSprite + QuestStageManger.CheckEvidence(id).sprite);
        images[3].sprite = image;

        transforms[0].localScale = Vector3.one;
        
        this.id = id;
        evidenceButton.onClick.AddListener(() => {
            // 如果Ink不在证物环节，直接退出
            if (EvidenceDialogueManager.Instance.currentStory == null) {
                return;
            }
            
            string node = (string) EvidenceDialogueManager.Instance.currentStory.variablesState["currentNode"];
            if (node != "Evidence") {
                return;
            }


            if (QuestStageManger.currentEvidenceIdx >= QuestStageManger.currentEvidenceList.Count) {
                return;
            }

            if (QuestStageManger.currentEvidenceList[QuestStageManger.currentEvidenceIdx].id == this.id) {
                // 出示证物音效
                AudioManager.Instance.PlaySFX("ShowEvidence");
                EvidenceDialogueManager.Instance.currentStory.ChoosePathString("Evidence" + QuestStageManger.currentEvidenceIdx.ToString());
                QuestStageManger.currentEvidenceIdx++;
            }
            else {
                // 错误证据音效
                AudioManager.Instance.PlaySFX("EvidenceWrong");
                // 证据错误
                EvidenceDialogueManager.Instance.currentStory.ChoosePathString("HasProblem");
            }
            EvidenceDialogueManager.Instance.ContinueDialogue();    
            
        });
    }

}
