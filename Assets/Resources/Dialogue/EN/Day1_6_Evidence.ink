VAR currentEvidenceList = "2"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 3
VAR shackCamera = 0
VAR questBG = false
VAR EvidenceButtonAnim = false
VAR topic1 = false
VAR topic2 = false
VAR topic3 = false
VAR BGMChange = false
->start

== start ==
~ currentNode = "None"
Are you Li Xiaomei? I have something to ask you ,tell the truth and do not try to hide anything.#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
Yes, I am Li Xiaomei, I will tell the truth as it is.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Normal
+[is there anything that makes you feel strange? ]
When you are working in the ministry, is there anything that makes you feel strange? #Layout:Right #Name:Arbiter #Speaker:LXM_Normal
->continue


== continue ==
~ currentNode = "None"
Yes, I indeed found something strange……#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Doubt
The food in the kitchen……there is not many people to feed, but every time we need to prepare a lot of food……My brothe said that the master was greedy and wastful……So I gave up my doubts.
And the flower room…There was a time I went to do some cleaning, and heard a strange noise, it was like someone was struggling and crying……I told my brother about this, and he asked me to stop going there.
He said once he was stealing meds, he saw a worker went to the wrong way. He was beaten by Guan Sanzhu and broke a few ribs just for knocking the door of the flower room……I never dare to go near the flower room ever since.
->Node0


== Node0 ==
~ node = "Node0"
~ currentNode = "Evidence"
~ EvidenceButtonAnim = true
<color=red>(Li Xiaomei seems to be really reliant on his brother. She seems to mention another strange thing about Xue Huaiyi to her brother.)</color>#Layout:Right #Name:Arbiter #Speaker:LXM_Doubt
<color=red>(There should be an evidence for that, show her.)<color>

->Node0

== Evidence0 ==
~ node = "Node1"
~ currentNode = "None"
~ EvidenceButtonAnim = false
You are really reliant to Li Jie. I remembered that you mentioned to him, there is a bottle of Wangyou elixir behind the plaque. #Layout:Right #Name:Arbiter #Speaker:LXM_Doubt
~ enemyHealth--
~ topic1 = true
Yeah……Now to think about it, how could a shrewd person like Xue Huaiyi not find out that the elixir had been stolen? Besides, he is the master of the ministry, he can just arrest my brother, instead of hiding the elixir.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Doubt
I thought about it too simply. No, I didn't even think about it. My brother has always taken care of everything for me since I was a child, and I've become used to it. I take his words for granted, leave everything to him to worry about……What Dr.Cui said to me that night is true……#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Sad
+[What did she say to you?]
    She was in the flower room that night, so you must have met her. What did she say to you?#Layout:Right #Name:Arbiter #Speaker:LXM_Sad
-> Node1_continue

== Node1_continue ==
Dr. Cui saied to me……“Girl, you believe that hiding behind him keeps you away from everything?”.She saw through me long ago, that time it was she who asked me to clean the flower room. I heard the voices of the villagers but still chose to leave things to my brother.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Sad
I am always like this……Don't want to think, don't want to take responsibility, always rely on others, keep away from everything……but those things, it was me who was experiencing. No matter right or wrong, the choices should be mine to make……
~ enemyHealth--
~ topic2 = true
Her next word woke me up:“But now your reliable brother is dead, I am curious what will you do next?"
Yes, when everything was right there to my face, how could I keep away? The villagers kept begging me to end their siffering; those poisonous flowers should not exist in the world, and the sin of this ministry, should not stay burried. 
If my brother is still alive, he would try to save everyone. But now he is gone, I cannot run away anymore.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Normal
……#Layout:Left #Name:Li Xiaomei #Speaker:LXM_By
Finally, I made a decision——I would burn the whole ministry down!#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Anger
~shackCamera++
It is my own will!
+[Why you decided to do it?]
Because I know, at that time only I could stop it all. The crime of the ministry should end, the suffering of the villagers should also end. That night was the Mid Autumn Festival, most of the people went out to celebrite. The ones who stayed were related to the elixir, expecially Xue Huaiyi who never went out!#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Anger
I know setting a fire might hurt the innocent, but it is the most direct, effective way I can think of, and the most suitable one too.Even if it takes my life, I still don't regret it. 
~ enemyHealth--
~ topic3 = true
This is all I know. I know I am grievously sinful. Lord Arbiter, please make your judgement.
Okay, I will make my judgement according to your crime. Do you have any objection? #Layout:Right #Name:Arbiter #Speaker:LXM_Anger
No objection, Lord Arbiter!#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Happy
->END


== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Uhm……It's not the right evidence by the look of it, I need to reconsider. #Layout:Right #Name:Arbiter #Speaker:LXM_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



->END
