using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectDrag : MonoBehaviour
{
    [SerializeField] private GameObject smallObject;
    [SerializeField] private GameObject largerObject;
    public float xMin, xMax, yMin, yMax;

    private Vector2 mousePos;
    private Vector2 distance;

    private SpriteRenderer spriteRenderer;

    private void Update() {
        mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
    }

    /// <summary>
    /// OnMouseDrag is called when the user has clicked on a GUIElement or Collider
    /// and is still holding down the mouse.
    /// </summary>
    void OnMouseDrag()
    {
        if (spriteRenderer == null) {
            spriteRenderer = largerObject.GetComponent<SpriteRenderer>();
        }

        
        spriteRenderer.color = new Color(spriteRenderer.color.r, spriteRenderer.color.g, spriteRenderer.color.b, 0.5f);
        Vector2 temp = mousePos + distance;
        transform.position = new Vector3(Mathf.Clamp(temp.x, xMin, xMax), Mathf.Clamp(temp.y, yMin, yMax), 0); // 更新物体的位置
        // Debug.Log(mousePos);
        
    }

    /// OnMouseDown is called when the user has pressed the mouse button while
    /// over the GUIElement or Collider.
    /// </summary>
    void OnMouseDown()
    {
        distance = new Vector2(transform.position.x, transform.position.y) - mousePos;
    }

    /// <summary>
    /// OnMouseUp is called when the user has released the mouse button.
    /// </summary>
    void OnMouseUp()
    {
        spriteRenderer.color = new Color(spriteRenderer.color.r, spriteRenderer.color.g, spriteRenderer.color.b, 1);
    }
}
