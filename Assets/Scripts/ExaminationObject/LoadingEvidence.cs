using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.Linq;
public class LoadingEvidence : MonoBehaviour
{
    public GameObject evidenceBoxGameObject;
    public JudgeEvidenceBox evidenceBox;
    public Dictionary<Tuple<int,int>,EvidenceData> EvidenceListDictionary;
    public GameObject evidencePrefab;
    
    // Start is called before the first frame update
    void Start()
    {   
        //
        if(LanguageManager.isEnglish)
        {
            EvidenceListDictionary = JsonReader.LoadJsonFromFile<EvidenceData>("Json/EN/EvidenceList");
        }
        else
        {
            EvidenceListDictionary = JsonReader.LoadJsonFromFile<EvidenceData>("Json/EvidenceList");
        }

        evidenceBox = evidenceBoxGameObject.GetComponent<JudgeEvidenceBox>();
        int evidenceTodayNum = EvidenceListDictionary.Keys.Count(key => key.Item1 == CardingManager.dayCountCarding);
        for(int i=1; i<= evidenceTodayNum; i++)
        {
            Tuple<int, int> currentEvidenceTuple = new Tuple<int, int>(CardingManager.dayCountCarding,i);

            GameObject temp = Instantiate(evidencePrefab,evidenceBoxGameObject.transform);
            //temp.transform.localScale = new Vector3(1.0f/6.4f,1.0f/6.4f,1.0f);
            temp.transform.localPosition = evidenceBox.GetPositioner(evidenceBox.GetCurrentEvidenceCount());
            //temp.GetComponent<Evidence>().descriptionString = EvidenceListDictionary[currentEvidenceTuple].descriptionString;
            temp.GetComponent<Evidence>().descriptionString = EvidenceListDictionary[currentEvidenceTuple].finalDescription;
            temp.GetComponent<Evidence>().evidenceName =  EvidenceListDictionary[currentEvidenceTuple].evidenceName;
            temp.transform.GetChild(2).GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>("EvidenceSprite/"+EvidenceListDictionary[currentEvidenceTuple].spriteName);
            evidenceBox.AddEvidence(temp.GetComponent<Evidence>());
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
