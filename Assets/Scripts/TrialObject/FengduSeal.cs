using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class FengduSeal : MonoBehaviour
{
    private bool isTrack = false;
    private GameObject SealCover;
    private Vector3 mousePos;
    private BoxCollider2D boxCollider2D;
    void Awake()
    {
        SealCover = GameObject.Find("FengduSealCover");
        boxCollider2D = GetComponent<BoxCollider2D>();
    }

    private void Start() {
        TrialStageManager.OnTrialStageChanged += OnTrialStageChangedEvent;
        gameObject.SetActive(false);
        SealCover.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        if (isTrack) {
            gameObject.transform.position = new Vector3(mousePos.x, mousePos.y, 0);
        }
        else {
            gameObject.transform.position = SealCover.transform.position;
        }
    }

    private void OnMouseDown() {
        if (EventSystem.current.IsPointerOverGameObject()) {
            return;
        }
        boxCollider2D.enabled = false;
        Ray2D ray = new Ray2D(Camera.main.ScreenToWorldPoint(Input.mousePosition), Vector2.zero);  
        RaycastHit2D hit = Physics2D.Raycast(ray.origin, Vector2.zero, Mathf.Infinity, 1 << LayerMask.NameToLayer("Default"));  
        if (hit && hit.collider.name == "Fengduwendie(Clone)") {

            // 添加盖章音效
            AudioManager.Instance.PlaySFX("Stamp");
            FDWDCard card = hit.collider.gameObject.GetComponentInChildren<FDWDCard>();
            card.ShowSeal();
        }
        boxCollider2D.enabled = true;
        isTrack = !isTrack;

        if (isTrack) {
            // 添加拿起盖章音效
            AudioManager.Instance.PlaySFX("ZhangPutUp");
        }
        else {
            AudioManager.Instance.PlaySFX("ZhangPutDown");
        }
    }

    private void OnTrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage > TrialStage.Quest && trialStageChangedArgs.trialStage < TrialStage.End) {
            gameObject.SetActive(true);
            SealCover.SetActive(true);
        }
        else {
            gameObject.SetActive(false);
            SealCover.SetActive(false);
        }
    }

    private void OnDestroy() {
        TrialStageManager.OnTrialStageChanged -= OnTrialStageChangedEvent;
    }
}
