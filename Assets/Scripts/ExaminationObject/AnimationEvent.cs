using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationEvent : MonoBehaviour
{
    public string spritePath;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
       spritePath = "JudgeSprite/" + "Day" + FlowDataManager.Instance.dayCount.ToString() + "_"  + FlowDataManager.Instance.currentNpcData.id +"_";
    }

    public void OnEnterEnd()
    {
        StartCoroutine(EnterWithDelay());
    }

    public void OnOutEnd()
    {
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetBool("OutFlag",false);
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().enabled = false;
        transform.GetComponent<SpriteRenderer>().sprite = null;
        StartCoroutine(OutWithDelay());
    }

    public IEnumerator EnterWithDelay()
    {
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetBool("EnterFlag",false);
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().enabled = false;
        transform.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(spritePath + "1");
        yield return new WaitForSeconds(1.0f);
        transform.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(spritePath + "2");
        yield return new WaitForSeconds(1.0f);

        // 鬼魂入场 —— 入场对话（可能有)
        string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.PreTalk);
        if(inkName!=null)
        {
            DialogueManager.Instance.CacheInkFile(inkName,0);
        }
        else
        {
            FlowManager flowManager = GameObject.Find("FlowManager").GetComponent<FlowManager>();
            //丢出路引（和其他可能的道具）
            FlowDataManager.Instance.GenerateTravelPermit();
            flowManager.JumpToNode();
            flowManager.currentNode.Execute();

            //FlowDataManager.Instance.InfoTableBtn.interactable = true;

            //节点跳转
            // flowManager.JumpToNode();
            // flowManager.currentNode.Execute();
        }
    }

    private IEnumerator OutWithDelay()
    {
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetBool("OutFlag",false);
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().enabled = false;
        transform.GetComponent<SpriteRenderer>().sprite = null;
        yield return new WaitForSeconds(1.5f);

        FlowManager flowManager = GameObject.Find("FlowManager").GetComponent<FlowManager>();
        flowManager.JumpToNode();
        flowManager.currentNode.Execute();

    }
}
