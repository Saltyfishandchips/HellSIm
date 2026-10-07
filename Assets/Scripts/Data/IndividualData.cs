using System.Linq;

public interface IIdentifiable
{
    int day{ get; set; }
    int id { get; set; }
}

public class NpcData:IIdentifiable
{
    public int day{ get;set; } // 天数
    public int id { get;set; } // 此处id代表npc编号，day + id 唯一识别
    public int idx { get;set; }
    public string npcName {get;set;}
    public bool isOfferTravelPermit {get;set;} // 是否提供路引
    public bool isCarryTravelPermit {get;set;} // 是否携带路引
    public int paperDifference{get;set;} // 文件差异项
    public NpcResult npcResult{get;set;} // 预设结局
    public NpcIsObjection npcObjection{get;set;} // 是否异议
    public int npcBribes; //贿赂金钱数量
    public int evidenceDifference{get;set;} //证物差异项

    private int[] _rewardValue;
    public int[] rewardValue
    {
        get
        {
            return _rewardValue;
        }
        set
        {
            _rewardValue = value ?? new int[0]; // 如果传入的是 int[] 或者 null，直接赋值
        }
    }
    public string rewardValueString
    {
        set
        {
            if (!string.IsNullOrEmpty(value))
            {
                _rewardValue = value.Split(',')
                                    .Select(int.Parse)
                                    .ToArray();
            }
            else
            {
                _rewardValue = new int[0]; // 处理空字符串的情况
            }
        }
    }

    private int[] _penaltyValue;
    public int[] penaltyValue
    {
        get
        {
            return _penaltyValue;
        }
        set
        {
            _penaltyValue = value ?? new int[0]; 
        }
    }
    public string penaltyValueString
    {
        set
        {
            if (!string.IsNullOrEmpty(value))
            {
                _penaltyValue = value.Split(',')
                                    .Select(int.Parse)
                                    .ToArray();
            }
            else
            {
                _penaltyValue = new int[0]; // 处理空字符串的情况
            }
        }
    }//罚

    private int[] _returnValue;
    public int[] returnValue
    {
        get
        {
            return _returnValue;
        }
        set
        {
            _returnValue = value ?? new int[0]; 
        }
    } 

    public string returnValueString
    {
        set
        {
            if (!string.IsNullOrEmpty(value))
            {
                _returnValue = value.Split(',')
                                    .Select(int.Parse)
                                    .ToArray();
            }
            else
            {
                _returnValue = new int[0]; // 处理空字符串的情况
            }
        }
    }//短暂返阳
}



public enum NpcResult
{
    Null = 0,
    Guiyin = 1,
    FanYang = 2,
    YiJiao = 3
}

public enum NpcIsObjection
{
    None = 0, //没有这个环节
    No = 1, //无异议
    Yes = 2 //有异议
}

public class TravelPermitData:IIdentifiable
{
    public int day{get;set;}
    public int id {get;set;}
    public string npcName {get;set;}
    public string npcGender {get;set;}
    public string npcBirthdate {get;set;} // 生辰八字
    public string npcDeadline {get;set;} // 死期
    public string staffNo  {get;set;} // 鬼差编号
    public string npcJurisdiction {get;set;} // 辖区
}

public class ObituaryData:IIdentifiable
{
    public int day {get;set;}
    public int id {get;set;}
    public string npcName {get;set;}
    public string npcGender {get;set;}
    public string npcBrithdate {get;set;} // 诞辰
    public string npcDeadline {get;set;} // 死期
    public string npcDestiny {get;set;} // 命数(V1.0)/阳寿(V2.0)
    public string staffNo {get;set;} // 鬼差编号
    public string npcJurisdiction {get;set;} // 辖区

    public string npcDescription{get;set;} // 生平
    public string npcDeadCause {get;set;} // 死因
    public string npcMerits {get;set;} // 功德
    public string npcGuilty{get;set;} // 罪业
}

public class PaperWorkData:IIdentifiable
{
    public int day{get;set;}
    public int id{get;set;}
    public string npcName{get;set;}
    public string npcRace{get;set;}
}

public class DailyData:IIdentifiable
{
    public int day{ get; set; }
    public int id { get; set; } //似乎无效值
    public string newsATitle;
    public string newsATextContent;
    public string newsBTitle;
    public string newsBTextContent;
    public string newsCTitle;
    public string newsCTextContent;
}

public class EvidenceData:IIdentifiable
{
    public int day{ get; set; }
    public int id { get; set; } //似乎无效值
    public string evidenceName;
    public bool isOrigin;
    public string descriptionString;
    public string spriteName;
    public string finalDescription;
}

public class EvidenceDescriptionData:IIdentifiable
{
    public int day{ get; set; }
    public int id { get; set; } //似乎无效值
    public string description;
    public int instruction;
    public int evidenceId;
    public int targetId;
}

