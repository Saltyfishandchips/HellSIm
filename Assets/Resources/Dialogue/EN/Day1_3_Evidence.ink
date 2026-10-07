VAR currentEvidenceList = ""
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 2
VAR questBG = false
VAR EvidenceButtonAnim = false
VAR shackCamera = 0
VAR topic1 = false
VAR topic2 = false
VAR topic3 = false
VAR BGMChange = false
->start

== start ==
~ currentNode = "None"
Is Guanzanzhu here? I will ask you about the fire at the government office and the Flower of Wangchuan. You must answer truthfully and not hide anything. #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
Sure! Lord Arbiter, ask away, and I will answer. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal
*[Was Li Jie killed by you?]
    Li Jie claims he was killed by you. Do you admit to this? #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
-
~shackCamera++
Ah! He’s really dead! #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
...#Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
Li Jie... died by my hand.
But he deserved it! He broke into the government office at night to steal! He disturbed... the sick room and insulted my lord, not understanding my lord's plight. He deserved to die! I was just doing my duty! Yes, that's it! O heavens, please see clearly... oh great lord of the underworld! #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
*[He didn’t deserve to die, did he?]
    I didn’t mean to kill him! I heard him insulting my lord, and I was just trying to scare him. He... he brought it upon himself! No, it was that woman Cui Er who grabbed his foot, and I lost control, which is how it happened. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
    I... I didn’t expect him to die so easily. I saw him glare at me, and I hurried to the storeroom to find something to bandage him up, didn’t I? #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
-
* [Why did you hide these things just now?]
    ... I really didn’t think he had died at that time. With such a big explosion in the storeroom, I thought he must have been blown up along with everything else, and that this debt wouldn’t fall on me. Sigh... I accept the accusation. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
-
*[What about the Flower Room? Why didn’t you report what you knew?]
    The Flower Room... the Flower Room!!! #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
    I believed my lord was saving lives, that what happened in the Flower Room was... necessary. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
    Years ago, during the war, I was conscripted as a soldier. At first, I was just a supply soldier, never went to the frontlines. But many died every day, and even soldiers like me were pushed to the frontlines. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
    ~shackCamera++
    Watching my comrades fall one by one made me panic. The general said, "A general's success is built on the bones of thousands," but I didn’t understand. I only knew those souls sought vengeance on their killers.
    I couldn’t bear to kill, but on the battlefield, not killing meant waiting to be killed! Eventually, I couldn’t take it anymore and ran away.
-
*[And then you were taken in by Xue Huaiyi?]
    Yes! Because of my lord, I escaped disaster. But then, the sickness broke out... #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
-
My lord said it was necessary to save lives. I believed I was helping him save people. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
But... what happened in the Flower Room was even more terrifying than the battlefield...
Those people being used for medicine had no spark in their eyes, only endless suffering. Every time I heard their wails, I struggled inside. I could only tell myself—this is necessary, to keep my heart steady. 
My life was saved by my lord; as long as he needs me, I will keep going, not looking or thinking about it. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal
~shackCamera++
But... I’m starting to understand less and less. Why does my lord only stay in the study? He doesn’t even check on those patients? The ones brought in don’t get better; they just keep planting flowers... what are the elixirs for? #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
*[You’ve noticed something was wrong, haven’t you?]
    Deep down, you've been shaken but don’t dare to admit it, do you? #Layout:Right #Name:Arbiter #Speaker:GSZ_Anger
    ~shackCamera++
    I... I can’t admit it... I can’t admit that everything was wrong! What does that make of everything I’ve done? What have I been doing these years? My lord! He’s so kind; he wouldn’t hurt anyone! He wouldn’t! #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
    ~shackCamera++
    And Li Jie, I can’t let him spill the beans, or else... I’d be a complete villain, and I wouldn’t be able to face myself...
   I have no way out now... #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
-

*[The cycle of cause and effect brings unyielding retribution.]
    The cycle of cause and effect brings unyielding retribution. Li Jie's sister, Li Xiaomei, set fire to the government to expose its crimes. The flames reached the storeroom and ignited the fireworks you bought, killing everyone in the government, including Xue Huaiyi. #Layout:Right #Name:Arbiter #Speaker:GSZ_Sad
    ~shackCamera++
    My lord... he’s dead? No... that’s impossible! I won’t believe it! He wouldn’t be in danger; he wouldn’t! #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
    Due to the case, you can’t see Xue Huaiyi now. Go and see the state of the government for yourself. Black and White Spirit Wardens! Take him to the Hometown-looking Platform! #Layout:Right #Name:Arbiter #Speaker:GSZ_Anger
    Yes. #Layout:Left #Name:Black #SpecialSpeaker:HWC
    Let's GO！#Layout:Left #Name:White #SpecialSpeaker:BWC
-
~questBG = true
See that blackened area? That’s the ruins of the government. The fire was enormous; even I felt warm! It crackled and popped, quite the spectacle. How many fireworks did you buy? #Layout:Left #Name:White #SpecialSpeaker:BWC
But it’s strange; the fire only burned the government. Nothing else was touched, as if it was meant to destroy just that place... don’t you think that’s eerie? #Layout:Left #Name:White #SpecialSpeaker:BWC
Perhaps it’s divine will. #Layout:Left #Name:Black #SpecialSpeaker:HWC
The cycle of cause and effect, unyielding retribution... #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
~enemyHealth -= 2
~topic1 = true
~ topic2 = true
The judge is still waiting. Now that you see clearly, we shall take you back. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Yes... #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
~questBG = false
I will judge you according to your crimes. Do you have any objections? #Layout:Right #Name:Arbiter #Speaker:GSZ_Sad
I... Guan Zhen... plead guilty. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal
Thank you, my lord, for helping me see the truth. I am finally freed. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Happy

->END






    


