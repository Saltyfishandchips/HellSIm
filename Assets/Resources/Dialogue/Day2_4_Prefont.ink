VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
判官大人！！你有没有见到月铃？#Layout:Left #Name:金晤 #Speaker:JW_Worried

她生辰是一九一九年五月廿六，出生在陕西榆林靖边，现年十七岁了。外貌、外貌…嗯……哎，我这嘴笨的，不太会形容她的长相。#Layout:Left #Name:金晤 #Speaker:JW_Worried

月铃梳着麻花辫，那天穿着一条绿色的旗袍……呃，总之，长得很漂亮的一个女孩儿！#Layout:Left #Name:金晤 #Speaker:JW_Worried

->c3_2

===Next ===
本官知晓，地府将彻查此事。#Layout:Right #Name:判官 #Speaker:JW_Normal
下面还需要进行预审调查。#Layout:Right #Name:判官 #Speaker:JW_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:JW_Normal
好！#Layout:Left #Name:金晤 #Speaker:JW_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:JW_Normal
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #Speaker:JW_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===金晤当日的事由===</color>#Layout:Right #Name:判官 #Speaker:JW_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:JW_Normal
    
    当日是宋知年和何任舒的订婚宴，宋知年请了月铃去演出。我早就觉得不对劲，这次演出恐怕有人要对月铃下手。所以，早上布置的时候，我加倍留意，<color=red>特别是那些进出的人</color>。果然不出所料……大人，请看这只酒杯。#Layout:Left #Name:金晤 #Speaker:JW_Normal #CE:Add_9 #CE:Text_description_带歌舞团前来
    
    来帮忙的佣人里混进了宋知年那杂碎的手下！他趁月铃没来，把这杯酒放进了她的休息室。我一进去就看见了，那杂种竟然敢<color=red>在酒里下哑药</color>，想毁了月铃的嗓子！这种腌臜手段，实在是可恨！#Layout:Left #Name:金晤 #Speaker:JW_SuppressAnger
    
    黑无常，去将酒杯登记为该案新证物。#Layout:Right #Name:判官 #Speaker:JW_SuppressAnger
    是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    ->c1_1

        
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===金晤当日的死因===</color>#Layout:Right #Name:判官 #Speaker:JW_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:JW_Normal
    
    ……我当时有一种强烈的不安，感觉事情不对劲。于是尽快敷衍完那些老板和名流，找了个借口脱身，去找月铃。#Layout:Left #Name:金晤 #Speaker:JW_Worried
    但她不在自己的休息室，我的心顿时提了起来。于是我只能沿着<color=red>狭窄拥挤</color>的杂物室一个个找过去。#Layout:Left #Name:金晤 #Speaker:JW_Worried
        ->c2_1

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===金晤死前的身份===</color>#Layout:Right #Name:判官 #Speaker:JW_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:JW_Normal
    害！我刚才太着急了，忘记自我介绍了，真是失礼。我是<color=red>星洋歌舞团二当家</color>，金晤。#Layout:Left #Name:金晤 #Speaker:JW_Normal #CE:Text_identity_星洋歌舞团二当家
        ->c3_1
}

== StartTalk ==
    -> Prefont

==c1_1===
*[他和月铃如何相识的？]
    当初他<color=red>多次腆着脸来找月铃</color>，表面上说是讨论音乐，实际上打什么主意，我心里再清楚不过。他贪图月铃的美貌不说，还想借她的名气为自己造势。#Layout:Left #Name:金晤 #Speaker:JW_Memories
    
       唉……乱世中，歌女们的日子不易，大当家常告诉她们，傍上大人物才能换来安稳富足的生活，也能得到更多资源和曝光。对于生于底层的她们来说，虽是个遥不可及的梦，也是为数不多的出路。 #Layout:Left #Name:金晤 #Speaker:JW_Memories
        我曾想，宋知年出身寒门，凭自己奋斗才有今天的地位。比起那些含着金汤匙的权贵，他应该更懂得珍惜同样努力拼搏的月铃，也能给她想要的荣华富贵……这些，我给不了。#Layout:Left#Layout:Left #Name:金晤 #Speaker:JW_Memories
        也正是我识人不清，才会觉得如果他是真心想娶，月铃爱上他也不算坏事。#Layout:Left#Layout:Left #Name:金晤 #Speaker:JW_Memories
    
    如今他要想飞升<color=red>入赘何家</color>，居然对月铃下手！他明知道月铃这一生最爱的就是唱歌，却要毒哑她！简直禽兽不如！#Layout:Left #Name:金晤 #Speaker:JW_SuppressAnger
    
    为了不让月铃伤心，也不想打草惊蛇让他更难对付，我暂且把那杯毒酒带走，隐瞒了下来。#Layout:Left #Name:金晤 #Speaker:JW_Normal

    老天有眼，到了下午，我看见宋知年一个人站在露台上，喝得醉醺醺的。他这人心狠手辣，今天没得手，日后必定还会再下毒手。我知道，不能再放任他了。#Layout:Left #Name:金晤 #Speaker:JW_Memories

    于是，我趁四下无人，<color=red>推了他一把…… </color>#Layout:Left #Name:金晤 #Speaker:JW_Memories

    我杀了宋知年这个杂碎，但再来千遍我都会推他坠楼。大人对我有任何处置，我都甘愿受着。#Layout:Left #Name:金晤 #Speaker:JW_Normal
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:JW_Normal
        ~ reason = true
        -> StartTalk
==c3_1==
*[了解，请展示胎记。]
了解，请配合地府工作，展示胎记。#Layout:Right #Name:判官 #Speaker:JW_Worried

我并无胎记，判官大人！#Layout:Left #Name:金晤 #Speaker:JW_Normal
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:JW_Normal
 ~ identity = true
    -> StartTalk
    
==c3_2==
*[别急，你可有相关线索吗？]
别急，慢点说。我也正在调查此事，你可有相关线索吗？#Layout:Right #Name:判官 #Speaker:JW_Worried

我看见她死了！…被人刺死了！……就倒在血泊里，那么多血……大人一定严惩真凶！！#Layout:Left #Name:金晤 #Speaker:JW_Sad

    ->c3_3

==c3_3 ==
*[可有什么嫌疑人吗？]
请冷静一点，人死不能复生，但地府必会查明此事。你回忆一下，现场可有什么嫌疑人？#Layout:Right #Name:判官 #Speaker:JW_Sad

…………好，好！……细想来，除宋何二人之外，蔓露也有嫌疑，当日我应酬之时见她慌慌张张地往后台跑，脸色惨白，好像是在找人。#Layout:Left #Name:金晤 #Speaker:JW_Memories

（听来，他很了解月铃。趁着他现在冷静下来，多问问他关于月铃的身世吧，说不定对找歌罗频伽有帮助。）#Layout:Right #Name:判官 #Speaker:JW_Memories
    ->c3_4
    
== c3_4==
*[可以讲下她的身世背景吗？]
听你之言，对月铃应很是熟悉，可以讲下她的身世背景吗？#Layout:Right #Name:判官 #Speaker:JW_Memories

当然。月铃是在我加入星洋歌舞团的第二年收留的，那时她不过八岁。她住的村子被<color=red>匪帮侵袭</color>，烧杀抢掠，她家几乎满门被灭。#Layout:Left #Name:金晤 #Speaker:JW_Normal

她家原本是就是从<color=red>大旱的陕北</color>逃难过来的，天灾人祸下只能四处流亡，没想到在异乡又遭逢劫难。等我在街上发现她时，她差点就被卖进妓院了。#Layout:Left #Name:金晤 #Speaker:JW_Memories

从那之后，月铃就跟着我们歌舞团一起生活。我当时也还年轻，整天跟着大当家四处奔波，拉关系、搞周旋，好不容易才保住歌舞团的安全和生计。#Layout:Left #Name:金晤 #Speaker:JW_Normal

判官大人，这乱世中<color=red>军阀匪帮</color>势力互相倾轧，我们夹在中间，天天都提心吊胆。一边要小心讨好他们，时刻陪着笑脸，一边又要防着被打压欺负。我困于杂务琐事间，终日都如履薄冰。#Layout:Left #Name:金晤 #Speaker:JW_SuppressAnger

这样忙碌艰难地讨生活让我心疲力竭，不知道活着还有什么意义…… #Layout:Left #Name:金晤 #Speaker:JW_SuppressAnger

但月铃……明明遭遇坎坷，却那么<color=red>热爱歌唱</color>，她的存在就像烛火，每每靠近她，我灰暗的世界才会有一点鲜亮的期盼。#Layout:Left #Name:金晤 #Speaker:JW_Normal

烦请大人一定严惩真凶…不，如果可以，请大人告知那人姓名，我必…… #Layout:Left #Name:金晤 #Speaker:JW_SuppressAnger
    -> Next

==c2_1 ==
*[为什么要去那边找？]

月铃现在虽然是大明星，但其实一直比较害怕空旷巨大的环境、或是人多嘈杂的场合。每次上台前都会手脚冰凉，有时候演出还会突发恐慌，呼吸急促。#Layout:Left #Name:金晤 #Speaker:JW_Worried

因此她感到不安全时会喜欢躲进<color=red>狭窄的房间</color>。#Layout:Left #Name:金晤 #Speaker:JW_Worried

其实，您也能明白，有这种情况，基本可以说和舞台无缘了。可她一直很重视自己的事业，把音乐看得比什么都重要。为了站上舞台，她克服了无数障碍，才走到了今天。#Layout:Left #Name:金晤 #Speaker:JW_Normal
        ->c2_2_1
    
*[不安感来自哪里？]
那天月铃身边的意外太多，偶然多了就成必然。我不得不怀疑背后是否有人操纵。多年身为歌舞团负责人，我早已学会处处提防。#Layout:Left #Name:金晤 #Speaker:JW_Normal

另外也有一事，月铃现在虽然是大明星，但其实一直比较害怕空旷巨大的环境、或是人多嘈杂的场合。每次上台前都会手脚冰凉，有时候演出还会突发恐慌，呼吸急促。#Layout:Left #Name:金晤 #Speaker:JW_Worried

其实，您也能明白，有这种情况，基本可以说和舞台无缘了。可她一直很重视自己的事业，把音乐看得比什么都重要。为了站上舞台，她克服了无数障碍，才走到了今天。#Layout:Left #Name:金晤 #Speaker:JW_Normal
    ->c2_2_2

==c2_2_1 ==
*[怎么会这样。]

……大人，您可能没见过<color=red>匪帮屠村</color>的情景，那帮子土匪会挨家挨户搜查，所有人不论年龄长幼，一律从家中拖到<color=red>空地</color>上砍杀，马匹踩踏、哭喊震天，想必是给月铃留下了难以抹除的阴影。#Layout:Left #Name:金晤 #Speaker:JW_Memories

每次月铃陷入恐慌，我只能试图捂热她冰冷的手，让她能慢慢从记忆中抽离。但这只是暂时的缓解，我始终无法解开她心里的结，恨自己无能为力……#Layout:Left #Name:金晤 #Speaker:JW_Normal

我真是，没用至极。#Layout:Left #Name:金晤 #Speaker:JW_Memories
    ->c2_3
    
*[有什么原因吗？]

……大人，您可能没见过<color=red>匪帮屠村</color>的情景，那帮子土匪会挨家挨户搜查，所有人不论年龄长幼，一律从家中拖到<color=red>空地</color>上砍杀，马匹踩踏、哭喊震天，想必是给月铃留下了难以抹除的阴影。#Layout:Left #Name:金晤 #Speaker:JW_Memories

每次月铃陷入恐慌，我只能试图捂热她冰冷的手，让她能慢慢从记忆中抽离。但这只是暂时的缓解，我始终无法解开她心里的结，恨自己无能为力……#Layout:Left #Name:金晤 #Speaker:JW_Normal

我真是，没用至极。#Layout:Left #Name:金晤 #Speaker:JW_Memories
     ->c2_3
     
==c2_2_2 ==
*[怎么会这样。]

……大人，您可能没见过<color=red>匪帮屠村</color>的情景，那帮子土匪会挨家挨户搜查，所有人不论年龄长幼，一律从家中拖到<color=red>空地</color>上砍杀，马匹踩踏、哭喊震天，想必是给月铃留下了难以抹除的阴影。#Layout:Left #Name:金晤 #Speaker:JW_Memories

每次月铃陷入恐慌，我只能试图捂热她冰冷的手，让她能慢慢从记忆中抽离。但这只是暂时的缓解，我始终无法解开她心里的结，恨自己无能为力……#Layout:Left #Name:金晤 #Speaker:JW_Normal

我真是，没用至极。#Layout:Left #Name:金晤 #Speaker:JW_Memories
    ->c2_3
    
*[有什么原因吗？]

……大人，您可能没见过<color=red>匪帮屠村</color>的情景，那帮子土匪会挨家挨户搜查，所有人不论年龄长幼，一律从家中拖到<color=red>空地</color>上砍杀，马匹踩踏、哭喊震天，想必是给月铃留下了难以抹除的阴影。#Layout:Left #Name:金晤 #Speaker:JW_Memories

每次月铃陷入恐慌，我只能试图捂热她冰冷的手，让她能慢慢从记忆中抽离。但这只是暂时的缓解，我始终无法解开她心里的结，恨自己无能为力……#Layout:Left #Name:金晤 #Speaker:JW_Normal

我真是，没用至极。#Layout:Left #Name:金晤 #Speaker:JW_Memories
    ->c2_3
    
== c2_3 ==
后来，我走过一条昏暗的过道，突然闻到了浓重的血腥味。我朝里面看了一眼……#Layout:Left #Name:金晤 #Speaker:JW_Worried

………………#Layout:Left #Name:金晤 #Speaker:JW_Worried

……抱歉，我看见，在黯淡的灯光尽头……月铃瘫倒在地上，<color=red>浑身是血</color>，奄奄一息，胸口几乎没有起伏了。#Layout:Left #Name:金晤 #Speaker:JW_Sad

我不记得自己是怎么冲过去的，一切变得模糊混乱，仿佛世界的声音和光线都被黑暗吞噬。只记得她在我怀里轻声呢喃，瞳孔渐渐涣散。#Layout:Left #Name:金晤 #Speaker:JW_Memories

她的体温一点点从我手掌中流逝，而这次，我再也无法将她捂暖……#Layout:Left #Name:金晤 #Speaker:JW_Sad

    ->c2_4
    
==c2_4==
*[请节哀。]
呵……她的血液顺着我的手掌潺潺流下，直至不再温热。我的脑子里像有什么东西在崩塌，一直以来的责任、爱意、后悔，全都涌上来，却无法再表达给她听。#Layout:Left #Name:金晤 #Speaker:JW_Sad

每次她痛苦时，我不是安慰她，而是退缩，怕面对她那满是依赖的眼神，怕自己感情暴露……所以我总是伪装成那个理智的、冷静的负责人，什么都往后推，连自己对她的情感也藏在了幕后。 #Layout:Left #Name:金晤 #Speaker:JW_Sad

而现在，这些压抑的情感一股脑爆发，撕扯着我的心。我拼命想要弥补，可是她已经不在了……我才意识到，这样深刻的失去，竟让我痛到几乎无法呼吸。#Layout:Left #Name:金晤 #Speaker:JW_Sad

这样的痛提醒着我活的毫无意义。当我看到<color=red>那把小刀</color>时，心里涌上一股强烈的冲动。也许……这样就能结束这一切？至少，我还能陪她走最后一程，即便是以这种丑陋的方式。#Layout:Left #Name:金晤 #Speaker:JW_Sad #CE:Text_deadcause_刺伤
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:JW_Sad
    ~ deadCaues = true
    -> StartTalk
    
*[至少见到了她的最后一面。]
呵……她的血液顺着我的手掌潺潺流下，直至不再温热。我的脑子里像有什么东西在崩塌，一直以来的责任、爱意、后悔，全都涌上来，却无法再说给她听。#Layout:Left #Name:金晤 #Speaker:JW_Sad

每次她痛苦时，我不是安慰她，而是退缩，怕面对她那满是依赖的眼神，怕自己感情暴露……所以我总是伪装成那个理智的、冷静的负责人，什么都往后推，连自己对她的情感也藏在了幕后。 #Layout:Left #Name:金晤 #Speaker:JW_Sad

而现在，这些压抑的情感一股脑爆发，撕扯着我的心。我拼命想要弥补，可是她已经不在了……我才意识到，这样深刻的失去，竟让我痛到几乎无法呼吸。#Layout:Left #Name:金晤 #Speaker:JW_Sad

这样的痛提醒着我活的毫无意义。当我看到<color=red>那把小刀</color>时，心里涌上一股强烈的冲动。也许……这样就能结束这一切？至少，我还能陪她走最后一程，即便是以这种丑陋的方式。#Layout:Left #Name:金晤 #Speaker:JW_Sad
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:JW_Sad
    ~ deadCaues = true
    -> StartTalk