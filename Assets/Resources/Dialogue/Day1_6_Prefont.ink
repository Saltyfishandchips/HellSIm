VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:LXM_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:LXM_Normal
……好的。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
    询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:LXM_Normal
    -> END
- else:
    （询问哪一点呢？）#Layout:Right #Name:判官 #Speaker:LXM_Normal
    
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===李小玫当日的事由===</color>#Layout:Right #Name:判官 #Speaker:LXM_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:LXM_Normal
    
    那晚……民女下工后想着回家和哥哥一起过中秋节……可回去一看，哥哥不在家……#Layout:Left #Name:李小玫 #Speaker:LXM_Doubt
    
    他腿伤还没好呢，我一猜就知道，他肯定是又去<color=red>官府</color>了，我心里着急就跑去找他。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal
    
    我刚到官府，就看见关三柱神色慌张地从花房里出来……他那天的神情，像见了鬼一样……#Layout:Left #CE:Text_description_在库房区找李捷#Name:李小玫 #Speaker:LXM_Doubt

    ->c9_1
    
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===李小玫当日的死因===</color>#Layout:Right #Name:判官 #Speaker:LXM_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:LXM_Normal
    
    因何而死……死……啊！#Layout:Left #CE:Text_deadcause_被炸死#Name:李小玫 #Speaker:LXM_Afraid
    
    …哥哥……乡亲们…怎么办啊…还有这些花怎么办！怎么办！烧掉那些花？对！#Layout:Left #CE:Text_deadcause_被炸死#Name:李小玫 #Speaker:LXM_Afraid
    
   ……可是怎么点火……好像小厨房灶台上有<color=red>火折子……</color>……官府平日里做饭的麻油也在厨房那里……只要撒上一些……记得柴房的门没关……那里堆满了柴火……库房里是不是还有新进的烟花……#Layout:Left #CE:Text_deadcause_被炸死#Name:李小玫 #Speaker:LXM_Afraid
    
    她好像陷在那段回忆之中了。#Layout:Right #Name:判官 #Speaker:LXM_Afraid
    ->c8_1
    
    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===李小玫死前的身份===</color>#Layout:Right #Name:判官 #Speaker:LXM_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:LXM_Normal
    
    民女李小玫，是、是西幽村的村民……平日<color=red>在官府里当侍女</color>，做些打扫端茶的杂活。#Layout:Left #Name:李小玫 #Speaker:LXM_Doubt

    嗯……有些时候还会帮哥哥打探消息！哥哥可厉害了，是村里的大侠呢！人都说他劫富济贫、乐于助人、救人于危难…… #Layout:Left #CE:Text_identity_官府侍女#Name:李小玫 #Speaker:LXM_Happy
    ->c7_1
}

== StartTalk ==
    -> Prefont

=== c7_1 ===
*[所以是你告诉李捷官府里有丹药吗？]
    ->c7_2
    
=== c7_2 ===
啊…是的。那几天<color=red>肉铺梁伯病重</color>，村里人急得没办法，哥哥愁得每天都睡不着觉。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal

梁伯人很好的，逢年过节请大家吃杀猪菜，平日里也给我们兄妹一些卖剩的板油来炼油。#Layout:Left #Name:李小玫 #Speaker:LXM_Normal

民女知道官府老爷刚找了个洋人<color=red>炼了一批丹药，宝贝得很……</color>我想着哥哥能拿去治梁伯的病，没想到……我只是想帮忙的……#Layout:Left #Name:李小玫 #Speaker:LXM_Sad
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:LXM_Sad
        ~ identity = true
        -> StartTalk

    
=== c8_1 ===
    *[黑无常！查询一下！]
她这个状态问不出关于死因的信息。黑无常！你且查询一下此人死因。#Layout:Right #Name:判官 #Speaker:LXM_Afraid
是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
判官大人！三生石碎片显示此人被炸死。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
~ deadCaues = true
好的。#Layout:Right #Name:判官 #Speaker:LXM_Afraid
-> StartTalk


=== c9_1 ===
  *[然后你就进了花房？]

是……那天我鼓起了勇气，偷偷溜进了花房…… 我刚进去……#Layout:Left#Name:李小玫 #Speaker:LXM_Sad

我……我看到了<color=red>乡亲们</color>……那些血红的花从他们的身上钻出来…… #Layout:Left#Name:李小玫 #Speaker:LXM_Afraid

肉铺的梁伯、卖菜的张婆婆、织布的陈嫂子、打铁的赵老爹……全都被那些花……啊…… #Layout:Left#Name:李小玫 #Speaker:LXM_Afraid

然后……然后我看见……哥哥倒在地上，<color=red>一动不动，满身是血</color>……他就那样……躺在那里……啊啊啊……#Layout:Left#Name:李小玫 #Speaker:LXM_Afraid


    ->c9_2

=== c9_2 ===
*[你平复一下心情吧。]

……哥，对不起……我总以为有你在，什么都不用太担心……所以，有些事我明明觉得不对劲，却总是不去深想……#Layout:Left#Name:李小玫 #Speaker:LXM_Sad

或者是我根本不敢面对……这一切都是因我而起，是我告诉你那些丹药的……#Layout:Left#Name:李小玫 #Speaker:LXM_Sad

现在你不在了，我该怎么办……这些事不该再被掩盖……#Layout:Left#Name:李小玫 #Speaker:LXM_Sad
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:LXM_Sad
        ~ reason = true
        -> StartTalk