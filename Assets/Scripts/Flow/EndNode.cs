using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XNode;
using UnityEngine.SceneManagement;

public class EndNode : BaseNode
{
    public new BaseNode nextNode
    {
        get { return null; }
        set { }
    }
    
    [Input] public string enter;

    public override void Execute()
    {
        //背景音乐改变
 
        SceneLoader.LoadScene("CardingScene");
        Debug.Log("EndNode:" + this.nodeDescription.ToString() + "Execute");
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
