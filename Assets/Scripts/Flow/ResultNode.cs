using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XNode;
using System.Timers;
using UnityEngine.UI;

public class ResultNode : BaseNode
{
    public new BaseNode nextNode
    {
        get { return null; }
        set { }
    }
    [Input] public string enter;
    [Output] public string EndExit; //0
    [Output] public string PrepareExit; //1
    public int Exitcondition; //
    private Timer timer;

    public override void Execute()
    {
        //FlowDataManager.Instance.InfoTableMove(Vector3.left);
        FlowDataManager.Instance.YushenDanMove(Vector3.down);
        GameObject.Find("ZhangBtn").GetComponent<Button>().onClick.Invoke();
        BirdManager birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
        //OutExcute();
        //选择结算
        if(FlowDataManager.Instance.playerChoice == FlowDataManager.Instance.currentNpcData.npcResult)
        {
            // string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.npcName, InkStage.JudgeCompelete);
            // if(inkName!=null)
            // {
            //     DialogueManager.Instance.CacheInkFile(inkName,0);
            // }

            string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.Correct);
            birdManager.BirdTalk(str, BirdStage.Correct);
            PlayerData.Instance.fame++;
        }
        else
        {
            string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.Wrong);
            birdManager.BirdTalk(str, BirdStage.Wrong);   
            PlayerData.Instance.fame--;                            
        }

        Debug.Log("ResultNode:" + this.nodeDescription.ToString() + "Execute");
    }

    public override BaseNode GetNextNode()
    {
        NodePort outputPort = null;
        switch(Exitcondition)
        {
            case 0:
                outputPort = GetOutputPort("EndExit");
                break;

            case 1:
                outputPort = GetOutputPort("PrepareExit");
                break;
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

    public void OutExcute()
    {
        string spritePath = "JudgeSprite/" + "Day" + FlowDataManager.Instance.dayCount.ToString() + "_"  + FlowDataManager.Instance.currentNpcData.id +"_1";
        FlowDataManager.Instance.peopleImage.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(spritePath);
        
        // FlowDataManager.Instance.peopleImage.GetComponent<Animator>().enabled = true;
        // FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetBool("OutFlag",true);
        //FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetTrigger("OutFlag");
    }
}
