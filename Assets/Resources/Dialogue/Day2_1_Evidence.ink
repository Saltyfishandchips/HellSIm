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
堂下可是刘平？本官将就当日宴会与歌罗频伽之事展开质询，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:LP_Normal
哎？哎……好的，单凭大人吩咐。#Layout:Left #Name:刘平 #Speaker:LP_Normal
…歌罗频伽？……“如是美音，若天若人”？判官大人是指，月铃小姐原是歌罗频伽化身？这样说来，她果真是天仙下凡，正应了那句“此曲只应天上有，人间能得几回闻。”呐！#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
*[世上真有这样的神仙人物吗？]
    月铃小姐正是如此啊，论起仙姿佚貌、端庄高雅，旁的贵族小姐、明星艺者都远不能及，更遑论普通百姓了。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
*[你有了解过真实的月铃吗？]
    大人此话差矣，月铃小姐无论人前人后……都永远那么仙姿佚貌、端庄高雅。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
-
可她抛开歌星身份，也是一个有正常生活的人吧？总不至于如此不食人间烟火。#Layout:Right #Name:判官 #Speaker:LP_SquintLaughter
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
怎么会？这世上没人比我更了解月铃小姐，包括她自己。有些事情旁观者清，我知道的，月铃小姐虽然年轻天真，但教养极佳，一直以来都洁身自好。#Layout:Left #Name:刘平 #Speaker:LP_Normal
她一定是位身世曲折的落魄贵族小姐，隐姓埋名来当歌星……阳春白雪，不问俗世…#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
那些水性杨花的浪荡明星都是花边小报上的常客，时不时就会携各种离奇绯闻登报，但月铃小姐从不会如此，这是普罗大众都知道的事。#Layout:Left #Name:刘平 #Speaker:LP_Normal
<color=red>（我记得有件证物能够证明，事实与他的供词相悖。）</color>#Layout:Right #Name:判官 #Speaker:LP_Normal
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:LP_Normal
->Node0

== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
可我听闻她与宋先生的绯闻可谓是全城皆知，月铃并不是你所说的完美女神。#Layout:Right #Name:判官 #Speaker:LP_Normal
我早说了！这简直是添油加醋，一派胡言！#Layout:Left #Name:刘平 #Speaker:LP_Anger
~enemyHealth--
你有何证据能说明两人之间并不曾有过情愫？#Layout:Right #Name:判官 #Speaker:LP_Anger
-> Node1

== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
这……这不实传言只发生在数月前！那以讹传讹的报社凭借这条新闻赚得盆满钵满，当时刘某花了大价钱，亦有贵人从中相助，才促使那报社被查封，让这谣言平息下来……这几个月来，刘某安排眼线密切观察，两人早就断了往来！#Layout:Left #Name:刘平 #Speaker:LP_Frown
况且，若是月铃真的钟情于那小子，他怎会毫不犹豫地为了政治升迁与何小姐订婚，他怎么可能弃月铃不顾！#Layout:Left #Name:刘平 #Speaker:LP_Anger
哈哈……大人，那你又有证据说明两人确有私情吗？#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
<color=red>（我记得有件证物能够证明。）</color>#Layout:Right #Name:判官 #Speaker:LP_SquintLaughter
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:LP_SquintLaughter
->Node1

== Evidence1 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
你再仔细看看这方巾，“铃兰醉蝉”……你自己也说，歌迷们有时以“铃兰”代指月铃，而花旁的“知了”，正是暗指宋知年的名字。#Layout:Right #Name:判官 #Speaker:LP_SquintLaughter
这方巾由月铃亲手缝制，今天才从宋知年胸前口袋中取出。
什么！？这怎么可能！……定是宋知年对月铃小姐念念不忘，才在订婚宴上仍携带此物……而月铃小姐，只是数月前一时糊涂罢了，她早就看不上那小子了！#Layout:Left #Name:刘平 #Speaker:LP_Frown
~enemyHealth--
……对，对！一定是这样！月铃真心爱的是我！她的每场演出我都会去送花，我还经常寄信给星洋歌舞团，注明由她亲收；她曾经多次在歌迷见面会时对我们对我们说会一直感谢我们、爱着我们……这些，怎么可能有假？#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
况且，今日宴会，刘某因故来迟，由她们二当家接待落座时，可是真真切切地看见月铃小姐对我笑了！#Layout:Left #Name:刘平 #Speaker:LP_Normal
她笑得那么甜美、那么耀眼，在场的观众谁不为她脸红心跳，而这笑容是独独对我一个人绽放的！这不正是月铃甜蜜大胆的告白吗？#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
*[你又错了，月铃是在对金晤微笑]
    ~shackCamera++
    ……什、什么！这不可能！#Layout:Left #Name:刘平 #Speaker:LP_Anger
*[月铃怎么会喜欢你这么扭曲的人]
    ~shackCamera++
    你给我闭嘴！就是的、就是的！#Layout:Left #Name:刘平 #Speaker:LP_Anger
-
你，你！为什么要帮月铃来骗我！……当时，我与她在那条黑暗的走廊，她……她也说……#Layout:Left #Name:刘平 #Speaker:LP_Sad
…………她说……“我根本不认识你”………………#Layout:Left #Name:刘平 #Speaker:LP_Frown
~enemyHealth--
~shackCamera++
她怎么能说出这样的话！！为什么要对我撒谎！！#Layout:Left #Name:刘平 #Speaker:LP_Anger
*[所以你就杀了她？]
*[这就是事实]
-
什么！…哈哈、哈哈…我想起来了！那根本不是月铃小姐。那女人当时刚刚拼命勒死了人，满脸是汗、气喘吁吁地转过来，发现我在走廊的杂物后时，露出了那样惊骇而狼狈的表情！哈哈……#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
这根本不可能是月铃小姐啊！……我知道的，平常的她、真正的她，从来都是高贵优雅的不是吗？！怎会不知如何是好！怎会如此狼狈的杀人！#Layout:Left #Name:刘平 #Speaker:LP_Frown
月铃小姐只会是温柔从容地笑着的样子！怎么可能悲伤、愤怒、哀痛、绝望！？#Layout:Left #Name:刘平 #Speaker:LP_Anger
骗子！骗子！骗子！！！#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
但无所谓了！哈哈！“月铃”已经死了，现在真正的月铃小姐将永远存活在我心里，那个高洁，爱我，歌罗频伽化身的神女！#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
*[歌罗频伽被封印在何任舒体内]
    并非如此，歌罗频伽被封印在何任舒体内。#Layout:Right #Name:判官 #Speaker:LP_FuriousLaughter
你说什么！！不可能！歌罗频伽如此神物怎会附身于如此肮脏的血脉中。#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
 ~enemyHealth--
~shackCamera++
母亲自从沾染上了何治这个脏男人，就再也唱不出那样美妙的旋律。而何任舒，生于这样的肮脏血脉，怎么可能是歌罗频伽的化身？#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
母亲被玷污了，不再创造最纯粹的艺术了，为了拯救真正的美，我不得不结束这一切！现在你和我说何任舒是歌罗频伽化身！！#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
~shackCamera++   
骗子！骗子！骗子！！！#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
~shackCamera++   
    我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:LP_FuriousLaughter
    不可能！不可能！我不可能从最开始就错了！#Layout:Left #Name:刘平 #Speaker:LP_FuriousLaughter
    当作无异议吧。#Layout:Right #Name:判官 #Speaker:LP_FuriousLaughter
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:LP_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


