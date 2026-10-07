VAR currentEvidenceList = "14,11,18"
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
Is this Song Zhinian? I will question you about the banquet and the Kalaviṅka incident; you must answer truthfully without concealment.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
Does it concern me? ...Fine.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
You started approaching Miss Yue Ling months ago; what was your intention?#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
-> Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
What do you mean? Miss Yue Ling has a captivating voice and is sincere and humble. What man wouldn’t be enchanted? I simply appreciate her sincerely, which led to some private interactions.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
Who would have thought it would be caught on camera by a newspaper and reported widely? ...Ah, it disrupted my life. Miss Yue Ling has long been used to being in the spotlight, but during that time, it made my outings quite inconvenient; I was scrutinized everywhere I went.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
...And haven’t you heard? It was Miss Yue Ling who reached out to me first. As a gentleman, how could I let a lady feel sad? Besides, she is so beautiful and gentle, so I could only take time out of my busy schedule to accompany her more.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Narcissism
<color=red>(I remember there is evidence that can prove his motives are impure.)</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
->Node0


== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
That sounds nice. You’ve toiled in the National Justice Party for years; although you have some achievements, without a family background to support you, you remain an unknown to the upper echelons. Being on the newspaper with Miss Yue Ling seemed like overnight fame, leading to public discussion and attention from the higher-ups in the National Justice Party.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
Moreover, as you said, it appears Miss Yue Ling is entangled with you, making you seem both open and charming. Using a scandal with a popular singer to gain notoriety and expand your influence, Mr. Song, you’re quite the strategist!
...Hmph, well, you’ve discovered this; I’m impressed!#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt
~enemyHealth--
The internal party struggles are ceaseless; today, the east wind prevails, and tomorrow the west wind will triumph... Ordinary people without background are like delicate hanging plants; they can easily break with a little misstep.#Layout:Right #Name:Arbiter #Speaker:SZN_Anger

I’ve worked diligently, accumulating some achievements with my bare hands, but... it’s too slow this way. If I hope for a turn of fortune, who knows how long I’ll have to wait! Hmph, by then, I’m afraid I’ll be old and decrepit.#Layout:Right #Name:Arbiter #Speaker:SZN_Anger
->Node1


== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
I’m clever enough to realize quickly... what I need to do is leverage this. Whether it’s Miss Yue Ling or He Renshu, they are just means to an end for me, no different at all.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
<color=red>(I remember there is evidence that can prove his feelings for Yue Ling are different.)</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
-> Node1

== Evidence1 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
If that’s the case, why did you keep her handkerchief close to you at the engagement banquet?#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
...You’re quite troublesome; you discovered that too?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt
~enemyHealth--
Miss Yue Ling was born in humble circumstances but possesses strong vitality and ambition, which is why she is now famous throughout the country... I merely see my own reflection in her.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
That day, I kept this handkerchief as a memento to remind myself of how I fought my way up from the bottom. Lower-ranked individuals can be so easily discarded; I must always strive upward!#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
..By the way, how did you discover the secret of my handkerchief?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
*[Because you didn’t die from an accident.]
    You’re right about one thing; you certainly did not die from a “small accident.” Your lifespan has indeed come to an end today.#Layout:Right #Name:Arbiter #Speaker:SZN_Doubt
    ~shackCamera++
    ...What?! How can this be?!#Layout:Left #Name:Song Zhinian #Speaker:SZN_Anger
*[The one who knows the secrets is the one who will end your life.]
    The one who knows all these hidden details is also the one who will conclude your life.#Layout:Right #Name:Arbiter #Speaker:SZN_Doubt
    ~shackCamera++
   ...What?! I didn’t fall myself?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Anger
-
Every grievance has its source, and every debt has its owner. Do you remember what you did that day?#Layout:Right #Name:Arbiter #Speaker:SZN_Anger
-> Node2

== Node2 ==
~ currentNode = "Evidence"
~ node = "Node2"
~ EvidenceButtonAnim = true
...That day... when the banquet started, there were the usual formalities, and the attending officials... General Bai, Commander Fu, Director Rong... Minister He... they should have been properly entertained.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
...Later, after drinking a bit too much, when I went to the terrace to sober up, I didn’t see anyone lying in ambush... Besides, how could anyone predict that I would go to that corner?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
Who could it be...?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
<color=red>(I remember there is evidence that is a direct cause of his death.)</color>#Layout:Right #Name:Arbiter #Speaker:SZN_Doubt
->Node2

== Evidence2 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
Do you remember this item?#Layout:Right #Name:Arbiter #Speaker:SZN_Doubt
...This is the glass of wine for Yue Ling, right? He was caught? He really wasn’t careful; he can’t even handle small matters... Could it be that...#Layout:Left #Name:Song Zhinian #Speaker:SZN_Doubt
*[Yes, your servant was discovered by Jin Wu.]
You acted so ruthlessly toward Yue Ling; he certainly wouldn’t sit idly by. He just held back at that time. How ridiculous for someone as shrewd as you to think you had succeeded just because you had a drink before the banquet! When Jin Wu passed by, you happened to be alone on the terrace.#Layout:Right #Name:Arbiter #Speaker:SZN_Doubt
~shackCamera++
Jin Wu?! That guy who relies on women for a living?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Anger
It must be more than that; does he have feelings for Yue Ling...?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Contempt
~enemyHealth--
My lord, drugging Yue Ling may seem ruthless, but it was actually for her long-term benefit. She’s in a complex situation, treated as a cash cow by that scoundrel Jin Wu, forced to expose herself daily and losing her sense of self. Perhaps, this was her chance for true freedom.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal

Still arguing! Black and White Spirit Wardens! Take him to the Hometown-looking Platform!#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
Yes.#Layout:Left #Name:Black #SpecialSpeaker:HWC
Move your ass!#Layout:Left #Name:White #SpecialSpeaker:BWC
~questBG = true
Did you see? Your former office already belongs to someone else, and even the achievements you accumulated have been eaten away by the internal party struggles. You still talk about wanting to achieve lasting accomplishments... In just a few months, you’ve already been forgotten by the public.#Layout:Left #Name:White #SpecialSpeaker:BWC
Not true! There are still good stories about you among the people, saying that General Song jumped off a building to die for his fiancée after her death. Though his accomplishments are few, he is still seen as a romantic figure, truly loyal and emotional. Even I, White, am moved to hear it.#Layout:Left #Name:White #SpecialSpeaker:BWC
~shackCamera++
What’s going on?! Why has it turned out like this?#Layout:Left #Name:Song Zhinian #Speaker:SZN_Anger
In all this, the one who benefits the most is the one who intervened. With all these twists and turns, doesn’t General Song understand?#Layout:Left #Name:White #SpecialSpeaker:BWC
...Is it from the He family? From what I understand, they should have pinned the blame on Yue Ling...#Layout:Left #Name:Song Zhinian #Speaker:SZN_Normal
Indeed, they are family. However, Jin Wu has been sent back to the living world by the boss, and he wouldn’t allow Yue Ling’s reputation to be damaged. #Layout:Left #Name:White #SpecialSpeaker:BWC
Therefore, he reached an agreement with the He family to testify, covering up the case as a poisoning incident caused by party strife, while you became the martyr for He Renshu.#Layout:Left #Name:White #SpecialSpeaker:BWC
For the He family, this not only preserved He Renshu’s reputation but also gave He Zhi a reason to eliminate dissenters. In fact, it has won you accolades as well... but I wonder if General Song is pleased with this reputation?#Layout:Left #Name:White #SpecialSpeaker:BWC
...Everything... is meaningless now. My schemes, my reputation... my future...#Layout:Left #Name:Song Zhinian #Speaker:SZN_Depressed
~enemyHealth--
At least you’ve become a wise ghost. Go back!#Layout:Left #Name:Black #SpecialSpeaker:HWC
~questBG = false
I will judge you based on your crimes. Do you have any objections?#Layout:Right #Name:Arbiter #Speaker:SZN_Depressed
Objections? None... it’s all meaningless.#Layout:Left #Name:Song Zhinian #Speaker:SZN_Depressed
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Hmm... it seems this is not the right evidence; I need to think more carefully.#Layout:Right #Name:Arbiter #Speaker:SZN_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


