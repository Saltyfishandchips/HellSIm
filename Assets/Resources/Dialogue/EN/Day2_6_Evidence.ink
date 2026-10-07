VAR currentEvidenceList = "12"
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
Are you Wu Lingling? I will start my inquiry about the party and the Kalaviṅka, tell only the truth and do not hide anything. #Layout:Right #Name:Arbiter #Speaker:YL_Normal
Okay. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
Do you confess about killing He Renshu?#Layout:Right #Name:Arbiter #Speaker:YL_Normal
……Yes. I thought about it, if there is a second chance, will I make the same decision?#Layout:Left #Name:Yue Ling #Speaker:YL_Normal
Although my fingers still quiver when I think about killing people……But if I do not kill her, our lives will be harder and harder.#Layout:Left #Name:Yue Ling #Speaker:YL_Sad
->Node0


== Node0 ==
~ currentNode="Evidence"
~ node ="Node0"
~ EvidenceButtonAnim = true
I did not think much, I saw Man Lu died in front of me, and I want to give back the pain, the grievance that our troupe had, so I took the things next to my hand and threw it at her. #Layout:Left #Name:Yue Ling #Speaker:YL_Anger
As a result, her reaction was intense, and in a moment she collapsed, panting weakly……Now to think about it, it might be allergies, or some other disease……#Layout:Left #Name:Yue Ling #Speaker:YL_Normal
It's not easy to have that opportunity, usually we don't have the opportunity to make contact with Miss He alone, only when she is planning something. Every time the troupe is attacked, she doesn't even know where the malice comes from...... It's almost impossible to have a fair fight, let alone have the upper hand like I did at the time. #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
When she was breathing roughly, did you find something useful?#Layout:Right #Name:Arbiter #Speaker:YL_Sad
<color=red>（I remember there is an evidence to prove it.）</color>#Layout:Right #Name:Arbiter #Speaker:YL_Sad
->Node0


== Evidence0 ==
~ currentNode="None"
~ EvidenceButtonAnim = false
Yes…At that time my mind was very clear, I only want her to die. Maybe there is a better way to solve the problem……But I am not that smart, all I could think of, was an eye for an eye, simple like that. #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
~ enemyHealth--
……Besides, just like the flowers given by my fans, there is endless love on the surface, but they can kill me for some reason I couldn't understand……I really don't understand.
Right or wrong, how to judge? Do as I want, at least I won't regret it……#Layout:Left #Name:Yue Ling #Speaker:YL_Sad
Lord, I confess. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
Do you have anything that you can't let go?#Layout:Right #Name:Arbiter #Speaker:YL_Normal
……I have a humble request, I do not have anything I miss in the world, only……When I died I seemed to see Wu. Is he ……okay?#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
After I realized my love for him, I haven't tell him yet……Now he and I are seprated between life and death, if he know my feelings he might be troubled……#Layout:Left #Name:Yue Ling #Speaker:YL_Normal
Be seprated like this, all these years he tried to protact me, and at last I will think for him. #Layout:Left #Name:Yue Ling #Speaker:YL_Happy
Black and White Spirit Wardens, take Yue Ling to the Hometown-looking Platform.#Layout:Right #Name:Arbiter #Speaker:YL_Happy
Yes, please follow me. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Time for work!#Layout:Left #Name:White #SpecialSpeaker:BWC
~ questBG = true
In the living world, there is no one on the street in the evening? Even the carriages are so few, far less prosperous than our netherworld……It looks so quiet, ah, is it snowing? It looks like it's early winter……You see, there is a small crack in the door there, it's Jin Wu!#Layout:Left #Name:White #SpecialSpeaker:BWC
……His hair is longer, but he looks well. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
Yes, on such a cold day, he only wore a thin cotton gown over his long shirt, and it seemed that he was recovering well!#Layout:Left #Name:White #SpecialSpeaker:BWC
Recovering? Ah, that is?!…It's, our agreement when we were young…#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
……, It seems that he can live his life well, I no longer worry, thank you both. #Layout:Left #Name:Yue Ling #Speaker:YL_Happy
Then let's go back. #Layout:Left #Name:Black #SpecialSpeaker:HWC
~ questBG=false
I will judge you according to your crimes, do you have any objections?#Layout:Right #Name:Arbiter #Speaker:YL_Happy
No, I confess, thank you about granting my wishes, Lord.#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Uhm……It's not the correct evidence, I need to think more carefully. #Layout:Right #Name:Arbiter #Speaker:YL_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


