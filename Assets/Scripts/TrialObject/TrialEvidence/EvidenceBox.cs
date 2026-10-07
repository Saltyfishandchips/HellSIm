using UnityEngine;
using UnityEngine.UI;

public class EvidenceBox : MonoBehaviour
{
    // 生成证物的列表
    private Button showButton;
    [SerializeField] private GameObject EvidenceList;

    // private Image evidenceIcon;

    // private bool flag = true;

    private void Awake() {
        // evidenceIcon = GetComponentInChildren<Image>();
        // showButton = GetComponentInChildren<Button>();
        // showButton.onClick.AddListener(() => {
        //     EvidenceListShow(flag);
        //     flag = !flag;
        // });

        EvidenceList.SetActive(false);
    }

    public void GenEvidence() {
        int j = 0;
        foreach (var evidence in QuestStageManger.dayEvidenceList) {
            // 实例化证物
            GameObject go = Resources.Load<GameObject>("Prefab/Evidence");
            go = Instantiate(go);
            go.transform.SetParent(EvidenceList.transform);
            if (j == 0) {
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().anchorMax = new Vector2(0, 0);
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().anchorMin = new Vector2(0, 0);
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().pivot = new Vector2(0, 1);
            }
            else if (j == 11) {
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().anchorMax = new Vector2(1, 0);
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().anchorMin = new Vector2(1, 0);
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().pivot = new Vector2(1, 1);
            }
            else {
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().anchorMax = new Vector2(0.5f, 0);
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().anchorMin = new Vector2(0.5f, 0);
                go.transform.GetChild(1).gameObject.GetComponent<RectTransform>().pivot = new Vector2(0.5f, 1);
            }

            go.transform.localPosition = new Vector3 (go.transform.localPosition.x, go.transform.localPosition.y, 0f);
            TrialEvidence trialEvidence = go.GetComponent<TrialEvidence>();
            trialEvidence.SetEvidence((int)evidence.id);
            j++;
        }

        // 将剩下的证物填充
        for (int i = 0; i < 12 - QuestStageManger.dayEvidenceList.Count; ++i) {
            // 实例化证物
            GameObject go = Resources.Load<GameObject>("Prefab/FillerEvidence");
            go = Instantiate(go);
            go.transform.SetParent(EvidenceList.transform);
            go.transform.localPosition = new Vector3 (go.transform.localPosition.x, go.transform.localPosition.y, 0f);
            go.transform.localScale = Vector3.one;
        }

    }

    public void EvidenceListShow(bool flag) {
        EvidenceList.SetActive(flag);
    }

    // private void EvidenceListShow(bool flag) {
    //     EvidenceList.SetActive(flag);
    //     if (flag) {
    //         evidenceIcon.sprite = Resources.Load<Sprite>("UI/CloseButton");
    //     }
    //     else {
    //         evidenceIcon.sprite = Resources.Load<Sprite>("UI/EvidenceIcon");
    //     }
    // }
}
