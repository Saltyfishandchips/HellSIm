using UnityEngine;
using XNode;
using UnityEngine.UI;
using System.Collections;
using DG.Tweening;

public class FlowManager : MonoBehaviour
{
    public FlowGraph flowGraph;
    public BaseNode currentNode;
    // Start is called before the first frame update
    void Start()
    {
        //AudioManager.Instance.PlayBackgroundMusic("LyCheckBackground");
        StartFlow();
        DialogueManager.Instance.OnStoryEnd += DialogueByFlowNode;
        BirdManager.OnBirdTalkEnd += BirdTalkEnd;
        EvidenceDialogueManager.Instance.OnStoryEnd += EvidenceTalkEnd ;
        DialogueManager.Instance.OnStoryEnd += BoxTalkEnd;
    }

    void Destroy()
    {
        DialogueManager.Instance.OnStoryEnd -= DialogueByFlowNode;
        BirdManager.OnBirdTalkEnd -= BirdTalkEnd;
        EvidenceDialogueManager.Instance.OnStoryEnd -= EvidenceTalkEnd ;
        DialogueManager.Instance.OnStoryEnd -= BoxTalkEnd;
    }

    private void StartFlow()
    {
         // 查找标记为起始节点的节点
        foreach (Node node in flowGraph.nodes)
        {
            BaseNode baseNode = node as BaseNode;
            if (baseNode != null && baseNode.isStartNode)
            {
                currentNode = baseNode;
                break;
            }
        }

        // 如果没有找到起始节点，默认从第一个节点开始
        if (currentNode == null && flowGraph.nodes.Count > 0)
        {
            currentNode = flowGraph.nodes[0] as BaseNode;
        }

        if(currentNode is StartNode startNode)
        {   
            startNode.Execute();
        }
    }

    public void JumpToNode()
    {
        switch(currentNode)
        {
            case null:
                break;

            case StartNode:
                currentNode = currentNode.GetNextNode();
                break;

            case PrepareNode:
                currentNode = currentNode.GetNextNode();
                break;

            case ExaminationNode:
                currentNode = currentNode.GetNextNode();
                break;
            
            case QANode:
                currentNode = currentNode.GetNextNode();
                break;

            case OperationNode:
                currentNode = currentNode.GetNextNode();
                break;
            
            case ResultNode:
                currentNode = currentNode.GetNextNode();
                break;

            case EndNode:
                currentNode = currentNode.GetNextNode();
                break;
            
            case TrialNode:
                currentNode = currentNode.GetNextNode();
                break;
        }
        Debug.Log("Jump to node:" + currentNode.name.ToString());
    }

    public void DialogueByFlowNode(object sender, InkStageInfoArgs inkStageInfoArgs)
    {
        switch(currentNode)
        {
            case PrepareNode:
                if(inkStageInfoArgs.inkStageInfo.inkStage == InkStage.PreTalk)
                {
                    FlowDataManager.Instance.YushenDanMove(Vector3.up);
                    BirdManager birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
                    string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.LeftPreTalk);
                    birdManager.BirdTalk(str, BirdStage.LeftPreTalk);
                    // //丢出路引（和其他可能的道具）
                    // FlowDataManager.Instance.GenerateTravelPermit();
                    JumpToNode();
                    currentNode.Execute();

                    //FlowDataManager.Instance.InfoTableBtn.interactable = true;

                    //节点跳转
                    // JumpToNode();
                    // currentNode.Execute();
                }
                break;

            case ExaminationNode:
                if(inkStageInfoArgs.inkStageInfo.inkStage == InkStage.ComparisonTable)
                {
                   if(inkStageInfoArgs.inkStageInfo.memberTriggerlist[7] == true)
                   {
                        if(inkStageInfoArgs.inkStageInfo.memberTriggerlist[8] == true)
                        {
                            if(inkStageInfoArgs.inkStageInfo.memberTriggerlist[9] == true)
                            {
                                //丢出路引（和其他可能的道具）
                                FlowDataManager.Instance.GenerateTravelPermit();
                                JumpToNode();
                                currentNode.Execute();
                            }else
                            {
                                FlowDataManager.Instance.descriptionBtn.gameObject.SetActive(true);
                            }
                        }else
                        {
                            FlowDataManager.Instance.deadcauseBtn.gameObject.SetActive(true);
                        }
                   }
                }
                break;
            //case ExaminationNode:
                // if(inkStageInfoArgs.inkStageInfo.inkStage == InkStage.ComparisonTable)
                // {
                //     ExaminationNode excurrentNode = currentNode as ExaminationNode;
                //     if(!FlowDataManager.Instance.isLuyinInstantiate)
                //     {
                //         if(FlowDataManager.Instance.currentNpcData.isCarryTravelPermit)
                //         {
                //             //携带了但是未上交
                //             FlowDataManager.Instance.GenerateTravelPermit();
                //             //excurrentNode.QAcondition = false;
                //             foreach(GameObject go in FlowDataManager.Instance.InfoTableTogglesHide)
                //             {
                //                 go.SetActive(true);
                //             } 
                //         }
                //         else
                //         {
                //             //excurrentNode.QAcondition = true;
                //             RectTransform go = GameObject.Find("YichangBtn").GetComponent<RectTransform>();
                //             StartCoroutine(MoveUI(go,Vector2.up, 135.0f,1.0f));
                //             //进入信息问答环节
                //         }  
                //     }
                //     else
                //     {
                        
                //     }
                //     JumpToNode();
                //     currentNode.Execute();
                // }
                // break;

            // case QANode:
            //     if(inkStageInfoArgs.inkStageInfo.inkStage == InkStage.SpecialComparisonTable)
            //     {
            //         foreach(GameObject t in FlowDataManager.Instance.InfoTableTogglesHide)
            //         {
            //             t.SetActive(true);
            //         } 
            //         JumpToNode();
            //         currentNode.Execute();
            //     }
            //     break;
        }
    }

    public void EvidenceTalkEnd(object sender,InkStageInfoArgs inkStageInfoArgs)
    {
        if(inkStageInfoArgs.inkStageInfo.inkStage == InkStage.Prefont)
        {
            FlowDataManager.Instance.yushendanCanvas.SetActive(false);
            FlowDataManager.Instance.peopleKuangGo.SetActive(true);
            FlowDataManager.Instance.evidenceBoxGameObject.SetActive(true);
            JumpToNode();
            currentNode.Execute();
        }
    }

    public void BoxTalkEnd(object sender,InkStageInfoArgs inkStageInfoArgs)
    {
        if(inkStageInfoArgs.inkStageInfo.inkStage == InkStage.SpecialComparisonTable)
        {
            FlowDataManager.Instance.isTalking = false;
        }
    }

    public void BirdTalkEnd(object sender, BirdDialogueEvnetArgs birdDialogueEvnetArgs)
    {
        if(birdDialogueEvnetArgs.stage == BirdStage.Return)
        {
            FlowDataManager.Instance.toggleCheck.interactable = true;
        }

        if(birdDialogueEvnetArgs.stage == BirdStage.Correct ||birdDialogueEvnetArgs.stage == BirdStage.Wrong )
        {
            if(currentNode is ResultNode)
            {
                ResultNode exResultNode = currentNode as ResultNode;
                if(FlowDataManager.Instance.playerChoice == FlowDataManager.Instance.currentNpcData.npcResult &&
                    FlowDataManager.Instance.currentNpcData.npcResult == NpcResult.YiJiao)
                {
                    exResultNode.Exitcondition = 1;
                    // TrialNode trialNode =currentNode as TrialNode;
                    // to do list
                    //测试使用！
                    // JumpToNode();
                    // // 审判初始化
                    // TrialNode trialNode =currentNode as TrialNode;
                    // // to do list
                    // // 显示右侧UI
                    // GameObject.Find("UIController").GetComponent<UIController>().HideJudgeUI();

                    // // 镜头移动
                    // GameObject mainCamera = Camera.main.gameObject;
                    // mainCamera.transform.DOMove(new Vector3(122, 0 , -100), 1f).OnComplete(() => {
                    //     trialNode.TrialInit();
                    //     });
                    // GameObject npcHead = GameObject.Find("PeopleKuang");
                    // npcHead.transform.DOMove(new Vector3(npcHead.transform.position.x + 122, npcHead.transform.position.y, 0), 1f);
                    // GameObject smallArea = GameObject.Find("Xiaotu");
                    // smallArea.transform.DOMove(new Vector3(smallArea.transform.position.x + 122, smallArea.transform.position.y, 0), 1f);
                
                    // currentNode.Execute();   
                }
                else
                {
                    if(FlowDataManager.Instance.todayCurrentNum == FlowDataManager.Instance.todayTotalnum)
                    {
                        exResultNode.Exitcondition = 0;
                    }
                    else
                    {
                        exResultNode.Exitcondition = 1;
                    }
                    if(FlowDataManager.Instance.todayCurrentNum<=6)
                    {
                        Transform temp = FlowDataManager.Instance.renwuTu.transform.GetChild(FlowDataManager.Instance.todayCurrentNum);
                        temp.gameObject.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("JudgeSprite/Icon"+FlowDataManager.Instance.dayCount+"_"+FlowDataManager.Instance.todayCurrentNum);
                        temp.gameObject.AddComponent<InfoShow>();
                    }
                    StartCoroutine(playOut());
                    // JumpToNode();
                    // currentNode.Execute();
                }
            }
        }
    }

    IEnumerator MoveUI(RectTransform rectTransform, Vector2 direction, float Distance , float time)
    {
        Vector2 startPosition = rectTransform.anchoredPosition;
        Vector2 targetPosition = startPosition + direction.normalized * Distance;

        float elapsedTime = 0f;
        
        while (elapsedTime < time)
        {
            // 插值计算位置
            rectTransform.anchoredPosition = Vector2.Lerp(startPosition, targetPosition, elapsedTime / time);

            // 更新经过时间
            elapsedTime += Time.deltaTime;
            // 等待下一帧
            yield return null;
        }

        // 确保最终位置
        rectTransform.anchoredPosition = targetPosition;
    }

    private IEnumerator playOut()
    {
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().enabled = true;
        string spritePath = "JudgeSprite/" + "Day" + FlowDataManager.Instance.dayCount.ToString() + "_"  + FlowDataManager.Instance.currentNpcData.id +"_1";
        FlowDataManager.Instance.peopleImage.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(spritePath);

        yield return new WaitForSeconds(1.0f);
        FlowDataManager.Instance.peopleImage.GetComponent<Animator>().SetBool("OutFlag",true);
    }
}
