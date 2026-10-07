VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
判官大人！草民来此必<color=red>状告三件事！</color> #Layout:Left #Name:李捷 #Speaker:LJ_Anger

// <color=red>一为！</color>狗官薛怀逸丧尽天良，掳掠无辜村民，只为以活人血肉种植那骇人红花，炼制丹药！#Layout:Left #Name:李捷 #Speaker:LJ_Anger


// <color=red>二为！</color>其护卫关三柱狼狈为奸，为掩盖这些腌臜事，杀我灭口！#Layout:Left #Name:李捷 #Speaker:LJ_Anger


// <color=red>三为！！</color>我李捷为鸡鸣狗盗之辈，前去偷盗丹药，但鼠目寸光未辨明此丹真面目，毒害乡亲至此！#Layout:Left #Name:李捷 #Speaker:LJ_Anger


// <color=red>请大人辨是非，判忠奸！</color>#Layout:Left #Name:李捷 #Speaker:LJ_Anger

了解了，下面进行预审调查。#Layout:Right #Name:判官 #Speaker:LJ_Normal #Anim:3,3,4,Judge
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:LJ_Normal
是！#Layout:Left #Name:李捷 #Speaker:LJ_Normal
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:LJ_Normal
    -> END
- else:
    (询问哪一点呢？)#Layout:Right #Name:判官 #Speaker:LJ_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===李捷当日的事由===</color>#Layout:Right #Name:判官 #Speaker:LJ_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:LJ_Normal
    
那晚，我又潜进<color=red>官府探查失踪村民的下落</color>。平时我偷药的<color=red>药房和旁边的花房</color>都上着锁，着实可疑。#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
    我先探查了药房，但门锁非常简单，之前看来也不像能藏人。#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
    反倒是<color=red>花房</color>，我从未进去过，且<color=red>门锁异常繁复</color>，花了半刻才打开。花房里面……里面…… #Layout:Left #CE:Text_description_去官府花房探查 #Name:李捷 #Speaker:LJ_Sad
    ->c9_1

    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===李捷当日的死因===</color>#Layout:Right #Name:判官 #Speaker:LJ_Normal
    你如何被关三柱杀死的？ #Layout:Right #Name:判官 #Speaker:LJ_Normal
    我刚打开<color=red>花房门</color>，还没进去，关三柱叫嚣着腿断了还不老实，还敢来官府偷东西，气势汹汹地就要冲过来抓我。#Layout:Left #Name:李捷 #Speaker:LJ_Anger

    我闪身躲进花房后，看见了那骇人的一幕。#Layout:Left #CE:Text_deadcause_被利器穿透 #Name:李捷 #Speaker:LJ_Sad

    ->c8_1
    
    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===李捷死前的身份===</color>#Layout:Right #Name:判官 #Speaker:LJ_Normal
    你之前的身份是什么？ #Layout:Right #Name:判官 #Speaker:LJ_Normal
    <color=red>草民李捷，只是个无名小贼。</color>我从小无父无母，和<color=red>小妹李小玫</color>相依为命，<color=red>靠村里人接济长大。</color>#Layout:Left #Name:李捷 #Speaker:LJ_Sad

    两个月前，<color=red>肉铺的梁伯</color>病得不行，<color=red>崔郎中</color>也没办法。我心里急，就<color=red>偷偷溜进官府</color>找药。#Layout:Left #CE:Text_identity_盗贼 #Name:李捷 #Speaker:LJ_Sad
    -> c7_1
}

== StartTalk ==
    -> Prefont


=== c7_1 ===
* [你为何知道官府有药？]

<color=red>小妹在官府做侍女</color>，她无意中提起薛怀逸那狗官找洋人炼成了什么<color=red>宝贝丹药</color>，我便半夜翻进去找药。 #Layout:Left #Name:李捷 #Speaker:LJ_Normal

现在想想，真希望当时没偷到那<color=red>忘忧丹</color>！就不会有<color=red>后续这些祸事</color>！#Layout:Left #Name:李捷 #Speaker:LJ_Anger
    ->c7_2

=== c7_2 ===
*[什么祸事？]
哎！<color=red>梁伯</color>吃了丹药，病奇迹的好了，可几日后<color=red>他妻子廖姨</color>却又突然病重，精神恍惚浑身剧痛，好像被<color=red>抽干了阳气</color>，梁伯又来求我再去拿药救她。#Layout:Left #Name:李捷 #Speaker:LJ_Sad
    ->c7_3
    
=== c7_3 ===
*[你于是又去了一次官府？]
是！廖姨吃了药，勉强保住命，可类似的<color=red>怪病</color>开始在村里蔓延。#Layout:Left #Name:李捷 #Speaker:LJ_Sad

我最初以为只是时疫，<color=red>崔郎中也说那丹药对症</color>，我偷药的次数便越来越多。村人称我<color=red>侠盗</color>，我也自以为<color=red>在做正义之事</color>。#Layout:Left #Name:李捷 #Speaker:LJ_Sad
    ->c7_4
    
=== c7_4 ===
*[吃了丹药病症有好转吗？]
一开始是有的，看着确实好了一些……但<color=red>只是回光返照</color>，过了一个多月就又复发了，甚至更严重了。#Layout:Left #Name:李捷 #Speaker:LJ_Sad

崔郎中说需要<color=red>更多丹药继续治疗</color>，可丹药没等来，村民们<color=red>却一个个失踪了。</color>#Layout:Left #Name:李捷 #Speaker:LJ_Sad
    ->c7_5

=== c7_5 ===
*[你怀疑他们的失踪另有隐情？]
判官大人真是敏锐！起初我以为他们是自觉无望，不愿拖累家人或者传染给他人，悄悄离开。#Layout:Left #Name:李捷 #Speaker:LJ_Sad

可失踪的人越来越多，我就觉得不对劲。夜里蹲守几天，便看到<color=red>关三柱在暗中把他们运进官府。</color>#Layout:Left #Name:李捷 #Speaker:LJ_Anger
    ->c7_6
    
=== c7_6 ===
*[然后呢？你也进了官府？]
是的！我心急之下跟了进去，结果<color=red>刚落地就被关三柱抓住</color>。我以为完了，没想到薛怀逸居然让他把我给放了。我当时居然还以为他是个好官！呸！#Layout:Left #Name:李捷 #Speaker:LJ_Anger

可那走狗关三柱还是把我腿打断了，<color=red>我被迫在家养了好几日。</color>#Layout:Left #Name:李捷 #Speaker:LJ_Anger
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:LJ_Anger
    ~ identity = true
    -> StartTalk
    
=== c8_1 ===
*[花房中有什么？] 
 ->c8_2

=== c8_2 ===
小小的花房地里<color=red>密密麻麻开满了血红色的花</color>，仔细看<color=red>那些花全是种在人身</color>上的！呕！！！#Layout:Left #Name:李捷 #Speaker:LJ_Sad

一回想我就忍不住作呕！他们这些人面兽心的畜生，竟做出如此丧尽天良之事！我看关三柱也跟进来了，便开始破口大骂<color=red>薛怀逸那个狗官。</color>#Layout:Left #Name:李捷 #Speaker:LJ_Anger

*然后他就杀了你？#Layout:Right #Name:判官 #Speaker:LJ_Anger
        ->c8_3

=== c8_3 ===
 这个走狗先是怔在原地，听见我骂他主人，<color=red>一怒之下拔出刀</color>，嘴上喊着<color=red>“你看见这些就得死！”</color>，便颤巍巍地砍过来。#Layout:Left #Name:李捷 #Speaker:LJ_Anger
 
我在花房里拼命躲，<color=red>担心他砍到乡亲们</color>，但花房太小了最后还是<color=red>不慎被人抓……被关三柱从后面捅到了心脉</color>。#Layout:Left #Name:李捷 #Speaker:LJ_Anger
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:LJ_Anger
~ deadCaues = true
-> StartTalk


=== c9_1 ===
*[你愿说说花房里的情况吗？]

…………好…………梁伯……廖姨…崔叔……那些失踪的村民都在那里！#Layout:Left #Name:李捷 #Speaker:LJ_Anger

他们都被半埋在……呕！！#Layout:Left #Name:李捷 #Speaker:LJ_Anger

埋在土里，他们<color=red>身上开满了血红色的花</color>，整个房间都是花香混着<color=red>血肉的腥味</color>！呕！！呕！！！#Layout:Left #Name:李捷 #Speaker:LJ_Anger

对不起，我真的不想再去想了。#Layout:Left #Name:李捷 #Speaker:LJ_Sad
    ->c9_2

=== c9_2 ===
*[好的，你平复一下。]

谢谢大人……我真是<color=red>罪孽深重</color>啊，可能这就是<color=red>报应</color>。#Layout:Left #Name:李捷 #Speaker:LJ_Sad

现在想来，那些<color=red>病根本不是丹药治好</color>的，反而是那假药导致的！#Layout:Left #Name:李捷 #Speaker:LJ_Anger
    ->c9_3

=== c9_3 ===
*[你是说你偷到的是假药？]
唉！我真是后悔！小妹之前告诉我，狗官在书房<color=red>匾额后面还藏了一瓶忘忧丹</color>，我没多想，还笑话那狗官怕我偷药，藏在这么犄角旮旯的地方。#Layout:Left #Name:李捷 #Speaker:LJ_Sad

后来我忙着查村民失踪的事，竟把这茬忘了，但那瓶应该才是他自己留着用的真药吧。#Layout:Left #Name:李捷 #Speaker:LJ_Anger

薛怀逸那个畜生肯定早就知道我在偷药，故意把假药放在外面，让我偷回去给村民吃，让他们染病，然后再抓这些病人去……#Layout:Left #Name:李捷 #Speaker:LJ_Anger

可是他种那些花、炼那些丹药，究竟是为了什么呢？#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:LJ_Suprise
     ~ reason = true
    -> StartTalk