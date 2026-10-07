using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using XNode;
using TMPro;
using UnityEngine.UI;

public class PrepareNode : BaseNode
{
    [Input] public string enter;

    public override void Execute()
    {
        // UI状态重置
        
        FlowDataManager.Instance.deadcauseBtn.gameObject.SetActive(false);
        FlowDataManager.Instance.descriptionBtn.gameObject.SetActive(false);
        FlowDataManager.Instance.identityBtn.gameObject.SetActive(false);

        // FlowDataManager.Instance.deadcauseTMP.text = "";
        // FlowDataManager.Instance.descriptionTMP.text = "";
        // FlowDataManager.Instance.identityTMP.text = "";
        // FlowDataManager.Instance.errorRecordTMP.text = "";
        // 清除对话
        ChatPanelManager.Instance.DestoryAllBubble();

        FlowDataManager.Instance.NpcDataUpdate();

        Debug.Log("PrepareNode:" + this.nodeDescription.ToString() + "Execute");
        FlowDataManager.Instance.playerChoice = NpcResult.Null;
        //FlowDataManager.Instance.InfoTableBtn.interactable = false;

        //Toggle状态重置
        Toggle[] toggles = FlowDataManager.Instance.InfoToggle.GetComponentsInChildren<Toggle>();
        foreach(Toggle temp in toggles)
        {
            temp.isOn = false;
        }

        //点亮证物
        List<GameObject> taggedChildren = new List<GameObject>();
        // 遍历所有直接子物体
        foreach (Transform child in FlowDataManager.Instance.evidenceBoxGameObject.transform)
        {
            if (child.CompareTag("Evidence"))
            {
                taggedChildren.Add(child.gameObject);
                child.GetChild(1).gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("UI/EvidenceLight");
            }
        }
        
        // 鬼魂入场 —— 信息页更新
        TMP_Text[] texts = GameObject.Find("Shengsibu").transform.Find("XinxiYeTexts").GetComponentsInChildren<TMP_Text>();
        texts[0].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcName;
        texts[1].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcGender ;
        texts[2].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcBrithdate;
        texts[3].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcDeadline;
        texts[4].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcDestiny;
        texts[5].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcJurisdiction;
        //GameObject.Find("Shengsibu").transform.Find("XinxiYeTexts").gameObject.SetActive(false);

        // 鬼魂入场 —— 自动翻页至信息页
        // GameObject.Find("XinXiToggle").GetComponent<Toggle>().isOn = true ;
        // GameObject.Find("XinXiToggle").GetComponent<Toggle>().onValueChanged?.Invoke(true);

        // 鬼魂入场 —— 头像更新(此处有动画)
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().enabled = true;
        AudioManager.Instance.PlaySFX("GhostShowup");
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetBool("EnterFlag",true);

        // // 鬼魂入场 —— 入场对话（可能有)
        // string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.npcName, InkStage.PreTalk);
        // if(inkName!=null)
        // {
        //     DialogueManager.Instance.CacheInkFile(inkName,0);
        // }
        // else
        // {
        //     FlowManager flowManager = GameObject.Find("FlowManager").GetComponent<FlowManager>();
        //     //丢出路引（和其他可能的道具）
        //     FlowDataManager.Instance.GenerateTravelPermit();
        //     flowManager.JumpToNode();
        //     flowManager.currentNode.Execute();

        //     //FlowDataManager.Instance.InfoTableBtn.interactable = true;

        //     //节点跳转
        //     // flowManager.JumpToNode();
        //     // flowManager.currentNode.Execute();
        // }
    }

    public override BaseNode GetNextNode()
    {
        if(GetOutputPort("nextNode").Connection.node)
        {
            return GetOutputPort("nextNode").Connection.node as BaseNode;
        }
        else
        {
            return null;
        }
    }

    public override object GetValue(NodePort port)
    {
        return null;
    }

}
