VAR currentEvidenceList = ""
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 2
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
堂下可是关三柱？本官将问你有关官府火灾和忘川花之事，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:GSZ_Normal
好好！判官老爷你问吧，俺一定答。#Layout:Left #Name:关三柱 #Speaker:GSZ_Normal
*[李捷是被你杀的吗？]
    李捷状告他是被你杀死的，你可认这事？#Layout:Right #Name:判官 #Speaker:GSZ_Normal
-
~shackCamera++
！！啊！真死啦！#Layout:Left #Name:关三柱 #Speaker:GSZ_Anger
……#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
……李捷是……是死在俺刀下的。
但是他自己该死！夜闯官府偷东西！而且又打扰……病房重地，还骂老爷，根本不懂老爷的苦心。他该死！俺只是在恪尽职守罢了！对就是这样！青天不对……阴曹大老爷明察啊！#Layout:Left #Name:关三柱 #Speaker:GSZ_Anger
*[他罪不致死吧。]
    俺也没想杀他啊，俺听他骂老爷，气不过吓唬他，他…他自己撞上来的！不对是崔二那娘们抓住了他的脚，俺没收住力，这才捅上去哩。#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
    俺……俺也没想到他那么容易就死了。俺看他还回头瞪俺呢，俺这不还赶忙去库房找包扎的东西呢，是不。#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
-
* [刚才怎么隐瞒了这些事！]
    哎……俺真没想到他那时就死了，想着库房那么大爆炸，他要死肯定是被一并炸死的，想着这人命债算不到俺头上。哎……这罪，俺认了#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
-
*[花房的事呢？怎么也知情不报？]
    花房……花房！！！#Layout:Left #Name:关三柱 #Speaker:GSZ_Anger
    ……俺认定老爷是在救人，花房那些……那些是……必要的。#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
    几年前打仗时，俺被强征去当了兵，起初只是个辎重兵，没上过前线。可战场上每天都死好多人，都后面连俺这种送粮草的也得往前冲。#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
    ~shackCamera++
    看着身边的人一个接一个地倒下，俺心里直发慌。将军说什么“一将功成万骨枯”，这些都是必要的。可俺听不懂这话，只知道那些冤魂找的，肯定是杀了他们的人。
    俺不敢杀人，可上了战场，不杀人就是等着被人杀！后来俺实在受不了，逃走了。
-
*[然后你就被薛怀逸收留？]
    是！因为老爷，俺才逃过一劫。可后来，那个病爆发了……#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
-
老爷说为了救人，这些都是必要的。俺也相信，俺是在帮老爷救人。#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
可是…… 花房里的那些事，比战场还要可怕……
那些药人，眼睛里没有一丝生气，只有无尽的痛苦。每次听见他们的哀嚎，俺心里都在挣扎。俺只能告诉自己——这是必要的，才能稳住自己的心。
俺这条命是老爷救的，只要老爷需要，俺就会继续干下去，不去看，也不去想。#Layout:Left #Name:关三柱 #Speaker:GSZ_Normal
~shackCamera++
可是……俺越来越不明白了。老爷为何只待在书房？他连那些病人都不去看？收来的病人也不见好转，只是一直在种花……炼的丹药，又是收去干什么的呢？#Layout:Left #Name:关三柱 #Speaker:GSZ_Anger
*[你原来也发现不对了。]
    你原来也发现不对了，只是自己骗自己罢了。你内心早已动摇，却不敢承认，不是吗？#Layout:Right #Name:判官 #Speaker:GSZ_Anger
    ~shackCamera++
    俺……俺不能承认……俺不能承认这些都是错的！那俺过去所做的一切又算什么？俺这些年到底是为了啥？还有老爷！老爷他心那么善，不会去害人的！不会的！#Layout:Left #Name:关三柱 #Speaker:GSZ_Anger
    ~shackCamera++
    还有李捷，俺不能让他把事情传出去，不然俺……不然俺就是彻底的恶人了，连俺自己都无法面对自己了……
    俺已经没有退路了……#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
-

*[哎，但因果循环报应不爽。]
    哎，但因果循环报应不爽。李捷的妹妹李小玫为了揭露官府的罪行，在官府里放火，火烧到库房点燃了你买的烟火，炸死了官府里所有人。连薛怀逸，也在那场大火中丧命了。#Layout:Right #Name:判官 #Speaker:GSZ_Sad
    ~shackCamera++
    老爷……老爷也死了？这……不可能！不可能的！俺……俺不信！老爷不会出事的，他不会！#Layout:Left #Name:关三柱 #Speaker:GSZ_Anger
    涉及案件现在没法让你见到薛怀逸。你自己亲眼去看看官府的情况吧。黑白无常！带他去望乡台！#Layout:Right #Name:判官 #Speaker:GSZ_Anger
    是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    出发出发！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
-
~questBG = true
看见没，那块黑漆漆的地儿就是官府的残骸。那火可真大啊，烧得白爷我都感觉暖和了！而且烧起来还噼里啪啦直响，真是挺壮观的。你到底买了多少烟花啊？#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
不过奇怪了，那火只烧了官府，其他地方一点儿都没波及。仿佛有意地只毁了那一处……你说说，这事儿邪不邪门？#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
或许这就是天意。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
因果循环，报应不爽………#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
~enemyHealth -= 2
~topic1 = true
~ topic2 = true
判官大人还在等候。 你既已看清，我们便带你回去了。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
是……#Layout:Left #Name:关三柱 #Speaker:GSZ_Sad
~questBG = false
我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:GSZ_Sad
俺…关镇…认罪伏法。#Layout:Left #Name:关三柱 #Speaker:GSZ_Normal
多谢判官大人，让俺终于看清了，终是解脱了。#Layout:Left #Name:关三柱 #Speaker:GSZ_Happy

->END






    


