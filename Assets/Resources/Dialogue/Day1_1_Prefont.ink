VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:XFG_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:XFG_Normal
下官知晓。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
->Prefont

->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
    询问结束，该去审核该鬼的路引信息了。 #Layout:Right #Name:判官 #Speaker:XFG_Normal
    -> END
- else:
    （询问哪一点呢？）#Layout:Right #Name:判官 #Speaker:XFG_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===薛怀逸当日的事由===</color>#Layout:Right #Name:判官 #Speaker:XFG_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:XFG_Normal
    
    当夜下官<color=red>在书房</color>潜心钻研草药与丹方典籍。#Layout:Left #CE:Text_description_整夜在书房中 #Name:薛怀逸 #Speaker:XFG_Normal
    近期本县西区村子<color=red>爆发了一种凶猛的病症</color>，薛某心忧百姓，昼夜难安，只能将自己困在医理之中，希望能早日找到解救之法。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
        ->c9_1
        
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===薛怀逸当日的死因===</color>#Layout:Right #Name:判官 #Speaker:XFG_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:XFG_Normal
    
    那晚官府内宅西边的库房区<color=red>传来一声巨响</color>，接着便是火光冲天。薛某起身察看的功夫，书房房梁竟也燃起熊熊大火。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger

    虽门外尚有逃生之径，但薛某不知怎的，全身竟无一丝力气，眼看着屋内火焰逐渐逼近，却只是坐以待毙…… #Layout:Left #CE:Text_deadcause_钝器伤害 #Name:薛怀逸 #Speaker:XFG_Sad
    ->c8_1


    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===薛怀逸死前的身份===</color>#Layout:Right #Name:判官 #Speaker:XFG_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:XFG_Normal
    
    <color=red>下官薛怀逸，乃此地知县</color>，任职已逾数年。薛某自问为官清廉，一心为民，多年来埋首案牍，克民间时疫，解百姓病痛，只求无愧于心。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal

    薛某可否凭这一腔热忱在地府谋个一官半职，不为别的只为了结生前未尽之事。#Layout:Left #CE:Text_identity_知县 #Name:薛怀逸 #Speaker:XFG_Normal
    
    不急,本官还有未问之事。#Layout:Right #Name:判官 #Speaker:XFG_Normal
    <align="center"><color=red>---身份询问结束---</color>#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
        ~ identity = true
        -> StartTalk
}

== StartTalk ==
    -> Prefont


=== c8_1 ===
    *[为何没有逃离书房？]
    ->c8_2

=== c8_2 ===
说来惭愧，当时火势迅猛，屋内红光刺目、烟雾弥漫，薛某心中甚是惧怕。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad

但薛某平日久居书房，极少出门，因此犹疑难安，举棋不定：与其冒险出门，不如守在书房内，待贴身侍卫将火势扑灭，尚有一线生机…… #Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
 
*[你的贴身侍卫是？]
        ->c8_3

=== c8_3 ===
 <color=red>薛某的贴身侍卫，唤作关三柱</color>，高大勇猛，尽忠职守，平日薛某研究药理时，他都会驻守门前。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
 
 只不过当日他<color=red>迟迟未应声</color>，薛某以名誉担保，三柱绝不是那等苟且偷生之人，只怕是事有蹊跷。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Why
        ->c8_4
        
=== c8_4 ===
*[所以你是烧死的吗？]

……应该是的……但薛某当时眼前一黑，记不清了…… #Layout:Left #Name:薛怀逸 #Speaker:XFG_Why
    ->c8_5
    
=== c8_5 ===
*[黑无常！查询一下！]
薛怀逸你先回避一下！黑无常！你且查询一下此鬼死因。#Layout:Right #Name:判官 #Speaker:XFG_Doubt

是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
判官大人！三生石碎片显示此鬼<color=red>被钝物伤害致死。</color>#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
奇怪？他身处书房怎遭钝物伤害，难道是房梁烧断了？记录一下吧。#Layout:Right #Name:判官 #Speaker:XFG_Normal
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:XFG_Normal
~ deadCaues = true
-> StartTalk


=== c9_1 ===
 *[何种病症？]

哦？大人也关心此事？此病症来势甚急，患者多为体弱之人，初时仅表现为倦怠乏力、神志恍惚，随后便是气短心悸加之浑身剧痛，重症者面色惨白如纸，终油尽灯枯。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Why

近日多亏<color=red>布兄的草药</color>，药方才初见成效，但都付之一炬了，哎……生机尽失。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad

    ->c9_2

=== c9_2 ===
*[布兄是何人？]

<color=red>怀特-布兰特</color>，半年前来到本县的<color=red>西方拂林商人</color>。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
虽为商贾之身，但与其相交后发现，他在炼丹方面颇有造诣，并且熟知异域草药的效用。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
 
这种病症在本土医典中无从查考，薛某遂寄望于外邦之术，终寻得这对症草药。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
    ->c9_3

=== c9_3 ===
*[你说的对症草药是这<color=red>忘川花</color>吗？] 

！！！正……正是！判官大人正是见多识广啊！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal

<color=red>两个月前布兄</color>帮我寻到此花，<color=red>崔郎中</color>也称其能镇定止痛，且平喘补气。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal

薛某和崔郎中便试着以其入方，并让布兄炼成丹药，名为<color=red>忘忧丹</color>，愿病患忘却忧虑，重获安康。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
    ->c9_4
    
=== c9_4 ===
*[崔郎中又是？]

是下官疏忽了！<color=red>崔郎中</color>可是远近闻名的医学才女。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal

下官体弱多病，常年仰赖她的妙手，干脆便<color=red>请她在府内客房长住</color>。与她的医术相比，下官不过是久病成医，学到些许皮毛而已。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal

这次病症，她还亲自探访病患，真可谓医者仁心啊。忘忧丹能炼成，她功不可没。说到忘忧丹……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal

判官大人！这便是那忘忧丹！薛某死前惦念患病百姓，死死护住这药瓶。但没想到此药被薛某一并带至这了，哎……#Layout:Left #CE:Add_7 #Name:薛怀逸 #Speaker:XFG_Sad
黑无常，去将忘忧丹登记为该案新证物。#Layout:Right #Name:判官 #Speaker:XFG_Sad
是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
        ~ reason = true
        -> StartTalk