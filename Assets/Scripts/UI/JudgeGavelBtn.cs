using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JudgeGavelBtn : MonoBehaviour
{
    private Vector3 targetPosition; // 目标位置
    public float duration = 2f; // 移动持续时间
    
    /// <summary>
    /// Start is called on the frame when a script is enabled just before
    /// any of the Update methods is called the first time.
    /// </summary>
    void Start()
    {
        targetPosition = new Vector3(122.5f,0.0f,-100.0f);
    }

    public void OnJudgeGavelBtnClicked()
    {
        Debug.Log("1");
        // 开始移动相机
        StartCoroutine(MoveCamera(transform.position, targetPosition, duration));
    }

    IEnumerator MoveCamera(Vector3 start, Vector3 end, float duration)
    {
        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            // 计算当前插值位置
            transform.position = Vector3.Lerp(start, end, elapsedTime / duration);

            // 增加经过时间
            elapsedTime += Time.deltaTime;

            // 等待下一帧
            yield return null;
        }

        // 确保最终位置精确到达
        transform.position = end;
    }
}
