using UnityEngine;

public class CircleRound : MonoBehaviour
{


    // Update is called once per frame
    public int RotateSpeed = 5;
    void Update()
    {
        Vector3 angles = this.transform.localEulerAngles;
        angles.z -= RotateSpeed * Time.deltaTime;
        this.transform.localEulerAngles = angles;

    }
}
