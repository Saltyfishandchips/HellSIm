using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnObjectScaleChange : MonoBehaviour
{
    [SerializeField] private GameObject gb;
    private Vector3 originScale;
    private Vector3 largerScale;
    public float scaleFactor;
    private void Awake() {
        originScale = gb.transform.localScale;
        largerScale = originScale * scaleFactor;
    }

    /// <summary>
    /// Called when the mouse enters the GUIElement or Collider.
    /// </summary>
    private void OnMouseEnter()
    {
        gb.transform.localScale = largerScale;
    }

    private void OnMouseExit() {
        gb.transform.localScale = originScale;
    }
}
