using System.Collections.Generic;
using UnityEngine;

public class StickerListGen : MonoBehaviour
{
    [SerializeField] private GameObject rewardSticker;
    public int count = 6; // 实例化预制体的数量  
    public float spacing = 1f; // 预制体之间的间距
    public bool isReward = true;
    
    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < count; i++)  
        {  
            // 实例化预制体  
            GameObject instance = Instantiate(rewardSticker);  
            // 可以选择将实例化的对象设置为脚本所在GameObject的子对象  
            instance.transform.SetParent(transform, true);  
            instance.transform.localPosition = new Vector3(0, -i * spacing, 0);
            if (isReward) {
                RewardSticks rewardSticks = instance.GetComponent<RewardSticks>();
                rewardSticks.SetStickerIdx(i + 1, true, true);
            }
            else {
                RewardSticks rewardSticks = instance.GetComponent<RewardSticks>();
                rewardSticks.SetStickerIdx(i + 1, true, false);
            }
            
        } 
    }

}
