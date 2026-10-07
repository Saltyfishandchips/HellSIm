using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class UIController : MonoBehaviour
{
    public List<GameObject> groupFirst; // 需要隐藏的 UI 组
    public List<GameObject> groupSecond; // 需要显示的 UI 组
    public List<GameObject> groupTrailUI; // 右侧审判的 UI 组；
    public List<GameObject> groupJudgeUI; // 左侧审核区 UI 组

    [SerializeField] private GameObject InfoTableGo;
    private Vector3 ZhangBtnDirection;
    private Vector3 InfoTableBtnDirection;
    private float zhangDistance = 23.5f; // 移动距离
    private float infoTableDistance = 38.5f;
    private float duration = 0.5f; // 移动时间
    public GameObject Zhang;
    public GameObject InfoTable;
    public RectTransform ZhangBtn;
    public RectTransform InfoTableBtn;

    public FlowManager flowManager;

    //审查前物品
    public GameObject EvidenceBoxGO;
    public GameObject DailyGo;

    // 证物按钮图标
    public GameObject EvidenceBoxBtn;
    public Sprite EvidenceSelectedSprite;
    public Sprite EvidenceUnSelectedSprite;

    // 人物关系图
    public GameObject RenWuGuanXiTuGo;
    public Button RenWuGuanXiTuBtn;
    public Sprite RenWuSprite;
    public Sprite ReturnSprite;

    //UI上的Bar
    public GameObject barGo;
    public bool isZhangClick;

    //新手引导按钮
    public Button WenHaoBtn;
    public Sprite WenHaoSprite;
    public Sprite WenHaoCloseSprite;
    public GameObject WenHaoCanvas;

    // 预审单对话界面
    public GameObject YuCanvasGo;
    public GameObject PeopleKuangGo;

    //惊堂木
    private bool isStartLight;
    // 定时器
    private TimerManager  timerManager = new TimerManager();
    private int timeID;

    // Start is called before the first frame update
    void Start()
    {
        isStartLight = false;
        timerManager.Init();

        ZhangBtnDirection = Vector3.right;
        InfoTableBtnDirection = Vector3.left;

        foreach(var go in groupFirst)
        {
            go.SetActive(true);
        }

        foreach(var go in groupSecond)
        {
            go.SetActive(false);
        }

        foreach(var go in groupTrailUI) {
            go.SetActive(false);
        }

        //
        isZhangClick = false;
        RenWuGuanXiTuGo = GameObject.Find("RenWuGuanXiTu");
        RenWuGuanXiTuGo.SetActive(false);

        Color tempColor = barGo.GetComponent<Image>().color;
        tempColor.a = 0.0f; 
        barGo.GetComponent<Image>().color = tempColor;

        //
        timeID = timerManager.Schedule(StartGlowing,17.5f,0.0f);

        // 人物关系图
        if(LanguageManager.isEnglish)
        {
            RenWuSprite = Resources.Load<Sprite>("EnSprite/Rc1");
            ReturnSprite = Resources.Load<Sprite>("EnSprite/Rc0");
        }
    }

    // Update is called once per frame
    void Update()
    {
        timerManager.Update();
        if(GameObject.Find("JudgeGravelChild") &&  isStartLight ==true)
        {
            //GameObject.Find("JudgeGravelChild").GetComponent<Animator>().SetBool("isJuHe",true);
            SpriteRenderer spriteRenderer =  GameObject.Find("JudgeGravelChild").GetComponent<SpriteRenderer>();
            if (spriteRenderer != null)
            {
            // 使用 PingPong 让 alpha 值在 0 到 1 之间来回变化
            float alpha = Mathf.PingPong(Time.time * 1.0f, 1f);

            // 获取当前颜色并设置新的 alpha 值
            Color newColor = spriteRenderer.color;
            newColor.a = alpha;

            // 更新 SpriteRenderer 的颜色
            spriteRenderer.color = newColor;
            }
        }
    }

    public void onJudgeGravelBtnClicked()
    {
        AudioManager.Instance.PlaySFX("Wood");  
        foreach(var go in groupFirst)
        {
            go.SetActive(false);
        }

        foreach(var go in groupSecond)
        {
            go.SetActive(true);
        }

        Color tempColor = barGo.GetComponent<Image>().color;
        tempColor.a = 255.0f; 
        barGo.GetComponent<Image>().color = tempColor;

        //人物关系图Btn图标改变
        RenWuGuanXiTuBtn.transform.GetChild(0).GetComponent<Image>().sprite = ReturnSprite;

        flowManager.JumpToNode();
        flowManager.currentNode.Execute();
    }

    public void onZhangBtnClicked()
    {
        StartCoroutine(MoveOverTime(Zhang,ZhangBtnDirection, zhangDistance, duration));
        //StartCoroutine(MoveAndRotate(ZhangBtnDirection, 326.0f ,180,duration));
        ZhangBtnDirection *= -1;
        if(ZhangBtnDirection ==Vector3.left)
        {
            AudioManager.Instance.PlaySFX("ZhangBoxOpen");
            isZhangClick = true;
        }
        else
        {
            AudioManager.Instance.PlaySFX("ZhangBoxClose");
            isZhangClick = false;
        }
    }

    public void onInfoTableBtnClicked()
    {
        StartCoroutine(MoveOverTime(InfoTable,InfoTableBtnDirection, infoTableDistance, duration));
        StartCoroutine(MoveUI(InfoTableBtn,InfoTableBtnDirection,610.0f,duration));
        InfoTableBtnDirection *= -1;
    }

    public void onEvidenceBoxClicked()
    {
        if(!EvidenceBoxGO.activeSelf)
        {
            AudioManager.Instance.PlaySFX("ZhengWuBoxOpen");
        }
        else
        {
            AudioManager.Instance.PlaySFX("ZhengWuBoxClose");
        }
        EvidenceBoxGO.SetActive(!EvidenceBoxGO.activeSelf);
        EvidenceBoxBtn.GetComponent<Image>().sprite = EvidenceBoxGO.activeSelf? EvidenceUnSelectedSprite:EvidenceSelectedSprite;
    }

    public void onDailyBtnClicked()
    {
        DailyGo.SetActive(!DailyGo.activeSelf);
    }

    public void onYichangBtnClicked()
    {
        RectTransform go = GameObject.Find("YichangBtn").GetComponent<RectTransform>();
        StartCoroutine(MoveUI(go,Vector2.down, 135.0f,1.0f));
        GameObject prefab = Resources.Load<GameObject>("Prefabs/LuyinBigGo"); 
        FlowDataManager.Instance.LuyinInstance = Instantiate(prefab);

        GameObject childTexts = FlowDataManager.Instance.LuyinInstance.transform.GetChild(3).gameObject;
        TMP_Text[] texts = childTexts.transform.GetComponentsInChildren<TMP_Text>();
        for(int i = 0 ; i<6 ; i++)
        {
            texts[i].GetComponent<MeshRenderer>().sortingOrder = 2;
        }

        FlowDataManager.Instance.isLuyinInstantiate = true;

        string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.npcName, InkStage.SpecialComparisonTable);
        if(inkName!=null)
        {
            DialogueManager.Instance.CacheInkFile(inkName,0);
        }
    }

    IEnumerator MoveOverTime(GameObject go, Vector3 direction, float zhangDistance, float duration)
    {
        Vector3 startPosition = go.transform.position;
        Vector3 endPosition = startPosition + direction.normalized * zhangDistance;
        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            go.transform.position = Vector3.Lerp(startPosition, endPosition, elapsedTime / duration);
            elapsedTime += Time.deltaTime;
            yield return null; // 等待下一帧
        }

        // 确保物体精确到达目标位置
        go.transform.position = endPosition;
    }

    IEnumerator MoveAndRotate(Vector2 direction,float zhangDistance , float angle, float time)
    {
        Vector2 startPosition = ZhangBtn.anchoredPosition;
        Vector2 targetPosition = startPosition + direction.normalized * zhangDistance;
        Quaternion startRotation = ZhangBtn.rotation;
        Quaternion endRotation = startRotation * Quaternion.Euler(0, 0, angle); // 在Z轴上旋转
        float elapsedTime = 0f;
        

        while (elapsedTime < time)
        {
            // 插值计算位置和旋转
            ZhangBtn.anchoredPosition = Vector2.Lerp(startPosition, targetPosition, elapsedTime / time);
            ZhangBtn.rotation = Quaternion.Lerp(startRotation, endRotation, elapsedTime / time);

            // 更新经过时间
            elapsedTime += Time.deltaTime;

            // 等待下一帧
            yield return null;
        }

        // 确保最终位置和旋转
        ZhangBtn.anchoredPosition = targetPosition;
        ZhangBtn.rotation = endRotation;
    }

    IEnumerator MoveUI(RectTransform rectTransform, Vector2 direction,float Distance , float time)
    {
        Vector2 startPosition = rectTransform.anchoredPosition;
        Vector2 targetPosition = startPosition + direction.normalized * Distance;

        float elapsedTime = 0f;
        
        if(direction == Vector2.right)
        {
            InfoTableGo.SetActive(false);
        }

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
        if(direction == Vector2.left)
        {
            InfoTableGo.gameObject.SetActive(true);
        }
    }

    // 显示右侧审判的UI
    public void ShowTrialUI() {
        foreach (var go in groupTrailUI) {
            go.SetActive(true);
        }
    }

    // 隐藏右侧审判的UI
    public void HideTrialUI() {
        foreach (var go in groupTrailUI) {
            go.SetActive(false);
        }
    }

    public void ShowJudgeUI() {
        foreach (var go in groupJudgeUI) {
            go.SetActive(true);
        }
    }

    public void HideJudgeUI() {
        foreach (var go in groupJudgeUI) {
            go.SetActive(false);
        }
    }

    public void onDeadcauseBtnClicked()
    {
        FlowDataManager.Instance.deadcauseBtn.gameObject.SetActive(false);

        string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
        if(inkName!=null)
        {
            DialogueManager.Instance.CacheInkFile(inkName,8);
        }

        //FlowDataManager.Instance.descriptionBtn.gameObject.SetActive(true);
    }

    public void onDescriptionBtnClicked()
    {
        FlowDataManager.Instance.descriptionBtn.gameObject.SetActive(false);
        string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
        if(inkName!=null)
        {
            DialogueManager.Instance.CacheInkFile(inkName,9);
        }
        
        // //丢出路引（和其他可能的道具）
        // FlowDataManager.Instance.GenerateTravelPermit();
        // flowManager.JumpToNode();
        // flowManager.currentNode.Execute();
    }

    public void onIdentityBtnClicked()
    {
        FlowDataManager.Instance.identityBtn.gameObject.SetActive(false);

        PeopleKuangGo.SetActive(false);
        if(EvidenceBoxGO.activeSelf)
        {
            EvidenceBoxGO.SetActive(false);
            EvidenceBoxBtn.GetComponent<Image>().sprite = EvidenceSelectedSprite;
        }
        AudioManager.Instance.PlaySFX("UIClick3");

        //背景音乐改变
        AudioManager.Instance.PlayBackgroundMusic("ZhiXunLeft");
        
        YuCanvasGo.SetActive(true);
        string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.Prefont);
        TextAsset temp = Resources.Load<TextAsset>(InfoPath.inkPath + inkName);
        if(inkName!=null)
        {
            EvidenceDialogueManager.Instance.InitializedStroy(inkName,temp);
            //DialogueManager.Instance.CacheInkFile(inkName,7);
        }
        // string inkName = InkInfoManager.Instance.NPCinkStageInfo(FlowDataManager.Instance.currentNpcData.idx, InkStage.ComparisonTable);
        // if(inkName!=null)
        // {
        //     DialogueManager.Instance.CacheInkFile(inkName,7);
        // }

        //FlowDataManager.Instance.deadcauseBtn.gameObject.SetActive(true);
    }

    public void onRenWuBtnClicked()
    {
        RenWuGuanXiTuGo.SetActive(false);
    }

    public void onBarBtnClicked()
    {
        RenWuGuanXiTuGo.SetActive(!RenWuGuanXiTuGo.activeSelf);
        RenWuGuanXiTuBtn.GetComponent<Image>().sprite = RenWuGuanXiTuGo.activeSelf? ReturnSprite:RenWuSprite;
        //FlowDataManager.Instance.LuyinInstance
        if(FlowDataManager.Instance.identityBtn.interactable)
        {
            FlowDataManager.Instance.identityBtn.interactable = false;
            EvidenceBoxGO.SetActive(false);
            RenWuGuanXiTuBtn.transform.GetChild(0).GetComponent<Image>().sprite = RenWuSprite;
        }
        else
        {
            FlowDataManager.Instance.identityBtn.interactable = true;
            if(!GameObject.Find("Daily"))
            {
                EvidenceBoxGO.SetActive(true);
                RenWuGuanXiTuBtn.transform.GetChild(0).GetComponent<Image>().sprite = ReturnSprite;
            }
        }

        AudioManager.Instance.PlaySFX("UIClick4");
        // 取消按钮的焦点
        EventSystem.current.SetSelectedGameObject(null);
    }

    public void onWenHaoBtnClicked()
    {
        //RenWuGuanXiTuGo.SetActive(!RenWuGuanXiTuGo.activeSelf);
        WenHaoCanvas.SetActive(true);
        FlowDataManager.isYinDao =true;

        WenHaoBtn.GetComponent<Image>().sprite = WenHaoCloseSprite;
        if(EvidenceBoxGO.activeSelf)
        {
            EvidenceBoxGO.SetActive(false);
            EvidenceBoxBtn.GetComponent<Image>().sprite = EvidenceSelectedSprite;
        }
        RenWuGuanXiTuBtn.transform.GetChild(0).GetComponent<Image>().sprite = RenWuSprite;

        AudioManager.Instance.PlaySFX("UIClick4");
    }

    public void onWenCanvasBtnClicked()
    {
        WenHaoCanvas.SetActive(false);
        WenHaoBtn.GetComponent<Image>().sprite = WenHaoSprite;

        EvidenceBoxGO.SetActive(true);
        RenWuGuanXiTuBtn.transform.GetChild(0).GetComponent<Image>().sprite = ReturnSprite;

        FlowDataManager.isYinDao =false;
        AudioManager.Instance.PlaySFX("UIClick4");
    }

    public void StartGlowing()
    {
        timerManager.Unschedule(timeID);
        isStartLight = true;
        // if(GameObject.Find("JudgeGravelChild"))
        // {
        //     //GameObject.Find("JudgeGravelChild").GetComponent<Animator>().SetBool("isJuHe",true);
        //     SpriteRenderer spriteRenderer =  GameObject.Find("JudgeGravelChild").GetComponent<SpriteRenderer>();
        //     if (spriteRenderer != null)
        //     {
        //     // 使用 PingPong 让 alpha 值在 0 到 1 之间来回变化
        //     float alpha = Mathf.PingPong(Time.time * 1.0f, 1f);

        //     // 获取当前颜色并设置新的 alpha 值
        //     Color newColor = spriteRenderer.color;
        //     newColor.a = alpha;

        //     // 更新 SpriteRenderer 的颜色
        //     spriteRenderer.color = newColor;
        //     }
        // }
    }
}
