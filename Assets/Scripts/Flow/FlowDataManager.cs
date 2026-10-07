using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System;
using System.Linq;
using UnityEngine.UI;
// using Mono.Cecil;

public class FlowDataManager : MonoBehaviour
{
    // 静态实例变量
    private static FlowDataManager _instance;
    public static bool isYinDao = false;
    
    //全局变量
    public int dayCount;
    public int todayTotalnum;
    public int todayCurrentNum;
    public TMP_Text[] dailyTexts;
    public Dictionary<Tuple<int,int>,DailyData> DailyDictionary;
    public Dictionary<Tuple<int,int>,NpcData> NpcDataDictionary;
    public Dictionary<Tuple<int,int>,TravelPermitData> TravelPermitDictionary;
    public Dictionary<Tuple<int,int>,ObituaryData> ObituaryDictionary;
    public Dictionary<Tuple<int,int>,PaperWorkData> PaperWorkDictionary;
    public Dictionary<Tuple<int,int>,EvidenceData> EvidenceListDictionary;
    public Dictionary<Tuple<int,int>,EvidenceDescriptionData> EvidenceDescriptionListDictionary;
    public Tuple<int,int> todayNumber; //目前访问的序号
    public NpcData currentNpcData; //当前npc
    public int playerProgress; //玩家当前的人物关卡进度
    public int evidenceProgress; //证物询问进度

    // 路引相关
    public GameObject LuyinPrefeb;
    public bool isLuyinInstantiate;
    public GameObject LuyinInstance;

    public NpcResult playerChoice;

    //信息表相关控件
    public Button InfoTableBtn;
    public GameObject[] InfoTableTogglesHide;
    public GameObject InfoToggle;
    public GameObject InfoTableGo;

    //对照表确认项
    public Toggle toggleCheck;
    public bool[] toggleInfo;

    //证物箱
    public GameObject evidenceBoxGameObject;
    public JudgeEvidenceBox evidenceBox;
    public GameObject evidencePrefab;

    // 人物头像
    public GameObject peopleImage;
    public GameObject peopleKuangGo;

    // 人物关系图
    public GameObject renwuTu;

    // 预审单
    public Button deadcauseBtn;
    public Button descriptionBtn;
    public Button identityBtn;
    public TMP_Text deadcauseTMP;
    public TMP_Text descriptionTMP;
    public TMP_Text identityTMP;
    public TMP_Text errorRecordTMP;
    public GameObject yuShenDanGo;
    public GameObject yushendanCanvas;

    //每日新闻
    public TMP_Text daliyTMP;

    //证物对话控制
    public bool isTalking;
    public bool[] infoComparisonArray;

    // 公共属性来访问实例
    public static FlowDataManager Instance
    {
        get
        {
            // 如果实例为空，尝试找到一个已经存在的实例
            if (_instance == null)
            {
                _instance = FindObjectOfType<FlowDataManager>();

                // 如果仍然为空，创建一个新的 GameObject 并添加 FlowDataManager 组件
                if (_instance == null)
                {
                    GameObject singletonObject = new GameObject();
                    _instance = singletonObject.AddComponent<FlowDataManager>();
                    singletonObject.name = typeof(FlowDataManager).ToString() + " (Singleton)";
                }
            }
            return _instance;
        }
    }

    // 确保实例在场景切换时不被销毁
    private void Awake()
    {
        if (_instance == null)
        {
            _instance = this;
            //DontDestroyOnLoad(gameObject);
            
            // 初始化属性
            InitializeProperties();
        }
        else if (_instance != this)
        {
            Destroy(gameObject);
        }
    }

    private void TempStart()
    {
        // dayCount = 1;
        dayCount = TrialTotalInfo.currentDay;

        if(LanguageManager.isEnglish)
        {
            //DailyDictionary = JsonReader.LoadJsonFromFile<DailyData>("Json/EN/DailyDataTest");
            NpcDataDictionary = JsonReader.LoadJsonFromFile<NpcData>("Json/EN/npcDataTest");
            TravelPermitDictionary = JsonReader.LoadJsonFromFile<TravelPermitData>("Json/EN/TravelPermitDataTest");
            ObituaryDictionary = JsonReader.LoadJsonFromFile<ObituaryData>("Json/EN/ObituaryDataTest");
            //PaperWorkDictionary = JsonReader.LoadJsonFromFile<PaperWorkData>("Json/EN/PaperWorkDataTest");
            EvidenceListDictionary = JsonReader.LoadJsonFromFile<EvidenceData>("Json/EN/EvidenceList");
            EvidenceDescriptionListDictionary = JsonReader.LoadJsonFromFile<EvidenceDescriptionData>("Json/EN/EvidenceDescriptionList");
        }
        else
        {
            DailyDictionary = JsonReader.LoadJsonFromFile<DailyData>("Json/DailyDataTest");
            NpcDataDictionary = JsonReader.LoadJsonFromFile<NpcData>("Json/npcDataTest");
            TravelPermitDictionary = JsonReader.LoadJsonFromFile<TravelPermitData>("Json/TravelPermitDataTest");
            ObituaryDictionary = JsonReader.LoadJsonFromFile<ObituaryData>("Json/ObituaryDataTest");
            PaperWorkDictionary = JsonReader.LoadJsonFromFile<PaperWorkData>("Json/PaperWorkDataTest");
            EvidenceListDictionary = JsonReader.LoadJsonFromFile<EvidenceData>("Json/EvidenceList");
            EvidenceDescriptionListDictionary = JsonReader.LoadJsonFromFile<EvidenceDescriptionData>("Json/EvidenceDescriptionList");
        }


        LuyinPrefeb = Resources.Load<GameObject>("Prefabs/LuyinGo");

    }

    private void InitializeProperties()
    {
        AudioManager.Instance.PlayBackgroundMusic("Main1");
        TempStart();
        //dayCount++;
        todayTotalnum  = NpcDataDictionary.Keys.Count(key => key.Item1 == dayCount);
        todayCurrentNum = 0;
        isLuyinInstantiate = false;
        //todayNumber = new Tuple<int, int>(dayCount,todayCurrentNum);
        //currentNpcData = NpcDataDictionary[todayNumber];
        // dailyTexts[0].text = DailyDictionary[new Tuple<int, int>(dayCount,1)].newsATitle;
        // dailyTexts[1].text = DailyDictionary[new Tuple<int, int>(dayCount,1)].newsATextContent;
        // dailyTexts[2].text = DailyDictionary[new Tuple<int, int>(dayCount,1)].newsBTitle;
        // dailyTexts[3].text = DailyDictionary[new Tuple<int, int>(dayCount,1)].newsBTextContent;
        // dailyTexts[4].text = DailyDictionary[new Tuple<int, int>(dayCount,1)].newsCTitle;
        // dailyTexts[5].text = DailyDictionary[new Tuple<int, int>(dayCount,1)].newsCTextContent;

        updateDailtText();

        //初始置零
        toggleInfo = new bool[6];
        infoComparisonArray = new bool[6];
        for(int i =0;i<6;i++)
        {
            toggleInfo[i] = false;
            infoComparisonArray[i] = false;
        }
        //添加初始证物
        JudgeAddOriginEvidence();

        //生成当日人物关系图
        GameObject renWuTuPrefab = Resources.Load<GameObject>("JudgeSprite/RenWuGuanXiTu" + dayCount.ToString());
        renwuTu = Instantiate(renWuTuPrefab);
        renwuTu.name = "RenWuGuanXiTu";

        isTalking = false;
    }

    public void NpcDataUpdate()
    {
        isTalking = false;
        //初始置零
        for(int i =0;i<6;i++)
        {
            toggleInfo[i] = false;
            infoComparisonArray[i] = false;
        }
        FlowDataManager.Instance.todayCurrentNum++;
        isLuyinInstantiate = false;
        todayNumber = new Tuple<int, int>(dayCount,todayCurrentNum);
        currentNpcData = NpcDataDictionary[todayNumber];
        playerProgress = 0;
        evidenceProgress = 0;
    }

    public void GenerateTravelPermit()
    {
        LuyinInstance = Instantiate(FlowDataManager.Instance.LuyinPrefeb);
        GameObject childTexts = LuyinInstance.transform.GetChild(3).gameObject;
        TMP_Text[] texts = childTexts.transform.GetComponentsInChildren<TMP_Text>();
        // for(int i = 0 ; i<6 ; i++)
        // {
        //     texts[i].GetComponent<MeshRenderer>().sortingOrder = 3;
        // }
        texts[0].text = FlowDataManager.Instance.TravelPermitDictionary[FlowDataManager.Instance.todayNumber].npcName;
        texts[1].text = FlowDataManager.Instance.TravelPermitDictionary[FlowDataManager.Instance.todayNumber].npcGender;
        texts[2].text = FlowDataManager.Instance.TravelPermitDictionary[FlowDataManager.Instance.todayNumber].npcBirthdate;
        texts[3].text = FlowDataManager.Instance.TravelPermitDictionary[FlowDataManager.Instance.todayNumber].npcDeadline;
        texts[4].text = FlowDataManager.Instance.TravelPermitDictionary[FlowDataManager.Instance.todayNumber].npcJurisdiction;
        isLuyinInstantiate = true;

        AudioManager.Instance.PlaySFX("DropDown");  
        StartCoroutine(MoveOverTime(LuyinInstance,Vector3.down, 40.0f,1.0f));
    }

    public void JudgeAddOriginEvidence()
    {
        evidenceBoxGameObject.SetActive(true);
        evidenceBox = evidenceBoxGameObject.GetComponent<JudgeEvidenceBox>();
        int evidenceTodayNum = EvidenceListDictionary.Keys.Count(key => key.Item1 == dayCount); 
        for(int i=1; i<=evidenceTodayNum; i++)
        {
            Tuple<int, int> currentEvidenceTuple = new Tuple<int, int>(dayCount,i);
            if(EvidenceListDictionary[currentEvidenceTuple].isOrigin)
            {
                GameObject temp = Instantiate(evidencePrefab,evidenceBoxGameObject.transform);
                temp.transform.localScale = new Vector3(1.0f/6.4f,1.0f/6.4f,1.0f);
                temp.transform.localPosition = evidenceBox.GetPositioner(evidenceBox.GetCurrentEvidenceCount());
                temp.GetComponent<Evidence>().descriptionString = EvidenceListDictionary[currentEvidenceTuple].descriptionString;
                temp.GetComponent<Evidence>().evidenceName =  EvidenceListDictionary[currentEvidenceTuple].evidenceName;
                temp.GetComponent<Evidence>().id = EvidenceListDictionary[currentEvidenceTuple].id;
                temp.transform.GetChild(2).GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EvidenceSprite/"+EvidenceListDictionary[currentEvidenceTuple].spriteName);
                evidenceBox.AddEvidence(temp.GetComponent<Evidence>());
            }
        }
        evidenceBoxGameObject.SetActive(false);
        // GameObject temp = Instantiate(evidencePrefab,evidenceBoxGameObject.transform);
        // temp.transform.localScale = new Vector3(1.0f/6.4f,1.0f/6.4f,1.0f);
        // temp.transform.localPosition = evidenceBox.GetPositioner(evidenceBox.GetCurrentEvidenceCount());
        // Tuple<int, int> currentEvidenceTuple = new Tuple<int, int>(dayCount,evidenceBox.GetCurrentEvidenceCount()+1);
        // temp.GetComponent<Evidence>().descriptionString = EvidenceListDictionary[currentEvidenceTuple].descriptionString;
        // temp.transform.GetChild(2).GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EvidenceSprite/"+EvidenceListDictionary[currentEvidenceTuple].spriteName);
        // evidenceBox.AddEvidence(temp.GetComponent<Evidence>());
        // evidenceBoxGameObject.SetActive(false);
    }
    public void JudgeAddEvidence(int day,int id)
    {
        Tuple<int, int> currentEvidenceTuple = new Tuple<int, int>(day,id);
        evidenceBox = evidenceBoxGameObject.GetComponent<JudgeEvidenceBox>();
        GameObject temp = Instantiate(evidencePrefab,evidenceBoxGameObject.transform);
        temp.transform.localScale = new Vector3(1.0f/6.4f,1.0f/6.4f,1.0f);
        temp.transform.localPosition = evidenceBox.GetPositioner(evidenceBox.GetCurrentEvidenceCount());
        temp.GetComponent<Evidence>().descriptionString = EvidenceListDictionary[currentEvidenceTuple].descriptionString;
        temp.GetComponent<Evidence>().evidenceName =  EvidenceListDictionary[currentEvidenceTuple].evidenceName;
        temp.GetComponent<Evidence>().id = EvidenceListDictionary[currentEvidenceTuple].id;
        temp.transform.GetChild(2).GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EvidenceSprite/"+EvidenceListDictionary[currentEvidenceTuple].spriteName);
        evidenceBox.AddEvidence(temp.GetComponent<Evidence>());
    }

    public void InfoTableMove(Vector3 v)
    {
        StartCoroutine(MoveOverTime(InfoTableGo,v,38.0f,1.0f));
        AudioManager.Instance.PlaySFX("PaperChou");
    }

    public void YushenDanMove(Vector3 v)
    {
        StartCoroutine(MoveOverTime(yuShenDanGo,v,11.0f,1.0f));
        AudioManager.Instance.PlaySFX("PaperChou");
    }

    IEnumerator MoveOverTime(GameObject go, Vector3 direction, float distance, float duration)
    {
        if(go==InfoTableGo && direction == Vector3.left)
        {
            InfoToggle.SetActive(false);
        }

        Vector3 startPosition = go.transform.position;
        Vector3 endPosition = startPosition + direction.normalized * distance;
        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            go.transform.position = Vector3.Lerp(startPosition, endPosition, elapsedTime / duration);
            elapsedTime += Time.deltaTime;
            yield return null; // 等待下一帧
        }

        // 确保物体精确到达目标位置
        go.transform.position = endPosition;

        if(go==InfoTableGo && direction == Vector3.right)
        {
            InfoToggle.SetActive(true);
            if(FlowDataManager.Instance.currentNpcData.paperDifference != 0)
            {
                toggleCheck.gameObject.SetActive(false);
            }
        }
        else if(go == yuShenDanGo && direction == Vector3.up)
        {
            identityBtn.gameObject.SetActive(true);
        }
        else if(go == yuShenDanGo && direction == Vector3.down)
        {
            deadcauseTMP.text = "";
            descriptionTMP.text = "";
            identityTMP.text = "";
            errorRecordTMP.text = "";
        }
    }

    public void updateDailtText()
    {

        if(LanguageManager.isEnglish)
        {
            switch(dayCount)
            {
                case 1:
                    daliyTMP.text = "   Case Description: In the year of the Song Dynasty, 1221, on the Mid-Autumn Festival, a moon-viewing lantern festival was held in a market in Leizhou, celebrating all night. However, a great fire suddenly broke out in the local government, with flames spreading wildly in the night, destroying everything. \n \n  Netherworld Incident: Recently, there have been frequent smuggling cases in the netherworld, one of which involves the theft of Wangchuan flower seeds. The last time these seeds appeared was at the scene of the fire in the living world. \n \n Doubts: Who is the true arsonist? \n What are the causes of death for the ghosts? \n Who is the culprit behind the Wangchuan flower case?";
                    break;
                
                case 2:
                    daliyTMP.text = "   Case Description: In April 9th of the year 1936, during the late spring, the senior officials of the NJP held a grand engagement banquet, inviting the Star Ocean Dance Troupe to perform, including the rising star, Yue Ling. That day was filled with lush blooms and a gentle warm breeze; amidst the joyous guests, this beautiful scene of April ended in a series of murders. \n \n    Netherworld Incident: Among the deceased, one has the mark of the Kalaviṅka. After finding this person, you can complete this round of judgment as usual; once the case is closed, officials from the Yincao Division and the Ghost Capture Division will come to handle it, returning the Kalaviṅka to Ksitigarbha Bodhisattva. \n \n  Doubts: What are the causes of death for the ghosts? \n Where is the Kalaviṅka?";
                    break;  

                case 0:
                    daliyTMP.text = "  Case Description: Mystery Case Division was officially inaugurated today, with the new arbiter starting the duty. Jin Ling and the Spirit Wardens warmly welcomed the new arbiter. According to the arbiter, this new position not only resolves confusion in the selection process but also introduces a more diverse approach to the arbiter‘s work, adding new options to the workflow beyond the in or out paradigm. \n \n Netherworld Incident: After in-depth research by the leadership team of the fifth hall of the netherworld, Mystery Case Division was established. Qin Guang King has high hopes for this new policy, having stated in public that it will help clarify the boundaries between the living and the dead, promote lasting peace and unity in the netherworld. \n \n Obsession: Clarifying the workflow, and getting to know colleagues in the netherworld.";
                    break;
            }
        }
        else
        {
            switch(dayCount)
            {
                case 1:
                    daliyTMP.text = "  案件描述:宋朝辛巳年（公历1221年），八月十五中秋节，雷州某地市集举办赏月灯会，通宵庆贺。当地官府却突生一场大火，火舌在夜幕中肆意蔓延焚毁了官府的一切。\n \n \n  地府事件：近来地府走私案频发，其中一起牵涉到失窃的忘川花种子，而这些种子最后一次出现的时间地点，正是阳间的这场大火现场。\n \n  疑点: 放火真凶为谁 \n        各鬼魂死因缘何 \n        忘川花种子祸首";
                    break;
                
                case 2:
                    daliyTMP.text = "  案件描述:一九三六丙子年，四月初九暮春时分，国正党高层举办盛大的订婚宴，邀请了星洋歌舞团前来献曲，其中包括名声鹊起的歌星月铃。当日，荼蘼繁茂、暖风微醺，衣香鬓影间宾客尽欢，如此人间四月美景，最后却以连环命案收场。\n \n \n   地府事件：亡者中，一人身上有着歌罗频伽印记。寻出此人后，正常完成本轮回审判即可；案结后自有阴曹司和拘鬼司鬼差前来处理，将歌罗频伽鸟交还地藏王菩萨。\n \n  疑点: 各鬼魂死因缘何        歌罗频伽何在";
                    break;  

                case 0:
                    daliyTMP.text = "  案件描述:诡案组今日正式揭牌，新任判官正式上岗履职。一殿常驻官员金翎与无常拘鬼使对新判官的到来表示热烈欢迎。据判官介绍，此次入职不仅解决了其在选择流程上的困惑，还为判官工作引入了更为多元的处理方式，使工作流程在“非入即走”之外增加了新的选项。\n \n  地府事件:经地府五殿领导班子深入研究，为强化鬼差队伍管理、有效防范化解潜在风险，特设立诡案组进一步核实案情信息。秦广王对此次新政寄予厚望，曾多次在公开场合指出，此举将有助于厘清阴阳界限，促进地府长治久安和团结繁荣，为开创地府美好未来奠定坚实基础。\n \n   执念：明确工作流程       认识地府同事";
                    break;
            }
        }
    }
}


