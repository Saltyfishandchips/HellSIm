using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class PanelHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    private GameObject child;
    private ResultCheck resultCheck;
    // Start is called before the first frame update
    void Start()
    {
        child = transform.GetChild(0).gameObject;
        resultCheck = GameObject.Find("ResultChecker").GetComponent<ResultCheck>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        if(resultCheck.occupyed == false)
        {
            child.SetActive(true);
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        child.SetActive(false);
    }
}
