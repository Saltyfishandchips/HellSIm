using DG.Tweening;
using UnityEngine;

public class TempryGoHomeTicket : MonoBehaviour
{
    
    public Vector3 targetPos;
    public float duration;

    void Start()
    {
        DialogueManager.Instance.OnStoryEnd += OnStoryEndEvent;
    }

    private void OnStoryEndEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        if (inkStageInfoArgs.inkStageInfo.inkStage == InkStage.Resurrection) {
            transform.DOMove(targetPos, duration).OnComplete(() => {
                GetComponentInParent<UIExchangeDrag>().boundaryCheck = true;
            }).SetAutoKill();
            
        }
    }

    private void OnDestroy() {
        DialogueManager.Instance.OnStoryEnd -= OnStoryEndEvent;
    }
}
