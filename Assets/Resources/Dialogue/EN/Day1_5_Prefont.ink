VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:CE_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:CE_Normal
I know~#Layout:Left #Name:Cui Er #Speaker:CE_Happy
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
    The inquiry is finished, it's time to review the travel pass.  #Layout:Right #Name:Arbiter #Speaker:CE_Normal
    -> END
- else:
    (Which one to ask?)#Layout:Right #Name:Arbiter #Speaker:CE_Normal
    
    * {reason == false} [Ask what happened]
    What were you doing when the case happened?#Layout:Right #Name:Arbiter #Speaker:CE_Normal
    
    That night, I was <color=red>in the flower room and cannot move a bit</color>. I was half burried in the soil after all, hahaha!#Layout:Left #CE:Text_description_In the flower house #Name:Cui Er #Speaker:CE_Happy
        ->c9_1

    * {deadCaues == false} [Ask about the cause of death]
    Do you still remember how you die?#Layout:Right #Name:Arbiter #Speaker:CE_Normal
    
    Hahahaha! They are all dead? So funny.#Layout:Left#Name:Cui Er #Speaker:CE_Kuang

   But I guess they were killed by <color=red>the fireworks in the warehouse</color>. Nice way to die, I like it. People are like the fireworks, living for the one split moment that matters, right?#Layout:Left #CE:Text_deadcause_Blown to death#Name:Cui Er #Speaker:CE_Kuang
    ->c8_1
    
    * {identity == false} [Ask about identity ]
    What's your identity before you die?#Layout:Right #Name:Arbiter #Speaker:CE_Normal
    
    <color=red>I am Cui Er, a doctor before I die</color>. What to do after I die? I haven't decided yet, but it should be your decision to make, right Lort Arbiter? I'll look forward to it. #Layout:Left #CE:Text_identity_Physician#Name:Cui Er #Speaker:CE_Happy
    ->c7_1
}

== StartTalk ==
    -> Prefont

=== c7_1 ===
     *[Is it you who planted the flower of Wangchuan in the ministry?]
     ->c7_2

=== c7_2 ===
    Yes, it is. But, instead of saying that I planted her, it is better to say that the flower and I have <color=red>an interdependent connection. I help her to live in the world of the living, and she helps me to get whatever I want</color>.#Layout:Left #Name:Cui Er #Speaker:CE_Happy
 *[Her? The flower of Wangchuan has a soul?]
 ->c7_3

=== c7_3 ===
Hah, everything has a soul, not to mention the flower of Wangchuan from the netherworld. It might be because we have <color=red>the similar destiny</color>.#Layout:Left#Name:Cui Er #Speaker:CE_Happy

The first time I touched the seed, I heard her<color=red>whisper</color>. She is only one of the thousand flowers on the Yellow Spring Road. And me? What does it matter to be called Cui Er or Peng Yi, names are only symbols, <color=red>no one cares</color>.#Layout:Left#Name:Cui Er #Speaker:CE_Normal

But we rely on each other, which might change our ends.#Layout:Left#Name:Cui Er #Speaker:CE_Happy
*[Did you suggest planting flowers on human flesh?]
So it was you who suggested that then Flower of Wangchuan should be planted on human flesh?#Layout:Right #Name:Arbiter #Speaker:CE_Happy
->c7_4

=== c7_4 ===
Hahaha! That damn master is not stupid. <color=red>He failed to plant it on soil</color>, he then <color=red>tried to use dead pig</color>, but failed too. I only subtly suggested that the flower might needs<color=red>"fresh" meat</color>, he immediately thought of using <color=red>living humans for experiment</color>.#Layout:Left #Name:Cui Er #Speaker:CE_Kuang

*[Then how did he get eyes on the villagers?]
->c7_5

=== c7_5 ===
<color=red>Li Jie</color> asked me to see <color=red>the butcher in the village</color>who is sick, and I found that <color=red>his symptoms were exactly the same as those beggars who got the flowers planted.</color>#Layout:Left#Name:Cui Er #Speaker:CE_Normal

Then to my suprise, Li Jie <color=red>stole the failed Wangchuan elixir</color> for the villagers, which spread the disease.#Layout:Left#Name:Cui Er #Speaker:CE_Anger

I told the damn master, and he was so angry, saying "How could the goodies be given to the others". He then cought a patient to grow the flowers, <color=red>to his suprise, the flowers grew even better</color>.#Layout:Left#Name:Cui Er #Speaker:CE_Kuang
*[why didn't you stop Li Jie from stealing it?]
You knew it was the failed elixir, why didn't you stop Li Jie from stealing it?#Layout:Right #Name:Arbiter #Speaker:CE_Kuang
->c7_6

=== c7_6 ===
Why would I? That failed elixir can make <color=red>the Yang Qi in one's body flow better, which makes perfect fertilizer for the flowers</color>. As for those<color=red> petty villagers' lives</color>, why would I care?#Layout:Left#Name:Cui Er #Speaker:CE_Kuang

Li Jie was willing to do that, <color=red>enjoying the reputation of being a hero</color>. Why would I do anything more?#Layout:Left#Name:Cui Er #Speaker:CE_Happy
~ identity = true
        -> StartTalk

=== c8_1 ===
   *[Do you know who set the fire？]
    ->c8_2

=== c8_2 ===
Is it really matter who did it? Oh, I see, Lord Arbiter is investigating this case?#Layout:Left#Name:Cui Er #Speaker:CE_Happy

Then why not ask the <color=red>girl</color> who's coming later?   #Layout:Left#Name:Cui Er #Speaker:CE_Happy
 
*[Don't you feel unsatisfied?]
     ->c8_3

=== c8_3 ===
Unsatisfied? Maybe. But death is not the end for me. #Layout:Left#Name:Cui Er #Speaker:CE_Happy

At last, the flower of Wangchuan also <color=red>controlled my body</color>, I don't like that feeling. Death is a new start. #Layout:Left#Name:Cui Er #Speaker:CE_Normal

People like that damn master who <color=red>only cares about their own lives</color>, are no different then dead when they're alive. At last, he still couldn't get away, right? So ironic, haha!#Layout:Left#Name:Cui Er #Speaker:CE_Kuang

~ deadCaues = true
-> StartTalk


=== c9_1 ===
 *[what do you mean?]
->c9_2

=== c9_2 ===
I had been with the flowers of Wangchuan for too long, and was <color=red>invaded by the Yin</color>. But I was also curious about the feeling of <color=red>connecting the Yin and Yang</color>, so I put the seed also in my own body. #Layout:Left#Name:Cui Er #Speaker:CE_Happy

Here! These are the rest of seeds. How amazing, after I died, it went back to the shape of the stone. #Layout:Left #CE:Add_9#Name:Cui Er #Speaker:CE_Happy
Black Spirit Wardens, register these seeds as the new evidence.#Layout:Right #Name:Arbiter #Speaker:CE_Happy
Yes. #Layout:Left #Name:Black #SpecialSpeaker:HWC

I got my peace from it, but the flowers need not only the human flesh, but also the connection with <color=red>the soil from the netherworld</color>. So, I lied in the flower room every night.#Layout:Left#Name:Cui Er #Speaker:CE_Happy

*[So, you met Li Jie and Guan Sanzhu that night?]
    ->c9_3

=== c9_3 ===
Yes, I heard a rustling sound outside the door, and the lock opened. I thought it was <color=red>that coward</color>, but to my suprise it was Li Jie. It might be destiny.#Layout:Left#Name:Cui Er #Speaker:CE_Sad

*[You and Li Jie knew each other before?] 
    ->c9_4
    
=== c9_4 ===
Oh I forgot to mention, <color=red>I was also a villager of the XiYou Village</color>, I knew him since I was a kit. Then, I went out to see the patients with my stepfather, many years later when I returned no one recognized me anymore.#Layout:Left#Name:Cui Er #Speaker:CE_Normal

But only he recognized me from the first glance. He was thick-skinned that often asked me for treating small injuries, or helping with villagers' sickness.#Layout:Left#Name:Cui Er #Speaker:CE_Normal

*[What happened after Li Jie went in?]

->c9_5
    
=== c9_5 ===
His facial expression changed as soon as he went in. He <color=red>stared at me with disgust in his eyes</color>. Maybe he hated me for lying to him, maybe he hated me for the villagers whose bodies were planted with the blooming flowers.#Layout:Left#Name:Cui Er #Speaker:CE_Normal
<color=red>That coward went in and raised his saber to fight</color>, but was too scared that he couldn't even hold his saber steadily. Li Jie was good at dodging, but at the same time tried to<color=red> protect those petty villagers</color>.#Layout:Left#Name:Cui Er #Speaker:CE_Anger
Seeing him like that makes me ruthless, and <color=red>grabbed his ankles tightly. The saber stabbed into his heart all at once! </color>#Layout:Left#Name:Cui Er #Speaker:CE_Kuang
……#Layout:Right#Name:Arbiter #Speaker:CE_Kuang
        ~ reason = true
        -> StartTalk