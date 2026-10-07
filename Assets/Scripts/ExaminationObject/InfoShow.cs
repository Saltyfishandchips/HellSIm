using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InfoShow : MonoBehaviour
{
    public GameObject child;
    // Start is called before the first frame update
    void Start()
    {
        child = transform.GetChild(1).gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnMouseEnter()
    {
        // 当鼠标悬停在物体上时，显示描述文本
        if (child != null)
        {
            child.SetActive(true);
        }
    }

    void OnMouseExit()
    {
        if (child != null)
        {
            child.SetActive(false);
        }
    }
}
