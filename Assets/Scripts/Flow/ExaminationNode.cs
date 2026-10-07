using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XNode;

public class ExaminationNode : BaseNode
{
    [Input] public string enter;

    public override void Execute()
    {
        // FlowDataManager.Instance.deadcauseBtn.gameObject.SetActive(true);
        // FlowDataManager.Instance.descriptionBtn.gameObject.SetActive(true);
        //FlowDataManager.Instance.identityBtn.gameObject.SetActive(true);
        //FlowDataManager.Instance.InfoToggle.SetActive(true);
        Debug.Log("ExaminationNode:" + this.nodeDescription.ToString() + "Execute");
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
