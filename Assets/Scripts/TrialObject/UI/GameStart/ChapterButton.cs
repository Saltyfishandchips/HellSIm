using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class ChapterButton : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    private GameObject describe;

    void Start()
    {
        describe = transform.GetChild(1).gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnPointerEnter(PointerEventData eventData) {
        describe.SetActive(true);
    }

    public void OnPointerExit(PointerEventData eventData) {
        describe.SetActive(false);
    }
    
}
