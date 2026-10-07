VAR currentEvidenceList = ""
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 3
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
Are you Li Jie? I will ask you about the case of fire in the ministry and the flowers of Wangchuan, tell only the truth and do not hide anything. #Layout:Right #Name:Arbiter #Speaker:LJ_Normal
Lord Arbiter! Was that my sister?? Her name is Li Xiaomei! No, it's the netherworld, my sister should not be here. Maybe I missed her too much I saw it wrong. It must be like this, it won't be my sister!#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
*[Ah…That person was your sister. ]
    Ah…That person was your sister. She was also part of the case, died after you, and came to the netherworld for investigation. #Layout:Right #Name:Arbiter #Speaker:LJ_Suprise
    ~shackCamera++
    What!? No! That night didn't she go to the lantern show with her friends? Why would she be part of the case?#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
    ~shackCamera++
    Wait! Was it the revenge of that damn officer Xue Huaiyi!He……killed my sister!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger
    It was all my fault, I was too impulsive. I was busy being the hero, never thinking of the outcome, and caused my sister's death ……#Layout:Left #Name:Li Jie #Speaker:LJ_Sad
    ~shackCamera++
    Lord Arbiter, please give justice to Xiaomei! Catch that damn Xue Huaiyi and take his life!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger
    ** [Xue Huaiyi is also dead, I will tell you what happened.]
        Xue Huaiyi is also dead, the things are more complicated than you think. Let me tell you what happened…… #Layout:Right #Name:Arbiter #Speaker:LJ_Anger
        ~shackCamera++
       !!!……How……So mamy things happened! Xiaomei……burned the ministry??#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
        Ah, but her life is only at the beginning……And the villagers……It's all my fault……#Layout:Left #Name:Li Jie #Speaker:LJ_Sad
        ……But, my sister is more couragous and determined than me! She did the things that I couldn't.  #Layout:Left #Name:Li Jie #Speaker:LJ_Happy
        ~enemyHealth = enemyHealth - 2
        ~ topic1 = true
        Oh!! Lord Arbiter! There are still villagers who are sick! Please save them!#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
        *** [The netherworld has already taken care of it. ]
        The netherworld has already taken care of it. But since you still couldn't let go, Black and White Spirit Wardens, take him to the Hometown-looking Platform.#Layout:Right #Name:Arbiter #Speaker:LJ_Suprise
        Yes. #Layout:Left #Name:Black #SpecialSpeaker:HWC
        New job to do!#Layout:Left #Name:White #SpecialSpeaker:BWC
        ~ questBG=true
        There, there! See? That is your village. Don't worry, Me and Black went there in a hurry, and took all the Yin Qi there. The villagers will be okay. But I was so tired! Who said that the netherworld was so scary, so that we have to work only at night. It's rumour! Rumour!#Layout:Left #Name:White  #SpecialSpeaker:BWC
        Uhm! Li Jie, you saw, the villagers are getting better. As for the things after that, the netherworld will take care of it. #Layout:Left #Name:Black #SpecialSpeaker:HWC
        ~enemyHealth--
        ~ topic2 = true
        Thank you so much lords! The suffering in the village can finally have an end……#Layout:Left #Name:Li Jie #Speaker:LJ_Normal
        It's where our responsibility is! Let's go!#Layout:Left #Name:Black #SpecialSpeaker:HWC
        ---
    --
        ~ questBG=false
        Never Mind! The fire has ended, the people are in the netherworld, the case is closed. I do not have any other thoughts, thank you Lord Arbiter! #Layout:Left #Name:Li Jie #Speaker:LJ_Happy
        Okay, I will make my decision according to your crime. Do you have any objections?#Layout:Right #Name:Arbiter #Speaker:LJ_Happy
        No objections! Please make your call!#Layout:Left #Name:Li Jie #Speaker:LJ_Normal
    -
    ->END
    


