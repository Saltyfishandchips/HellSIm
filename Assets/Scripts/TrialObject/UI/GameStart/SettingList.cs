
using UnityEngine;
using UnityEngine.Localization.Settings;
using UnityEngine.UI;

public class SettingList : MonoBehaviour
{
    public Button returnButton;
    public GameObject buttonList;
    private Animator animator;

    public Toggle chineseToggle;

    public Toggle englishToggle;


    void Start()
    {
        animator = GetComponent<Animator>();

        returnButton.onClick.AddListener(() => {
            animator.SetBool("Hide", true);
        });

        chineseToggle.onValueChanged.AddListener((bool value) => {
            if (value) {
                LanguageManager.isChinese = true;
                LanguageManager.isEnglish = false;

                InfoPath.inkPath = "Dialogue/";
                InfoPath.inkBirdExcelPath = "Json/Bird";
                InfoPath.passPortInfoPath = "Json/Passport";
                InfoPath.evidenceInfoPath = "Json/TrialEvidence";
                InfoPath.trialObituaryPath = "Json/TrialObituary";
                InfoPath.npcEndingPath = "Json/NPCEnding";
                InfoPath.preTrialpath = "PreTrialFormSprite/";

                // Localize插件选择语言
                LocalizationSettings.SelectedLocale = LocalizationSettings.AvailableLocales.Locales[0];
            }
        });

        englishToggle.onValueChanged.AddListener((bool value) => {
            if (value) {
                LanguageManager.isChinese = false;
                LanguageManager.isEnglish = true;

                InfoPath.inkPath = "Dialogue/EN/";
                InfoPath.inkBirdExcelPath = "Json/EN/Bird";
                InfoPath.passPortInfoPath = "Json/EN/Passport";
                InfoPath.evidenceInfoPath = "Json/EN/TrialEvidence";
                InfoPath.trialObituaryPath = "Json/EN/TrialObituary";
                InfoPath.npcEndingPath = "Json/EN/NPCEnding";
                InfoPath.preTrialpath = "PreTrialFormSprite/EN/";

                // Localize插件选择语言
                LocalizationSettings.SelectedLocale = LocalizationSettings.AvailableLocales.Locales[1];
            }
        });
        
    }

    void SettingAnimHide() {
        animator.SetBool("Hide", false);
        gameObject.SetActive(false);
        buttonList.SetActive(true);
    }
}
