using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization;
using UnityEngine.Localization.Settings;
using TMPro;

public class DynamicLayoutSSBXinXi : MonoBehaviour
{
    private List<TMP_Text> components;
    // Start is called before the first frame update
    void Start()
    {
        components = GetAllComponents<TMP_Text>(gameObject.transform);
        UpdateLayout();
    }

    void UpdateLayout()
    {
        var currentLocale = LocalizationSettings.SelectedLocale;
        
        if (currentLocale.LocaleName == "zh-Hans") // 简体中文
        {

        }
        else if (currentLocale.LocaleName == "English (en)") // 英文
        {
            foreach(TMP_Text component in components)
            {
                component.font = Resources.Load<TMP_FontAsset>("times");
                component.transform.localPosition += new Vector3(0.2f,0.0f,0.0f);
            }
        }
        // 添加更多语言的排版设置
    }

    List<T> GetAllComponents<T>(Transform parent) where T : Component
    {
        List<T> foundComponents = new List<T>();

        // 获取当前物体的组件
        T component = parent.GetComponent<T>();
        if (component != null)
        {
            foundComponents.Add(component);
        }

        // 递归查找子物体
        foreach (Transform child in parent)
        {
            foundComponents.AddRange(GetAllComponents<T>(child));
        }

        return foundComponents;
    }
}
