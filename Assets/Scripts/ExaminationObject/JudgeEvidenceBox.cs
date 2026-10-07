using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class JudgeEvidenceBox : MonoBehaviour
{
    // 最大容量
    [SerializeField] private int maxCapacity;

    // 存储 evidence 预制体的列表
    private List<Evidence> evidences;

    private List<Vector3> positioner;
    private Dictionary<int,int> idx2EviIdDictionary;
    private Dictionary<int,int> EviId2idxDictionary;

    [SerializeField] private Sprite evidenceLight;
    [SerializeField] private Sprite evidenceAn;

    public JudgeEvidenceBox(int capacity)
    {
        maxCapacity = capacity;
        positioner = new List<Vector3>();
        evidences = new List<Evidence>();
        idx2EviIdDictionary = new Dictionary<int,int>();
        EviId2idxDictionary = new Dictionary<int,int>();
    }

    // 初始化
    private void Awake()
    {
        evidences = new List<Evidence>();
        positioner = new List<Vector3>();
        idx2EviIdDictionary = new Dictionary<int,int>();
        EviId2idxDictionary = new Dictionary<int,int>();
        for(int i=0;i<maxCapacity;i++)
        {
            positioner.Add(transform.GetChild(0).GetChild(i).localPosition);
        }

        evidenceLight = Resources.Load<Sprite>("UI/EvidenceLight");
        evidenceAn = Resources.Load<Sprite>("UI/EvidenceAn");
    }

    // Update is called once per frame
    void Update()
    {
         // 检测鼠标左键点击
        if (Input.GetMouseButtonDown(0))
        {
            DetectEvidenceClick();
        }
    }

     // 添加 evidence 到 box
    public bool AddEvidence(Evidence evidence)
    {
        if (evidences.Count < maxCapacity)
        {
            EviId2idxDictionary[evidence.id] = evidences.Count;
            evidences.Add(evidence);
            idx2EviIdDictionary[evidences.Count] = evidence.id;
            //EviId2idxDictionary[evidence.id] = evidences.Count;
            Debug.Log("Evidence added to the box.");
            return true; // 添加成功
        }
        else
        {
            Debug.LogWarning("Box is full! Cannot add more evidence.");
            return false; // 添加失败
        }
    }

    // 从 box 中删除 evidence
    public bool RemoveEvidence(Evidence evidence)
    {
        if (evidences.Contains(evidence))
        {
            evidences.Remove(evidence);
            Debug.Log("Evidence removed from the box.");
            return true; // 删除成功
        }
        else
        {
            Debug.LogWarning("Evidence not found in the box.");
            return false; // 删除失败
        }
    }

    // 获取当前存储的 evidence 数量
    public int GetCurrentEvidenceCount()
    {
        return evidences.Count;
    }

    // 检查 box 是否已满
    public bool IsFull()
    {
        return evidences.Count >= maxCapacity;
    }

    // 清空所有 evidence
    public void ClearBox()
    {
        evidences.Clear();
        Debug.Log("All evidence removed from the box.");
    }

    // 获取所有 evidence
    public List<Evidence> GetAllEvidence()
    {
        return new List<Evidence>(evidences); // 返回一个副本，防止外部修改内部列表
    }

    // 获取定位器
    public Vector3 GetPositioner(int index)
    {
        return positioner[index];
    }

    public void UpdateEvidenceDescription(int idx ,string newDescription)
    {
        idx = EviId2idxDictionary[idx];
        evidences[idx].descriptionString += "<color=red>" + newDescription +"</color>";
        evidences[idx].descriptionText.text = evidences[idx].descriptionString;

        AudioManager.Instance.PlaySFX("EvidenceUpdate");
    }

    public void RepleaceEvidenceDescription(int idx ,string targetDescription, string newDescription)
    {
        idx = EviId2idxDictionary[idx];

        newDescription = "<color=red>" + newDescription +"</color>";
         // 获取当前证据的描述字符串
        string currentDescription = evidences[idx].descriptionString;
        // 替换目标字符串
        string updatedDescription = currentDescription.Replace(targetDescription, newDescription);
        // 更新证据的描述字符串

        evidences[idx].descriptionString = updatedDescription;
        evidences[idx].descriptionText.text = evidences[idx].descriptionString;

        AudioManager.Instance.PlaySFX("EvidenceUpdate");
    }

    public void ReplaceAllDescription(int idx,string newDescription)
    {
        idx = EviId2idxDictionary[idx];
        evidences[idx].descriptionString = newDescription;
        evidences[idx].descriptionText.text = evidences[idx].descriptionString;

        AudioManager.Instance.PlaySFX("EvidenceUpdate");

    }

    // 对话检测
    void DetectEvidenceClick()
    {
        // 从摄像机发射一条射线到鼠标点击的位置
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        // 如果射线击中了某个物体
        if (Physics.Raycast(ray, out hit))
        {
            // 检查物体是否带有 "evidence" 标签
            if (hit.collider.CompareTag("Evidence") && FlowDataManager.Instance.isTalking == false)
            {
                Transform clickedTransform = hit.transform;
                string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.SpecialComparisonTable);
                if(inkName!=null)
                {
                    int idx = clickedTransform.GetSiblingIndex();
                    int eviId = idx2EviIdDictionary[idx];

                    InkStageInfo inkStageInfo = InkInfoManager.Instance.CheckInkStageInfo(inkName);
                    if(!inkStageInfo.memberTriggerlist[eviId])
                    {
                        FlowDataManager.Instance.isTalking = true;
                    }
                    
                    DialogueManager.Instance.CacheInkFile(inkName,eviId);

                    SpriteRenderer EvidenceImageSpriteRender = clickedTransform.GetChild(1).gameObject.GetComponent<SpriteRenderer>();
                    //图标变身
                    if(EvidenceImageSpriteRender)
                    {
                        EvidenceImageSpriteRender.sprite = evidenceAn;
                    }
                    
                    if(ContainsPowerOfTwo(FlowDataManager.Instance.currentNpcData.evidenceDifference,eviId-1)&&
                     !ContainsPowerOfTwo(FlowDataManager.Instance.evidenceProgress,eviId-1))
                    {
                        FlowDataManager.Instance.evidenceProgress += (int)Mathf.Pow(2,eviId-1);
                    }
                }
                // 在这里添加点击到 evidence 物体后的逻辑
            }
        }
    }

    private bool ContainsPowerOfTwo(int n, int i)
    {
        // 使用位运算检查第 i 位是否为 1
        return (n & (1 << i)) != 0;
    }
}
