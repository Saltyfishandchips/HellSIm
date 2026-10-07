using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class UIExchangeDrag : MonoBehaviour
{
    private GameObject biggerObject;
    private GameObject smallObject;
    private Vector3 forbiddenAreaMax;

    // 总范围
    private Vector3 boundaryMax;
    private Vector3 boundaryMin;

    // 小图区范围
    private Vector3 smallBoundaryMax;
    private Vector3 smallBoundaryMin;

     // 小图区范围
    private Vector3 forbiddenBoxMax;
    private Vector3 forbiddenBoxMin;

    private BoxCollider2D boxCollider2D;

    public bool initShowSmall;

    // 拖拽部分
    private Vector2 mousePos;
    private Vector2 distance;

    private Vector3 dragStartPos;

    public bool boundaryCheck = true;

    public string dropDownSFX;

    // Start is called before the first frame update
    private void Awake() {
       
    }
    private void Start() {
        Init();
    }

    private void Update() {
        BoundaryCheck();
        InSmallArea();
        
        mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        
    }

    
    private void Init() {
        //TODO:大小图标的gameOject
        smallObject = transform.GetChild(0).gameObject;
        biggerObject = transform.GetChild(1).gameObject;
        boxCollider2D = GetComponent<BoxCollider2D>();

        // 确定定位位置
        forbiddenAreaMax = GameObject.Find("forbiddenAreaMax").transform.position;
        boundaryMin = GameObject.Find("boundaryMin").transform.position;
        boundaryMax = GameObject.Find("boundaryMax").transform.position;

        smallBoundaryMax = GameObject.Find("smallBoundaryMax").transform.position;
        smallBoundaryMin = GameObject.Find("smallBoundaryMin").transform.position;

        forbiddenBoxMax = GameObject.Find("forbiddenBoxMax").transform.position;
        forbiddenBoxMin = GameObject.Find("forbiddenBoxMin").transform.position;


        if (initShowSmall) {
            smallObject.SetActive(true);
            biggerObject.SetActive(false);
            boxCollider2D.size = smallObject.GetComponent<SpriteRenderer>().bounds.size;
        }
        else {
            smallObject.SetActive(false);
            biggerObject.SetActive(true);
            boxCollider2D.size = biggerObject.GetComponent<SpriteRenderer>().bounds.size;
        }
    }

    private void BoundaryCheck() {
        if (!boundaryCheck) {
            return;
        }

        // if (transform.position.y > boundaryMin.y && transform.position.y < forbiddenAreaMax.y) {
        if (transform.position.y < forbiddenAreaMax.y) {
            float x = Mathf.Clamp(transform.position.x, forbiddenAreaMax.x, boundaryMax.x);
            float y = Mathf.Clamp(transform.position.y, boundaryMin.y, forbiddenAreaMax.y);
            transform.position = new Vector3(x, y, 0);
        }
        else {
            float x = Mathf.Clamp(transform.position.x, boundaryMin.x, boundaryMax.x);
            float y = Mathf.Clamp(transform.position.y, forbiddenAreaMax.y, boundaryMax.y);
            transform.position = new Vector3(x, y, 0);
        }
    }

    private void InSmallArea() {
        // 进入小图区域
        if(transform.position.x >= smallBoundaryMin.x && transform.position.x <= smallBoundaryMax.x
            && transform.position.y >= smallBoundaryMin.y && transform.position.y <=smallBoundaryMax.y ) {
            smallObject.SetActive(true);
            biggerObject.SetActive(false);
            boxCollider2D.size = smallObject.GetComponent<SpriteRenderer>().bounds.size;
        }
        else {
            smallObject.SetActive(false);
            biggerObject.SetActive(true);
            boxCollider2D.size = biggerObject.GetComponent<SpriteRenderer>().bounds.size;
        }
    }

    /// <summary>
    /// OnMouseDrag is called when the user has clicked on a GUIElement or Collider
    /// and is still holding down the mouse.
    /// </summary>
    void OnMouseDrag()
    {
        
        Vector2 temp = mousePos + distance;
        transform.position = new Vector3(temp.x, temp.y, 0); // 更新物体的位置
    }

    /// OnMouseDown is called when the user has pressed the mouse button while
    /// over the GUIElement or Collider.
    /// </summary>
    void OnMouseDown()
    {

        distance = new Vector2(transform.position.x, transform.position.y) - mousePos;
        dragStartPos = transform.position;
    }

    
    /// <summary>
    /// OnMouseUp is called when the user has released the mouse button.
    /// </summary>
    void OnMouseUp()
    {
        // 放下东西的音效
        AudioManager.Instance.PlaySFX(dropDownSFX);

        if(transform.position.x >= forbiddenBoxMin.x && transform.position.x <= forbiddenBoxMax.x
            && transform.position.y >= forbiddenBoxMin.y && transform.position.y <=forbiddenBoxMax.y ) {
            transform.position = dragStartPos;
        }
    }
}
