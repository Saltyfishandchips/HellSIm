VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
Lord, have you seen Yue Ling? #Layout:Left #Name:Jin Wu #Speaker:JW_Worried

Her birthday is May 26, 1919, born in Jingbian, Yulin, Shaanxi, and she is now seventeen years old. Appearance, appearance... um... well, I'm not good at describing her looks. #Layout:Left #Name:Jin Wu #Speaker:JW_Worried

Yue Ling had her hair in braids, and she was wearing a green qipao that day... uh, anyway, she is a very beautiful girl!#Layout:Left #Name:Jin Wu #Speaker:JW_Worried

->c3_2

===Next ===
I know that the underworld will investigate this matter thoroughly.#Layout:Right #Name:Arbiter #Speaker:JW_Normal
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:JW_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:JW_Normal
好！#Layout:Left #Name:Jin Wu #Speaker:JW_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass. #Layout:Right #Name:Arbiter #Speaker:JW_Normal
    -> END
- else:
    What point do you want to inquire about?#Layout:Right #Name:Arbiter #Speaker:JW_Normal
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===What happened to Jinwu===</color>#Layout:Right #Name:Arbiter #Speaker:JW_Normal
    What were you doing back then?#Layout:Right #Name:Arbiter #Speaker:JW_Normal
    
    That day was the engagement banquet of Song Zhiniang and He Renshu, and Song Zhiniang invited Yue Ling to perform. I had a feeling something was wrong; someone might want to harm Yue Ling during this performance.So, during the setup in the morning, I paid extra attention, <color=red>especially to those coming and going</color>. As expected... My lord, please look at this wine cup.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal #CE:Add_9 #CE:Text_description_Bringing the Dance Troupe
    
    Among the servants who came to help, there were subordinates of that scoundrel Song Zhiniang!He took advantage of Yue Ling's absence to place this cup of wine in her dressing room. As soon as I entered, I saw that scoundrel actually dared to <color=red>spike the wine</color>, trying to ruin Yue Ling's voice! Such a filthy tactic is truly detestable! #Layout:Left #Name:Jin Wu #Speaker:JW_SuppressAnger
    
    Black Spirit Warden, register the wine cup as new evidence for this case. #Layout:Right #Name:Arbiter #Speaker:JW_SuppressAnger
    是。#Layout:Left #Name:Black #SpecialSpeaker:HWC
    ->c1_1

        
    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===Cause of death of Jinwu===</color>#Layout:Right #Name:Arbiter #Speaker:JW_Normal
    Do you remember how you died?#Layout:Right #Name:Arbiter #Speaker:JW_Normal
    
   ...At that moment, I felt a strong sense of unease, as if something was wrong. So I quickly dealt with those bosses and celebrities, found an excuse to leave, and went to look for Yue Ling.#Layout:Left #Name:Jin Wu #Speaker:JW_Worried
    But she was not in her dressing room, and my heart sank immediately. So I had to search through the <color=red>narrow and crowded</color> storage room one by one.#Layout:Left #Name:Jin Wu #Speaker:JW_Worried
        ->c2_1

    * {identity == false} [Ask about identity]
    <align="center"><color=red>===Jin Wu's identity before dying===</color>#Layout:Right #Name:Arbiter #Speaker:JW_Normal
    What was your identity before?#Layout:Right #Name:Arbiter #Speaker:JW_Normal
   Oh! I was too anxious just now and forgot to introduce myself; how rude of me. I am <color=red>the second-in-command of the Star Ocean Dance Troupe</color>, Jin Wu.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal #CE:Text_identity_Second-in-Command of the Star Ocean Dance Troupe
        ->c3_1
}

== StartTalk ==
    -> Prefont

==c1_1===
*[How did he meet Yue Ling?]
    At first, he <color=red>came to Yue Ling several times,</color> claiming he wanted to discuss music, but I knew very well what he was really after. He was not only coveting Yue Ling's beauty but also wanted to use her fame to promote himself.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
    
      Alas... In these chaotic times, the lives of songstresses are not easy. The leader often tells them that associating with powerful figures can bring stability and wealth, along with more resources and exposure. For those born at the bottom, it is an unattainable dream, yet one of the few paths available.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
       I once thought that Song Zhiniang, coming from a humble background, had achieved his current status through hard work. Compared to those born with a silver spoon, he should cherish someone like Yue Ling, who has worked just as hard, and could provide her with the wealth and glory she desires... things I could never offer.#Layout:Left#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
        It was my inability to see his true character that made me think that if he genuinely wanted to marry her, it wouldn't be a bad thing for Yue Ling to fall in love with him.#Layout:Left#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
    
    Now he wants to ascend and <color=red>marry into the He family</color>, and he dares to harm Yue Ling! He knows that Yue Ling's greatest love in life is singing, yet he wants to silence her! He's simply worse than a beast!#Layout:Left #Name:Jin Wu #Speaker:JW_SuppressAnger
    
    To avoid upsetting Yue Ling and not to alert him, making it harder to deal with him, I temporarily took the poisoned wine away and concealed it.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

    Heaven has eyes; by the afternoon, I saw Song Zhiniang standing alone on the terrace, quite drunk. This man is ruthless; if he didn't succeed today, he will surely strike again in the future. I knew I could no longer let him go unchecked.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

    So, when no one was around, I <color=red>gave him a push…</color>#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

    I killed that scoundrel Song Zhiniang, and if given the chance, I would push him off the building a thousand times over. Whatever punishment you see fit, my lord, I will willingly accept.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal
<align="center"><color=red>---Case inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:JW_Normal
        ~ reason = true
        -> StartTalk
==c3_1==
*[Understood, please show your birthmark]
Understood, please cooperate with the underworld and show your birthmark.#Layout:Right #Name:Arbiter #Speaker:JW_Worried

I have no birthmark, my lord!#Layout:Right #Name:Arbiter #Speaker:JW_Normal
<align="center"><color=red>---identity inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:JW_Normal
 ~ identity = true
    -> StartTalk
    
==c3_2==
*[Don’t rush, do you have any relevant clues?]
Don’t rush, take your time. I am also investigating this matter; do you have any relevant clues?#Layout:Right #Name:Arbiter #Speaker:JW_Worried

I saw her die! ... She was stabbed to death! ... She fell in a pool of blood, so much blood... My lord must punish the real murderer severely!!#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

    ->c3_3

==c3_3 ==
*[Are there any suspects?]
Please calm down. A person cannot come back to life, but the underworld will surely investigate this matter. Think back; were there any suspects at the scene?#Layout:Right #Name:Arbiter #Speaker:JW_Sad

...Alright, alright! Upon reflection, besides Song and He, Man Lu is also suspicious. I saw her hurriedly running backstage that day, her face pale, as if she were looking for someone.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

(It seems he knows Yue Ling very well. While he's calm now, I should ask him more about her background; it might help in finding Kalaviṅka.)#Layout:Right #Name:Arbiter #Speaker:JW_Memories
    ->c3_4
    
== c3_4==
*[Can you tell me about her background?]
From what you say, you must be quite familiar with Yue Ling. Can you share her background?#Layout:Right #Name:Arbiter #Speaker:JW_Memories

Of course. Yue Ling was taken in during my second year with the Star Ocean Dance Troupe; she was only eight years old at the time. Her village was invaded by <color=red>bandits</color>, who burned, killed, and plundered, and her family was nearly wiped out.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

Her family originally fled from the <color=red>great drought in Shanbei</color>, forced to wander due to natural and man-made disasters, only to face further misfortunes in a foreign land. When I found her on the street, she was about to be sold into a brothel.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

From that point on, Yue Ling lived with our dance troupe. I was still young back then, constantly running around with the leader, networking and navigating relationships, just managing to keep the troupe safe and afloat.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal
My lord, in this chaotic era, <color=red>warlords and bandits</color> are vying for power, and we are caught in the middle, living in constant fear. On one hand, we have to carefully appease them, always wearing a smile, while on the other hand, we must guard against being suppressed and bullied. Burdened by trivial matters, I lived each day as if walking on thin ice.#Layout:Left #Name:Jin Wu #Speaker:JW_SuppressAnger

This exhausting struggle for survival drained my spirit, leaving me questioning the meaning of life... #Layout:Left #Name:Jin Wu #Speaker:JW_SuppressAnger

But Yue Ling... despite her hardships, she loved singing so <color=red>deeply</color>. Her presence was like a candle flame; whenever I got close to her, my dark world would spark a glimmer of hope.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

I implore you, my lord, to severely punish the true murderer... no, if possible, please tell me their name; I must...#Layout:Left #Name:Jin Wu #Speaker:JW_SuppressAnger
    -> Next

==c2_1 ==
*[Why did you go looking over there?]
Although Yue Ling is now a big star, she has always been afraid of vast, open spaces or crowded, noisy places. Before going on stage, her hands and feet would get cold, and sometimes she would panic during performances, struggling to breathe.#Layout:Left #Name:Jin Wu #Speaker:JW_Worried

Therefore, when she feels unsafe, she prefers to hide in <color=red>small rooms</color>.#Layout:Left #Name:Jin Wu #Speaker:JW_Worried

You can understand that with such issues, she is basically incompatible with the stage. However, she has always valued her career, considering music more important than anything else. To stand on that stage, she has overcome countless obstacles to reach where she is today.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal
        ->c2_2_1
    
*[Where does this sense of unease come from?]
That day, there were too many accidents surrounding Yue Ling; when coincidences stack up, they become inevitabilities. I can't help but suspect someone is orchestrating it all.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

What's more, although Yue Ling is now a big star, she has always been afraid of vast, open spaces or crowded, noisy places. Before going on stage, her hands and feet would get cold, and sometimes she would panic during performances, struggling to breathe.#Layout:Left #Name:Jin Wu #Speaker:JW_Worried

You can understand that with such issues, she is basically incompatible with the stage. However, she has always valued her career, considering music more important than anything else. To stand on that stage, she has overcome countless obstacles to reach where she is today.#Layout:Left #Name:Jin Wu #Speaker:JW_Normal
    ->c2_2_2

==c2_2_1 ==
*[How could this be?]

...My lord, you may not have witnessed the scene of <color=red>bandits massacring a village</color>. Those bandits would search house by house, dragging everyone out, regardless of age, to be killed in the <color=red>open fields</color>. The sound of horses trampling and cries would be deafening, surely leaving an indelible shadow on Yue Ling.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

Each time Yue Ling fell into panic, I could only try to warm her cold hands, helping her slowly detach from those memories. But this was only a temporary relief; I could never unravel the knot in her heart, and I despised my own helplessness...#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

I truly feel utterly useless.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
    ->c2_3
    
*[Is there any reason?]

...My lord, you may not have witnessed the scene of <color=red>bandits massacring a village</color>. Those bandits would search house by house, dragging everyone out, regardless of age, to be killed in the <color=red>open fields</color>. The sound of horses trampling and cries would be deafening, surely leaving an indelible shadow on Yue Ling.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

Each time Yue Ling fell into panic, I could only try to warm her cold hands, helping her slowly detach from those memories. But this was only a temporary relief; I could never unravel the knot in her heart, and I despised my own helplessness...#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

I truly feel utterly useless.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
     ->c2_3
     
==c2_2_2 ==
*[How could this be?]

...My lord, you may not have witnessed the scene of <color=red>bandits massacring a village</color>. Those bandits would search house by house, dragging everyone out, regardless of age, to be killed in the <color=red>open fields</color>. The sound of horses trampling and cries would be deafening, surely leaving an indelible shadow on Yue Ling.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

Each time Yue Ling fell into panic, I could only try to warm her cold hands, helping her slowly detach from those memories. But this was only a temporary relief; I could never unravel the knot in her heart, and I despised my own helplessness...#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

I truly feel utterly useless.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
    ->c2_3
    
*[Is there any reason?]

...My lord, you may not have witnessed the scene of <color=red>bandits massacring a village</color>. Those bandits would search house by house, dragging everyone out, regardless of age, to be killed in the <color=red>open fields</color>. The sound of horses trampling and cries would be deafening, surely leaving an indelible shadow on Yue Ling.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

Each time Yue Ling fell into panic, I could only try to warm her cold hands, helping her slowly detach from those memories. But this was only a temporary relief; I could never unravel the knot in her heart, and I despised my own helplessness...#Layout:Left #Name:Jin Wu #Speaker:JW_Normal

I truly feel utterly useless.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories
    ->c2_3
    
== c2_3 ==
Later, I walked through a dim corridor and suddenly smelled a strong scent of blood. I glanced inside...#Layout:Left #Name:Jin Wu #Speaker:JW_Worried

.............#Layout:Left #Name:Jin Wu #Speaker:JW_Worried

...I'm sorry. I saw her at the end of the dim light... Yue Ling lay on the ground, <color=red>covered in blood</color>, barely alive, her chest hardly rising.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

I don't remember how I rushed over; everything became a blur, as if the sounds and light of the world were swallowed by darkness.#Layout:Left #Name:Jin Wu #Speaker:JW_Memories

I only remember her softly murmuring in my arms, her pupils gradually dilating. Her warmth slowly slipped from my hands, and this time, I could no longer warm her...#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

    ->c2_4
    
==c2_4==
*[I'm sorry for your loss.]
Ah... her blood flowed down my palm until it was no longer warm. It felt as if something in my mind was collapsing; all the responsibilities, love, and regrets surged forth, yet I could no longer express them to her.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

Each time she was in pain, I didn’t comfort her but withdrew, fearing to face her trusting gaze, afraid my feelings would be exposed... So I always pretended to be that rational, calm leader, pushing everything aside, even hiding my feelings for her in the shadows.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

And now, these repressed emotions have erupted, tearing at my heart. I desperately wanted to make amends, but she is no longer here... I realized that such a profound loss has left me feeling almost unable to breathe.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

This pain reminds me that living feels utterly meaningless. When I saw <color=red>that small knife</color>, a strong impulse surged within me. Perhaps... this could end it all? At least I could accompany her on her final journey, even if in such an ugly way.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad #CE:Text_deadcause_Stabbing
<align="center"><color=red>---Cause of death inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:JW_Sad
    ~ deadCaues = true
    -> StartTalk
    
*[At least you saw her one last time.]
Ah... her blood flowed down my palm until it was no longer warm. It felt as if something in my mind was collapsing; all the responsibilities, love, and regrets surged forth, yet I could no longer express them to her.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

Each time she was in pain, I didn’t comfort her but withdrew, fearing to face her trusting gaze, afraid my feelings would be exposed... So I always pretended to be that rational, calm leader, pushing everything aside, even hiding my feelings for her in the shadows.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

And now, these repressed emotions have erupted, tearing at my heart. I desperately wanted to make amends, but she is no longer here... I realized that such a profound loss has left me feeling almost unable to breathe.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad

This pain reminds me that living feels utterly meaningless. When I saw <color=red>that small knife</color>, a strong impulse surged within me. Perhaps... this could end it all? At least I could accompany her on her final journey, even if in such an ugly way.#Layout:Left #Name:Jin Wu #Speaker:JW_Sad
<align="center"><color=red>---Cause of death inquiry ends---</color>#Layout:Right #Name:Arbiter #Speaker:JW_Sad
    ~ deadCaues = true
    -> StartTalk