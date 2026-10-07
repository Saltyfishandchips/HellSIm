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
堂下可是宋知年？本官将就当日宴会与歌罗频伽之事展开质询，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:SZN_Normal
与我相关吗？……好罢。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
你数月前开始接近月铃，是何居心？#Layout:Right #Name:判官 #Speaker:SZN_Normal
-> Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
这是何意？月铃小姐歌声动人，待人又真诚谦虚，哪个男人见了不着迷？我就是真心欣赏她而已，于是两人私下里有些接触。#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
谁料此事不知怎地，被一家报社拍到了照片，并且大肆报道……哎，说起来还打扰了我的生活呢，月铃长期抛头露面已经习惯了，但我那段时间出行多有不便，走到哪里都会被旁人行注目礼。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
…而且，你没听闻吗？是月铃先向我示好。作为君子，怎能让淑女伤心难过呢，何况她又是那么美丽温顺，我便只能百忙之中抽空多陪陪她。#Layout:Left #Name:宋知年 #Speaker:SZN_Narcissism
<color=red>（我记得有件证物能够证明他动机不纯。）</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
->Node0


== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
说得好听。你在国正党耕耘多年，虽有一定政绩，但没有家族背景帮衬，对于高层而言仍旧是无名小卒。与月铃登上报纸，仿佛一夜成名，民众议论激烈，国正党高层也对你有所注目。#Layout:Right #Name:判官 #Speaker:SZN_Normal
何况正如你所言，表面上是月铃纠缠于你，你不仅光明坦荡，反而还更显魅力。用与当红歌星传出绯闻的手段来增加知名度，间而扩大影响力，宋先生好谋算！
……哼，不错，这竟也被阁下发现了，鄙人亦是佩服！#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt
~enemyHealth--
党内斗争不断，今日东风压过西风，明日西风又压东风…身无背景的普通人就像细条条的吊兰，稍有不慎就折了。
鄙人兢兢业业，凭自己赤手空拳积攒了一些成绩，但……这样下去太慢了。若寄希望于时来运转，还不知要等到几时！哼，到那时，我恐怕早就垂垂老矣了。#Layout:Right #Name:判官 #Speaker:SZN_Anger
->Node1


== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
我这样聪明，很快就明白了……我要做的，是借势。月铃也好，何任舒也罢，对我而言都是达到目的的手段，并无半点区别。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
<color=red>（我记得有件证物能够证明他待月铃不同。）</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
-> Node1

== Evidence1 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
既是如此，你又何必在订婚宴上还将她的方巾揣在怀里？#Layout:Right #Name:判官 #Speaker:SZN_Normal
……真是难缠，这也被你发现了吗。#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt
~enemyHealth--
月铃出生底层，但有很强的生命力和进取心，如今才会红遍江南…我只不过在她身上看见过自己的影子罢了。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
那日，我怀揣着这条方巾，只是为了留作纪念，提醒自己曾是如何从底层一步步奋斗而来。下位者将会被如此轻易的抛弃，我绝对要一直向上！#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
……对了，你是如何发现我这方巾的秘密的？#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
*[因为你并非死于意外。]
    有一点你说得没错，你确实不是死于一个“小小的意外”，今日你阳寿已尽。#Layout:Right #Name:判官 #Speaker:SZN_Doubt
    ~shackCamera++
    …什么？！这怎么可能！#Layout:Left #Name:宋知年 #Speaker:SZN_Anger
*[知晓秘密者断你性命。]
    知晓此事种种隐秘细节之人，亦是了结你性命之人。#Layout:Right #Name:判官 #Speaker:SZN_Doubt
    ~shackCamera++
    …什么？！我不是自己摔下去的？#Layout:Left #Name:宋知年 #Speaker:SZN_Anger
-
冤有头、债有主，你可还记得你当日做过什么？#Layout:Right #Name:判官 #Speaker:SZN_Anger
-> Node2

== Node2 ==
~ currentNode = "Evidence"
~ node = "Node2"
~ EvidenceButtonAnim = true
……当日……宴会刚开始时自是那些繁文缛节，到场的官员……白上将、傅司令、荣主任…何部长…应该也没有招待不周之处才是…#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
……后来喝得有点飘忽，一人去露台想要醒酒时，也没见有人暗中埋伏…况且也没法预判我会往那个角落去吧…#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
到底是谁呢……#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
<color=red>（我记得有件证物是他死亡的直接诱因。）</color>#Layout:Right #Name:判官 #Speaker:SZN_Doubt
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:SZN_Doubt
->Node2

== Evidence2 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
你可还记得此物？#Layout:Right #Name:判官 #Speaker:SZN_Doubt
…这，是给月铃的那杯酒吧？他被抓住了？办事还真是不当心，一点小事都做不好…这么说，难道……#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
*[你的小厮被金晤发现了。]
是啊，你的小厮被金晤发现了，你对月铃下此狠手，他当然不会坐视不管，只是当时按捺下来罢了。可笑一向精明如你，当天是宴会前就喝了酒的缘故吗？竟还以为已经得手。金晤路过时你站在露台，恰巧四下无人。#Layout:Right #Name:判官 #Speaker:SZN_Doubt
~shackCamera++
金晤！？那个靠女人吃饭的家伙？#Layout:Left #Name:宋知年 #Speaker:SZN_Anger
应该不止如此吧，他对月铃是不是……#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt
~enemyHealth--
大人，对月铃下药可能看似不近人情，但其实是为了她的长远利益。她身处复杂的环境，被金晤那个小人当作摇钱树，被迫整日抛头露面，失去了自我。或许，这正是她获得真正自由的机会。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal

还在狡辩！黑白无常！带他去望乡台！#Layout:Right #Name:判官 #Speaker:SZN_Normal
是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
上路上路！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
~questBG = true
看见了吗？你曾经的办公室早已归属他人了，连你身前积累的功名，也在党内多派斗争中被他人蚕食了，还说什么想立下千秋功业……这才短短几月，你就已经被民众淡忘了。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
不对！民间现在对你也有美谈呢，说宋军正在未婚妻死后当即跳楼殉情，虽成就寥寥但也是恩山义海的风流人物，当真情比金坚，连白爷我听了都感动。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
~shackCamera++
怎么回事！为什么传出去会变成这样！#Layout:Left #Name:宋知年 #Speaker:SZN_Anger
这里头，谁受益最多便是谁出手干预，其中弯弯绕绕，宋军正难道还不懂吗？#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
……是何家人？但我的了解，他们应当会将罪责推给月铃才对…#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
不错，果然是一家人。只是金晤已被老大送回阳间，他自然不忍月铃清誉受损，因此与何家达成协议，出面作证，将此案掩饰为党争引起的投毒事件，而你为何任舒殉情而死。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
对于何家，既顾全了何任舒颜面，又给了何治清算异己的由头，其实连带着也给你赢得了赞誉呀……只是不知宋军正是否喜欢这个美名呢？#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
……一切都…没意义了，我的筹谋、我的名声……我的未来…#Layout:Left #Name:宋知年 #Speaker:SZN_Depressed
~enemyHealth--
也算做了个明白鬼，回吧！#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
~questBG = false
我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:SZN_Depressed
…异议？没有了…都没意义了。#Layout:Left #Name:宋知年 #Speaker:SZN_Depressed
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:SZN_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


