using UnityEngine;
using UnityEngine.UI;

public class CardingManager : MonoBehaviour
{
    // 单例实例
    public static CardingManager Instance { get; private set; }
    // 静态变量dayCount用于记录天数，确保每次Awake时递增
    public static int dayCountCarding = 1;
    // Awake方法：确保单例模式，并递增dayCount

    public GameObject CanvasGo;
    public Button WenHaoBtn;
    public Sprite WenHaoSprite;
    public Sprite WenHaoCloseSprite;
    private void Awake()
    {
        // dayCountCarding++;
        dayCountCarding = TrialTotalInfo.currentDay;
        if (Instance == null)
        {
            // 如果Instance为null，设置为当前对象，并标记为不在场景加载时销毁
            Instance = this;
            loadGuanXiTu();
        }
        else
        {
            // 如果已经存在一个实例，销毁新的GameObject，确保单例
            Destroy(gameObject);
            return;
        }
    }

    public void loadGuanXiTu()
    {
        if(LanguageManager.isEnglish)
        {
            GameObject.Find("GuanXiTu").GetComponent<Image>().sprite = Resources.Load<Sprite>("EnSprite/GuanXiTu"+dayCountCarding.ToString());
        }
        else
        {
            GameObject.Find("GuanXiTu").GetComponent<Image>().sprite = Resources.Load<Sprite>("CardingSprite/GuanXiTu_"+dayCountCarding.ToString());
        }

        GameObject canvasGo = GameObject.Find("Canvas");
        GameObject panelGo = Resources.Load<GameObject>("CardingSprite/Panel_"+dayCountCarding.ToString());
        GameObject stickersGo = Resources.Load<GameObject>("CardingSprite/Stickers_"+dayCountCarding.ToString());

        stickersGo = Instantiate(stickersGo,canvasGo.transform);
        stickersGo.name = "Stickers";
        panelGo = Instantiate(panelGo,canvasGo.transform);
        panelGo.name = "Panel";
        //stickersGo.transform.SetParent(canvasGo.transform);
        //panelGo.transform.SetParent(canvasGo.transform);
    }

    public void onWenHaoBtnClicked()
    {
        CanvasGo.SetActive(true);
        FlowDataManager.isYinDao = true;

        WenHaoBtn.GetComponent<Image>().sprite = WenHaoCloseSprite;
        AudioManager.Instance.PlaySFX("UIClick4");
    }

    public void onCloseBtnClicked()
    {
        CanvasGo.SetActive(false);
        FlowDataManager.isYinDao = false;

        WenHaoBtn.GetComponent<Image>().sprite = WenHaoSprite;
        AudioManager.Instance.PlaySFX("UIClick4");
    }
}
