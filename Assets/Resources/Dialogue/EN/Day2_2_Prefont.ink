VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
I understand.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    -> END
- else:
   Which one to ask?#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===The presence of Song Zhinian===</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    What were you doing at the time of the incident?#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    That day was indeed the <color=red>engagement banquet</color> of me and Miss He, which was immensely significant for me—a crucial turning point in life. From now on, my life and work will undergo great changes, making it hard to return to the past...#Layout:Left #Name:Song Zhinian #Speaker:SZN_Narcissism  #CE:Text_description_Protagonist of the Engagement Banquet
    
    Ahem... In short, I was inevitably filled with many thoughts, so I had a few drinks in the morning and felt somewhat lightheaded all day.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
    
    That day, Yue Ling's performance of "Deep Spring, Heavy Feelings" was particularly <color=red>poignant</color>, like heavenly music, which made me <color=red>pour myself a few more cups</color>. After the performance, I didn’t want to be surrounded by congratulatory crowds, so I found a quiet place to calm down.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
    
    Little did I know, the drunkenness suddenly hit me... Furthermore, the <color=red>railing on the He family’s terrace is extremely low</color>, and being tall, I inevitably lost my balance for a moment and...#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
    You see, I died for no apparent reason, so I might trouble you to send me back later. I’m truly sorry for adding to your work; please bear with me.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Narcissism
    <align="center"><color=red>---Inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Narcissism
        ~ reason = true
        -> StartTalk
        
    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===Cause of death===</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
   Do you remember what caused your death?#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    
    At that time, I was leaning against the railing of the terrace outside the banquet hall to sober up. Just as I was dazed, I seemed to trip accidentally and fell. In a blur, I saw the lush green grass rushing towards me, followed by a sharp buzzing and pain.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
    
   ...I wouldn’t be so foolish; there must have been someone who harmed me. The terrace is rather secluded, directly above the garden, with lush vegetation all around—an ideal spot for a murder.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Anger 
    
    However, the <color=red>terrace is just a wall away from the noisy banquet</color>; how could it be easy to act? Could the timing be so coincidental?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
    
    Furthermore, I have always been gentle and cautious, treating others generously. Even if I had enemies... that day, I was the male lead of the banquet; who would dare to act in front of so many people? Even if carefully planned, it would be difficult to succeed, unless it was a spur-of-the-moment decision?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
    
    With this analysis, you must also find the situation strange. However, I will certainly investigate the truth as soon as I return, so you need not worry.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal #CE:Text_deadcause_Fall
<align="center"><color=red>---Cause of death inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [Ask about the cause of death]
    <align="center"><color=red>===Song's identity===</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    What was your previous identity?#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    
    I am Song Zhinian, <color=red>recently promoted to a Major General.</color>#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal #CE:Text_identity_Major General of the NJP
    ->c3_1
}

== StartTalk ==
    -> Prefont

== c3_1 ==
*[Show your birthmark for registration.]
Understood, please cooperate with the netherworld work and show your birthmark for registration.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal

What is the reason for this?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
->c3_2

==c3_2==
*[This is for netherworld duties, please cooperate.]
This is for netherworld duties; we need to investigate the whereabouts of the Kalaviṅka, please cooperate.#Layout:Right #Name:Arbiter #Speaker:SZN_Doubt
...Alright, but sometimes rules should be flexible. Of course, your wisdom is clear; I won’t say more on this.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal #CE:Add_7

Registered into the evidence box.#Layout:Left #Name:Black #SpecialSpeaker:HWC

(This ghost is the Song Zhinian mentioned by Liu Pingfang; ask about Yue Ling.)#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
->c3_3

==c3_3==
*[Do you know if there was anything unusual about Yue Ling that day?]

Yue Ling? Are you familiar with her?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
->c3_4

==c3_4==
* [Yes.]

Yue Ling is intelligent and serious, with a beautiful voice; I have a good relationship with her, so you must also have some affinity with her.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal

...Sigh... how should I put this... Well, if you are looking for Yue Ling, I might have a clue.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt

My <color=red>fiancée, He Renshu</color> seems innocent, but is actually very jealous and ruthless, with a prominent family background; even I find it hard to deal with her. If something has happened to Yue Ling, it’s most likely due to her...#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt

It's lamentable, but it's just the rivalry and struggles women face <color=red>out of love</color>.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt

This secret is shared only because you know Yue Ling; I hope it helps. I dare to speak it to you, but please keep it confidential.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
    <align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    ~ identity = true
    -> StartTalk
    
* [Not at all.]

Indeed, someone of your status wouldn't be involved with a singer like Yue Ling.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal

Though she appears glamorous under the spotlight and seems innocent, she likely harbors complex thoughts behind the scenes.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt

As for Yue Ling's whereabouts, it’s a trivial matter; my <color=red>fiancée, He Renshu</color>is naive and inexperienced, and upon encountering a woman like Yue Ling, there may have been misunderstandings, leading to...
#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt

It's merely the struggles of women <color=red>caught in love</color>, nothing significant, especially for you.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
    <align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
    ~ identity = true
    -> StartTalk

