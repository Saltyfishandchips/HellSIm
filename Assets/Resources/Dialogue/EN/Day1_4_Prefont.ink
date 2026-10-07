VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
Lord Arbiter! I am here to <color=red>sue three things</color>! #Layout:Left #Name:Li Jie #Speaker:LJ_Anger

// <color=red>First!</color> That damn officer Xue Huaiyi have lost his conscience, took innocent villagers, used human flesh and blood to grow his disgusting red flowers and make elixir!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger


// <color=red>Second! </color>His guard Guan Sanzhu is just like him, he killed me to hide what they did!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger


// <color=red>Third!</color>I, Li Jie, am a thief, and I went to steal the elixir but couldn't notice the trutu behind the elixir, which hurt the villagers deeply!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger


// <color=red>Lord, please judge between the right and wrong! </color>#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

I understand, now the pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:LJ_Normal #Anim:3,3,4,Judge
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:LJ_Normal
Yes!#Layout:Left #Name:Li Jie #Speaker:LJ_Normal
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass. #Layout:Right #Name:Arbiter #Speaker:LJ_Normal
    -> END
- else:
    (Which one to ask?)#Layout:Right #Name:Arbiter #Speaker:LJ_Normal
    * {reason == false} [Ask what happened]
    What were you doing when it happened?#Layout:Right #Name:Arbiter #Speaker:LJ_Normal
    
That night, I sneaked into <color=red>the ministry to search for the missinng villagers</color>. <color=red>The elixir room and the nearby flower room</color> that I usually went for elixir was locked, which is really suspicious.#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
    I firstly looked through the elixir room, but the lock was very easy to pick, and the room did not look like it could hide a person in.#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
    But the <color=red>flower room</color>, I never went in before, and<color=red> the lock was complicated</color>, it took me a while to open. In the flower room……there was……#Layout:Left #CE:Text_description_Investigating the flower house #Name:Li Jie #Speaker:LJ_Sad
    ->c9_1

    * {deadCaues == false} [Ask about the cause of death]
    How were you killed by Guan Sanzhu? #Layout:Right #Name:Arbiter #Speaker:LJ_Normal
    As I opened <color=red>the door of the flower room</color>, I haven't even get in, Guan Sanzhu exclaimed 'You still dare to steal even though your leg's broken', and went to catch me angrily.#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

    I hid into the flower room, and saw a scary scene.#Layout:Left #CE:Text_deadcause_Pierced by a sharp object #Name:Li Jie #Speaker:LJ_Sad

    ->c8_1
    
    * {identity == false} [Ask about identity]
    What's your identity before you die? #Layout:Right #Name:Arbiter #Speaker:LJ_Normal
    <color=red>I am Li Jie, a noteless thief. </color>I do not have parents since I was young, and I lived together with <color=red>my younger sister Li Xiaomei</color>. <color=red>Growing up we relied on the help from the villagers </color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

    Two months earlier, <color=red>uncle Liang from the meat shop</color> was seriously sick, <color=red>even Dr. Cui</color> did not know what to do. I feel so worried so I <color=red>sneaked into the ministry</color> for medicines.#Layout:Left #CE:Text_identity_Thief #Name:Li Jie #Speaker:LJ_Sad
    -> c7_1
}

== StartTalk ==
    -> Prefont


=== c7_1 ===
* [How do you know there were medicines in the ministry?]

<color=red>My sister works as a maid in the ministry</color>, she mentioned that damn master Xue Huaiyi asked a foreigner to make some <color=red>precious elixir</color>, so I went into the ministry for it at midnight.  #Layout:Left #Name:Li Jie #Speaker:LJ_Normal

Now to think about it, I really hope that I did not steal that <color=red>Wangyou elixir</color>! If so, there won't be so many <color=red>disasters that followed</color>!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger
    ->c7_2

=== c7_2 ===
*[What disaster?]
Ah!<color=red>Uncle Liang</color> were cured like a miracle after taking the elixir. But a few days later, <color=red> his wife aunt Liao </color>suddenly got seriously sick, her mind got vague and her body was in pain, as if her <color=red>Yang Qi was sucked all out of her</color>, so uncle Liang begged me to get the elixir to save her.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad
    ->c7_3
    
=== c7_3 ===
*[So you went to the ministry again?]
Yes! Aunt Liao was saved from death after taking the elixir, but <color=red>this strange sickness</color> started to spread in the village.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

At first I thought it was just s plague, <color=red>Dr. Cui also said that elixir could cure that disease</color>, I stole more and more, the villagers called me a <color=red>heroic thief</color>, I also thought that <color=red>I was doing the right thing</color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad
    ->c7_4
    
=== c7_4 ===
*[They feel better after taking the elixir?]
At first yes, they look better……but<color=red> it was just last grasps</color>, the sickness went back after about a month, even more seriously.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

Dr.Cui said <color=red>more elixir was needed</color> to cure the disease, but instead of getting more elixir, the villagers were <color=red>missing, one by one</color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad
    ->c7_5

=== c7_5 ===
*[You suspected that there was something hidden behind it?]
Lord Arbiter, you are so sharp! At first I thought they left by choice, believing that they couldn't be cured and did not want to pass it to the others.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

But as the numbers of the missing people became more and more, I felt that something was not right. I observed for few nights, and saw <color=red>Guan Sanzhu secrectly transported them into the ministry</color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Anger
    ->c7_6
    
=== c7_6 ===
*[And then? You also went in?]
Yes! I got worried and followed them in, but <color=red>was caught by Guan Sanzhu right away</color>. I thought I was done, but to my suprise Xue Huaiyi let me go. I thought he was a good officer! Damn! #Layout:Left #Name:Li Jie#Speaker:LJ_Anger

But that flunky Guan Sanzhu broke my leg, <color=red>I was forced to stay at home and rest for a while</color>.#Layout:Left #Name:Li Jie#Speaker:LJ_Anger
    ~ identity = true
    -> StartTalk
    
=== c8_1 ===
*[What's in the flower room? ] 
 ->c8_2

=== c8_2 ===
In such a small flower room <color=red>there were so many flowers, their color red like blood</color>. To see it more clearly, <color=red>these flowers were all planted on human flesh</color>!Eww!!!#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

I cannot stop my urge to throw up when I think of it! Those evil beasts lost their conscience, how could they do something like this! I saw Guan Sanzhu followed in, so I cursed <color=red>that damn officer Xue Huaiyi</color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

*Then he killed you?#Layout:Right #Name:Arbiter #Speaker:LJ_Anger
        ->c8_3

=== c8_3 ===
 That flunky was shocked at first, and then heard me cursing his master. <color=red>He got angry and took out his saber</color>, exclaiming<color=red> “You saw this, you shall die!”</color>, and attacked me with trembling hands.#Layout:Left #Name:Li Jie #Speaker:LJ_Anger
 
I tried my best to dodge in the flower room, <color=red>worrying that he might hurt the villagers</color>, but the flower room was too small, finally I was <color=red>caught by someone……by Guan Sanzhu, who stabbed my heart from behind</color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

~ deadCaues = true
-> StartTalk


=== c9_1 ===
*[Can you tell me about the conditions in the flower room?]

…………Okay…………Uncle Liang……Aunt Liao…Mr. Cui……Those missing villagers were all there!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

They were half burried in……Eww!!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

In the soil, their<color=red> bodies were full of red flowers</color>, the whole room smelled of fragrance mixed with the stinkness of <color=red>flesh and blood</color>!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

Sorry, I don't want to think about it anymore.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad
    ->c9_2

=== c9_2 ===
*[Okay, calm down.]

Thank you Lord Arbiter……I am really<color=red> sinful</color>, it might be my<color=red>retribution</color>.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

Now to think about it, those<color=red> disease were not cured by elixir</color>, but triggered by it!#Layout:Left #Name:Li Jie #Speaker:LJ_Anger
    ->c9_3

=== c9_3 ===
*[You mean the elixir you stole are fake?]
Ah! I really regret it! My sister told me before, that damn officer <color=red>hid a bottle of Wangyou elixir behind the plaque</color> in his study. I did not think twice, and laughed at him saying that he must be scared of me to hide it in that place.#Layout:Left #Name:Li Jie #Speaker:LJ_Sad

Later I helped to investigate the case of the missing villagers, and forgot about it. That bottle of Wangyou elixir must be the real one that he saved for himself.#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

That damn Xue Huaiyi must know that I was stealing the elixir, and put the failed ones outside on purpose, so I could steal them and give them to the villagers, making them sick. He then caught them and made them do……#Layout:Left #Name:Li Jie #Speaker:LJ_Anger

But those flowers, those elixir, all for what?#Layout:Left #Name:Li Jie #Speaker:LJ_Suprise
     ~ reason = true
    -> StartTalk