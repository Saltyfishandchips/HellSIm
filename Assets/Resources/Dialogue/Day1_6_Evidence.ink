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
堂下之人可是李小玫？本官有几事问你，你需据实答来，不得隐瞒。#Layout:Right #Name:判官 #Speaker:LXM_Normal
是，民女李小玫，定当如实相告。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
+[你在官府做事时，没发现什么蹊跷？]
->continue


== continue ==
~ currentNode = "None"
哎，民女确实发现了一些怪异之事……#Layout:Left #Name:李小玫 #Speaker:LXM_Doubt
像是小厨房的饭菜……明明吃饭的人不多，每顿饭却总是准备很多……哥哥说贪官就这样，喜欢铺张浪费……我也就没再多想了。
还有花房……有次我去附近打扫，听到里面有奇怪的声音，像是有人在挣扎、哭喊……我把这事告诉哥哥后，他就让我别再靠近那里了。
他说他偷药时，看到一个小厮搬货走错路，只是敲了几下花房的门，就被关三柱打断了几根骨头赶了出去……我之后就不再靠近花房。
->Node0


== Node0 ==
~ node = "Node0"
~ currentNode = "Evidence"
~ EvidenceButtonAnim = true
<color=red>（李小玫似乎对她哥哥极为依赖。记得之前薛怀逸有什么怪异的行径，她也向李捷提起过。）</color>#Layout:Right #Name:判官 #Speaker:LXM_Doubt
<color=red>（证物盒里应该有相关证物，拿出来看看。）</color>#Layout:Right #Name:判官 #Speaker:LXM_Doubt
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:LXM_Doubt

->Node0

== Evidence0 ==
~ node = "Node1"
~ currentNode = "None"
~ EvidenceButtonAnim = false
你还真是依赖李捷啊，我记得你是不是还和他提到过，匾额后面藏着一瓶忘忧丹。#Layout:Right #Name:判官 #Speaker:LXM_Doubt
~ enemyHealth--
~ topic1 = true
是啊……现在想来，薛怀逸那样精明的人，怎么会没发现丹药被偷了呢？而且他可是知县，直接抓走哥哥就行了，没必要还特地把丹药藏起来。#Layout:Left #Name:李小玫 #Speaker:LXM_Doubt
当时的我想的真的太简单了。不，其实是我根本没有去想。哥哥从小到大总是替我处理一切，我已经习惯了依赖他，总觉得他的话就是对的，把所有事都丢给他去操心……崔郎中那晚对我说的话，确也没错……#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
+[她对你说什么了？]
    也是她那晚就在花房，你进去一定会碰见她。她对你说了什么？#Layout:Right #Name:判官 #Speaker:LXM_Sad
-> Node1_continue

== Node1_continue ==
崔郎中对我说……“小妮子，你以为你一直躲在他身后，就能置身事外？”，她原来早就把我看透了，那次就是她把我叫去打扫花房附近。我都亲耳听见乡亲的声音了，却还是选择把这事草草地丢给哥哥。#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
我就是这样……不愿去思考，也不愿承担做决定的后果，总想着依靠别人，自己一直在逃避……可那些事，明明是我在经历，无论对错当下最适合的决定，本该由我来做……
~ enemyHealth--
~ topic2 = true
她的下一句话点醒了我：“不过现在你最依赖的哥哥死了，我很好奇你又该怎么办呢？” 是啊，当一切逼到眼前，我还能如何逃避？乡亲们不断哀求我，让他们解脱；那些毒花也不能留存在这世间，而这官府中的罪恶，也不该再被掩盖下去。
哥哥若在世，他一定会拼命去救每一个人。但他已经不在了，我不能再这样逃避下去。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
……#Layout:Left #Name:李小玫 #Speaker:LXM_By
最后，我做了一个决定——我要放火烧了官府！#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
~shackCamera++
这是我自己的意志！
+[你为何会做出这样的决定？]
因为我明白，当时只有我能去阻止这一切。官府里的罪恶不能再继续，乡亲们也不该再受折磨。那晚是中秋节，府里的大多数人都去了灯会，留下的只有和丹药有关的人，尤其是从不外出的薛怀逸！#Layout:Left #Name:李小玫 #Speaker:LXM_Anger
我知道放火有可能波及无辜，但这是我能想到的最直接、最有效的方法，也是最适合我的决定。即使要用我的性命去点燃这场大火，我也在所不惜。
~ enemyHealth--
~ topic3 = true
这就是民女所知全部事由。我自知罪孽深重，请判官大人审判。
好吧，我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:LXM_Anger
没有异议，判官大人请！#Layout:Left #Name:李小玫 #Speaker:LXM_Happy
->END


== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:LXM_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



->END
