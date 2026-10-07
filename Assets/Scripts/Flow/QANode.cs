using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XNode;

public class QANode : BaseNode
{
    [Input] public string enter;

    public override void Execute()
    {
        //DialogueManager.Instance.CacheInkFile("SpecialComparisonTable",0);
        Debug.Log("QANode:" + this.nodeDescription.ToString() + "Execute");
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