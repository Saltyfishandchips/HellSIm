using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class StartButton : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    private Image image;
    // Start is called before the first frame update
    void Start()
    {
        image = GetComponent<Image>();
        image.color = new Color(image.color.r, image.color.g, image.color.b, 0f);
    }

    public void OnPointerEnter(PointerEventData eventData) {
        image.color = new Color(image.color.r, image.color.g, image.color.b, 1f);
    }

    public void OnPointerExit(PointerEventData eventData) {
        image.color = new Color(image.color.r, image.color.g, image.color.b, 0f);
    }
}
