VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted. #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
Please state the relevant facts of the case. #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
All right. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass.  #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
    -> END
- else:
    (Which one to ask?)#Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
    * {reason == false} [Ask what happened]
    What were you doing that night? #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
    That night, I was supposed to be guarding my lord outside the study. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal

    Suddenly, I noticed a <color=red>sneaky figure</color> near the <color=red>pharmacy</color>. I thought that <color=red>the foreigner</color> was sneaking out instead of properly refining his medicine, so I went over to check it out. #Layout:Left  #CE:Text_description_Patrolling the storage area #Name:Guan Sanzhu #Speaker:GSZ_Normal
    ->c9_1
    
    * {deadCaues == false} [Ask about the cause of death]
    Do you remember how you died? #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
    
    I didn’t know that bastard <color=red>set a fire in the manor</color>, and when it reached the storage, all those fireworks and stuff <color=red>just exploded!</color> #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger

    Just like that, there was a huge bang, everything turned upside down, and I didn’t even have time to react. #Layout:Left #CE:Text_deadcause_Blown to death #Name:Guan Sanzhu #Speaker:GSZ_Anger
    ->c8_1

    * {identity == false} [Ask about identity]
    What's your formal identity? #Layout:Right #Name:Arbiter #Speaker:GSZ_Normal
    <color=red>My name is Guan Sanzhu, I used to be a soldier</color>, now I work for Master Xue. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Happy

    Master Xue saved my life, but I’m just a rough man with no special skills. All I know is some martial arts, so I <color=red>work as a guard for him</color>, doing the dirty and hard jobs. #Layout:Left #CE:Text_identity_Official Guard #Name:Guan Sanzhu #Speaker:GSZ_Happy
    ~ identity = true
    -> StartTalk
}

== StartTalk ==
    -> Prefont

=== c8_1 ===
*Why were there fireworks stored in the storeroom?  #Layout:Right #Name:Arbiter #Speaker:GSZ_Anger
 ->c8_2

=== c8_2 ===
Sigh, my lord hasn’t stepped out for months. I thought I’d set off some fireworks in the manor to <color=red>celebrate the Mid-Autumn Festival</color> and cheer him up. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad

Who knew it would turn into a deadly thing… #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad

 
*Why hasn’t Xue Huaiyi stepped out? #Layout:Right #Name:Arbiter #Speaker:GSZ_Sad
        ->c8_3

=== c8_3 ===
 Of course, he’s been <color=red>busy saving people</color>. My lord is a good official who cares about the sick commoners. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Happy
 
But staying in the study every day has worn him out, so he has to <color=red>trouble Dr. Cui to come see him every day.</color> #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad

By the way! Lord Arbiter, you have great powers. Can you help me check on my lord’s condition? #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
    ->c8_4
    
== c8_4
*[I cannot disclose that information to you.]

… yes. But my lord is a good person; he will be fine. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Sad
    ~ deadCaues = true
    -> StartTalk

=== c9_1 ===
*[Foreigner? Are you talking about Brandt?]

Yes, that strange name fits him. He’s a lazy bum. My lord provides him with good food and lodging, but he takes forever to refine anything and constantly has to relieve himself or take a breather. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal

I got so annoyed that I <color=red>put a lock</color> on the pharmacy to keep him inside until he finished his work. But with that sneaky look of his, I figured he might know a trick or two for picking locks. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
    ->c9_2

=== c9_2 ===
*[So what happened next? Was the figure Brandt?]

Actually, it wasn’t him. I later found out it was that <color=red>thieving brat Li Jie</color>, sneaking in to steal something. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger

    ->c9_3

=== c9_3 ===
*[Who is Li Jie?] 

<color=red>A petty thief from the poor alleys</color> in the west of the county. He doesn’t do any proper work and steals from everywhere. Countless people have reported him to the authorities, but there’s never enough evidence to do anything. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal

After getting caught, he even boasts that he’s <color=red>robbing the rich to help the poor</color>. I think he’s just a thief, and him not getting caught is just luck. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
    ->c9_4
    
=== c9_4 ===
*[Does he often steal from the official manor?]

<color=red>He’s only been here once, and I caught him right away.</color>My lord is kind-hearted and didn’t punish him much; he told me to let him go. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Normal

But I <color=red>broke one of his legs before letting him go</color>, hoping he’d learn a lesson and not have the guts to steal from the official manor again. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger
    ->c9_5
    
=== c9_5 ===
*[Why did he come again tonight?]

…I don’t know. When I went over, I saw him opening the <color=red>flower house lock</color>. Now the flower house is where my lord <color=red>temporarily houses the sick</color>, so I couldn’t let him mess around. I <color=red>stabbed him in the back with the sheath of my sword</color>. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger

Who knew this brat was slippery like an eel? He turned around and ran towards the <color=red>storeroom</color>, and when I chased after him, <color=red>the manor caught fire</color>. #Layout:Left #Name:Guan Sanzhu #Speaker:GSZ_Anger

~ reason = true
-> StartTalk
