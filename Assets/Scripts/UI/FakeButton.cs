using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class FakeButton : MonoBehaviour
{
    // 点击按钮时要执行的操作
    public void OnButtonClicked()
    {
        FlowDataManager.Instance.renwuTu.SetActive(false);

        //FlowDataManager.Instance.LuyinInstance
        if(FlowDataManager.Instance.identityBtn.interactable)
        {

        }
        else
        {
            FlowDataManager.Instance.identityBtn.interactable = true;
            if(!GameObject.Find("Daily"))
            {
                FlowDataManager.Instance.evidenceBoxGameObject.SetActive(true);
                //RenWuGuanXiTuBtn.transform.GetChild(0).GetComponent<Image>().sprite = ReturnSprite;
            }
        }

        AudioManager.Instance.PlaySFX("UIClick4");
        // 取消按钮的焦点
        EventSystem.current.SetSelectedGameObject(null);
    }

    // Unity 提供的鼠标点击事件
    void OnMouseDown()
    {
        // 检查鼠标左键点击
        if (Input.GetMouseButtonDown(0))
        {
            OnButtonClicked();
        }
    }
}
