using Unity.VisualScripting;
using UnityEngine;

public class ObjectDragger : MonoBehaviour
{
    private Camera mainCamera;
    private Transform selectedObject;
    private Vector3 offset;
    private float zCoordinate;

    // L型限制范围
    private Vector2 boundaryMax;
    private Vector2 boundaryMin;
    private Vector2 LshapeBoundary;

    // 小图区范围
    private Vector2 smallBoundaryMax;
    private Vector2 smallBoundaryMin;

    // 人像区范围
    private Vector2 PeopleBoundaryMax;
    private Vector2 PeopleBoundaryMin;

    private GameObject LuyinHighLight;
    void Start()
    {
        mainCamera = Camera.main;
        boundaryMin = new Vector2(-60.0f,-34.0f);
        boundaryMax = new Vector2(60.0f,34.0f);
        LshapeBoundary = new Vector2(24.1f,1.0f);

        smallBoundaryMax = new Vector2(18.0f,34.0f);
        smallBoundaryMin = new Vector2(-60.0f,12.3f);

        PeopleBoundaryMax = new Vector2(-47.0f,34.0f);
        PeopleBoundaryMin = new Vector2(-60.0f,12.3f);

        if(transform.CompareTag("Luyin"))
        {
            if(transform.gameObject.name == "LuyinBigGo(Clone)")
            {
                transform.localScale = transform.GetChild(1).localScale;
                transform.GetComponent<BoxCollider>().size = transform.GetChild(1).GetComponent<BoxCollider>().size;
            }
            else
            {
                transform.localScale = transform.GetChild(1).localScale;
                transform.GetComponent<BoxCollider>().size = transform.GetChild(1).GetComponent<BoxCollider>().size;
            }
            
            LuyinHighLight = GameObject.Find("LuYinHighLight");
        }
    }

    void Update()
    {
        if(gameObject)
        {
            // 检测鼠标左键按下
            if (Input.GetMouseButtonDown(0))
            {
                RaycastHit hit;
                Ray ray = mainCamera.ScreenPointToRay(Input.mousePosition);

                if (Physics.Raycast(ray, out hit))
                {
                    if (hit.transform != null && !hit.collider.CompareTag("Evidence"))
                    {
                        selectedObject = hit.transform;
                        zCoordinate = mainCamera.WorldToScreenPoint(selectedObject.position).z;
                        offset = selectedObject.position - GetMouseWorldPos();
                        AudioManager.Instance.PlaySFX("PickUp");
                    }
                }
            }

            // 检测鼠标左键松开
            if (Input.GetMouseButtonUp(0))
            {
                Color newColor = LuyinHighLight.GetComponent<SpriteRenderer>().color;
                newColor.a = 0.0f; // 恢复到完全不透明
                LuyinHighLight.GetComponent<SpriteRenderer>().color = newColor;
                selectedObject = null;
            }

            // 拖动物体
            if (selectedObject != null)
            {
                Vector3 temp = GetMouseWorldPos() + offset;
                temp.x = Mathf.Clamp(temp.x,boundaryMin.x,boundaryMax.x);
                temp.y = Mathf.Clamp(temp.y,boundaryMin.y,boundaryMax.y);

                float eps = 1.0f;
                // LshapeClamp
                if((temp.x >= LshapeBoundary.x && temp.x<= boundaryMax.x)&&(temp.y <= LshapeBoundary.y && temp.y>=boundaryMin.y))
                {
                    if(Mathf.Abs(temp.x-LshapeBoundary.x)<Mathf.Abs(temp.y-LshapeBoundary.y))
                    {
                        temp.x = LshapeBoundary.x - eps;
                    }
                    else
                    {
                        temp.y = LshapeBoundary.y + eps;
                    }
                }
                selectedObject.position = temp;

                //物体变换
                if(selectedObject.transform.CompareTag("Luyin"))
                {
                    // if(selectedObject.position.x >= smallBoundaryMin.x && selectedObject.position.x <= smallBoundaryMax.x
                    //     && selectedObject.position.y >= smallBoundaryMin.y && selectedObject.position.y <=smallBoundaryMax.y )
                    // {
                    //     //小图内部
                    //     selectedObject.transform.GetChild(2).gameObject.SetActive(false); // 印章区
                    //     selectedObject.transform.GetChild(3).gameObject.SetActive(false); // 信息框
                    //     selectedObject.transform.localScale = selectedObject.transform.GetChild(0).localScale;
                    //     selectedObject.transform.GetComponent<SpriteRenderer>().sprite = selectedObject.transform.GetChild(0).GetComponent<SpriteRenderer>().sprite;
                    //     selectedObject.transform.GetComponent<BoxCollider>().size = selectedObject.transform.GetChild(0).GetComponent<BoxCollider>().size;
                    // }
                    // else
                    // {
                    //     selectedObject.transform.GetChild(2).gameObject.SetActive(true); // 印章区
                    //     selectedObject.transform.GetChild(3).gameObject.SetActive(true); // 信息框
                    //     selectedObject.transform.localScale = selectedObject.transform.GetChild(1).localScale;
                    //     if(LanguageManager.isEnglish)
                    //     {
                    //         selectedObject.transform.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EnSprite/LuYinBig");
                    //     }
                    //     else
                    //     {
                    //         selectedObject.transform.GetComponent<SpriteRenderer>().sprite = selectedObject.transform.GetChild(1).GetComponent<SpriteRenderer>().sprite;
                    //     }
                    //     selectedObject.transform.GetComponent<BoxCollider>().size = selectedObject.transform.GetChild(1).GetComponent<BoxCollider>().size;
                    // }
                    
                    FlowManager flowManager = GameObject.Find("FlowManager").GetComponent<FlowManager>();
                    if(FlowDataManager.Instance.playerChoice != NpcResult.Null && flowManager.currentNode is OperationNode)
                    {
                        if((FlowDataManager.Instance.evidenceProgress == FlowDataManager.Instance.currentNpcData.evidenceDifference))
                        {
                            //路引light
                            float alpha = Mathf.PingPong(Time.time * 1.0f, 1f);
                            // 修改目标物体的透明度
                            Color newColor = LuyinHighLight.GetComponent<SpriteRenderer>().color;
                            newColor.a = alpha;
                            LuyinHighLight.GetComponent<SpriteRenderer>().color = newColor;
                        }

                        if(selectedObject.position.x >= PeopleBoundaryMin.x && selectedObject.position.x <= PeopleBoundaryMax.x 
                            && selectedObject.position.y>=PeopleBoundaryMin.y && selectedObject.position.y<=PeopleBoundaryMax.y )
                        {
                            if(GameObject.Find("FlowManager").GetComponent<FlowManager>().currentNode is OperationNode)
                            {
                                if( (FlowDataManager.Instance.playerProgress == FlowDataManager.Instance.currentNpcData.paperDifference) && 
                                (FlowDataManager.Instance.evidenceProgress == FlowDataManager.Instance.currentNpcData.evidenceDifference) && 
                                FlowDataManager.Instance.toggleCheck.isOn)
                                {
                                    selectedObject = null;
                                    Destroy(gameObject);
                                    Color newColor = LuyinHighLight.GetComponent<SpriteRenderer>().color;
                                    newColor.a = 0.0f; // 恢复到完全不透明
                                    LuyinHighLight.GetComponent<SpriteRenderer>().color = newColor;
                                    
                                    GameObject.Find("FlowManager").GetComponent<FlowManager>().JumpToNode() ;
                                    GameObject.Find("FlowManager").GetComponent<FlowManager>().currentNode.Execute();
                                }
                                else if((FlowDataManager.Instance.playerProgress != FlowDataManager.Instance.currentNpcData.paperDifference) && 
                                (FlowDataManager.Instance.evidenceProgress != FlowDataManager.Instance.currentNpcData.evidenceDifference))
                                {
                                    BirdManager birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
                                    string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.BothUndo);
                                    birdManager.BirdTalk(str, BirdStage.BothUndo);

                                    Vector3 tempposi = selectedObject.position;
                                    tempposi.x = 10.0f;
                                    tempposi.y = 0.0f;
                                    selectedObject.position = tempposi;
                                    selectedObject = null;
                                }
                                else if(FlowDataManager.Instance.playerProgress != FlowDataManager.Instance.currentNpcData.paperDifference)
                                {
                                    BirdManager birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
                                    string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.LeftComparisonsUndo);
                                    birdManager.BirdTalk(str, BirdStage.LeftComparisonsUndo);

                                    Vector3 tempposi = selectedObject.position;
                                    tempposi.x = 10.0f;
                                    tempposi.y = 0.0f;
                                    selectedObject.position = tempposi;
                                    selectedObject = null;
                                }
                                else if(FlowDataManager.Instance.evidenceProgress != FlowDataManager.Instance.currentNpcData.evidenceDifference)
                                {
                                    BirdManager birdManager = GameObject.Find("BridSprite").GetComponent<BirdManager>();
                                    string str = birdManager.BirdDialogue(FlowDataManager.Instance.currentNpcData.day,FlowDataManager.Instance.currentNpcData.id,
                                            BirdStage.LeftEvidenceUndo);
                                    birdManager.BirdTalk(str, BirdStage.LeftEvidenceUndo);

                                    Vector3 tempposi = selectedObject.position;
                                    tempposi.x = 10.0f;
                                    tempposi.y = 0.0f;
                                    selectedObject.position = tempposi;
                                    selectedObject = null;
                                }
                            }
                        }

                    }
                    else
                    {
                        if(selectedObject.position.x >= PeopleBoundaryMin.x && selectedObject.position.x <= PeopleBoundaryMax.x 
                            && selectedObject.position.y>=PeopleBoundaryMin.y && selectedObject.position.y<=PeopleBoundaryMax.y )
                        {
                            Vector3 tempposi = selectedObject.position;
                            if(Mathf.Abs(selectedObject.position.x-PeopleBoundaryMax.x)<Mathf.Abs(selectedObject.position.y-PeopleBoundaryMin.y))
                            {
                                tempposi.x = PeopleBoundaryMax.x;
                            }
                            else
                            {
                                tempposi.y = PeopleBoundaryMin.y;
                            }
                            selectedObject.position = tempposi;
                        }
                    }
                }

                //End
            }
        }
    }

    // 获取鼠标在世界空间中的位置
    private Vector3 GetMouseWorldPos()
    {
        Vector3 mousePoint = Input.mousePosition;
        mousePoint.z = zCoordinate;

        return mainCamera.ScreenToWorldPoint(mousePoint);
    }
}
