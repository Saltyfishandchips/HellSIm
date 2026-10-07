VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:BRT_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:BRT_Normal
真是麻烦！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger
->Prefont

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该鬼的路引信息了。 #Layout:Right #Name:判官 #Speaker:BRT_Normal
    -> END
- else:
    （询问哪一点呢？）#Layout:Right #Name:判官 #Speaker:BRT_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===布兰特当日的事由===</color>#Layout:Right #Name:判官 #Speaker:BRT_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:BRT_Normal
    
    那晚？我照常被那个白痴<color=red>锁在药房</color>里按丹方炼丹啊。最近薛<color=red>急需大量忘忧丹</color>，搞得我天天忙得团团转，根本没时间研究炼金术。#Layout:Left #CE:Add_8 #Name:怀特-布兰特 #Speaker:BRT_Anger
    
    正炼着丹呢，就听到外面<color=red>有打斗吵架的声音</color>，没多久火就烧了起来。#Layout:Left  #CE:Text_description_整夜在药房炼丹  #Name:怀特-布兰特 #Speaker:BRT_Doubt
    -> c9_1
        
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===布兰特当日的死因===</color>#Layout:Right #Name:判官 #Speaker:BRT_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:BRT_Normal
    对对对！放在库房的<color=red>黑火药</color>爆炸了。爆炸威力太大！我在隔壁也被炸死了！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger

    但我就知道这黑火药有无限潜力，真是天才的发明，宋人的<color=red>黑色黄金！</color>硫黄一斤四二，硝石二斤半，炭末五二斤…… #Layout:Left #CE:Text_deadcause_被炸死 #Name:怀特-布兰特 #Speaker:BRT_Happy
        ->c8_1

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===布兰特死前的身份===</color>#Layout:Right #Name:判官 #Speaker:BRT_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:BRT_Normal
    
    我是<color=red>怀特-布兰特，来自西方拂林帝国</color>，到这地方是做生意的。要不是薛那个家伙缠着我帮他炼丹，我根本不会卷入这场荒唐的灾祸。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger

    你们这些规矩根本<color=red>不适用于我</color>，判官大人，还是别浪费彼此的时间了。#Layout:Left #CE:Text_identity_外邦商人 #Name:怀特-布兰特 #Speaker:BRT_Doubt
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:BRT_Doubt
    ~ identity = true
    -> StartTalk
}


=== c8_1 ===
*你在念什么？  #Layout:Right #Name:判官 #Speaker:BRT_Happy
 ->c8_2

=== c8_2 ===
配方。告诉你也无妨，这是我翻译的<color=red>黑火药配方</color>。我名义上是炼丹，实际上是<color=red>炼金</color>。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Happy

薛那个傻子痴迷于他的忘川花和丹药，他认为的那些废料才是无价之宝。这些可都是<color=red>黑火药的原料</color>，我在炼丹的空隙里偷偷尝试<color=red>还原黑火药</color>。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Happy

之前一直还原失败，眼看就要成功了，可恶！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger
 
*[那你还原失败的黑火药去哪了？]
        ->c8_3

=== c8_3 ===
 每次薛都要把那些<color=red>药渣炉渣和丹药一起收走</color>，我就顺手混在里面了。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Normal
 
看起来那些所谓的废料都被存进<color=red>库房</color>里了，薛真是怕他的药方泄露出去啊。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Doubt

不过现在库房爆炸了！是不是说明我早就成功了！哈哈哈！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Happy
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:BRT_Happy
      ~ deadCaues = true
    -> StartTalk
    

=== c9_1 ===
*[你为什么被锁在药房里？]
    ->c9_4

=== c9_4 ===
每次炼丹，那<color=red>侍卫关</color>都会把门锁住，说是为了能让我专心炼丹。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Doubt

实际上就是薛怕我<color=red>把丹药偷走</color>带回西方卖钱吧，这简直是对我人格的侮辱！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger

再说，我自己又<color=red>不会种忘川花</color>，怎么可能炼他的那个丹？#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger

*忘川花不是你带来的吗？#Layout:Right #Name:判官 #Speaker:BRT_Anger
    ->c9_2

=== c9_2 ===
什么？在来这之前，<color=red>我从未见过这种花</color>。每次炼丹用的花料都是关偷偷摸摸从<color=red>药田房</color>拿来的。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Doubt

他们像防贼一样防着我，真是可笑！我才不屑去偷那花。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger

*[药田房是什么地方？] 
    ->c9_3

=== c9_3 ===
就是在药房和库房边上的一个小房间，我怀疑<color=red>薛把忘川花种在那里</color>，所以随口叫那药田房。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Normal

那个房间神神秘秘的，门上还<color=red>装了一把复杂的锁</color>。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Normal
好的。#Layout:Right #Name:判官 #Speaker:BRT_Normal
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:BRT_Normal
    ~ reason = true
    -> StartTalk

== StartTalk ==
    -> Prefont
