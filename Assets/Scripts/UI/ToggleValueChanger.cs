using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ToggleValueChanger : MonoBehaviour
{
    public Sprite selectedSprite;
    public Sprite unSelectedSprite;
    private Toggle toggle;

    void Awake()
    {
        toggle = GetComponent<Toggle>();

        // 为Toggle添加事件监听器
        toggle.onValueChanged.AddListener(OnToggleValueChanged);
    }
    // Start is called before the first frame update
    void Start()
    {
        // toggle = GetComponent<Toggle>();

        // // 为Toggle添加事件监听器
        // toggle.onValueChanged.AddListener(OnToggleValueChanged);
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    public void OnToggleValueChanged(bool isOn)
    {
        if(isOn == true)
        {
            AudioManager.Instance.PlaySFX("PageTurning");
            transform.GetChild(0).GetComponent<Image>().sprite = selectedSprite;
        }
        else
        {
            transform.GetChild(0).GetComponent<Image>().sprite = unSelectedSprite;
        }
    }
}
