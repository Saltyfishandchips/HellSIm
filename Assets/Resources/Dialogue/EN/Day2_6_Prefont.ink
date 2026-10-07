VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:YL_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:YL_Normal

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass.#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    -> END
- else:
    Which one to ask?#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===What happened to Yue Ling===</color>#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    What were you doing when the case happened?#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    ……I was being treated<color=red> coldly</color> by Mr. Song for months, after I heard that he got engages, I did not have any expectations for him. #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    
    Despite the situation, when the NJP send their invitations, I was still worried that I would have bad feelings when I <color=red>see with my own eyes</color> their romantic relationships, so I did not want to go. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal #CE:Text_description_Participating in Live Performance
        ->c1_1
        
    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===Yue Ling's cause of death===</color>#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    Do you still remember how you die?#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    
    At that time, Man Lu looked at me with difficulty, her lips trembling and her eyes desperate, but she could no longer speak……It was she who was shot, but a memory flashed in front of my eyes… #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    
    The blood splashed on my face when the bandits slashed at the adults, the money handed to the bandits by Jin Wu on the noisy streets that day, the cry of night owls when I woke up in the early morning.#Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    The smile on my face when Man Lu pulled me to read the music sheets, the dim coal lamps that flickered in the interval when the bandits came to collect protection money, and the scolding and scolding of the singers when they fantasized about getting married…… #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    
    And now, Man Lu who taught me to sing, fell in front of me.#Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    
    The chaotic thoughts of joy and sorrow in my mind suddenly disappeared, and in a clear place, I only felt a deep hatred.#Layout:Left #Name:Yue Ling #Speaker:YL_Anger
    
    I picked up the bouquet on the side, chased out the door and smashed it at Miss He, she coughed like a suffocating person and fell to the ground like Man Lu, I only felt the refreshment of revenge……But that's not enough！#Layout:Left #Name:Yue Ling #Speaker:YL_Anger
    
    Anger has completely dominated me……When I came back to my senses, I couldn't hear her wheezing and struggling, and the corridor had been quiet for a long time. The <color=red>ribbon in my hand</color> reined into my palm as I put too much force in. At this time, I got up numbly, only to find a man standing behind me.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal
    
    He was silent like a statue, I <color=red>Dinn't know how long he was there</color>. Seeing more carefully, I found that he was one of my fans who often came to support me. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
    
    His glasses reflected the cold light that I couldn't see his expressions clearly, but I knew that no matter how much he saw, he was already guilty of killing someone……I only hope that he will not be implicated in the troupe in terms of his past likes and feelings…… #Layout:Left #Name:Yue Ling #Speaker:YL_Afraid
    
    As I was thinking randomly, he asked suddenly:" Miss Yue Ling?"#Layout:Left #Name:Yue Ling #Speaker:YL_Normal
    
    I thought he might hate me, question me, and even call someone else loudly…never had I thought about it to be like this…… #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
    
    I was shocked, looking at him approaching me, and wanted to go back. He said "Who are you?", "Miss Yue Ling would not do something like this ever, who are you?" and so on, and cried, finally asked"If you are Miss Yue Ling, why are you scared of me? <color=red>Don't you love me the most?</color>…Answer me!"#Layout:Left #Name:Yue Ling #Speaker:YL_Afraid
    
    I was completely stunned, I didn't know what I was saying, and the next second he grabbed my hair and stabbed me in the body…… #Layout:Left #Name:Yue Ling #Speaker:YL_Afraid
    
    It hurt at first, I struggled to avoid the blade, and by the end it was numb... His mind went blank, and his eyes were full of his distorted expression of pain and despair…… #Layout:Left #Name:Yue Ling #Speaker:YL_Afraid
    
    I don't know how long later, I thought I was dead, but suddenly I saw Wu……Now I think it's a hallucination…… #Layout:Left #Name:Yue Ling #Speaker:YL_Happy #CE:Text_deadcause_Stabbing
    <align="center"><color=red>---The inquiry about the cause of death is over---</color>#Layout:Right #Name:Arbiter #Speaker:YL_Happy
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [Ask about identity]
    <align="center"><color=red>===Yue Ling's identity before death===</color>#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    What's your identity before you die?#Layout:Right #Name:Arbiter #Speaker:YL_Normal
    I am Yue Ling, a member of the Star Ocean Dance Troupe. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal #CE:Text_identity_Star of the Star Ocean Dance Troupe
    ->c3_1
}

== StartTalk ==
    -> Prefont

==c1_1==
*[Why you still want to go?]
Lord you might not know, the Star Ocean Dance Troupe was famous by Wu's operation, and quickly became the<color=red> most popular dancing troupe</color> in Nanjing. The high-level banquets of the NJP have always been extravagant and luxurious, and they only seek the best. If they choose other troupes than us, it would be a shame on us. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Thus, <color=red>Mr. Song wanted to prove his fairness</color>, he must invite me to perform. Not only that, I also have to behave calmly and openly. When they are comfortable, the life of our troupe will be better. I should consider for everyone despite that I might not be very thoughtful. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
    ->c1_2_1
    
*[Have some reaction?]
Don't laugh at me, Lord……When I have nothing to do, I often read novels, which all write that after a woman falls out of love, she will be in pain and despair, tossing and turning, and even many martyrs.#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
But I was not as sad as that time, as if there had been a rainstorm in my heart, and the rain stopped, and the sky was clear. But the words of the troupe are all classics written by predecessors, and there will be no mistake in thinking about it.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal

I thought about it and felt that it was very likely that she had never seen Mr. Song after that, and if she did, she might be "heartbroken".#Layout:Left #Name:Yue Ling #Speaker:YL_Normal 
->c1_2_2
    
==c1_2_1==
*[What's the situation after you went there?]

<color=red>Before I went on the stage</color> I was a bit nervous, Wu…He might had seen me through, he held my hands and the feeling of warmth came through his palm. He smiled and said:" No matter what, I'll be here with you." He was always so thoughtful, but I did not care much at that time. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Then I stepped onto the stage and sang "Spring Affectionate". When I sang "If you are not in the depths of spring, the lonely shadow wanders with nowhere to go", my eyes swept over the guests, and I saw Song Zhinian talking and laughing, and I didn't seem to care about my performance. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
At that time, <color=red>I was not that sad as I thought I would be</color>, I was feeling strange, as if everything had nothing to do with me.  #Layout:Left #Name:Yue Ling #Speaker:YL_Normal

When the melody turned to "The spring breeze blows my heart, may you always stay in my dreams", my eyes met Wu, who was in the audience, his eyes firm and gentle, looking at me. My heart beat suddenly, as if there was a fawn scurrying in my heart, and all worries and uneasiness dissipated in an instant, and only his warm smile lingered in my mind.#Layout:Left #Name:Yue Ling #Speaker:YL_Shy

My mind flashed back to what he had said before he went on stage, and his gentle comfort every time I was scared and down… After years of companionship and support, I gradually ignored his presence, as if he was the norm in my life, just as the sun would hang in the corner of the bedroom every day…#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
But if the sun doesn't rise one day... How should I deal with it?#Layout:Left #Name:Yue Ling #Speaker:YL_Shy

When I sang "May you know what I mean", my eyes met Wu again, and at that moment, my heart seemed to jump out of my chest. The sweet and subtle emotion in my heart made my cheeks heat slightly, as if the whole world was frozen at this moment.#Layout:Left #Name:Yue Ling #Speaker:YL_Shy

…Thinking of this, my voice became more and more firm, as if to confide in him: "Why not be afraid of the wind and rain." At this point, I finally understood my intentions and looked back firmly, <color=red>giving Wu a smile</color>. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
But he was <color=red>talking to a guest</color>. He seemed to smile at me, or not noticed my gaze……I didn't see it clearly with all the people.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Suddenly I understood what I wanted, and my heart was shaken……After the performance, Ihe hurried down……#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
    ->c1_3
    
==c1_2_2==
*[What's the situation after you went there?]

<color=red>Before I went on the stage</color> I was a bit nervous, Wu…He might had seen me through, he held my hands and the feeling of warmth came through his palm. He smiled and said:" No matter what, I'll Then I stepped onto the stage and sang "Spring Affectionate". #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
When I sang "If you are not in the depths of spring, the lonely shadow wanders with nowhere to go", my eyes swept over the guests, and I saw Song Zhinian talking and laughing, and I didn't seem to care about my performance. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
At that time, <color=red>I was not that sad as I thought I would be</color>, I was feeling strange, as if everything had nothing to do with me. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal

When the melody turned to "The spring breeze blows my heart, may you always stay in my dreams", my eyes met Wu, who was in the audience, his eyes firm and gentle, looking at me. My heart beat suddenly, as if there was a fawn scurrying in my heart, and all worries and uneasiness dissipated in an instant, and only his warm smile lingered in my mind.#Layout:Left #Name:Yue Ling #Speaker:YL_Shy

My mind flashed back to what he had said before he went on stage, and his gentle comfort every time I was scared and down… #Layout:Left #Name:Yue Ling #Speaker:YL_Shy
After years of companionship and support, I gradually ignored his presence, as if he was the norm in my life, just as the sun would hang in the corner of the bedroom every day…But if the sun doesn't rise one day... How should I deal with it?#Layout:Left #Name:Yue Ling #Speaker:YL_Shy

When I sang "May you know what I mean", my eyes met Wu again, and at that moment, my heart seemed to jump out of my chest. The sweet and subtle emotion in my heart made my cheeks heat slightly, as if the whole world was frozen at this moment.#Layout:Left #Name:Yue Ling #Speaker:YL_Shy

…Thinking of this, my voice became more and more firm, as if to confide in him: "Why not be afraid of the wind and rain." At this point, I finally understood my intentions and looked back firmly, <color=red>giving Wu a smile</color>. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal
But he was <color=red>talking to a guest</color>. He seemed to smile at me, or not noticed my gaze……I didn't see it clearly with all the people.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Suddenly I understood what I wanted, and my heart was shaken……After the performance, Ihe hurried down……#Layout:Left #Name:Yue Ling #Speaker:YL_Shy
    ->c1_3

==c1_3==
*[Where did you go?]

I was excited……and a bit troubled, I want to be alone for a while, so I took the flowers and went to a small room, that <color=red>corridor is full of items</color>, dark and crouded, only enough for one person to pass. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Then……Everything went worst, the details I really don't want to recall……But, I'll coorperate your work, Lord. #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    ->c1_4
    
*[Have you met anyone one the way who's waiting for you?]

Waiting for me? No, everyone was busy, maybe I didn't pay attention……But on the way to the small room there was no one, that  that <color=red>corridor is full of items</color>, dark and crouded, only enough for one person to pass. #Layout:Left #Name:Yue Ling #Speaker:YL_Normal

hen……Everything went worst, the details I really don't want to recall……But, I'll coorperate your work, Lord.#Layout:Left #Name:Yue Ling #Speaker:YL_Sad
    ->c1_4
    
==c1_4==
*[Take your time. ]
Not long after, when I was in the middle of my thoughts, Man Lu suddenly rushed in, grabbed my shoulders and looked me up and down panting, as if something was important. I was startled, but when asked what was the matter, she slurred and her eyes twinkled.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Before she could speak, Miss He stood at the door again, she held a gun, laughed and mocked us, from her words I gradually understood that the troupe had faced many life and death crises, and she was the one who was the one who got in the way……And she also laughed many times that as long as we live in the world for one day, she will torture us for one day and will never let go…… #Layout:Left #Name:Yue Ling #Speaker:YL_Afraid
If it's because of me, she can only target at me, why bother innocent people? Besides, as she said, didn't I bring endless trouble to the troupe that raised me.#Layout:Left #Name:Yue Ling #Speaker:YL_Anger
Before I could figure it out, she suddenly shot at Man Lu…… #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
<align="center"><color=red>---Inquiry about that happened is over---</color>#Layout:Right #Name:Arbiter #Speaker:YL_Sad
        ~ reason = true
        -> StartTalk
        
*[I understand.]
Not long after, when I was in the middle of my thoughts, Man Lu suddenly rushed in, grabbed my shoulders and looked me up and down panting, as if something was important. I was startled, but when asked what was the matter, she slurred and her eyes twinkled.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal

Before she could speak, Miss He stood at the door again, she held a gun, laughed and mocked us, from her words I gradually understood that the troupe had faced many life and death crises, and she was the one who was the one who got in the way……And she also laughed many times that as long as we live in the world for one day, she will torture us for one day and will never let go…… #Layout:Left #Name:Yue Ling #Speaker:YL_Afraid
If it's because of me, she can only target at me, why bother innocent people? Besides, as she said, didn't I bring endless trouble to the troupe that raised me.#Layout:Left #Name:Yue Ling #Speaker:YL_Anger
Before I could figure it out, she suddenly shot at Man Lu…… #Layout:Left #Name:Yue Ling #Speaker:YL_Sad
<align="center"><color=red>---Inquiry about that happened is over---</color>#Layout:Right #Name:Arbiter #Speaker:YL_Sad
        ~ reason = true
        -> StartTalk
        
==c3_1==
 *[Okay, please show your birthmark.]
    Okay, please coorperate and show your birthmark. Black Spirit Warden, register. #Layout:Right #Name:Arbiter #Speaker:YL_Normal
    Yue Ling: Oh, okay, please.#Layout:Left #Name:Yue Ling #Speaker:YL_Normal #CE:Add_11
    
    Registered to the evidence box.#Layout:Left #Name:Black #SpecialSpeaker:HWC
    <align="center"><color=red>---Inquiry about identity is over---</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
    ~ identity = true
    -> StartTalk