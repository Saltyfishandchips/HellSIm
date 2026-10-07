VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:ML_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:ML_Normal
I understand.#Layout:Left #Name:Man Lu #Speaker:ML_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass. #Layout:Right #Name:Arbiter #Speaker:ML_Normal
    -> END
- else:
   Which one to ask?#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===What happened to Man Lu that day===</color>#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    What were you doing when the case happened?#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    
    I went to the engagement dinner that day……Uhm…To, To cheer Yue Ling up, I was worried about her. But because, because of the traffic…When I arrived Yue Ling was already on stage, so I could only<color=red> wait in her room</color>……Then…Later, I thought about going out to the lawn to take a walk so I left first. #Layout:Left #Name:Man Lu #Speaker:ML_Normal #CE:Text_description_Following the Dance Troupe
        ->c1_1

    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===Man Lu's cause of death===</color>#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    Do you still remember how you die?#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    lately Mr.Song want to keep<color=red> a low profile</color>, did not come for Yue Ling. #Layout:Left #Name:Man Lu #Speaker:ML_Normal
    
    I think He Renshu must have been complacent recently, feeling that he has won a big victory, and he is going to teach a lesson to the unsavory losers. #Layout:Left #Name:Man Lu #Speaker:ML_Normal
    
   That day when I just arrived to find Yue Ling, she was there smiling at the door. #Layout:Left #Name:Man Lu #Speaker:ML_Normal

    Her usual lazy mess is terrible enough, and a casual fluttering word can make us suffer. Seeing her smile so happily that day, my heart sank even more. #Layout:Left #Name:Man Lu #Speaker:ML_Bitter
    
    Sure enough, when she came in, she smiled and waved her pistol at me and Yue Ling, talking <color=red>insults</color> to our troupe. #Layout:Left #Name:Man Lu #Speaker:ML_Normal
    
    ……Ah, I was famous for so many years, was used to her insults……But Yue Ling was shaking obviously, in that condition, no one would not feel scared and insulted.#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile
    
    I…I want to protect Yue Ling……Thinking that He Renshu was<color=red> weak</color>, besides, no matter how rampant she was she should hesitate before shooting, maybe I could <color=red> take the gun</color>…… #Layout:Left #Name:Man Lu #Speaker:ML_Guilty
    
    I only heard "peng", and before I realized it, I saw a smoke rising from the gun, and felt pain in my stomach, my body shaked too. #Layout:Left #Name:Man Lu #Speaker:ML_Normal

    That bitch did not hesitate when shooting, seems that it was not her<color=red> first time to kill</color>. The pain and fear cought my heart…but I still want to talk to Yue Ling, so I dragged my body and tried to turn——It was a pain that words could not describe, and Yue Ling helped me in horror, and I saw the shape of her shouting mouth, and immediately felt the hard ground stand up along my side, and my consciousness gradually blurred…… #Layout:Left #Name:Man Lu #Speaker:ML_Anger #CE:Text_deadcause_Shooting
    <align="center"><color=red>---The inquiry about the cause of death is over---</color>#Layout:Right #Name:Arbiter #Speaker:ML_Anger
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [Ask about identity]
    <align="center"><color=red>===Man Lu's identity before death===</color>#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    What's your identity before you die?#Layout:Right #Name:Arbiter #Speaker:ML_Normal
    
    I am Man Lu from Jiangning town, a……star of the Star Ocean Dance Troupe.#Layout:Left #Name:Man Lu #Speaker:ML_Guilty #CE:Text_identity_Star of the Star Ocean Dance Troupe
        ->c3_1
}

== StartTalk ==
    -> Prefont

==c1_1==
*[Jin Wu saw you.]
Jin Wu said he saw you rushed to the backstage flustered, why?#Layout:Right #Name:Arbiter #Speaker:ML_Normal

Ah……That, that's because, that was, that was late spring, the scenery was fine, I, I was greedy for a while, and when I came back to my senses, Yue Ling was no longer on the stage. That day……that day when she sang <color=red>and dropped off</color>, I thought it was because she was in a bad mood, so I want to find her soon. #Layout:Left #Name:Man Lu #Speaker:ML_Guilty
    ->c1_2
    
*[He Renshu saw you. ]
He Renshu said he saw you rushed to the backstage flustered, why?#Layout:Right #Name:Arbiter #Speaker:ML_Normal

She again!#Layout:Left #Name:Man Lu #Speaker:ML_Anger

……That, that's because, that was, that was late spring, the scenery was fine, I, I was greedy for a while, and when I came back to my senses, Yue Ling was no longer on the stage. That day……that day when she sang <color=red>and dropped off</color>, I thought it was because she was in a bad mood, so I want to find her soon.#Layout:Left #Name:Man Lu #Speaker:ML_Guilty
    ->c1_2
    
== c1_2 ==
*I understand. #Layout:Right #Name:Arbiter #Speaker:ML_Guilty
Yes, it's like that……Lord, I won't lie to you. #Layout:Left #Name:Man Lu #Speaker:ML_Normal
<align="center"><color=red>---The inquiry about what happened is over---</color>#Layout:Right #Name:Arbiter #Speaker:ML_Normal
        ~ reason = true
        -> StartTalk
    
*I heard that she performed better than usual?#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
It……you, you are right……it, it is because <color=red>I was too worried</color>, so I heard sadness in that song. #Layout:Left #Name:Man Lu #Speaker:ML_Normal
<align="center"><color=red>---The inquiry about what happened is over---</color>#Layout:Right #Name:Arbiter #Speaker:ML_Normal
        ~ reason = true
        -> StartTalk

== c3_1 ==
*[Okay, please show your birthmark.]
Okay, please coorperate and show your birthmark. Black Spirit Warden, register.#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
Do it as you wish. #Layout:Left #Name:Man Lu #Speaker:ML_Happy #CE:Add_10
Registered to the evidence box.#Layout:Left #Name:Black #SpecialSpeaker:HWC
    ->c3_2
    
==c3_2 ==
*Do you know is there anything wrong with Yue Ling that day?#Layout:Right #Name:Arbiter #Speaker:ML_Happy
I was about to ask you, Yue Ling was my junior sister and my student, if something happens to her, I, I will…… be very painful, very……guilty.#Layout:Left #Name:Man Lu #Speaker:ML_Guilty
    ->c3_3

==c3_3 ==
*Do you have any suspects?#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
Ah……It must be He Renshu, there can be no one else besides her. The pictorial always say, "We should talk about motivation and evidence." Her fiancé and Yue Ling have frequent scandals, and this matter is not groundless, Mr. Song treats Yue Ling with tenderness and sweetness, which makes a lot of little singers envious。#Layout:Left #Name:Man Lu #Speaker:ML_Happy

In terms of evidence, she must have made up her mind and prepared that day, and she came directly to Yue Ling with a gun. After I was shot……I want, want to protect Yue Ling from gunfire,And……I also had a lot to say to Yue Ling, so I turned around and hugged her with the last of my strength, but I quickly lost consciousness. I don't know if He Renshu shot again after that, or where he went…… #Layout:Left #Name:Man Lu #Speaker:ML_Guilty
<align="center"><color=red>---The inquiry about identity is over---</color>#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
        ~ identity = true
        -> StartTalk
        
*Does anyone have grudges toward Yue Ling?#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
One of the protagonists of the engagement banquet that day, He Renshu. The pictorial always say, "We should talk about motivation and evidence." Her fiancé and Yue Ling have frequent scandals, and this matter is not groundless, Mr. Song treats Yueling with tenderness and sweetness, which makes a lot of little singers envious.#Layout:Left #Name:Man Lu #Speaker:ML_Happy

In terms of evidence, she must have made up her mind and prepared that day, and she came directly to Yue Ling with a gun. After I was shot……I want, want to protect Yue Ling from gunfire,And……I also had a lot to say to Yue Ling, so I turned around and hugged her with the last of my strength, but I quickly lost consciousness. I don't know if He Renshu shot again after that, or where he went……#Layout:Left #Name:Man Lu #Speaker:ML_Guilty
<align="center"><color=red>---The inquiry about evidence is over---</color>#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
        ~ identity = true
        -> StartTalk