using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using TMPro;
using Ink.Runtime;

public class DialogueParser : MonoBehaviour
{
    private static Coroutine typingCoroutine;
    public float typingSpeed = 0.05f;  // 每个字符的显示速度

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public static void ParserString(string str)
    {
        string[] strs = str.Split(new string[] { "_" }, StringSplitOptions.None);
        switch(strs[0])
        {
            case "Add":
                FlowDataManager.Instance.JudgeAddEvidence(FlowDataManager.Instance.dayCount, Convert.ToInt32(strs[1]) );
                break;
            
            case "Update":
                FlowDataManager.Instance.evidenceBox.UpdateEvidenceDescription(Convert.ToInt32(strs[1])-1,strs[2]);
                break;

            case "Text":
                TMP_Text temp = FlowDataManager.Instance.deadcauseTMP;
                switch(strs[1])
                {
                    case "deadcause":
                        temp = FlowDataManager.Instance.deadcauseTMP;
                        break;
                    case "description":
                        temp = FlowDataManager.Instance.descriptionTMP;
                        break;
                    case "identity":
                        temp = FlowDataManager.Instance.identityTMP;
                        break;
                }
                //temp.text = strs[2];
                TypewriterEffect.StartTypewriterEffect(FlowDataManager.Instance, temp, strs[2], 0.05f);
                AudioManager.Instance.PlaySFX("YuShenDanWritng");
                //StartTypewriterEffect(temp,strs[2]);
                break;
                
            case "ED":
                int num = Convert.ToInt32(strs[1]);
                Tuple<int,int> tempTuple = new Tuple<int,int>(FlowDataManager.Instance.dayCount,num);
                EvidenceDescriptionData tempEDD = FlowDataManager.Instance.EvidenceDescriptionListDictionary[tempTuple];
                switch(tempEDD.instruction)
                {
                    //添加
                    case 1:
                        FlowDataManager.Instance.evidenceBox.UpdateEvidenceDescription(tempEDD.evidenceId,tempEDD.description);
                        break;

                    //替换
                    case 2:
                        EvidenceDescriptionData targetEDD = FlowDataManager.Instance.EvidenceDescriptionListDictionary[new Tuple<int,int>(FlowDataManager.Instance.dayCount,tempEDD.targetId)];
                        FlowDataManager.Instance.evidenceBox.RepleaceEvidenceDescription(tempEDD.evidenceId ,targetEDD.description,tempEDD.description);
                        break;

                    //全部替换
                    case 3:
                        FlowDataManager.Instance.evidenceBox.ReplaceAllDescription(tempEDD.evidenceId,tempEDD.description);
                        break;
                } 
            break;
        }
    }
}
