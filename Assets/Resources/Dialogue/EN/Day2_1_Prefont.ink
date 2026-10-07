VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
Boss, boss, this case involves a long-ago incident in the netherworld. Since you just arrived, you may not have heard about it. I can provide some background; it wouldn't hurt to listen before we start the proceedings.#Layout:Left #Name:White #SpecialSpeaker:BWC

This will indeed be helpful.#Layout:Left #Name:Black #SpecialSpeaker:HWC

If that's the case, please go ahead.#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC

Alright! Ahem... Boss, have you ever read the "Lotus Sutra" while in the world of the living? It mentions a type of <color=red>Kalaviṅka bird</color>, also known as the Kalinga. This bird resides in the Pure Land, skilled in singing and playing instruments, with a voice like celestial music, unreachable by all.#Layout:Left #Name:White #SpecialSpeaker:BWC

Oh? How does that relate to us in Fengdu, the netherworld? #Layout:Right #Name:Arbiter #SpecialSpeaker:BWC

Well... it is said that many years ago, a ghost official accidentally lost a Kalaviṅka on the Bridge of Forgetting at the reincarnation platform, causing this heavenly creature to mistakenly enter the cycle of human life, later being sealed in a host, transforming into what people refer to as a <color=red>birthmark.</color></color> #Layout:Left #Name:White #SpecialSpeaker:BWC

It was you who did it; I saw it with my own eyes... #Layout:Left #Name:Black #SpecialSpeaker:HWC

Ahem! In any case, I discovered while collecting souls a few days ago that <color=red>this bird person is mixed up in this strange case</color>. Boss, I beg you! Help me find out who the Kalaviṅka is attached to! If I can't find it, Qin Guang King will surely punish me!#Layout:Left #Name:White #SpecialSpeaker:BWC

Boss! You start the interrogation; Old Black will help you gather evidence later. I’ll go get the <color=red>Kalaviṅka rubbing!</color></color>  #Layout:Left #Name:White #SpecialSpeaker:BWC

I think the Kalaviṅka is likely related to the star named <color=red>Yue Ling</color> in the case file, so be sure to ask this ghost about her.#Layout:Left #Name:Black #SpecialSpeaker:HWC

I understand. We will now officially begin the proceedings. Liu Ping, please step forward!#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:LP_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:LP_Normal
As you wish.#Layout:Left #Name:Liu Ping #Speaker:LP_Normal
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass.#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    -> END
- else:
    The inquiry is finished, it's time to review the travel pass.#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===Ask what happened to Liuping===</color>#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    What were you doing at the time of the incident?#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    That day was the engagement banquet of the beloved daughter of the Minister of Military Affairs, <color=red>Miss He</color>, and the rising star of the National Justice Party, <color=red>Mr. Song</color>. They truly were a match made in heaven. I, Liu Ping, though unworthy, was also invited as a writer and editor.#Layout:Left #Name:Liu Ping #Speaker:LP_Normal #CE:Text_description_Invited to Attend a Banquet
    
    Of course, on a personal level, I had to attend. The performance of <color=red>Miss Yue Ling</color> at the engagement banquet was the highlight.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
    
    Miss Yue Ling is the star performer of the <color=red>Star Ocean Dance Troupe</color>, and in recent years, she has gained countless fans, with me being among her most loyal. Whenever she performs, I make sure to attend and show my support.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
    
   That night, the song <color=red>"Deep Spring Love"</color> that Miss Yue Ling sang was truly enchanting, lingering in the air. Every time I hear this song, it takes me back to my childhood.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
    
    My mother’s favorite song was also this one, and although her voice could not compare to Miss Yue Ling’s, the <color=red>depth of emotion and love</color>... I can never forget it.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
    
    And now, only Miss Yue Ling can express that emotion again. Despite her young age, she can convey such profound feelings; she truly is a gifted daughter of heaven.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
    ->c1_7

    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===the cause of death of Liuping===</color>#Layout:Right #Name:Arbiter #Speaker:LP_Normal
   Do you remember how you died?#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    
    Well... I’m not quite sure. After the performance that day, I <color=red>went backstage to find Miss Yue Ling</color> to talk, but I couldn’t find her as I had hoped...#Layout:Left #Name:Liu Ping #Speaker:LP_Sad
    
    After some delay, I turned back towards the hall, but halfway there, I suddenly felt a <color=red>sharp pain in my organs</color>. I collapsed, heard a gasp from the crowd, and then lost consciousness.#Layout:Left #Name:Liu Ping #Speaker:LP_Sad
    
    (It seems this ghost has a very vague memory of the cause of his death.)#Layout:Right #Name:Arbiter #Speaker:LP_Sad
        ->c1_5
    
    * {identity == false} [Ask about identity]
    <align="center"><color=red>===Liu Ping's identity===</color>#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    What was your identity before?#Layout:Right #Name:Arbiter #Speaker:LP_Normal
    
    I am <color=red>news entrepreneur Liu Ping</color>, and I have organized publications such as the "National News Daily." Though the times are turbulent, the news can bring a bit of order and hope to those living in this chaotic world. #Layout:Left #Name:Liu Ping #Speaker:LP_Normal #CE:Text_identity_Media Entrepreneur
    
    As an ambitious person, I deeply understand the role of news in awakening the public and guiding social trends. Each report and each revelation is my humble contribution to societal progress.#Layout:Left #Name:Liu Ping #Speaker:LP_Normal
    
    Of course, these small achievements are hardly worth mentioning; I truly do not dare to take pride in them.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
        ->c1_1
}

== StartTalk ==
    -> Prefont
    
    
== c1_7==
*[So you were in the hall the whole night?]
Not entirely. After the performance, I went to Miss Yue Ling’s dressing room to wait, hoping to interview her. Though it was called an interview, it was really just me wanting to chat with her.#Layout:Left #Name:Liu Ping #Speaker:LP_Normal

But that night, Miss Yue Ling was delayed in arriving. I paced back and forth in the dressing room when I suddenly caught sight of her wine glass, with her lip print still on the rim... That delicate red spot, small and round, felt like the first drop of blood pecked from my heart by a dove.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter

Thinking of that smile she cast my way on stage, like sunlight piercing through the gloom, I couldn't help myself and pressed my lips to that imprint, taking a light sip...#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter

Ah, how embarrassing. But now that I’m dead, I have no intention of caring about my image, so I dare to share this with you, your honor. I hope you won’t let Miss Yue Ling... or anyone else know.#Layout:Left #Name:Liu Ping #Speaker:LP_Frown 
<align="center"><color=red>---case inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:LP_Frown
        ~ reason = true
        -> StartTalk
== c1_1 ==
*[Understood, please show your birthmark.]
Understood. Please cooperate with the underworld's work and show your birthmark for registration by Black Spirit Warden.#Layout:Right #Name:Arbiter #Speaker:LP_SquintLaughter

Of course, of course. We all understand that the work for the public is not easy.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter #CE:Add_6

The birthmark has been registered in the evidence box.#Layout:Left #Name:Black #SpecialSpeaker:HWC

(This ghost was quite sharp in life; it’s perfect to ask Black Spirit Warden about the previously mentioned Miss Yue Ling.)#Layout:Right #Name:Arbiter #Speaker:LP_SquintLaughter
->c1_6

== c1_6 ==
*[Are you familiar with Miss Yue Ling?]
Familiar? How could I dare to claim to be familiar with Miss Yue Ling? She is such an elegant and ethereal goddess; how could someone like me, a mere mortal, dare to approach her? Usually, I only observe her from afar...#Layout:Left #Name:Liu Ping #Speaker:LP_Frown 

However, occasionally, when the opportunity arises, I would take the chance to <color=red>chat with her under the guise of an interview</color>. Though it goes against a journalist’s ethics, I can’t help but express my admiration for her.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter 

   The first time I heard her sing, I was utterly enchanted, as if her voice had captured my very soul. From that moment on, I became her devoted fan. Her voice is like celestial music, and with that melody, all the troubles in the world seem to vanish.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter 

Moreover, I truly feel that I’ve <color=red>grown much closer to Miss Yue Ling</color> recently. That day, she even smiled at me on stage with such affection; I was so excited that I could hardly contain myself.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter 

->c1_2
== c1_2 ==
*[Did Miss Yue Ling show any unusual behavior that day?]

What! Your honor, why do you ask this? What’s wrong with Miss Yue Ling? Please don’t scare me; if anything were to happen to her, I can't imagine how heartbroken I would be.#Layout:Left #Name:Liu Ping #Speaker:LP_Sad 

->c1_3

== c1_3 ==
*[No, this matter is still unclear.]

That’s good! However, I have a bold guess: if something happened to Miss Yue Ling, it might be related to <color=red>Miss He or Mr. Song</color>. Your honor, please investigate thoroughly to avoid any hidden truths being covered up.#Layout:Left #Name:Liu Ping #Speaker:LP_Frown 

->c1_4

==c1_4==
*[Why?]
Alas... Your honor, please look at <color=red>this tabloid</color>. The rumors about Miss Yue Ling and Mr. Song have been rampant lately, but I absolutely do not believe them. Miss Yue Ling is so elegant, refined, and virtuous; how could she meet with anyone else? Especially someone like <color=red>Mr. Song, who is already engaged</color>.#Layout:Left #Name:Liu Ping #Speaker:LP_Frown #CE:Add_5
The Star Ocean Dance Troupe has gained a lot of fame in recent years, and it’s possible Mr. Song visited Miss Yue Ling privately, but the rumors have gotten more and more outrageous, which is truly infuriating. These tabloid reporters twist stories and add fuel to the fire, tarnishing the reputation of our profession; I’m truly ashamed to be associated with them.#Layout:Left #Name:Liu Ping #Speaker:LP_Frown

And now that <color=red>the He and Song families are allied</color>, the stakes are high. If this scandal affects their engagement, it could hurt certain interests. I’ve been worried that Miss Yue Ling might become a victim in this web of interests.#Layout:Left #Name:Liu Ping #Speaker:LP_Frown

I understand. Black Spirit Warden, go register the tabloid as new evidence in this case.#Layout:Right #Name:Arbiter #Speaker:LP_Frown   
Yes. #Layout:Left #Name:Black #SpecialSpeaker:HWC
<align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
    ~ identity = true
    -> StartTalk
    
    
=== c1_5 ===
*[Black Spirit Warden! Please investigate!]
All present, please stand back. Black Spirit Warden! Please check this ghost’s cause of death.#Layout:Right #Name:Arbiter #Speaker:LP_Sad

Yes. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Your honor, the fragment from the Harma Stone shows this ghost died of <color=red>poisoning</color>.#Layout:Left #Name:Black #SpecialSpeaker:HWC
Poisoning? Let’s record that first.#Layout:Right #Name:Arbiter #Speaker:LP_Sad #CE:Text_deadcause_Poisoning
<align="center"><color=red>---cause of death inquiey ends---</color>#Layout:Right #Name:Arbiter #Speaker:LP_Sad
    ~ deadCaues = true
    -> StartTalk