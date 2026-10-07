using UnityEngine.SceneManagement;
using UnityEngine;

public class SceneLoader : MonoBehaviour
{
    private static string targetscene;

    public static void LoadScene(string sceneName) {
        targetscene = sceneName;
        SceneManager.LoadScene("LoadingScene");
    }

    public static void LoadSceneCallBack() {
        SceneManager.LoadScene(targetscene);
    }
}
