using System.Collections;
using UnityEngine;
using TMPro;

public static class TypewriterEffect
{
    // 静态方法：启动打字机效果，并传入要显示的文本和 TMP_Text 对象
    public static void StartTypewriterEffect(MonoBehaviour monoBehaviour, TMP_Text textComponent, string textToDisplay, float typingSpeed = 0.05f)
    {
        // 启动协程
        monoBehaviour.StartCoroutine(TypeText(textComponent, textToDisplay, typingSpeed));
    }

    // 静态方法：立即显示完整文本
    public static void ShowFullTextImmediately(TMP_Text textComponent, string textToDisplay)
    {
        textComponent.text = textToDisplay;
    }

    // 协程：逐字符显示传入的文本内容
    private static IEnumerator TypeText(TMP_Text textComponent, string textToDisplay, float typingSpeed)
    {
        textComponent.text = "";  // 确保文本开始时为空

        foreach (char letter in textToDisplay.ToCharArray())
        {
            textComponent.text += letter;  // 将当前字符添加到 TextMeshPro 的文本中
            yield return new WaitForSeconds(typingSpeed);  // 等待一段时间后显示下一个字符
        }
    }
}
