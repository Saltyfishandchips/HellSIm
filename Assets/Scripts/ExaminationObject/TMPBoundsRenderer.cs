using UnityEngine;
using TMPro;

[RequireComponent(typeof(TMP_Text))]
[RequireComponent(typeof(LineRenderer))]
public class TMPBoundsRenderer : MonoBehaviour
{
    private TMP_Text tmpText;
    private LineRenderer lineRenderer;

    private void Start()
    {
        tmpText = GetComponent<TMP_Text>();
        lineRenderer = GetComponent<LineRenderer>();

        // 设置LineRenderer的属性
        lineRenderer.positionCount = 5; // 4个角点 + 回到起点
        lineRenderer.startWidth = 1.0f;
        lineRenderer.endWidth = 1.0f;
        lineRenderer.loop = true;
        lineRenderer.useWorldSpace = false; // 在本地空间中绘制
    }

    private void Update()
    {
        // 获取文本边界
        Bounds textBounds = tmpText.textBounds;

        // 获取边界的四个角
        Vector3 bottomLeft = textBounds.min;
        Vector3 bottomRight = new Vector3(textBounds.max.x, textBounds.min.y, textBounds.min.z);
        Vector3 topRight = textBounds.max;
        Vector3 topLeft = new Vector3(textBounds.min.x, textBounds.max.y, textBounds.min.z);

        // 设置LineRenderer的点
        Vector3[] positions = new Vector3[5]
        {
            bottomLeft,
            bottomRight,
            topRight,
            topLeft,
            bottomLeft  // 闭合
        };
        lineRenderer.SetPositions(positions);
    }
}
