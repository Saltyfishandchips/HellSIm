VAR currentEvidenceList = "3,1,2,5"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 4
VAR shackCamera = 0
VAR questBG = false
VAR topic1 = false
VAR topic2 = false
VAR topic3 = false
->start

== start ==
~ currentNode = "None"
堂下之人可是李小玫？本官有几事问你，你需据实答来，不得隐瞒。#Layout:Right #Name:判官 #Speaker:LXM_Normal
是，民女李小玫，定当如实相告。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
辛巳年八月十五晚，临安官府的火可是你放的？#Layout:Right #Name:判官 #Speaker:LXM_Normal
是。火已烧尽，真相大白。民女愿承担罪责，但求大人还已逝之人和村子一个公道。#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
+你为何选择放火？#Layout:Right #Name:判官 #Speaker:LXM_Anger
你可知这罪行非同小可？而且那些村民还活着。
民女明白。可那些乡亲们……他们早已不是人了。那花房里的每一个人，早已被祸害得不成样子了。而且这些腌臜事不该被掩盖。#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
-> continue


== continue ==
+[这或许也是解脱。]
哎好吧，这对他们或许也算是解脱。#Layout:Right #Name:判官 #Speaker:LXM_Sad
是，民女相信哥哥会这么做的，这也是哥哥的意志……不，或许哥哥还是想救每一个人。#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
……
~shackCamera++
这是我的意志！#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:LXM_Anger
没有异议，判官大人请！#Layout:Left #Name:李小玫 #Speaker:LXM_Happy
->Node0




== Node0 ==
// 需要证物一出示的部分
~ node = "Node0"
~ currentNode = "Evidence"
这是彭一证言1#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
这是彭一证言1
这是彭一证言1
这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1这是彭一证言1
这是彭一证言1
这是彭一证言1
->Node0

== Evidence0 ==
~ currentNode = "None"
~ enemyHealth--
这是玩家的论破1#Layout:Right #Name:判官 #Speaker:LXM_Normal
这是玩家的论破1
~ shackCamera++
这是玩家的论破1#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
~ topic1 = true
->Node1


== Node1 ==
~ node = "Node1"
~ currentNode = "Evidence"
这是彭一证言2#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
这是彭一证言2
这是彭一证言2
这是彭一证言2#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
这是彭一证言2
这是彭一证言2
这是彭一证言2
->Node1

== Evidence1 ==
~ currentNode = "None"
~ enemyHealth--
这是玩家的论破2#Layout:Left #Name:李小玫 #Speaker:LXM_Happy
这是玩家的论破2
~ shackCamera++
这是玩家的论破2#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
~ topic2 = true
->Node2

== Node2 ==
~ node = "Node2"
~ currentNode = "Evidence"
这是彭一证言3#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
这是彭一证言3
这是彭一证言3
这是彭一证言3#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
这是彭一证言3
这是彭一证言3
->Node2

== Evidence2 ==
~ currentNode = "None"
~ enemyHealth--
这是玩家的论破3#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
这是玩家的论破3
~ shackCamera++
这是玩家的论破3#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
~ topic3 = true
->StoryEnd

== StoryEnd ==
~ currentNode = "None"
~ questBG = true
紧接着是望乡台。#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
紧接着是望乡台。#Layout:Right #Name:判官 #Speaker:LXM_Normal
->END

== HasProblem ==
~ currentNode = "None"
证据不对1#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
证据不对2
证据不对3
~ playerHealth--
~ backNode++
看来我得好好想想#Layout:Right #Name:判官 #Speaker:LXM_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话

->DONE