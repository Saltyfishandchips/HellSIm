using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization.Settings;

public class ItchLanguage : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        if (LocalizationSettings.SelectedLocale.LocaleName == "English (en)") {
            Debug.Log(LocalizationSettings.SelectedLocale);
            // Itch首选中文
            LanguageManager.isChinese = false;
            LanguageManager.isEnglish = true;

            InfoPath.inkPath = "Dialogue/EN/";
            InfoPath.inkBirdExcelPath = "Json/EN/Bird";
            InfoPath.passPortInfoPath = "Json/EN/Passport";
            InfoPath.evidenceInfoPath = "Json/EN/TrialEvidence";
            InfoPath.trialObituaryPath = "Json/EN/TrialObituary";
            InfoPath.npcEndingPath = "Json/EN/NPCEnding";
            InfoPath.preTrialpath = "PreTrialFormSprite/EN/";
        }
        

        // // Localize插件选择语言
        // LocalizationSettings.SelectedLocale = LocalizationSettings.AvailableLocales.Locales[1];
    }

}
