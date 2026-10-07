using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XNode;
using UnityEngine.UI;

public class OperationNode : BaseNode
{
    [Input] public string enter;

    public override void Execute()
    {
        //背景音乐改变
        AudioManager.Instance.PlayBackgroundMusic("Main1");

        FlowDataManager.Instance.InfoTableMove(Vector3.right);

        //丢出路引（和其他可能的道具）
        FlowDataManager.Instance.GenerateTravelPermit();

        //生死簿信息页跳转
        GameObject.Find("XinXiToggle").GetComponent<Toggle>().isOn = true ;
        GameObject.Find("XinXiToggle").GetComponent<Toggle>().onValueChanged?.Invoke(true);

        Debug.Log("OperationNode:" + this.nodeDescription.ToString() + "Execute");
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