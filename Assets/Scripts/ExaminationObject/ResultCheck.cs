 using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ResultCheck : MonoBehaviour
{
    public GameObject Stickers;
    public List<TargetUI> targetsList;
    public TMP_Text textComponent;
    private string trueString;
    private string falseString;
    public Button checkBtn;
    public GameObject TextGo;
    public bool occupyed;

    //两版图片
    public Sprite btnNormalSprite;
    public Sprite btnHuiSprite;

    // Start is called before the first frame update
    void Start()
    {
        //背景音乐改变
        AudioManager.Instance.PlayBackgroundMusic("ShuLi");

        Stickers = GameObject.Find("Stickers");
        targetsList = GetListInChildren(Stickers);

        if(LanguageManager.isEnglish)
        {
            //trueString = "Impressive! Newcomer! You’ve sorted everything out! It’s time to go to court!";
            //falseString = "Wait! Newcomer! It seems like you’ve made a mistake somewhere!";
            trueString = "Impressive! Newcomer!";
            falseString = "Wait! What went wrong";
        }
        else
        {
            trueString = "厉害啊！新来的！梳理清楚！该去升堂了！";
            falseString = "等等！新来的！你好像有哪里填错了！";
        }

        occupyed = false;

        if(LanguageManager.isEnglish)
        {
            btnNormalSprite = Resources.Load<Sprite>("EnSprite/BtnReady");
            btnHuiSprite = Resources.Load<Sprite>("EnSprite/BtnUnReady");
        }
    }

    void Awake()
    {
        // Stickers = GameObject.Find("Stickers");
        // targetsList = GetListInChildren(Stickers);
        // trueString = "厉害啊！新来的！梳理清楚！该去升堂了！";
        // falseString = "等等！新来的！你好像有哪里填错了！";

        // occupyed = false;
    }

    // Update is called once per frame
    void Update()
    {
        if(isMan())
        {
            checkBtn.interactable = true;
            checkBtn.GetComponent<Image>().sprite = btnNormalSprite;
        }
        else
        {
            checkBtn.interactable = false;
            checkBtn.GetComponent<Image>().sprite = btnHuiSprite;
        }
    }

    public void onCheckBtnClicked()
    {
        AudioManager.Instance.PlaySFX("ShuiLiBtnClicked");
        if(checkResult())
        {
            TextGo.SetActive(true);
            // 启动打字机效果
            StartCoroutine(TypeText(trueString,0.1f));
            AudioManager.Instance.PlaySFX("ShuLiCorrect");
        }
        else
        {
            TextGo.SetActive(true);
            StartCoroutine(TypeText(falseString,0.1f));
            AudioManager.Instance.PlaySFX("ShuLiWrong");
        }
    }

    public bool checkResult()
    {
        bool res = true;
        foreach(TargetUI temp in targetsList)
        {
            if(temp.placedGo!=null)
            {
                if(temp.targetId != temp.placedId)
                {
                    //错误返回
                    temp.placedId = 0;
                    temp.isPlaced = false;
                    DraggableUI tempDrag = temp.placedGo.GetComponent<DraggableUI>();
                    //rectTransform.position = initialPosition;
                    tempDrag.rectTransform.localPosition = tempDrag.initialPosition;
                    temp.placedGo = null;

                    res = false;
                }
            }
            else
            {
                res = false;
            }
        }

        return res;
    }

    public List<TargetUI> GetListInChildren(GameObject parent)
    {
        List<TargetUI> components = new List<TargetUI>();

        // 遍历所有子物体并获取组件
        foreach (Transform child in parent.transform)
        {
            TargetUI component = child.GetComponent<TargetUI>();
            if (component != null)
            {
                components.Add(component);
            }
        }

        return components;
    }

    IEnumerator TypeText(string fullText,float typingSpeed)
    {
        textComponent.text = "";
        checkBtn.interactable = false;
        // 循环遍历文本中的每一个字符
        for (int i = 0; i < fullText.Length; i++)
        {
            // 将下一个字符添加到 TextMeshPro 文本组件中
            textComponent.text += fullText[i];

            // 等待一段时间后再显示下一个字符
            yield return new WaitForSeconds(typingSpeed);
        }

        yield return new WaitForSeconds(1.0f);
        checkBtn.interactable = true;
        TextGo.SetActive(false);

        if(checkResult())
        {
            yield return new WaitForSeconds(1.0f);
            SceneLoader.LoadScene("TrialRightScene");

        }
    }

    public bool isMan()
    {
        foreach(TargetUI temp in targetsList)
        {
            if(temp.placedGo==null)
            {
                return false;
            }
        }
        return true;
    }
}
