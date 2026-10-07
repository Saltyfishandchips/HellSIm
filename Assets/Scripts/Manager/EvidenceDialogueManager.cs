using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LitJson;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;
using System;
using DG.Tweening;
using UnityEngine.EventSystems;

public class EvidenceDialogueManager : MonoBehaviour
{

    public static EvidenceDialogueManager Instance;
    public Story currentStory;

    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private TextMeshProUGUI dialogueText;    
    [SerializeField] private Button buttonPrefab;
    [SerializeField] private GameObject buttonObject;
    [SerializeField] private float typeSpeed = 0.03f;
    [SerializeField] private GameObject backGround;
    [SerializeField] private GameObject clickArea;

    // 立绘区域
    [SerializeField] private GameObject leftPanel;
    [SerializeField] private Image leftImage;
    [SerializeField] private TextMeshProUGUI leftNameText;
    [SerializeField] private Image specialImage;

    private const string TAG_SPEAKER = "Speaker";
    private const string TAG_LAYOUT = "Layout";
    private const string TAG_NAME = "Name";
    private const string TAG_SPECIALSPEAKER = "SpecialSpeaker";
    private const string TAG_CE = "CE";
    private const string TAG_Anim = "Anim";


    private const string CHARACTER_PATH = "CharacterSprite/";

    public string currentInkName;
    private bool isDialogueIsContinue;
    private bool isDialogueIsInteract;
    private bool isInChose = false;

    public event EventHandler<InkStageInfoArgs> OnStoryStart;
    public event EventHandler<InkStageInfoArgs> OnStoryEnd;

    private bool istyping = false;
    private Tween tween;

    public bool isAnim = false;


    private void Awake() {
        if (Instance != null) {
            throw new System.Exception("DialogueManager.Instance has exsited!");
        }
        Instance = this; 
    }

    private void Start()
    {
        SetDialogueUI(false);
    }

    private void Update()
    {
        if (RectTransformUtility.RectangleContainsScreenPoint(clickArea.GetComponent<RectTransform>(), Input.mousePosition, Camera.main) 
            && Input.GetMouseButtonUp(0)
            && EventSystem.current.currentSelectedGameObject == null && !isAnim) {
            if (istyping) {
                // 播放后直接结束
                tween.SetAutoKill().Complete();
                istyping = false;
            }
            else  {
                isDialogueIsInteract = true;
            }
            
        }
        
        if (isDialogueIsContinue && isDialogueIsInteract) {
            isDialogueIsInteract = false;
            ContinueDialogue();
        }
        isDialogueIsInteract = false;
    }


    public void InitializedStroy(string inkName, TextAsset inkJosn) {
        currentInkName = inkName;
        currentStory = new Story(inkJosn.text);
        SetDialogueUI(true);

        if (inkName != "GameStartInk") {
            InkStageInfoArgs inkStageInfoArgs = new InkStageInfoArgs(currentInkName, InkInfoManager.Instance.CheckInkStageInfo(currentInkName));
            OnStoryStart?.Invoke(this, inkStageInfoArgs);
        }
        

        ContinueDialogue();
    }

    private void ExitStroy() {
        SetDialogueUI(false);
        if (currentInkName != "GameStartInk") {
            InkStageInfoArgs inkStageInfoArgs = new InkStageInfoArgs(currentInkName, InkInfoManager.Instance.CheckInkStageInfo(currentInkName));
            currentStory = null;
            currentInkName = null;
            OnStoryEnd?.Invoke(this, inkStageInfoArgs);
        }
        else {
            InkStageInfoArgs inkStageInfoArgs = new InkStageInfoArgs(currentInkName, new InkStageInfo());
            OnStoryEnd?.Invoke(this, inkStageInfoArgs);
        }

        currentStory = null;
        currentInkName = null;

    }

    public void ContinueDialogue() {
        if (isInChose) return;

        if (istyping) {
            tween.SetAutoKill().Complete();
            istyping = false;
        }

        if (currentStory.canContinue) {
            AudioManager.Instance.PlaySFX("Talk");
            
            // dialogueText.text = currentStory.Continue();
            string text = currentStory.Continue();
            text = text.Replace("<color=red>", "<color=#B83A3C>");
            if (currentStory.currentTags.Count > 0)
                HandleCharacterTags(currentStory.currentTags);

            //增加打字机动画
            // var t = DOTween.To(() => string.Empty, value => dialogueText.text = value, text, typeSpeed).SetEase(Ease.Linear).SetAutoKill();
            istyping = true;
            dialogueText.text = null;
            int Length = text.Length;
            tween = dialogueText.DOText(text, Length * typeSpeed).OnComplete(() => {
                istyping = false;
            }).SetEase(Ease.Linear).SetAutoKill();
            

        }
        else if (currentStory.currentChoices.Count > 0) {
            for (int i = 0; i < currentStory.currentChoices.Count; ++i) {
                Choice choice = currentStory.currentChoices[i];
                Button button = CreateChoiceView (choice.text.Trim ());

                button.onClick.AddListener(delegate {
                    OnClickChoiceButton (choice);
                });

                isInChose = true;
            }
        }
        else{
            ExitStroy();
        }
    }

    private void DialogueInteract(object sender, EventArgs eventArgs) {
        isDialogueIsInteract = true;
    }

    Button CreateChoiceView (string text) {
        text = text.Replace("<color=red>", "<color=#B83A3C>");
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (buttonObject.transform, false);
		
		// Gets the text from the button prefab
		TextMeshProUGUI choiceText = choice.GetComponentInChildren<TextMeshProUGUI> ();
		choiceText.text = text;

		return choice;
	}


    private void OnClickChoiceButton (Choice choice) {
        // 播放选中按钮的声音
        // 按钮按下声音
        AudioManager.Instance.PlaySFX("UIClick3");

		currentStory.ChooseChoiceIndex (choice.index);
        
        int childCount = buttonObject.transform.childCount;
        for (int i = childCount - 1; i >= 0; --i) {
            Destroy(buttonObject.transform.GetChild(i).gameObject);
        }

        //选项选完直接进入下一条目录
        if (currentStory.canContinue) {
            string text = currentStory.Continue();
            text = text.Replace("<color=red>", "<color=#B83A3C>");
            if (text == "") {
                isInChose = false;
                return;
            }    

            while (text == "\n") {
                text = currentStory.Continue();
            }

            if (currentStory.currentTags.Count > 0)
                HandleCharacterTags(currentStory.currentTags);
            
            //增加打字机动画
            // var t = DOTween.To(() => string.Empty, value => dialogueText.text = value, text, typeSpeed).SetEase(Ease.Linear).SetAutoKill();

            istyping = true;
            dialogueText.text = null;
            int Length = text.Length;
            tween = dialogueText.DOText(text, Length * typeSpeed).OnComplete(() => {
                istyping = false;
            }).SetEase(Ease.Linear).SetAutoKill();

        }

        isInChose = false;
		// ContinueDialogue();
	}

    /**
        现有Ink的Tag有两项：
        Layout: 立绘位置，left或者right
        Sprite: 说话人的立绘,与立绘图片同名，图片放在Asset/Resources/CharacterSprite下，不能是中文
        Name: 说话人的名字，中文
    */
    
    private void HandleCharacterTags(List<String> tags) {
        bool isLeft = false;
        bool isRight = false;
        bool isSpecial = false;
        Texture2D img;
        Sprite characterSprite = null;
        string name = null;

        foreach (string tag in tags) {
            string[] splitTag = tag.Split(':');
            if (splitTag.Length > 2) {
                Debug.LogError("Ink Tag's count error!");
            }

            string strKey = splitTag[0].Trim();
            string strValue = splitTag[1].Trim();    

            switch (strKey) {
                case TAG_LAYOUT:
                    if (strValue == "Left") {
                        isLeft = true;
                        isRight = false;
                    }
                    else {
                        isRight = true;
                        isLeft = false;
                    }
                    break;
                case TAG_SPEAKER:
                    img = Resources.Load<Texture2D>(CHARACTER_PATH + strValue);
                    characterSprite = Sprite.Create(img, new Rect(0, 0, img.width, img.height), new Vector2(0.5f, 0.5f));
                    break;
                case TAG_NAME:
                    name = strValue;
                    break;
                case TAG_SPECIALSPEAKER:
                    isSpecial = true;
                    img = Resources.Load<Texture2D>(CHARACTER_PATH + strValue);
                    characterSprite = Sprite.Create(img, new Rect(0, 0, img.width, img.height), new Vector2(0.5f, 0.5f));
                    break;
                case TAG_CE:
                    DialogueParser.ParserString(strValue);
                    break;
                case TAG_Anim:
                    isAnim = true;
                    string[] str = strValue.Split(",");
                    float[] time = new float[] {float.Parse(str[0]), float.Parse(str[1]), float.Parse(str[2])};
                    int[] shake = new int[] {2, 8, 20};
                    // TODO:细分id，根据左右细分id
                    if (str[3] == "Judge") {
                        if (FlowDataManager.Instance.currentNpcData.idx == 4) {
                            shake = new int[]{20, 10, 6};
                        }

                        AnimShake.PlayAnimShake(FlowDataManager.Instance.currentNpcData.idx, shake, time, str[3]);
                    }
                    else {
                        if ((int)TrialInfoManager.Instance.currentNpcInfo.id == 2) {
                            shake = new int[]{2, 10, 1};
                        }
                        AnimShake.PlayAnimShake((int)TrialInfoManager.Instance.currentNpcInfo.id, shake, time, str[3]);
                    }
                    
                    break;
                default:
                    break;

            }
        }
        
        if (isSpecial) {
            specialImage.gameObject.SetActive(true);
            leftImage.gameObject.SetActive(false);
            specialImage.sprite = characterSprite;
            leftImage.color = new Color(255, 255, 255, 1f);
            leftNameText.text = name;
        }
        else if (isLeft) {
            leftImage.gameObject.SetActive(true);
            specialImage.gameObject.SetActive(false);
            leftImage.sprite = characterSprite;
            leftImage.color = new Color(255, 255, 255, 1f);
            leftNameText.text = name;
        }
        else if (isRight) {
            leftImage.gameObject.SetActive(true);
            specialImage.gameObject.SetActive(false);
            leftImage.sprite = characterSprite;
            leftImage.color = new Color(0.2f, 0.2f, 0.2f, 1f);
            leftNameText.text = name;
        }
        
    }

    private void SetDialogueUI(bool set) {
        isDialogueIsContinue= set;
        dialoguePanel.SetActive(set);
        leftPanel.SetActive(set);
        dialogueText.text = null;
        backGround.SetActive(set);
    }

    private void OnDestroy() {
        tween.Kill();
    }
}
