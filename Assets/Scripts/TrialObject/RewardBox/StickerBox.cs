using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;
using UnityEngine.EventSystems;

public class StickerBox : MonoBehaviour
{
    private bool isReward = false;
    private bool isPunish = false;
    
    [SerializeField] private GameObject rewardBox;
    [SerializeField] private GameObject punishBox;

    // 开启长度
    public float openLength;
    public float durationTime;

    private Vector3 punishBoxOrignPos;
    private Vector3 rewardBoxOrignPos;

    private Vector3 punishBoxTargetPos;
    private Vector3 rewardBoxTargetPos;

    public static bool hasSealed = false;

    
    private void Awake() {
        rewardBoxOrignPos = rewardBox.transform.position;
        punishBoxOrignPos = punishBox.transform.position;

        rewardBoxTargetPos = new Vector3(rewardBoxOrignPos.x - openLength, rewardBoxOrignPos.y, 0);
        punishBoxTargetPos = new Vector3(punishBoxOrignPos.x - openLength, punishBoxOrignPos.y, 0);
    }

    private void Start() {
        DialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;
    }

    void Update()  
    {  
        CheckColliderBox();
        BoxAnim();
    } 

    private void CheckColliderBox() {
        // 检测鼠标是否点击  
        if (Input.GetMouseButtonDown(0) && TrialStageManager.currentTrialStage > TrialStage.Quest)  
        {  
            Ray2D ray = new Ray2D(Camera.main.ScreenToWorldPoint(Input.mousePosition), Vector2.zero);  
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, Vector2.zero, Mathf.Infinity, 1 << LayerMask.NameToLayer("Default"));  
            if (EventSystem.current.IsPointerOverGameObject() || TrialStageManager.currentTrialStage <= TrialStage.Quest) {
                return;
            }

            if (hit.collider != null)  
            {  
                // 如果点击了带有BoxCollider2D的对象  
                if (hit.collider.gameObject.name == "RewardBox")  
                {  
                    isReward = !isReward;

                    if (isPunish) {
                        isPunish = false;
                    }

                    if (isReward) {
                        AudioManager.Instance.PlaySFX("ZhengWuBoxOpen");
                    }
                    else if (!isReward && !isPunish) {
                        AudioManager.Instance.PlaySFX("ZhengWuBoxClose");
                    }
                } 
                else if (hit.collider.gameObject.name == "PunishBox") {
                    isPunish = !isPunish;

                    if (isReward) {
                        isReward = false;
                    }

                    if (isPunish) {
                        AudioManager.Instance.PlaySFX("ZhengWuBoxOpen");
                    }
                    else if (!isReward && !isPunish) {
                        AudioManager.Instance.PlaySFX("ZhengWuBoxClose");
                    }
                } 
            }  
        }  
    } 

    private void BoxAnim() {
        if (!isReward && !isPunish) {
            rewardBox.transform.DOMove(rewardBoxOrignPos, durationTime).SetAutoKill();
            punishBox.transform.DOMove(punishBoxOrignPos, durationTime).SetAutoKill();
        }
        else if (!isReward && isPunish) {
            rewardBox.transform.DOMove(rewardBoxOrignPos, durationTime).SetAutoKill();
            punishBox.transform.DOMove(punishBoxTargetPos, durationTime).SetAutoKill();
        }
        else if (isReward && !isPunish) {
            punishBox.transform.DOMove(punishBoxOrignPos, durationTime).SetAutoKill();
            rewardBox.transform.DOMove(rewardBoxTargetPos, durationTime).SetAutoKill();
        }
        else {
            punishBox.transform.DOMove(punishBoxOrignPos, durationTime).SetAutoKill();
            rewardBox.transform.DOMove(rewardBoxOrignPos, durationTime).SetAutoKill();
        }
    }

    private void OnStoryEndEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        isReward = false;
        isPunish = false;
    }

    private void OnDestroy() {
        DialogueManager.Instance.OnStoryEnd -= OnStoryEndEvent;
    }
}
