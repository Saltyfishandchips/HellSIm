VAR currentEvidenceList = "14,11"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 4
VAR questBG = false
VAR EvidenceButtonAnim = false
VAR shackCamera = 0
VAR topic1 = false
VAR topic2 = false
VAR topic3 = false
VAR BGMChange = false
->start

== start ==
~ currentNode = "None"
Is Liu Ping down there? I will question you about the banquet and the Kalaviṅka incident that day. You must answer truthfully and not hide anything.#Layout:Right #Name:Arbiter #Speaker:LP_Normal
Oh? Okay, I will follow your command, my lord.#Layout:Left #Name:Liu Ping #Speaker:LP_Normal
...Kalaviṅka? ... "Such beautiful sound, like heaven or a person"? Are you saying that Miss Yue Ling is the incarnation of the Kalaviṅka? If so, she truly is a celestial being, perfectly matching the saying, "This tune should only exist in heaven; how many times can one hear it on earth?"#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
*[Is there really such a divine person in the world?]
    Miss Yue Ling is indeed such a person; in terms of her ethereal beauty and grace, no other noble lady or celebrity can compare, let alone ordinary people.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
*[Have you gotten to know the real Yue Ling?]
    My lord, you are mistaken; Miss Yue Ling, whether in public or private, is always ethereal and graceful.#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
-
But she is also a person with a normal life, apart from her identity as a singer, right? She can’t be completely out of touch with reality.#Layout:Right #Name:Arbiter #Speaker:LP_SquintLaughter
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
How could that be? No one knows Miss Yue Ling better than I do, not even she herself. Some things are clearer to an observer; I know that although Miss Yue Ling is young and naive, she has excellent upbringing and always maintains her integrity, never having excessive contact with the opposite sex.#Layout:Left #Name:Liu Ping #Speaker:LP_Normal
She must be a noble lady of troubled background, hiding her identity to become a singer... pure and untainted, indifferent to the mundane world...#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
(I remember there is a piece of evidence that contradicts his testimony.)#Layout:Right #Name:Arbiter #Speaker:LP_SquintLaughter
->Node0

== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
But I have heard that her scandal with Mr. Song is well known throughout the city; Yue Ling is not the perfect goddess you claim.#Layout:Right #Name:Arbiter #Speaker:LP_Normal
I said it before! This is simply exaggeration and nonsense!#Layout:Left #Name:Liu Ping #Speaker:LP_Anger
~enemyHealth--
What evidence do you have to prove that there was no romantic feeling between the two?#Layout:Right #Name:Arbiter #Speaker:LP_Anger
-> Node1

== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
This... this false rumor only arose a few months ago! That newspaper profited greatly from this news, and I, Liu, spent a lot of money, with help from influential people, which led to the newspaper being shut down, putting an end to the rumor... Over the past few months, I arranged for spies to closely observe, and the two have long cut off contact!#Layout:Left #Name:Liu Ping #Speaker:LP_Frown
Moreover, if Yue Ling truly cared for that guy, how could he unhesitatingly get engaged to Miss He for political advancement? How could he abandon Yue Ling!#Layout:Left #Name:Liu Ping #Speaker:LP_Anger
Haha... my lord, do you have evidence to prove that they indeed had an affair?#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
<color=red>(I remember there is a piece of evidence that can prove it.)</color>#Layout:Right #Name:Arbiter #Speaker:LP_SquintLaughter
->Node1

== Evidence1 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
Take a closer look at this handkerchief, "Lily of the Valley and Drunken Cicada"... You yourself said that fans sometimes refer to Yue Ling as "Lily of the Valley," and the "cicada" next to the flower is a hint at Song Zhinian's name.#Layout:Right #Name:Arbiter #Speaker:LP_SquintLaughter
This handkerchief was hand-stitched by Yue Ling and was only taken from Song Zhinian's pocket today.
What!? How is this possible!? ... It must be that Song Zhinian is still thinking of Miss Yue Ling, which is why he carried this item at the engagement banquet... and Miss Yue Ling was just confused a few months ago; she has long since lost interest in that guy!#Layout:Left #Name:Liu Ping #Speaker:LP_Frown
~enemyHealth--
... Yes, yes! It must be so! Yue Ling truly loves me! I send flowers to every one of her performances, and I often send letters to the Star Ocean Dance Troupe, noting they are to be received by her; she has often told us at fan meetings that she will always be grateful to us and love us... how could that be false?#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
Moreover, at today's banquet, I, Liu, arrived late due to circumstances, and when she was being seated by the two hostesses, I truly saw Miss Yue Ling smile at me!#Layout:Left #Name:Liu Ping #Speaker:LP_Normal
She smiled so sweetly and brightly that anyone in the audience would blush and have their hearts race, and this smile was directed solely at me! Isn't this a sweet and bold confession from Yue Ling?#Layout:Left #Name:Liu Ping #Speaker:LP_SquintLaughter
*[You are wrong again; Yue Ling was smiling at Jin Wu.]
    ~shackCamera++
    .. Wh-what! This is impossible!#Layout:Left #Name:Liu Ping #Speaker:LP_Anger
*[How could Yue Ling like someone as twisted as you?]
    ~shackCamera++
   Shut up! Yes, yes!#Layout:Left #Name:Liu Ping #Speaker:LP_Anger
-
You, you! Why are you helping Yue Ling to deceive me!? ... At that time, I was with her in that dark corridor, she... she also said...#Layout:Left #Name:Liu Ping #Speaker:LP_Sad
...she said... "I don't know you at all"...#Layout:Left #Name:Liu Ping #Speaker:LP_Frown
~enemyHealth--
~shackCamera++
How could she say such a thing!! Why lie to me!!#Layout:Left #Name:Liu Ping #Speaker:LP_Anger
*[So you killed her?]
*[This is the truth.]
-
What! ... Haha, haha... I just remembered! That was not Miss Yue Ling at all. That woman had just desperately strangled someone; she was drenched in sweat and panting when she turned around and saw me hiding behind some clutter in the corridor, revealing a horrified and disheveled expression! Haha...#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
This absolutely could not be Miss Yue Ling! ... I know that the ordinary her, the real her, is always noble and elegant, right?! How could she not know what to do? How could she kill so clumsily!#Layout:Left #Name:Liu Ping #Speaker:LP_Frown
Miss Yue Ling would only be the kind of person who smiles gently and calmly! How could she be sad, angry, grieving, or desperate!?#Layout:Left #Name:Liu Ping #Speaker:LP_Anger
Liar! Liar! Liar!!!#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
But it doesn't matter! Haha! "Yue Ling" is already dead; the real Miss Yue Ling will forever live in my heart, that noble, loving goddess, the incarnation of the Kalaviṅka!#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
*[The Kalaviṅka is sealed within He Renshu.]
    Not so; the Kalaviṅka is sealed within He Renshu.#Layout:Right #Name:Arbiter #Speaker:LP_FuriousLaughter
What did you say!! Impossible! How could such a divine being as the Kalaviṅka be possessed by such a filthy bloodline?#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
 ~enemyHealth--
~shackCamera++
Since my mother became involved with that filthy man, He Zhi, she has not been able to sing such beautiful melodies. And how could He Renshu, born of such a filthy bloodline, be the incarnation of the Kalaviṅka?#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
My mother has been defiled and can no longer create the purest art. To save true beauty, I had to end it all! Now you tell me that He Renshu is the incarnation of the Kalaviṅka!!#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
~shackCamera++   
Liar! Liar! Liar!!!#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
~shackCamera++   
    I will judge you according to your crimes; do you have any objections?#Layout:Right #Name:Arbiter #Speaker:LP_FuriousLaughter
    Impossible! Impossible! I can't have been wrong from the start!#Layout:Left #Name:Liu Ping #Speaker:LP_FuriousLaughter
    Consider it as having no objections.#Layout:Right #Name:Liu Ping #Speaker:LP_FuriousLaughter
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:Arbiter #Speaker:LP_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


