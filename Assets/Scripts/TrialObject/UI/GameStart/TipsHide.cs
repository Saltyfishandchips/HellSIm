using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TipsHide : MonoBehaviour
{
    // Start is called before the first frame update
    public void HideTips() {
        gameObject.SetActive(false);
    }
}
