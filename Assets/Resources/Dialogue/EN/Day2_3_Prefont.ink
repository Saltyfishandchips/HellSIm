VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
Whatever you want to ask, make it fast.#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass. #Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    -> END
- else:
    Which one to ask?#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===What happened about He?===</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    What were you doing at the time of the incident?#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    
    Hmph, of course, I was attending my own engagement party. Although my father says it's for my own good, I know very well that this is just a <color=red>political marriage</color>. Anyway, my father wants to attract some fresh blood to strengthen his faction.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient #CE:Text_description_Protagonist of the Engagement Banquet
    
    However, Song Zhinian is just a <color=red>country bumpkin</color> who barely climbed up by flattery. After marriage, we'll go our separate ways; he isn't worth my concern. Once he loses his usefulness, I'll kick him out immediately!#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    
    I've long found him displeasing, especially since he invited my most hated <color=red>Star Ocean Dance Troupe</color> to the engagement party this time. He truly has no discernment.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    
    ->c1_1
        
    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===Cause of Death===</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    Do you remember how you died?#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    
    I was in a small room and encountered those two cheap singers, <color=red>Man Lu and Yue Ling</color>. I thought I could bond with them, but they were sulking there instead.#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
        ->c2_1

    * {identity == false} [Ask about identity]
    <align="center"><color=red>===identity of He===</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    What was your identity before?#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    
    My name is He Renshu, and my father is <color=red>Minister of Military and Political Affairs He Zhi</color>.#Layout:Left #Name:He Renshu #Speaker:HRS_Normal #CE:Text_identity_Second Daughter of the Minister of the NJP
        ->c3_1

}

== StartTalk ==
    -> Prefont

==c1_1==
    *[Why did you hate the Star Ocean Dance Troupe]

    I've always found these singers displeasing. There's no special reason; it’s just that their way of <color=red>making a living by singing is truly unappealing</color>.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
    
    I especially hate those high-jumping crickets that always jump in front of me, chirping loudly. Other dance troupes scatter quickly if I use a little influence.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    
    But the Star Ocean Dance Troupe, on the other hand... Despite my <color=red>numerous efforts to suppress them</color>, they still grew gradually. Every time I see them, especially that Yue Ling and Man Lu, it’s like having short splinters on my nails; it’s irritating.#Layout:Left #Name:He Renshu #Speaker:HRS_Anger
    
   However, that day I came up with a brilliant way to vent, hehe! I’m truly incredibly smart!#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
    ->c1_2
    
==c1_2==    
     *[What kind of way?]
    
    At the engagement party that day, I saw Man Lu sneaking around in the shadows by the side of the stage, and I had an idea.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
    
   I was already displeased with her when she was popular; she’s just a lowly singer chasing fame and profit, yet my father always invited her to our home to sing, sometimes even dining at the same table with me. What made me hate it more was the look my father gave her.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    
    Before, I couldn’t act against her due to my father's interest, but now that she’s past her prime, thanks to her apprentice Yue Ling, hehe! I can’t touch the currently popular Yue Ling, but the <color=red>washed-up</color> Man Lu is still easy for me to handle.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    
    So I immediately went back to my room to get the family <color=red>pistol</color> and prepared to teach that cheap singer a lesson. Just imagine, breaking her legs with a gun; how pleasant that scream would be!#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
    
    Moreover, my father said that even if I killed someone, he would help me handle it properly. I may be the second daughter in the family, but I am loved endlessly, unlike those unfortunate singers!#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
    
    I quietly <color=red>followed that singer</color> from afar in the hall, but it seems that my movements were spotted by their <color=red>second-in-command of the dance troupe</color>. However, he seemed to be held up by socializing and couldn’t follow us.#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    Then Man Lu walked through a dark hallway and turned into a small room. I followed her in and found Yue Ling was also inside, thinking it was a perfect chance to scare them both. Unexpectedly, that stupid woman Man Lu tried to grab my gun, so I... bang!#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
<align="center"><color=red>---The inquiry is over---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Smile
        ~ reason = true
        -> StartTalk
== c3_1 ==
*[Understand, please display the birthmark.]
Understand, please cooperate with the work of the netherworld and display the birthmark. Black Spirit Warden will register. #Layout:Right #Name:Arbiter #Speaker:HRS_Normal
No.#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    ->c3_2
    
==c3_2==
*[Please cooperate with the work of the netherworld.]
This is really troublesome. Then hurry up, and don't forget you owe me this favor; once you're done, quickly send me back!#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient #CE:Add_8
Registered in the evidence box.#Layout:Left #Name:Black #SpecialSpeaker:HWC

(This ghost is what the previous two ghosts mentioned, ask her about Yue Ling.)#Layout:Right #Name:Arbiter #Speaker:HRS_Impatient
    ->c3_3_1
    
*[Do you with to have your father here?]
...I just spoke too hastily, don't take it to heart; this has nothing to do with my father.#Layout:Left #Name:He Renshu #Speaker:HRS_Guilty #CE:Add_8
Registered in the evidence box. #Layout:Left #Name:Black #SpecialSpeaker:HWC

(This ghost is what the previous two ghosts mentioned, ask her about Yue Ling.) #Layout:Right #Name:Arbiter #Speaker:HRS_Guilty
    ->c3_3_2
    
==c3_3_1 ==
*[Do you know anting abnormal about Yue Ling?]
What? Did that woman have bad luck?#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    ->c3_4

==c3_3_2==
*[Do you know anting abnormal about Yue Ling?]
What? Did that woman have bad luck?#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    ->c3_4
    
== c3_4 ==
*[I don't know yet.]
I think she's in big trouble. You’re lucky to be asking me; I happened to be at the scene.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    ->c3_5_1
    
*[Maybe.]
Not surprising at all; I noticed there were some old grudges and new animosities between them.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
    ->c3_5_2
    
== c3_5_1 ==
*[Did you kill her?]
Haha, you don't think I would dirty my hands over something as trivial as being jealous of her and Song Zhinian, do you? Ridiculous! Such a boring reason isn’t worth my effort. #Layout:Left #Name:He Renshu #Speaker:HRS_Smile

If it were because of the Star Ocean Dance Troupe, that would be a different story… Forget it! Just thinking about that dance troupe annoys me! Now I'm only telling you about the scene, consider it a charity.#Layout:Left #Name:He Renshu #Speaker:HRS_Normal

At that time, we were all in a small room; Yue Ling received a bouquet that smelled intoxicating, but I felt a bit uncomfortable, thinking my old <color=red>asthma condition</color> might flare up again. But what can I do? I’m just naturally delicate.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

So I quickly finished my business and turned to leave, <color=red>leaving her and Man Lu in the room.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

Then, I suddenly heard that woman Yue Ling scream “No!” Her voice was full of fear and incredibly irritating. After that, her voice abruptly stopped, as if something was choking her, and I also heard a <color=red>heavy thud as she fell.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    
I was confused and turned back, only to be killed by the pursuing Man Lu. That washed-up old singer dared to be so ruthless to me! #Layout:Left #Name:He Renshu #Speaker:HRS_Anger
    <align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
*[Did you actually see it?]
I didn’t see it with my own eyes, but it was pretty close.#Layout:Left #Name:He Renshu #Speaker:HRS_Normal

At that time, we were all in a small room; Yue Ling received a bouquet that smelled intoxicating, but I felt a bit uncomfortable, thinking my old <color=red>asthma condition</color> might flare up again. But what can I do? I’m just naturally delicate.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

So I quickly finished my business and turned to leave, <color=red>leaving her and Man Lu in the room.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

hen, I suddenly heard that woman Yue Ling scream “No!” Her voice was full of fear and incredibly irritating. After that, her voice abruptly stopped, as if something was choking her, and I also heard a <color=red>heavy thud as she fell.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
    
I was confused and turned back, only to be killed by the pursuing Man Lu. That washed-up old singer dared to be so ruthless to me!#Layout:Left #Name:He Renshu #Speaker:HRS_Anger
<align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
== c3_5_2 ==
*[How do you know that?]
Haha, anyone who observes the Star Ocean Dance Troupe a bit <color=red>diligently</color> would understand. One is dazzling like a blooming flower, while the other is like an old piece of jewelry slowly forgotten in a corner. Not to mention that <color=red>the former was taught by the latter.</color> There must be many contradictions between them. #Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 
    
At that time, we were all in a small room; Yue Ling received a bouquet that smelled intoxicating, but I felt a bit uncomfortable, thinking my old <color=red>asthma condition</color> might flare up again. But what can I do? I’m just naturally delicate.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 
So I quickly finished my business and turned to leave, <color=red>leaving her and Man Lu in the room.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

Then, I suddenly heard that woman Yue Ling scream “No!” Her voice was full of fear and incredibly irritating. After that, her voice abruptly stopped, as if something was choking her, and I also heard a <color=red>heavy thud as she fell.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    
I was confused and turned back, only to be killed by the pursuing Man Lu. That washed-up old singer dared to be so ruthless to me! #Layout:Left #Name:He Renshu #Speaker:HRS_Anger
    <align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
*[Who is Yue Ling in conflict with?]
Of course with Man Lu! Think about it, Yue Ling learned from Man Lu, but soon <color=red>overshadowed Man Lu's fame</color> and became the star supported by the Star Ocean Dance Troupe. Meanwhile, Man Lu gradually showed signs of decline; who could be calm about that?#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

At that time, we were all in a small room; Yue Ling received a bouquet that smelled intoxicating, but I felt a bit uncomfortable, thinking my old <color=red>asthma condition</color> might flare up again. But what can I do? I’m just naturally delicate.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 
So I quickly finished my business and turned to leave, <color=red>leaving her and Man Lu in the room.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient 

Then, I suddenly heard that woman Yue Ling scream “No!” Her voice was full of fear and incredibly irritating. After that, her voice abruptly stopped, as if something was choking her, and I also heard a <color=red>heavy thud as she fell.</color>#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
    
I was confused and turned back, only to be killed by the pursuing Man Lu. That washed-up old singer dared to be so ruthless to me! #Layout:Left #Name:He Renshu #Speaker:HRS_Anger
    <align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
==c2_1==
*[Connection?]
Hehe, it was just to teach them a lesson. Since the Star Ocean Dance Troupe dares to defy me, they must pay the price!#Layout:Left #Name:He Renshu #Speaker:HRS_Smile

As soon as I entered, I saw them fighting. Man Lu had her back to me, shaking with <color=red>anger</color> while holding onto Yue Ling’s shoulder; Yue Ling looked worried, her face <color=red>flushed</color> with anxiety, and her expression turned to fear when she saw me.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile

I said we were here to connect, but they didn’t seem happy, and Man Lu even tried to grab my gun. Hehe… I had to deal with her first.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile

The overpowering scent of flowers in the room was uncomfortable, and in my haste to leave, I didn’t even know where I hit Man Lu...#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient

If I had known she still had the strength to attack me, I should have shot her more. Good people don’t live long, while nasty ones live for a thousand years! #Layout:Left #Name:He Renshu #Speaker:HRS_Anger

After I left, I suddenly heard a strange noise, and when I turned back, a sharp pain hit the back of my head, and petals fell around me. My <color=red>asthma acted up</color>, blurring my vision with tears. #Layout:Left #Name:He Renshu #Speaker:HRS_Impatient

Then I was pinned down, feeling excruciating pain in my throat and head, my consciousness fading as if the whole world was slipping away.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient

Man Lu had been in my circle for a while; she must have known about my condition. After I hit her, she thought to exploit this weakness against me, which I begrudgingly admire! But for making me suffer like this and ruining my image, I’ll make sure she wishes she were dead when I return!#Layout:Left #Name:He Renshu #Speaker:HRS_Anger #CE:Text_deadcause_Asphyxiation
<align="center"><color=red>---Cause of death inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
    ~ deadCaues = true
    -> StartTalk
    
*[Frustrated?]

As soon as I entered, I saw them fighting. Man Lu had her back to me, shaking with <color=red>anger</color> while holding onto Yue Ling’s shoulder; Yue Ling looked worried, her face <color=red>flushed</color> with anxiety, and her expression turned to fear when she saw me.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile

I said we were here to connect, but they didn’t seem happy, and Man Lu even tried to grab my gun. Hehe… I had to deal with her first.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile

The overpowering scent of flowers in the room was uncomfortable, and in my haste to leave, I didn’t even know where I hit Man Lu...#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient

If I had known she still had the strength to attack me, I should have shot her more. Good people don’t live long, while nasty ones live for a thousand years! #Layout:Left #Name:He Renshu #Speaker:HRS_Anger

After I left, I suddenly heard a strange noise, and when I turned back, a sharp pain hit the back of my head, and petals fell around me. My <color=red>asthma acted up</color>, blurring my vision with tears. #Layout:Left #Name:He Renshu #Speaker:HRS_Impatient

Then I was pinned down, feeling excruciating pain in my throat and head, my consciousness fading as if the whole world was slipping away.#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient

Man Lu had been in my circle for a while; she must have known about my condition. After I hit her, she thought to exploit this weakness against me, which I begrudgingly admire! But for making me suffer like this and ruining my image, I’ll make sure she wishes she were dead when I return!#Layout:Left #Name:He Renshu #Speaker:HRS_Anger #CE:Text_deadcause_Asphyxiation
<align="center"><color=red>---Cause of death inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
    ~ deadCaues = true
    -> StartTalk