using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XNode;
using TMPro;
using UnityEngine.UI;

public class TrialNode : BaseNode
{
    public new BaseNode nextNode
    {
        get { return null; }
        set { }
    }
    [Input] public string enter;


    [Output] public string EndExit;
    [Output] public string PrepareExit;

    public bool EndCondition = false;
    public override void Execute()
    {
        EndCondition = false;
        Debug.Log("TrialNode:" + this.nodeDescription.ToString() + "Execute");
    }

    public override BaseNode GetNextNode()
    {
        NodePort outputPort;

        if (EndCondition)
        {
            outputPort = GetOutputPort("EndExit");
        }
        else
        {
            outputPort = GetOutputPort("PrepareExit");
        }


        if (outputPort != null && outputPort.IsConnected)
        {
            return outputPort.Connection.node as BaseNode;
        }

        return null;
    }

    public override object GetValue(NodePort port)
    {
        return null;
    }

    public void TrialInit() {
        // TrailManager初始化
        TrialNPCManager.TrialNPCManagerInit();
        
        // 显示右侧UI
        GameObject.Find("UIController").GetComponent<UIController>().ShowTrialUI();

        // 酆都文牒初始化
        GameObject FDWD = Instantiate(Resources.Load<GameObject>("Prefab/Fengduwendie"));
        FDWDCard idCard = FDWD.GetComponentInChildren<FDWDCard>();
        FDWD.transform.position = new Vector3(150, 56, 0);
        idCard.InfoInit(FlowDataManager.Instance.currentNpcData.npcName);

        // 计算Manager初始化
        TrailCalculator.Init();

        // 右侧生死簿初始化
        GameObject trialToggle = GameObject.Find("TrialToggle");
        trialToggle.SetActive(true);

        
        GameObject ssb = GameObject.Find("Shengsibu");

        GameObject trialRuleTexts = ssb.transform.GetChild(2).gameObject;
        GameObject trialInfoTexts = ssb.transform.GetChild(3).gameObject;

        // 更新右侧生死簿信息
        TMP_Text[] texts = trialInfoTexts.transform.GetComponentsInChildren<TMP_Text>();
        texts[0].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcDeadCause;
        texts[1].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcMerits;
        texts[2].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcGuilty;
        texts[3].text = FlowDataManager.Instance.ObituaryDictionary[FlowDataManager.Instance.todayNumber].npcDescription;

        // TODO: 生死簿规则页更新


        trialRuleTexts.SetActive(false);
        trialInfoTexts.SetActive(true);
        //自动翻页至信息页
        trialToggle.GetComponentInChildren<Toggle>().isOn = true;

        // 贴纸初始化
        StickerBox.hasSealed = false;

    }
}
