using DG.Tweening;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class TrailIDCard : MonoBehaviour
{
    [SerializeField] private GameObject originObject;
    [SerializeField] private GameObject lagerObject;
    [SerializeField] private Button fingerPrintButton;
    [SerializeField] private Vector3 targetPos;
    [SerializeField] private float durationTime;
    [SerializeField] private float scaleFactor;
    private bool canMove = false;
    private Vector3 originScale;
    private Vector3 largerScale;

    private Vector2 mousePos;
    private Vector2 distance;

    public float xMin, xMax, yMin, yMax;

    private void Awake() {
        fingerPrintButton.onClick.AddListener(() => {
            canMove = true;
        });
        originScale = transform.localScale;
        largerScale = transform.localScale * scaleFactor;
    }

    
    private void Update() {
        if (canMove) {
            // Vector3.MoveTowards(gameObject.transform.localPosition, targetPos, speed*Time.deltaTime);
            transform.DOMove(targetPos, durationTime).OnComplete(() => {canMove = false;}).SetAutoKill();
        }
        mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        RaycastCheck();

    }

    private void RaycastCheck() {
        Vector3 mousePos = Input.mousePosition;
        mousePos.z = 10;

        Vector3 screenPos = Camera.main.ScreenToWorldPoint(mousePos);

        // RaycastHit2D hit = Physics2D.Raycast(screenPos, new Vector3(screenPos.x, screenPos.y, screenPos.z - 100));
        RaycastHit2D hit = Physics2D.Raycast(screenPos, Vector2.zero);
        if (originObject.gameObject.activeInHierarchy) {
            ScaleChange(hit);
            ClickChange(hit);
        }
            
    }

    private void ScaleChange(RaycastHit2D hit2D) {
        
        if (hit2D && hit2D.transform.tag == "Fengduwendie") {
            
            transform.localScale = largerScale;
        }
        else {
            transform.localScale = originScale;
            if (spriteRenderer == null) {
                spriteRenderer = lagerObject.GetComponent<SpriteRenderer>();
            }
        }
    }

    private void ClickChange(RaycastHit2D hit2D) {
        if (Input.GetMouseButton(0)) {
            if (hit2D && hit2D.transform.tag == "Fengduwendie") {
                
                originObject.SetActive(false);
                lagerObject.SetActive(true);
                BoxCollider2D boxCollider2D = GetComponent<BoxCollider2D>();
                boxCollider2D.offset = new Vector2(0, 0);
                boxCollider2D.size = new Vector2(35, 40);
            }
        }
        
    }

    SpriteRenderer spriteRenderer;
    /// <summary>
    /// OnMouseDrag is called when the user has clicked on a GUIElement or Collider
    /// and is still holding down the mouse.
    /// </summary>
    void OnMouseDrag()
    {   
        if (EventSystem.current.IsPointerOverGameObject()) {
            return;
        }
        if (spriteRenderer == null) {
            spriteRenderer = lagerObject.GetComponent<SpriteRenderer>();
        }

        // 检测鼠标左键是否持续按下并且物体正在被拖拽
        if (!canMove)
        {
            spriteRenderer.color = new Color(spriteRenderer.color.r, spriteRenderer.color.g, spriteRenderer.color.b, 0.5f);
            Vector2 temp = mousePos + distance;
            transform.position = new Vector3(Mathf.Clamp(temp.x, xMin, xMax), Mathf.Clamp(temp.y, yMin, yMax), 0); // 更新物体的位置
            // Debug.Log(mousePos);
        }
    }
    
    /// OnMouseDown is called when the user has pressed the mouse button while
    /// over the GUIElement or Collider.
    /// </summary>
    void OnMouseDown()
    {
        if (EventSystem.current.IsPointerOverGameObject()) {
            return;
        }
        distance = new Vector2(transform.position.x, transform.position.y) - mousePos;
    }

    /// <summary>
    /// OnMouseUp is called when the user has released the mouse button.
    /// </summary>
    void OnMouseUp()
    {
        if (EventSystem.current.IsPointerOverGameObject()) {
            return;
        }
        spriteRenderer.color = new Color(spriteRenderer.color.r, spriteRenderer.color.g, spriteRenderer.color.b, 1);
    }
}
