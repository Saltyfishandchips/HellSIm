using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using XNode;

public class StartNode : BaseNode
{
    
    public override void Execute()
    {
        // 执行数据加载
        PlayerData.Instance.resetTodayOpportunityToMistake();
        Debug.Log("StartNode:" + this.nodeDescription.ToString() + "Execute");
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
