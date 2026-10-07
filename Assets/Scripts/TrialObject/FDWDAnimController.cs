using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FDWDAnimController : MonoBehaviour
{
    private GameObject passport;
    // Start is called before the first frame update
    void Start()
    {
        passport = GameObject.Find("Passport");

    }

    private void OnMouseDrag() {
        if (TrailCalculator.isBribeSubmit && StickerBox.hasSealed) {
            passport.transform.GetChild(0).gameObject.SetActive(true);
        }
    }

    private void OnMouseExit() {
        if (TrailCalculator.isBribeSubmit && StickerBox.hasSealed) {
            passport.transform.GetChild(0).gameObject.SetActive(false);
        }
    }
}
