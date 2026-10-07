VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:ML_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:ML_Normal
蔓露明白。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:ML_Normal
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #Speaker:ML_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===蔓露当日的事由===</color>#Layout:Right #Name:判官 #Speaker:ML_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:ML_Normal
    
    当日我去订婚宴……嗯…是，是为了去给月铃加油打气的，我有些担心她的状态。但由于、由于路上耽搁…我到达时月铃已经上台了，我就只能<color=red>在她休息室等候</color>……后来…后来又想着先出去草坪上散散心，就先离开了。#Layout:Left #Name:蔓露 #Speaker:ML_Normal #CE:Text_description_跟随歌舞团前来
        ->c1_1

    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===蔓露当日的死因===</color>#Layout:Right #Name:判官 #Speaker:ML_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:ML_Normal
    最近宋先生要<color=red>低调行事</color>，没有来找月铃。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
    
    我想何任舒最近肯定志得意满，觉得自己大获全胜，要来教训见不得人的失败者了。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
    
    那天我刚找到月铃没多久呢，她也笑嘻嘻地出现在门口。#Layout:Left #Name:蔓露 #Speaker:ML_Normal

    她平时懒散的混样已经够可怕了，随便轻飘飘的一句话就能让我们吃尽苦头。当天见她笑得那么开心，我更是心中一沉。#Layout:Left #Name:蔓露 #Speaker:ML_Bitter
    
    果然她进来以后边笑边对我和月铃挥动着手枪，言语间更是<color=red>不断羞辱</color>我们歌舞团。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
    
    ……害，其实我红了这么些年，早听惯了她的刻意侮辱，她说上半句，我都能接出下半句……但月铃明显颤抖起来，那种情况，没人会不屈辱、不害怕的吧。#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile
    
    我…我因为个人的原因……想要保护月铃，想着何任舒素来<color=red>身体孱弱</color>，而且，再嚣张跋扈也是一介女流，开枪前应该会犹豫，那我或许就能<color=red>夺下枪</color>…… #Layout:Left #Name:蔓露 #Speaker:ML_Guilty
    
    当时只听“砰”的一声，我还没反应过来，看见枪口有一缕白烟，才感到胸腹部传来剧痛，身体也痉挛起来。#Layout:Left #Name:蔓露 #Speaker:ML_Normal

    那贱人开枪时果断利落，熟门熟路，<color=red>完全不像第一次</color>。疼痛和恐惧摄住了我的心…但我还想和月铃说说话，于是拖着开始不受控制的身体勉力转过去——那真是言语无法形容的疼痛，月铃惊恐地扶着我，我看见她大喊的口形，旋即感到坚硬的地面沿着身侧竖了起来，意识逐渐模糊…… #Layout:Left #Name:蔓露 #Speaker:ML_Anger #CE:Text_deadcause_枪击
    <align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:ML_Anger
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===蔓露死前的身份===</color>#Layout:Right #Name:判官 #Speaker:ML_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:ML_Normal
    
    我是蔓露，江宁县人，星洋歌舞团出来的一个……明星。#Layout:Left #Name:蔓露 #Speaker:ML_Guilty #CE:Text_identity_星洋歌舞团歌星
        ->c3_1
}

== StartTalk ==
    -> Prefont

==c1_1==
*[金晤看到了你的行踪。]
金晤说当日看见你慌张地向后台走去，这是为何？#Layout:Right #Name:判官 #Speaker:ML_Normal

啊……二当家…这、这是因为，当日正值深春时分，风景晴好，我、我一时贪看住了，回过神来时月铃已不在台上。那日……那日她唱歌时<color=red>发挥失常</color>，想是心情惨淡的原因，因此我想快点去找她来的。#Layout:Left #Name:蔓露 #Speaker:ML_Guilty
    ->c1_2
    
*[何任舒看到了你的行踪。]
何任舒说当日看见你慌张地向后台走去，这是为何？#Layout:Right #Name:判官 #Speaker:ML_Normal

又是她！#Layout:Left #Name:蔓露 #Speaker:ML_Anger

……这、这是因为，当日正值深春时分，风景晴好，我、我一时贪看住了，回过神来时月铃已不在台上。那日……那日她唱歌时<color=red>发挥失常</color>，想是心情惨淡的原因，因此我想快点去找她来的。#Layout:Left #Name:蔓露 #Speaker:ML_Guilty
    ->c1_2
    
== c1_2 ==
*原来如此。#Layout:Right #Name:判官 #Speaker:ML_Guilty
是、是的，就是这样……我对大人您，是不会有所欺瞒的。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:ML_Normal
        ~ reason = true
        -> StartTalk
    
*我怎么听说她当日超常发挥了？#Layout:Right #Name:判官 #Speaker:ML_Guilty
这……大人您、您说的是……这，应该是我<color=red>过于忧心</color>，所以才从歌曲中听出了失落吧。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:ML_Normal
        ~ reason = true
        -> StartTalk

== c3_1 ==
*[了解，请展示胎记。]
了解，请配合地府工作，展示胎记，黑无常登记。#Layout:Right #Name:判官 #Speaker:ML_Guilty
请便。#Layout:Left #Name:蔓露 #Speaker:ML_Happy #CE:Add_10
已登记至证物匣。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    ->c3_2
    
==c3_2 ==
*你可知道月铃当日有无异样？#Layout:Right #Name:判官 #Speaker:ML_Happy
我也正想问大人呢，月铃她既是我的师妹、也是我的学生，如果她遭遇不测，我、我会……非常痛苦，非常……愧疚自责的。#Layout:Left #Name:蔓露 #Speaker:ML_Guilty
    ->c3_3

==c3_3 ==
*有什么嫌疑人吗？#Layout:Right #Name:判官 #Speaker:ML_Guilty
哎……一定是何任舒，除了她不可能再有其他人了。画报上不都说，“要讲动机，讲证据。”她的未婚夫和月铃频传绯闻，而且此事并非空穴来风，宋先生待月铃的确柔情蜜意、令一众小歌女们羡慕不已。#Layout:Left #Name:蔓露 #Speaker:ML_Happy

证据上，她当日必定心意已决、早有准备，竟直接拿着枪来找月铃。我中弹后……想、想保护月铃免受枪击，而且……我也有好多话想和月铃说，所以用最后的力气转身抱住了她，但很快没了意识。之后何任舒有没有再开枪，或者去了哪里，我就一概不知了…… #Layout:Left #Name:蔓露 #Speaker:ML_Guilty
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:ML_Guilty
        ~ identity = true
        -> StartTalk
        
*月铃和谁有矛盾吗？#Layout:Right #Name:判官 #Speaker:ML_Guilty
当天订婚宴的主角之一，何任舒。画报上不都说，“要讲动机，讲证据。”她的未婚夫和月铃频传绯闻，而且此事并非空穴来风，宋先生待月铃的确柔情蜜意、令一众小歌女们羡慕不已。#Layout:Left #Name:蔓露 #Speaker:ML_Happy

证据上，她当日必定心意已决、早有准备，竟直接拿着枪来找月铃。我中弹后……想、想保护月铃免受枪击，而且……我也有、有好多话想和月铃说，所以用最后的力气转身抱住了她，但很快没了意识。之后何任舒有没有再开枪，或者去了哪里，我就一概不知了…… #Layout:Left #Name:蔓露 #Speaker:ML_Guilty
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:ML_Guilty
        ~ identity = true
        -> StartTalk