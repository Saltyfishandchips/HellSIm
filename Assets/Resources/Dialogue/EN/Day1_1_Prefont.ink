VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:XFG_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:XFG_Normal
No problem. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
->Prefont

->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
    The inquiry is finished, it's time to review the travel pass.  #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
    -> END
- else:
    (Which one to ask?)#Layout:Right #Name:Arbiter #Speaker:XFG_Normal
    * {reason == false} [Ask what happened]
    What were you doing at the time of the incident? #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
    
    That night, I was deeply immersed in studying medicinal herbs and alchemical formulas in my <color=red>study</color>. #Layout:Left #CE:Text_description_In the study #Name:Xue Huaiyi #Speaker:XFG_Normal
    Recently, a <color=red>severe illness</color> broke out in the village in the western part of the county. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
    I was deeply worried about the people, unable to find peace day or night, so I buried myself in medical research, hoping to find a cure as soon as possible. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
        ->c9_1
        
    * {deadCaues == false} [Ask about the cause of death]
    Do you remember how you died? #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
    
   That night, there was a <color=red>loud bang</color> from the warehouse area in the western part of the inner courtyard of the ministry, followed by a raging fire. As I got up to check, the beams in my study suddenly caught fire. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger

    Though there was still a way to escape outside, I don’t know why, but my whole body was completely paralyzed. I could only sit there, waiting for the flames to engulf me... #Layout:Left #CE:Text_deadcause_Bludgeoned to death #Name:Xue Huaiyi #Speaker:XFG_Sad
    ->c8_1


    * {identity == false} [Ask about identity]
    What was your identity before? #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
    
   <color=red>I am Xue Huaiyi, the county magistrate of this area</color>. I have held this position for several years now. I consider myself a clean official, wholeheartedly serving the people. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
   For many years, I have devoted myself to my work, fighting epidemics and relieving the people's suffering, striving to remain true to my conscience. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal

   Could I not use this passion to secure a position in the netherworld, not for my own sake, but to finish what I left undone in life? #Layout:Left #CE:Text_identity_County Magistrate #Name:Xue Huaiyi #Speaker:XFG_Normal
    
    Not so fast, I still have questions for you. #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
        ~ identity = true
        -> StartTalk
}

== StartTalk ==
    -> Prefont


=== c8_1 ===
    *[Why didn’t you escape the study?]
    ->c8_2

=== c8_2 ===
To my shame, the fire spread quickly, the red flames glaring, and the room was filled with smoke. I was deeply afraid. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad

However, I spent most of my days in the study, rarely going out, so I hesitated, feeling uncertain. Instead of risking an escape, I decided it was safer to stay inside, hoping my personal guard would extinguish the fire in time… #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
 
*[Who is your personal guard?]
        ->c8_3

=== c8_3 ===
<color=red>My personal guard, named Guan Sanzhu</color>, is tall, strong, and loyal. He would always stand guard outside my door while I studied medicine. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
 
But that day, he <color=red>did not respond for a long time</color>. I swear on my honor, Sanzhu is not the type of man to abandon his duty for self-preservation. Something unusual must have happened. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Why
        ->c8_4
        
=== c8_4 ===
*[So, you died in the fire?]

…I think so…but everything went black, I can’t remember clearly… #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Why
    ->c8_5
    
=== c8_5 ===
*[Black Spirit Warden! Investigate!]
Xue Huaiyi, step aside for now! Black Spirit Warden! Check the cause of this ghost's death. #Layout:Right #Name:Arbiter #Speaker:XFG_Doubt

On my way. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Arbiter! The fragments of the Harma Stone show that this ghost <color=red>died from blunt force trauma</color>. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Strange... He was in the study, so how did he die from blunt force trauma? Could it have been the burning beams? Record it. #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
~ deadCaues = true
-> StartTalk


=== c9_1 ===
 *[What kind of illness?]

Oh? You’re concerned about this as well? The illness spread rapidly, mostly affecting those who were physically weak. At first, they only showed signs of fatigue and confusion, but soon they experienced shortness of breath, palpitations, and severe pain throughout their body. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Why

In severe cases, their faces turned as pale as paper before they finally passed away.#Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Why

Recently, thanks to <color=red>B’s herbs</color>, the remedy began to show some effect, but it was all lost in the fire... Ah, all hope is gone. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad

    ->c9_2

=== c9_2 ===
*[Who is this "B"?]

<color=red>White Brandt</color>, a <color=red>Western merchant from Freland</color>, arrived in the county half a year ago. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
Though a merchant, I found that he has considerable skill in alchemy and is well-versed in the use of exotic herbs. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
 
This illness couldn’t be found in any local medical texts, so I relied on foreign methods, and finally, we found a herb that matched the symptoms. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
    ->c9_3

=== c9_3 ===
*[The herb you mentioned, is it the <color=red>Flower of Wangchuan</color>?] 

!!! Yes… yes! Arbiter, you are indeed knowledgeable! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal

<color=red>Two months ago, B</color> helped me find this flower. <color=red>Dr. Cui</color> also confirmed its ability to calm pain, ease breathing, and replenish energy. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal

Dr. Cui and I tried using it in prescriptions, and we asked B to refine it into an elixir called <color=red>Wangyou Elixir</color>, hoping the patients could forget their worries and regain their health. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
    ->c9_4
    
=== c9_4 ===
*[Who is Dr. Cui?]

It was my oversight! <color=red>Dr. Cui</color> is a renowned female medical talent, well-known far and wide. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal

I, being weak and frequently ill, have relied on her skilled hands for many years. I even <color=red>invited her to stay in a guest room in my manor</color>. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
Compared to her medical expertise, I have only picked up a few basics through my prolonged illnesses. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal

This time, she personally visited the patients, truly embodying the compassion of a healer. The creation of the Wangyou Elixir owes much to her efforts. Speaking of the Wangyou Elixir... #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal

Your honor! This is the Wangyou Elixir! Before my death, I was still concerned about the sick, clinging tightly to this bottle. But who would have thought I brought it with me here… sigh... #Layout:Left #CE:Add_7 #Name:Xue Huaiyi #Speaker:XFG_Sad
Black Warden, register the Wangyou Elixir as new evidence for this case. #Layout:Right #Name:Arbiter #Speaker:XFG_Sad
Of course. #Layout:Left #Name:Black #SpecialSpeaker:HWC
        ~ reason = true
        -> StartTalk