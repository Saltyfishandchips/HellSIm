VAR currentEvidenceList = "9,5,8,2"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 6
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
Is this Xue Huaiyi before me? I shall ask you regarding the ministry fire and the Flower of Wangchuan. You must answer truthfully and not conceal anything. #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
Xue abides by the command. So this is the court of the netherworld, is it? Ah, the court… I must say, Xue feels a tinge of nostalgia. But in the past, I always sat in judgment above, and now it's my first time standing below. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
*[Where does the Flower of Wangchuan come from?]
I ask you again, where does the Flower of Wangchuan come from? Why did you plant it without permission? #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
->Node0

== Node0 ==
~EvidenceButtonAnim = true
~node = "Node0"
~currentNode = "Evidence"
Ah, Arbiter, you seem to have forgotten. Xue just mentioned that it was Brother Bu who found the Flower of Wangchuan. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Why
As for planting it, that's nonsense! I had never even seen such mystical bulbs before, let alone know how to plant it.
<color=red> (Bulbs? I recall some evidence mentioning that.) </color>#Layout:Right #Name:Arbiter #Speaker:XFG_Why
->Node0

== Evidence0 ==
~EvidenceButtonAnim = false
~currentNode = "None"
If you claim never to have seen this flower, how do you know it grows from bulbs? #Layout:Right #Name:Arbiter #Speaker:XFG_Why
Arbiter, that... Xue was merely speculating! B had mentioned something about the flower's growing environment, and I just happened to mention bulbs. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Doubt
*[Why didn’t you say seeds?]
    Speculating? Why didn’t you say seeds, but went straight to bulbs? Bulbs are much rarer to grow than seeds, aren’t they? You sure made a lucky guess. #Layout:Right #Name:Arbiter #Speaker:XFG_Doubt
-
->Node1

== Node1 ==
~EvidenceButtonAnim = true
~node = "Node1"
~currentNode = "Evidence"
Arbiter, I was wrong! I shouldn't have concealed the truth. The Flower of Wangchuan was indeed planted at Xue's residence. I didn’t wish to cause any trouble... #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
The medicine requires a large number of Flowers of Wangchuan, and what B could find was far too little. To save lives, I secretly asked him to search for a planting method. He brought back a bag of bulbs for me. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
But those bulbs... B stole them to help me. I didn’t want him to bear more guilt, so I refused to implicate him further. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
<color=red> (That bag of bulbs? That doesn’t match with one of the pieces of evidence.) </color>#Layout:Right #Name:Arbiter #Speaker:XFG_Sad
->Node1

== Evidence1 ==
~currentNode = "None"
~EvidenceButtonAnim = false
Are you referring to this bag? #Layout:Right #Name:Arbiter #Speaker:XFG_Sad
!!! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Doubt
*[You know it wasn’t bulbs inside!]
    Why have you gone silent? Because you know full well it wasn’t bulbs inside, but rather stone-like seeds! #Layout:Right #Name:判官 #Speaker:XFG_Doubt
You seem to be very familiar with how these seeds turn into bulbs. #Layout:Right #Name:Arbiter #Speaker:XFG_Doubt
Arbiter, indeed these seeds are peculiar. They cannot grow with water alone. Dr. Cui discovered that only fresh blood can catalyze them into bulbs. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
I ordered my servant Sanzhu to buy many pigs, slaughtered them, and used their blood, but it was to no avail. This flower can only grow on living beings. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
To produce more elixirs as quickly as possible and save the sick, I had no choice but to plant the seeds on live pigs. Their cries echoed from my chambers... #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
Sins upon sins… If word got out, everyone involved would lose their merits and virtues. Though I’m dead, I don’t wish to drag any more living people into this. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
->Node2

== Node2 ==
~EvidenceButtonAnim = true
~node = "Node2"
~currentNode = "Evidence"
At this point, all I can do is pray here in the netherworld and hope that the Wangyou Elixir can be successfully made in the world of the living, to save lives and redeem some virtue. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
<color=red> (Can the Wangyou Elixir really save lives?) </color>#Layout:Right #Name:Arbiter #Speaker:XFG_Sad
->Node2

== Evidence2 ==
~EvidenceButtonAnim = false
~currentNode = "None"
Xue Huaiyi, I’ve seen your recipe. Aside from the Flower of Wangchuan as the main ingredient, the rest are just useless herbs. Even if you succeeded in making it, it wouldn’t cure anyone. #Layout:Right #Name:Arbiter #Speaker:XFG_Sad
Arbiter! Do not mock me! That... That’s only because my medical skills were lacking! The recipe for saving lives still needs further refinement from Dr. Cui. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Doubt
*[Why make the elixir before improving it?]
    Oh? Then why did you rush to use these precious Flowers of Wangchuan to make the elixir before Dr. Cui had improved the formula? #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Doubt
    Oh! It was Li Jie who begged me. His little sister was on the brink of death. Xue remembered that Li Xiaomei had been a hardworking servant for the household, so I hurried to make the elixir to save her life... #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Doubt
-
*[You’re still pretending!]
    ~BGMChange = true
    ~enemyHealth--
    Xue Huaiyi! Even now, you continue pretending in front of me! You thought the fire would burn away all evidence, and with the witnesses still alive, no one could verify your guilt? You believed you could walk away scot-free after this trial? #Layout:Right #Name:Arbiter #Speaker:XFG_Doubt
    How unfortunate! All those you mentioned have already died with you, and I’ve already judged them! Your deeds have long been exposed! #Layout:Right #Name:Arbiter #Speaker:XFG_Doubt
    ……#Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
    ...Arbiter, you put on quite the performance yourself, didn’t you? Knowing full well the truth of what happened at my residence, yet you played along in this courtroom charade. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Happy
    I simply wanted to see how many lies you could weave to cover your first. You haven’t disappointed me, Xue, truly, your tongue is sharp! #Layout:Right #Name:Arbiter #Speaker:XFG_Happy
-
* [Where did you get the Wangchuan Flower seeds!?] 
    Your Honor, you judge me so righteously, but the ghost guards of your netherworld have long been corrupt. They secretly sold me the Wangchuan Flower seeds, and all it cost me was the souls of some insignificant people. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
    ~topic1 = true
-
* [You’re willing to pay any price!]
    To create the Wangyou Elixir, you really spared no cost—even harming civilians and trampling on lives! #Layout:Right #Name:判官 #Speaker:XFG_Normal
    To achieve greatness, one must not be confined by trivial matters. Those insignificant people were mere obstacles on my path. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
    ~topic2 = true
   Moreover, they brought it upon themselves, especially those from XiYou Village. Liang Guan, driven by greed, picked up discarded dead pigs and infected his whole family; Li Jie trespassed into my residence to steal my elixirs. I merely let them reap what they sowed.
    Doesn’t your netherworld always talk about cause and effect? I was once a dignified official in the Ministry of Revenue, but I was demoted to a mere county magistrate because of XiYou Village. This is simply karma repaying itself! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
-

* [Why do you say that?]
    My father, Xue Jin, worked tirelessly for the people of Leizhou, especially for XiYou Village. The villagers, out of gratitude, gifted him a plaque. But in the end, that plaque became his death sentence! Overworked, he passed away. #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Normal
    At the peak of my career in the capital, I had to return home for three years of mourning. During that time, not a single person came to pay respects to my father, nor did anyone visit the Xue family. None of the villagers or colleagues, who had once benefited from him, remembered his deeds!
    ~shackCamera++
    When I returned to the capital after mourning, everything had changed. The subordinates I once looked down on had risen through the ranks by creating elixirs, while I was demoted and sent back home. My father and the people of Leizhou ruined me! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
    ~shackCamera++
    Hmph! My father was so foolish his entire life! He believed hard work and sacrifice would bring rewards, but he ended in such misery. That's why I hung that plaque in my study, to remind myself constantly—everything in this world is like straw dogs, unworthy of pity! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
-

* [Why did you go to such lengths to create the Wangyou Elixir?]
    So, Xue Huaiyi, why did you go to such great lengths to create the Wangyou Elixir? #Layout:Right #Name:Arbiter #Speaker:XFG_Anger
    Of course, it’s for immortality, Your Honor! Since ancient times, from emperors to commoners, who hasn't dreamed of immortality? You couldn't guess that? #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Happy
    Life is fleeting, like a white horse passing through a gap. Who wouldn’t want to enjoy more years of wealth and glory in the world of the living, or live through several lifetimes of earthly pleasures? More importantly, it’s to avoid suffering in this netherworld after death!
    ~shackCamera++
    But my ambitions go far beyond that! If I could achieve immortality, my career would be limitless—I could have risen through the ranks to become a pillar of the Song Dynasty, or even higher... wielding power over the entire court! Isn’t that the ultimate pleasure of life?
    ~shackCamera++
    No! Why limit myself to this crumbling Song Dynasty? If I achieve immortality, even if the Song falls, I could use my undying body to establish a new dynasty, a new nation, achieving an everlasting legacy! That, is my true pursuit! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Happy
-
*[You schemed endlessly, but you still died.]
    Immortality and eternal fame... sounds nice. But sadly, Xue Huaiyi, after all your scheming, you still died on the Mid-Autumn Festival. #Layout:Right #Name:Arbiter #Speaker:XFG_Happy
    That’s because my elixir wasn’t finished! Otherwise, how could such misfortune have befallen me! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
-

*[Haha! Misfortune!]
    Haha! Misfortune? Weren’t you the one who believed in cause and effect? Didn’t you consider that your crimes of harming civilians, disrupting the world of the living, and colluding with netherworld ghost guards would lead to this day? #Layout:Right #Name:Arbiter #Speaker:XFG_Anger
   Huh? Wasn’t I burned to death? Was it that fool Brandt who caused an explosion by brewing black gunpowder in the pharmacy? #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Anger
    ~shackCamera++
    I knew he was secretly brewing black gunpowder, but since he could help me with alchemy, I let him be! Who would have thought he’d ruin my plans! Damn it, damn it, damn it! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Yy
-

*[No, it was the fireworks that exploded!]
    ~enemyHealth--
    No, it was the fireworks Guan Sanzhu stored in the warehouse that exploded!#Layout:Right #Name:判官 #Speaker:XFG_Yy
    ~shackCamera++
    That fool Guan Sanzhu! How many times have I warned him not to buy those dangerous items for the residence? He just wouldn’t listen! That dog of a deserter! I must have been blind to take him in! Damn it, damn it, damn it! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Yy
-
*[Aren't you curious how the fireworks exploded?]
    Aren't you curious how the fireworks exploded? It was the village girl you despise most—Li Xiaomei—who set the fire and ignited the fireworks! #Layout:Right #Name:Arbiter #Speaker:XFG_Yy
    Li Xiaomei! That damn girl! And that little thief, Li Jie! They’re both bastards born without a mother! They all deserve to die! No! The entire XiYou Village deserves to die! #Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Yy
-

*[Haha! Cause and effect!]
    ~enemyHealth--
    Haha! Cause and effect! Li Xiaomei set the fire to avenge the villagers you harmed! #Layout:Right #Name:Arbiter #Speaker:XFG_Yy
-
-> Node3


== Node3
~EvidenceButtonAnim = true
~node = "Node3"
~currentNode = "Evidence"
However, you didn’t die from fire or explosion; what truly killed you was yourself! #Layout:Right #Name:Arbiter #Speaker:XFG_Yy
<color=red> (Show item that actually kills Xue)</color>
->Node3


== Evidence3 ==
~EvidenceButtonAnim = false
~currentNode = "None"
In your quest for the Wangyou Elixir, you often took down that plaque, day after day, loosening its screws. That night, it fell and killed you! Dying under this upright plaque is truly ironic! #Layout:Right #Name:Arbiter #Speaker:XFG_Yy
~shackCamera++
~enemyHealth--
~topic3 = true
<b>No !!!!!!!!!</b>#Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Yy

*[The Wangyou Elixir indeed worked.]
    ~enemyHealth--
    The good news is, the Wangyou Elixir indeed worked. You extended your lifespan by many days. #Layout:Right #Name:Arbiter #Speaker:XFG_Yy
    ~shackCamera++
    <b>...What! Then how did I...</b>#Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Yy
    But life and death are fated; how can a single elixir change that? If the King of Hell wants you to die at midnight, who dares to let you live until dawn? When your time is up, no matter how long your life is, you will still be brought here for judgment! #Layout:Right #Name:Arbiter #Speaker:XFG_Yy
    ……#Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
    Xue Huaiyi, I will judge you based on your crimes; you must not object. #Layout:Right #Name:Arbiter #Speaker:XFG_Sad
    ……#Layout:Left #Name:Xue Huaiyi #Speaker:XFG_Sad
-

->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Hmm... It seems this is not the right evidence; I need to think more carefully. #Layout:Right #Name:Arbiter #Speaker:XFG_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


