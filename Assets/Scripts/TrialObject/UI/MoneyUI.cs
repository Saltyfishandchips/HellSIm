using DG.Tweening;
using TMPro;
using UnityEngine;

public class MoneyUI : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI moneyText;
    [SerializeField] private TextMeshProUGUI addMoneyText;
    private TimerManager timerManager = new TimerManager();
    private int timerID;
    // Start is called before the first frame update
    private static int currentMoney = 0;
    private int currentAddMoney = 0;
    private void Awake() {
        addMoneyText.gameObject.SetActive(false);
        moneyText.text = currentMoney.ToString();
        timerManager.Init();
    }

    private void Update() {
        timerManager.Update();
    }

    public void ShowAddText(int addMoney, bool hasExpos) {
        if (addMoney > 0) {
            addMoneyText.text = "+" + addMoney.ToString();
        }
        else {
            addMoneyText.text = addMoney.ToString();
        }
        
        AddMoneyAnim(addMoney, hasExpos);
        addMoneyText.gameObject.SetActive(true);
    }

    private void AddMoneyAnim(int addMoney, bool hasExpos) {
        int targetMoney = currentMoney + addMoney;
        currentAddMoney = addMoney;

        DOTween.To(() => currentMoney, (value) =>
        {
            moneyText.text = value.ToString();
        }, targetMoney, 2f).SetEase(Ease.Linear).OnComplete(() => {
            currentMoney = targetMoney;
            if (hasExpos) {
                timerID = timerManager.Schedule(MinusAddMoney, 2, 0);
            }
            HideAddText();
            
        }).SetAutoKill(false).SetTarget(this);
    }

    private void HideAddText() {
        addMoneyText.gameObject.SetActive(false);
    }

    private void MinusAddMoney() {
        ShowAddText(-currentAddMoney, false);
        timerManager.Unschedule(timerID);
    }

}
