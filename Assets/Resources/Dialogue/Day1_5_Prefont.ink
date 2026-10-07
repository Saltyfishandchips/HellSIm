VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:CE_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:CE_Normal
小女知道了~#Layout:Left #Name:崔二 #Speaker:CE_Happy
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
    询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:CE_Normal
    -> END
- else:
    （询问哪一点呢？）#Layout:Right #Name:判官 #Speaker:CE_Normal
    
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===崔二当日的事由===</color>#Layout:Right #Name:判官 #Speaker:CE_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:CE_Normal
    
    那晚啊，小女<color=red>在花房里哪儿也没办法走动</color>哦。毕竟小女也算半截身子入土了，哈哈哈！#Layout:Left #CE:Text_description_整夜在花房中 #Name:崔二 #Speaker:CE_Happy
        ->c9_1

    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===崔二当日的死因===</color>#Layout:Right #Name:判官 #Speaker:CE_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:CE_Normal
    
    哈哈哈哈！都死了吗真好笑啊。#Layout:Left#Name:崔二 #Speaker:CE_Kuang

   不过小女猜想是被<color=red>库房那些烟火炸死</color>的吧。这死法不错，我很喜欢。人不就像烟花一样，为了某一瞬而活吗？#Layout:Left #CE:Text_deadcause_被炸死#Name:崔二 #Speaker:CE_Kuang
    ->c8_1
    
    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===崔二死前的身份===</color>#Layout:Right #Name:判官 #Speaker:CE_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:CE_Normal
    
    <color=red>小女崔二，生前是个郎中</color>。死了之后做什么，还没想好呢，不过总归是要靠判官大人您来安排，对吧？小女先暗自期待着吧。#Layout:Left #CE:Text_identity_郎中#Name:崔二 #Speaker:CE_Happy
    ->c7_1
}

== StartTalk ==
    -> Prefont

=== c7_1 ===
     *[府上的忘川花是你种植的吗？]
     ->c7_2

=== c7_2 ===
    是我种的，不过，与其说是种植，不如说我和忘川花更像是一种<color=red>共生关系。小女助她在阳间扎根，她助我获得一切渴望的东西。</color>#Layout:Left #Name:崔二 #Speaker:CE_Happy
 *[她？忘川花产生灵性了？]
 ->c7_3

=== c7_3 ===
嘻，万物皆有灵，何况是这阴间的忘川花呢？也许是我们<color=red>命数相近</color>吧。#Layout:Left#Name:崔二 #Speaker:CE_Happy

我第一次触摸到种子时，就听见她在<color=red>低语</color>。她只是黄泉路上万千花中的一束，而我呢？叫崔二或是彭一又有什么区别，只是代号<color=red>无人在意</color>。#Layout:Left#Name:崔二 #Speaker:CE_Normal

可我们彼此依靠，或许能改变这局。#Layout:Left#Name:崔二 #Speaker:CE_Happy
*[所以是你提议在人身上种植忘川花吗？]
->c7_4

=== c7_4 ===
哈哈哈！狗官倒也不笨，<color=red>田里种植失败</color>，他<color=red>试着用死猪</color>，结果也不成。我只轻轻提了一句，这花或许需要<color=red>“新鲜”的血肉</color>，他立刻想到用<color=red>活人做实验</color>。#Layout:Left#Name:崔二 #Speaker:CE_Kuang

起初，他抓了几个<color=red>无名乞儿</color>，那花在他们身上开得真是红艳得很。#Layout:Left #Name:崔二 #Speaker:CE_Kuang

*[那后来是怎么盯上村民的？]
->c7_5

=== c7_5 ===
<color=red>李捷</color>叫我去给<color=red>村里屠夫</color>看病，我发现<color=red>他的症状和种了花的乞儿一模一样</color>。#Layout:Left#Name:崔二 #Speaker:CE_Normal

再后来没想到李捷居然<color=red>偷了官府里的废丹</color>给村民吃，病情四处传开了。#Layout:Left#Name:崔二 #Speaker:CE_Anger

我和狗官一说，他气得脸色发青，大骂“肥水安流外人田”，便抓了个病人回来种花，<color=red>没想到花开得更好了</color>。#Layout:Left#Name:崔二 #Speaker:CE_Kuang
*[你知道是废丹，没想过阻止李捷偷盗吗？]
->c7_6

=== c7_6 ===
小女为什么要阻止？那废丹能催动人体内的<color=red>阳气流转，变成药人正好成了花的肥料</color>。至于那些<color=red>贱民</color>的死活，与我何干？#Layout:Left#Name:崔二 #Speaker:CE_Kuang

李捷倒也心甘情愿，<color=red>享受英雄侠客的虚名</color>，我又何必多事？#Layout:Left#Name:崔二 #Speaker:CE_Happy
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:CE_Happy
~ identity = true
        -> StartTalk

=== c8_1 ===
   *[你知道谁放的火吗？]
    ->c8_2

=== c8_2 ===
谁放的有那么重要吗？哦~ 小女明白了，判官大人在追查此事啊？#Layout:Left#Name:崔二 #Speaker:CE_Happy

那不如问问等会儿来的那个<color=red>小妮子</color>吧。  #Layout:Left#Name:崔二 #Speaker:CE_Happy
 
*[你没有不甘心吗？]
     ->c8_3

=== c8_3 ===
不甘心？或许吧。但死亡对小女来说，未必是结束呢。#Layout:Left#Name:崔二 #Speaker:CE_Happy

忘川花最后也<color=red>掌控了我的身体</color>，小女不喜欢那种感觉，倒也算是个新的开始。#Layout:Left#Name:崔二 #Speaker:CE_Normal

而狗官那种<color=red>贪生怕死</color>的人，活着和死了也没差。最终，他不也一样没能逃脱？真是讽刺啊，哈哈！#Layout:Left#Name:崔二 #Speaker:CE_Kuang
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:CE_Kuang
~ deadCaues = true
-> StartTalk


=== c9_1 ===
 *[什么意思？]
->c9_2

=== c9_2 ===
小女长时间接触忘川花，还是被那<color=red>阴气侵蚀</color>了。不过小女也好奇那<color=red>阴阳相通</color>的感受，便将种子也埋入了体内。#Layout:Left#Name:崔二 #Speaker:CE_Happy

给！这便是余下的种子。真神奇啊，我死后她又化作这石头模样了。#Layout:Left #CE:Add_9#Name:崔二 #Speaker:CE_Happy
黑无常，去将这些种子登记为该案新证物。#Layout:Right #Name:判官 #Speaker:CE_Happy
是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

虽说因此获得了某种平静，但这花不仅需要血肉供养，还必须与<color=red>黄泉土接触</color>。所以，小女每晚都得在花房安躺。#Layout:Left#Name:崔二 #Speaker:CE_Happy

*[那你那晚也见李捷与关三柱了？]
    ->c9_3

=== c9_3 ===
是啊，就听那门外窸窸窣窣一阵响动后，广锁便被打开了。本以为是<color=red>那个怂货</color>，没想到进来的会是李捷，算了也为命运使然。#Layout:Left#Name:崔二 #Speaker:CE_Sad

*[你和李捷之前认识？] 
    ->c9_4
    
=== c9_4 ===
哦，小女倒是忘了提，<color=red>我也曾是西幽村</color>的人，小时候便认识他了。后来，小女随继父外出行医，许多年后再回到村里无人认得。#Layout:Left#Name:崔二 #Speaker:CE_Normal

可只有他，一眼就认出了我。他倒是脸皮厚，常来找我包扎些小伤口，或是替村里人问诊。#Layout:Left#Name:崔二 #Speaker:CE_Normal

*[那晚李捷进来后呢？]

->c9_5
    
=== c9_5 ===
他一进来，脸色就变了，<color=red>盯着我，眼中全是厌恶</color>。也许恨我骗他，也许恨那花在他的好乡亲身上开得如此猖狂。#Layout:Left#Name:崔二 #Speaker:CE_Normal
<color=red>怂货进来提刀就砍</color>，却怂得连刀都握不稳。李捷虽躲得紧，但还<color=red>小心的护着那些贱民</color>。#Layout:Left#Name:崔二 #Speaker:CE_Anger
看他那样，我心生狠劲，便<color=red>死死抓住他的脚腕，刀一下就插进了他的心脉！</color>#Layout:Left#Name:崔二 #Speaker:CE_Kuang
……#Layout:Right#Name:判官 #Speaker:CE_Kuang
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:CE_Kuang
        ~ reason = true
        -> StartTalk