using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class TrialBlood : MonoBehaviour
{
    [SerializeField] private GameObject player;
    private GameObject playerHP;
    [SerializeField] private GameObject enemy;
    private GameObject enemyHP;
    private int playerHealth = 3;
    private int enemyHealth;

    public static List<GameObject> playerHealthList = new List<GameObject>();
    public static List<GameObject> enemyHealthList = new List<GameObject>();

    // 质询左上角按钮
    public Button relationshipButton;
    public Button evidenceButton;
    public Button evidenceBarButton;
    public Button suspectButton;
    public Button suspectBarButton;

    public RectTransform evidenceList;
    public RectTransform suspectBoard;
    public float durationTime = 0.7f;

    private bool moveEvidence = false;
    private bool moveSuspect = false;

    public GameObject questLeftupBG;

    public static bool canShowDescribe = false;

    // Start is called before the first frame update
    void Start()
    {
        player.SetActive(false);
        enemy.SetActive(false);
        EvidenceDialogueManager.Instance.OnStoryStart += OnStoryStartEvent;
        TrialStageManager.OnTrialStageChanged += OnTrialStageChangedEvent;

        playerHP = player.transform.GetChild(0).gameObject;
        enemyHP = enemy.transform.GetChild(0).gameObject;

        // 人物关系按钮
        relationshipButton.onClick.AddListener(() => {});
        evidenceButton.GetComponent<Animator>().enabled = false;
        
        // 证物按钮
        evidenceButton.onClick.AddListener(() => {
            EvidenceButtonClick();
        });

        evidenceBarButton.onClick.AddListener(() => {
            EvidenceButtonClick();
        });

        // 疑点按钮
        suspectButton.onClick.AddListener(() => {
            SuspectButtonClick();
        });
        
        suspectBarButton.onClick.AddListener(() => {
            SuspectButtonClick();
        });

        if (LanguageManager.isEnglish) {
            evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButton_EN");
            suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButton_EN");
        }
        else {
            evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButton");
            suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButton");
        }

        // 关闭左上背景框
        questLeftupBG.SetActive(false);

        evidenceBarButton.enabled = false;
        suspectBarButton.enabled = false;
    }

    private void EvidenceButtonClick() {
        moveEvidence = !moveEvidence;
        Animator animator = evidenceButton.GetComponent<Animator>();
        animator.enabled = false;
        evidenceButton.image.color = Vector4.one;
        if (moveEvidence) {
            AudioManager.Instance.PlaySFX("ZhengWuBoxOpen");
            if (LanguageManager.isEnglish) {
                evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButtonReverse_EN");
            }
            else {
                evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButtonReverse");
            }
            
        }
        else {
            AudioManager.Instance.PlaySFX("ZhengWuBoxClose");

            if (LanguageManager.isEnglish) {
                evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButton_EN");
            }
            else {
                evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButton");
            }

            
        }
    }

    private void SuspectButtonClick() {
        moveSuspect = !moveSuspect;
        if (moveSuspect) {
            AudioManager.Instance.PlaySFX("ZhengWuBoxOpen");
            if (LanguageManager.isEnglish) {
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButtonReverse_EN");
            }
            else {
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButtonReverse");
            }
        }
        else {
            AudioManager.Instance.PlaySFX("ZhengWuBoxClose");
            if (LanguageManager.isEnglish) {
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButton_EN");
            }
            else {
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButton");
            }
        }
    }

    // Update is called once per frame
    private void Update()
    {
        if (moveEvidence) {
            evidenceList.DOAnchorPosX(230f, durationTime).SetAutoKill().OnComplete(() => {
                canShowDescribe = true;
            });
        }
        else {
            evidenceList.DOAnchorPosX(-1180, 0.5f).SetAutoKill().OnComplete(() => {
                canShowDescribe = false;
            });
        }

        if (moveSuspect) {
            suspectBoard.DOAnchorPosY(310f, durationTime).SetAutoKill().OnComplete(() => {

            });
        }
        else {
            suspectBoard.DOAnchorPosY(456f, durationTime).SetAutoKill();
        }
    }

    private void OnStoryStartEvent(object sender, InkStageInfoArgs inkStageInfoArgs) {
        // 质询对话开始
        player.SetActive(true);
        enemy.SetActive(true);

        // 开启左上背景框
        questLeftupBG.SetActive(true);

        // 
        evidenceBarButton.enabled = true;
        suspectBarButton.enabled = true;

        ClearHealth();
        
        // 展示疑点
        if (!moveSuspect) {
            moveSuspect = !moveSuspect;
            AudioManager.Instance.PlaySFX("ZhengWuBoxOpen");
            if (LanguageManager.isEnglish) {
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButtonReverse_EN");
            }
            else {
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButtonReverse");
            }
        }


        // 在证物阶段显示证物按钮的提示动画
        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("EvidenceButtonAnim", (string varName, object newValue) => {
            if ((bool) newValue && !moveEvidence) {
                Animator animator = evidenceButton.GetComponent<Animator>();
                animator.enabled = true;
            }
        });

        // 触发回调
        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("playerHealth", (string varName, object newValue) => {
            PlayerHealthChanged();
        });

        EvidenceDialogueManager.Instance.currentStory.ObserveVariable ("enemyHealth", (string varName, object newValue) => {
            EnemyHealthChanged();
        });

        playerHealth = (int)EvidenceDialogueManager.Instance.currentStory.variablesState["playerHealth"];
        // 获取质询阶段鬼魂的执念值
        enemyHealth = (int)EvidenceDialogueManager.Instance.currentStory.variablesState["enemyHealth"];
        for (int i = 0; i < playerHealth; ++i) {
            GameObject go = Instantiate(Resources.Load<GameObject>("Prefab/HP"));
            go.transform.SetParent(playerHP.transform);
            playerHealthList.Add(go);
            go.transform.localScale = Vector3.one;
        }

        for (int i = 0; i < enemyHealth; ++i) {
            GameObject go = Instantiate(Resources.Load<GameObject>("Prefab/HP"));
            go.transform.SetParent(enemyHP.transform);
            enemyHealthList.Add(go);
            go.transform.localScale = Vector3.one;
        }
    }

    private void OnTrialStageChangedEvent(object sender, TrialStageChangedArgs trialStageChangedArgs) {
        if (trialStageChangedArgs.trialStage > TrialStage.Quest) {
            moveEvidence = false;
            moveSuspect = false;

            if (LanguageManager.isEnglish) {
                evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButton_EN");
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButton_EN");
            }
            else {
                evidenceButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/EvidenceButton");
                suspectButton.image.sprite = Resources.Load<Sprite>("UI/TrialQuestUI/SuspectButton");
            }

            canShowDescribe = false;

            evidenceBarButton.enabled = false;
            suspectBarButton.enabled = false;

            player.SetActive(false);
            enemy.SetActive(false);
            questLeftupBG.SetActive(false);

            ClearHealth();
        }
    }

    private void PlayerHealthChanged() {
        if (playerHealth <= 0) {
            // 显示黑屏界面,重新进入对话界面

            return;
        }
        int temp = playerHealth;
        playerHealth = (int)EvidenceDialogueManager.Instance.currentStory.variablesState["playerHealth"];
        int minus = temp - playerHealth;
        for (int i = playerHealthList.Count - 1; i > playerHealth - 1; --i) {
            GameObject go = playerHealthList[i];
            Destroy(go);
        }
        playerHealthList.RemoveRange(playerHealth, minus);
        // GameObject go = playerHealthList[playerHealthList.Count - 1];
        // playerHealthList.RemoveAt(playerHealthList.Count - 1);
        // Destroy(go);

        
    }

    private void EnemyHealthChanged() {
        if (enemyHealth <= 0) {
            return;
        } 
        // enemyHealth = (int)EvidenceDialogueManager.Instance.currentStory.variablesState["enemyHealth"];
        // GameObject go = enemyHealtyList[enemyHealtyList.Count - 1];
        // enemyHealtyList.RemoveAt(enemyHealtyList.Count - 1);
        // Destroy(go);

        // 播放执念破碎的音效
        AudioManager.Instance.PlaySFX("ObsessionsShattered");

        int temp = enemyHealth;
        enemyHealth = (int)EvidenceDialogueManager.Instance.currentStory.variablesState["enemyHealth"];
        int minus = temp - enemyHealth;
        for (int i = enemyHealthList.Count - 1; i > enemyHealth - 1; --i) {
            GameObject go = enemyHealthList[i];
            Destroy(go);
        }
        enemyHealthList.RemoveRange(enemyHealth, minus);
    }

    private void ClearHealth() {
        foreach (var go in playerHealthList) {
            Destroy(go);
        }
        playerHealthList.RemoveRange(0, playerHealthList.Count);
        foreach (var go in enemyHealthList) {
            Destroy(go);
        }
        enemyHealthList.RemoveRange(0, enemyHealthList.Count);
    }

    public void EvidenceButtonAnim() {
        Animator animator = evidenceButton.GetComponent<Animator>();
        if (moveEvidence) {
            animator.enabled = false;
        }
        else {
            animator.enabled = true;
        }
    }

    private void OnDestroy() {
        EvidenceDialogueManager.Instance.OnStoryStart -= OnStoryStartEvent;
        TrialStageManager.OnTrialStageChanged -= OnTrialStageChangedEvent;
    }
}
