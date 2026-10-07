using Unity.VisualScripting;
using UnityEngine;

[System.Serializable]
public class PlayerData : MonoBehaviour
{
    // 静态实例变量
    private static PlayerData _instance;

    // 公共属性来访问实例
    public static PlayerData Instance
    {
        get
        {
            if (_instance == null)
            {
                // 尝试找到一个已经存在的实例
                _instance = FindObjectOfType<PlayerData>();

                // 如果实例仍然为空，创建一个新的 GameObject 并添加 PlayerData 组件
                if (_instance == null)
                {
                    GameObject singletonObject = new GameObject();
                    _instance = singletonObject.AddComponent<PlayerData>();
                    singletonObject.name = typeof(PlayerData).ToString() + " (Singleton)";
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
            DontDestroyOnLoad(gameObject);
        }
        else if (_instance != this)
        {
            Destroy(gameObject);
        }
    }

    // 玩家数据属性
    private int money = 0; //钱
    public int fame = 50; //名
    public int affection = 50; //情
    private int todayOpportunityToMistake = 0; //今日犯错机会

    public void WrongChoiceCost()
    {
        this.todayOpportunityToMistake--;
        if(this.todayOpportunityToMistake<0)
        {
            this.money-=this.todayOpportunityToMistake*10;
        }
        Debug.Log("money:"+this.money.ToString());
    }

    public void resetTodayOpportunityToMistake()
    {
        this.todayOpportunityToMistake = 5 ;
    }
}