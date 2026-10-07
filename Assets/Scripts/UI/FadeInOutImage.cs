using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class FadeInOutImage : MonoBehaviour
{
    public CanvasGroup canvasGroup; // 将目标图片的 CanvasGroup 拖入此处
    public float fadeDuration = 2f; // 淡入、淡出的时间
    public float stayDuration = 2f; // 停留的时间
    public Canvas canvas;
    public Image titleImage; //标题图片
    void Awake()
    {
        if(LanguageManager.isEnglish)
        {
            titleImage.sprite = Resources.Load<Sprite>("EnSprite/TitleBlack" + (TrialTotalInfo.currentDay).ToString());
        }
        else
        {
            titleImage.sprite = Resources.Load<Sprite>("UI/TitleBlack" + (TrialTotalInfo.currentDay).ToString());
        }

        // 开始协程，实现淡入、停留、淡出的效果
        if (canvasGroup != null)
        {
            StartCoroutine(FadeInOut());
        }
    }

    IEnumerator FadeInOut()
    {
        // 淡入
        yield return StartCoroutine(FadeIn(0f, 1f, fadeDuration));

        // 停留
        yield return new WaitForSeconds(stayDuration);

        // 淡出
        yield return StartCoroutine(FadeOut(1f, 0f, fadeDuration));
    }

    IEnumerator FadeIn(float startAlpha, float endAlpha, float duration)
    {
        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            // 逐渐改变 alpha 值
            canvasGroup.alpha = Mathf.Lerp(startAlpha, endAlpha, elapsedTime / duration);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // 确保最终 alpha 值正确
        canvasGroup.alpha = endAlpha;
    }

    IEnumerator FadeOut(float startAlpha, float endAlpha, float duration)
    {
        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            // 逐渐改变 alpha 值
            canvasGroup.alpha = Mathf.Lerp(startAlpha, endAlpha, elapsedTime / duration);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // 确保最终 alpha 值正确
        canvasGroup.alpha = endAlpha;
        canvas.gameObject.SetActive(false);
    }
}
