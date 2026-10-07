using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TargetUI : MonoBehaviour
{
    public int targetId;
    public int placedId;
    public bool isPlaced;
    public GameObject placedGo;
    // Start is called before the first frame update
    void Start()
    {
        isPlaced = false;
        placedGo = null;
    }

    void Awake()
    {
        isPlaced = false;
        placedGo = null;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
