using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : MonoBehaviour
{
    public static AudioManager Instance;

    public AudioSource backgroundMusicSource;  // 背景音乐音源
    public AudioSource sfxSource;  // 交互音效音源
    public AudioMixer audioMixer;  // 主音频混音器

    // 使用字典来存储音频片段
    private Dictionary<string, AudioClip> musicClips;  // 背景音乐片段的字典
    private Dictionary<string, AudioClip> sfxClips;    // 音效片段的字典

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);  // 确保在场景切换时不销毁
        }
        else
        {
            Destroy(gameObject);  // 避免重复实例
        }

        // 初始化字典
        musicClips = new Dictionary<string, AudioClip>();
        sfxClips = new Dictionary<string, AudioClip>();

        // 加载所有音频文件
        LoadAllAudioFiles();
    }

    // 加载所有音乐和音效片段到字典
    private void LoadAllAudioFiles()
    {
        // 假设所有音频文件存储在Resources文件夹中的Music和SFX子文件夹中
        AudioClip[] musicFiles = Resources.LoadAll<AudioClip>("Musics/Background");
        AudioClip[] sfxFiles = Resources.LoadAll<AudioClip>("Musics/SFX");

        foreach (AudioClip clip in musicFiles)
        {
            if (!musicClips.ContainsKey(clip.name))
            {
                musicClips.Add(clip.name, clip);  // 添加到音乐字典
            }
        }

        foreach (AudioClip clip in sfxFiles)
        {
            if (!sfxClips.ContainsKey(clip.name))
            {
                sfxClips.Add(clip.name, clip);  // 添加到音效字典
            }
        }
    }

    // 播放指定名字的背景音乐
    public void PlayBackgroundMusic(string clipName)
    {
        if (musicClips.TryGetValue(clipName, out AudioClip clip))
        {
            backgroundMusicSource.clip = clip;
            backgroundMusicSource.Play();
        }
        else
        {
            Debug.LogError("Background music clip not found: " + clipName);
        }
    }

    // 播放指定名字的音效
    public void PlaySFX(string clipName)
    {
        if (sfxClips.TryGetValue(clipName, out AudioClip clip))
        {
            sfxSource.PlayOneShot(clip);
        }
        else
        {
            Debug.LogError("SFX clip not found: " + clipName);
        }
    }

    // 设置背景音乐的音量
    public void SetBackgroundMusicVolume(float volume)
    {
        audioMixer.SetFloat("BackgroundMusicVolume", Mathf.Log10(volume) * 20);  // 使用对数缩放
    }

    // 设置音效的音量
    public void SetSFXVolume(float volume)
    {
        audioMixer.SetFloat("SFXVolume", Mathf.Log10(volume) * 20);  // 使用对数缩放
    }

    // 淡出背景音乐
    public void FadeOutBackgroundMusic(float fadeTime)
    {
        StartCoroutine(FadeOut(backgroundMusicSource, fadeTime));
    }

    // 淡入背景音乐
    public void FadeInBackgroundMusic(float fadeTime)
    {
        StartCoroutine(FadeIn(backgroundMusicSource, fadeTime));
    }

    private IEnumerator FadeOut(AudioSource audioSource, float fadeTime)
    {
        float startVolume = audioSource.volume;

        while (audioSource.volume > 0)
        {
            audioSource.volume -= startVolume * Time.deltaTime / fadeTime;
            yield return null;
        }

        audioSource.Stop();
        audioSource.volume = startVolume;
    }

    private IEnumerator FadeIn(AudioSource audioSource, float fadeTime)
    {
        audioSource.volume = 0;
        audioSource.Play();

        while (audioSource.volume < 1)
        {
            audioSource.volume += Time.deltaTime / fadeTime;
            yield return null;
        }
    }
}
