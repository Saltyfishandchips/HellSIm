using UnityEngine;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System;

public static class JsonReader
{
    public static Dictionary<Tuple<int,int>, T> LoadJsonFromFile<T>(string fileName) where T : IIdentifiable
    {
        // 从 Resources 文件夹中加载 JSON 文件
        TextAsset jsonTextAsset = Resources.Load<TextAsset>(fileName);

        if (jsonTextAsset != null)
        {
            string jsonText = jsonTextAsset.text;

            // 动态解析 JSON 数据
            JArray jsonArray = JArray.Parse(jsonText);
            Dictionary<Tuple<int,int>, T> objectDictionary = new Dictionary<Tuple<int,int>, T>();

            foreach (JToken jsonObject in jsonArray)
            {
                T obj = jsonObject.ToObject<T>();
                objectDictionary[new Tuple<int, int>(obj.day,obj.id)] = obj;
            }

            return objectDictionary;
        }
        else
        {
            Debug.LogError("Failed to load JSON file from Resources: " + fileName);
            return null;
        }
    }
}
