using UnityEngine;
using UnityEngine.UI;

public class ToggleGroupManager : MonoBehaviour
{
    public ToggleGroup toggleGroup; // 引用 ToggleGroup 组件
    [SerializeField] private GameObject guizeTexts;
    [SerializeField] private GameObject xinxiTexts;

    void Start()
    {
        // 为 ToggleGroup 中的每个 Toggle 添加监听器
        foreach (Toggle toggle in toggleGroup.GetComponentsInChildren<Toggle>())
        {
            toggle.onValueChanged.AddListener(delegate { OnToggleValueChanged(toggle); });
        }
        
        // 在信息页初始化
        toggleGroup.GetComponentsInChildren<Toggle>()[0].isOn = true;
        toggleGroup.GetComponentsInChildren<Toggle>()[1].isOn = false;
    }

    // 当 Toggle 的状态发生变化时调用
    void OnToggleValueChanged(Toggle changedToggle)
    {
        if (changedToggle.isOn)
        {
            switch(changedToggle.name)
            {
                case "GuiZeToggle" :
                    guizeTexts.SetActive(true);
                    break;
                case "XinXiToggle" :
                    xinxiTexts.SetActive(true);
                    break;
            } 
        }
        else
        {
            switch(changedToggle.name)
            {
                case "GuiZeToggle" :
                    guizeTexts.SetActive(false);
                    break;
                case "XinXiToggle" :
                    xinxiTexts.SetActive(false);
                    break;
            } 
        }
    }

    void OnDestroy()
    {
        // 移除监听器，避免内存泄漏
        foreach (Toggle toggle in toggleGroup.GetComponentsInChildren<Toggle>())
        {
            toggle.onValueChanged.RemoveAllListeners();
        }
    }
}
