VAR currentEvidenceList = "13,10"
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
Are you Su Man? I will start my inquiry about the party and the Kalaviṅka, tell only the truth and do not hide anything.#Layout:Right #Name:Arbiter #Speaker:ML_Normal
Yes……#Layout:Left #Name:Man Lu #Speaker:ML_Normal
Do you have grudges toward Yue Ling?#Layout:Right #Name:Arbiter #Speaker:ML_Normal
What? No, as I said, I've lived under the same roof with Yue Ling since I was young, she was only eight years old when we first met, and now she's almost an adult, we've been with us for such a long time of turbulent years, she's like a sister to me…How can there be any grudges?#Layout:Left #Name:Man Lu #Speaker:ML_Guilty
The world changes, and time can change so many things.#Layout:Right #Name:Arbiter #Speaker:ML_Guilty
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
Lord…Don't provoke me like that. Yue Ling was just starting out when I became famous, and I had already enjoyed everything she had now, how could I envy her? It's better to say that in Vanity Fair, she is still my student.#Layout:Left #Name:Man Lu #Speaker:ML_Happy
Moreover, when I was a child, singing was already easy for me, and the big bosses often praised me for my talent, which will surely attract attention in the future…Yue Ling is far less talented than me when learning music, and often practices until late at night before blowing the lamp and falling asleep.#Layout:Left #Name:Man Lu #Speaker:ML_Normal
My masterpiece made me the cover girl of the season's pictorial! It was an unprecedented achievement among singers……#Layout:Left #Name:Man Lu #Speaker:ML_Happy
<color=red>（I remember there is an evidence that can show that she has grudges toward Yue Ling.）</color>#Layout:Right #Name:Arbiter #Speaker:ML_Happy
->Node0

== Evidence0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = false
Speaking of records, Yueling's "Spring Affectionate" broke through the historical record as soon as it came out, what do you think of this matter?#Layout:Right #Name:Arbiter #Speaker:ML_Happy
……Records are often broken by latecomers, and I don't care too much about it…#Layout:Left #Name:Man Lu #Speaker:ML_Guilty
~enemyHealth--
Ah……It's meaningless to talk about it……#Layout:Left #Name:Man Lu #Speaker:ML_Bitter
…I did do something wrong that I was ashamed of…Lord, I confess……#Layout:Left #Name:Man Lu #Speaker:ML_Normal
~enemyHealth--
I really hate her……As soon as she debuted, she was amazing, and the flowers and applause that used to surround me receded like the ebb and flow of a river, leaving only a bare puddle of mud……The resources of troupe are also tilted towards her.#Layout:Left #Name:Man Lu #Speaker:ML_Bitter
I tried my best to appear unconcerned, even showing congratulations and relief. but……How could I willingly give everything away?#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile

For countless early mornings, I watched the shadows in the moon bell room that had not yet slept, and practiced alone as quietly as possible, desperately hoping that when I woke up the next day, I could return to the time when the "chief singer Man Lu" was returned……#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile
*[You still can't catch up with her?]
    You have talent and hard work, can't you still catch up with her?#Layout:Right #Name:Arbiter #Speaker:ML_BitterSmile
    Haha……Yes, I'm also puzzled, is it really as the second boss said, the difference in heart intentions can bring such a gap?#Layout:Left #Name:Man Lu #Speaker:ML_Happy
*[Does she have any secrets? of success?]
    Does she have any secrets? of success?#Layout:Right #Name:Arbiter #Speaker:ML_BitterSmile
    Haha……I didn't doubt it for a day, and I was even desperate to find her secret so I could catch up with her……#Layout:Left #Name:Man Lu #Speaker:ML_Happy
    But she didn't hide anything from me, and I knew in my heart that such a thing didn't exist……is it really as the second boss said, the difference in heart intentions can bring such a gap?#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile
-
Aren't people like us trying to learn to sing so that one day we can live a good life of cooking oil and flowers? If you want to say how high your pursuit is in music, I don't believe it anyway. In troubled times, you may die at any time, who cares about those vain things?#Layout:Left #Name:Man Lu #Speaker:ML_Normal
I've watched coldly for many years, and none of the singers don't want to live a stable and prosperous life, and Yue Ling is not exempt from vulgarity. But other than that, she seems to really have a passion for music……
Anyway, I began to regret that I had taken her as an apprentice, and little by little I had the idea that it would be nice if I didn't have her.
->Node1


== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
On that day, I thought that the two protagonists of the engagement banquet were related to Yue Ling, and if she happened……to be poisoned to death, the suspicion is not mine. And in order to calm the turmoil, the He family will definitely cover it up in front of the public, so it is the most unaware……#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile
So, while Moon Ling was on stage, I quietly crept into her lounge and poured poisoned wine into her cup……At that time, I could still hear the applause and admiration of the audience backstage, and I could only be happy in my heart…#Layout:Left #Name:Man Lu #Speaker:ML_Bitter
<color=red>（I remember there is an evidence to prove that she did.）</color>#Layout:Right #Name:Arbiter #Speaker:ML_Bitter
->Node1


== Evidence1 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
It's this cup, right?#Layout:Right #Name:Arbiter #Speaker:ML_Bitter
Yes……Lord, did Yue Ling drink this wine?#Layout:Left #Name:Man Lu #Speaker:ML_Guilty
* [No, Liu Ping drank it.]
    Liu Ping? The……huge fan of Yue Ling?How could he drink that? Ha……he is not a honest person.#Layout:Left #Name:Man Lu #Speaker:ML_Happy
    ~enemyHealth--
    Talk about yourself, what happened after?#Layout:Right #Name:Arbiter #Speaker:ML_Happy
* [No, does it make you feel better?]
    Ha……I've killed the killer, what does it have to do with whether she drinks it or not? It's just that she escaped by luck, can she wash away my sins?……#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile
-
I was afraid of being found out after put in the poison, so I hurried to the lawn. But, just as the people had discovered earlier, the bits and pieces of spending time with Yue Ling came to my eyes, and mixed thoughts that were sometimes joyful and sometimes painful filled my mind, and I……I didn't pay attention to the performance of Yue Ling at all。#Layout:Left #Name:Man Lu #Speaker:ML_Normal
Think of this……I, couldn't bear it…the things after that you already know. I wanted to tell her the truth, begging for forgivness……But when I found her, she was lost, but showed her trust in me in her eyes…#Layout:Left #Name:Man Lu #Speaker:ML_Bitter
I hesitated for a moment…Then, there is no chance to tell her anymore……It' s better, I deserve it, I deserve to be killed by He Renshu…She does not have to know what I did to her. #Layout:Left #Name:Man Lu #Speaker:ML_Normal
~enemyHealth--
I will judge you according to your crimes, do you have any objections?#Layout:Right #Name:Arbiter #Speaker:ML_Normal
…How could I? The unwillingness to be reluctant in the prime of life, the bitterness of growing resentment, all this is finally coming to an end……Lord, please.#Layout:Left #Name:Man Lu #Speaker:ML_BitterSmile
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Uhm……It's not the correct evidence, I need to think more carefully.#Layout:Right #Name:Arbiter #Speaker:ML_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


