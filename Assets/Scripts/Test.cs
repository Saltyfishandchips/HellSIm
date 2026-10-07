using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Test : MonoBehaviour
{
    private bool trigger = true;
    public Button button1;
    public Button button2;
    public Button button3;
    public Button button4;
    public Button button5;

    private int buttonIdx = 1;
    

    // Update is called once per frame
    void Update()
    {
        if (trigger) {
            trigger = false;
            TextAsset textAsset = Resources.Load<TextAsset>("Dialogue/PreTalk");
            EvidenceDialogueManager.Instance.InitializedStroy("PreTalk", textAsset);

            // 正确情况
            // TODO:Button自带idx
            button1.onClick.AddListener(() => {
                // 不在出示证物环节
                string node = (string) EvidenceDialogueManager.Instance.currentStory.variablesState["currentNode"];
                if (node != "Evidence") {
                    return;
                }
                if (buttonIdx == 1) {
                    EvidenceDialogueManager.Instance.currentStory.ChoosePathString("Evidence" + buttonIdx.ToString());
                    buttonIdx++;
                }
                else { // 错误情况
                    EvidenceDialogueManager.Instance.currentStory.ChoosePathString("HasProblem");
                }
                
            });

            
            // 正确情况
            // TODO:Button自带idx
            button2.onClick.AddListener(() => {
                // 不在出示证物环节
                string node = (string) EvidenceDialogueManager.Instance.currentStory.variablesState["currentNode"];
                if (node != "Evidence") {
                    return;
                }
                if (buttonIdx == 2) {
                    EvidenceDialogueManager.Instance.currentStory.ChoosePathString("Evidence" + buttonIdx.ToString());
                    buttonIdx++;
                }
                else { // 错误情况
                    EvidenceDialogueManager.Instance.currentStory.ChoosePathString("HasProblem");
                }
                
            });

            // 正确情况
            // TODO:Button自带idx
            button3.onClick.AddListener(() => {
                // 不在出示证物环节
                string node = (string) EvidenceDialogueManager.Instance.currentStory.variablesState["currentNode"];
                if (node != "Evidence") {
                    return;
                }
                if (buttonIdx == 3) {
                    EvidenceDialogueManager.Instance.currentStory.ChoosePathString("Evidence" + buttonIdx.ToString());
                    buttonIdx++;
                }
                else { // 错误情况
                    EvidenceDialogueManager.Instance.currentStory.ChoosePathString("HasProblem");
                }
                
            });



            // 错误部分跳转回之前的证物环节
            EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("change", (string varName, object newValue) => {
                string node = (string) EvidenceDialogueManager.Instance.currentStory.variablesState["node"];
                EvidenceDialogueManager.Instance.currentStory.ChoosePathString(node);
            });
        }
    }
}
