using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrialObjectGen : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        TrialStageManager.OnTrialStageChanged += OnTrialStageChangedEvent;     
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        TrialStage trialStage = trialStageChangedArgs.trialStage;
        
        if (trialStage == TrialStage.Bribe) {
            // 播放贿赂
            int npcID = (int)TrialInfoManager.Instance.currentNpcInfo.id;
            string inkName = InkInfoManager.Instance.NPCinkStageInfo(npcID, InkStage.Bribe);
            DialogueManager.Instance.CacheInkFile(inkName, 0);

            GameObject go = Instantiate(Resources.Load<GameObject>("Prefab/BribeMoney"));
            go.transform.position = GameObject.Find("BribeMoneyStartPos").transform.position;
        }
        else if (trialStage > TrialStage.Quest && trialStage < TrialStage.End) {
            // 生成酆都文牒
            GameObject go = Instantiate(Resources.Load<GameObject>("Prefab/Fengduwendie"));
            go.transform.position = GameObject.Find("FDWDStartPos").transform.position;
        }
    }

    private void OnDestroy() {
        TrialStageManager.OnTrialStageChanged -= OnTrialStageChangedEvent;
    }
}
