VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:HRS_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:HRS_Normal
啧，快点问！#Layout:Right #Name:判官 #Speaker:HRS_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:HRS_Normal
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #Speaker:HRS_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===何任舒当日的事由===</color>#Layout:Right #Name:判官 #Speaker:HRS_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:HRS_Normal
    
    哼，当然是在参加我自己的订婚宴啦。虽然阿爸说这是为我好，但本小姐清楚的很，这不过是场<color=red>政治联姻</color>罢了。算了，阿爸是想拉拢一些新鲜血液，巩固他的派系。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient #CE:Text_description_订婚宴主角
    
    不过，宋知年就是个<color=red>乡巴佬</color>，凭着阿谀奉承才勉强爬上来。婚后我们各玩各的，根本不值得本小姐在意。等他没了利用价值，本小姐第一时间把他踹了！#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
    早就看他不顺眼了，尤其是这次居然请了我最讨厌的<color=red>星洋歌舞团</color>来订婚宴，真是没一点眼力见。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
    ->c1_1
        
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===何任舒当日的死因===</color>#Layout:Right #Name:判官 #Speaker:HRS_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:HRS_Normal
    
    我当时在一个窄小的房间里，碰见了<color=red>蔓露和月铃</color>这两个贱歌女，本想着和她们联络一下感情，结果偏偏她俩正在那里怄气呢。#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
        ->c2_1

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===何任舒死前的身份===</color>#Layout:Right #Name:判官 #Speaker:HRS_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:HRS_Normal
    
    本小姐叫何任舒，我阿爸是<color=red>军政部长何治</color>。#Layout:Left #Name:何任舒 #Speaker:HRS_Normal #CE:Text_identity_国正党军政部长次女
        ->c3_1

}

== StartTalk ==
    -> Prefont

==c1_1==
    *[你为什么讨厌星洋歌舞团？]

    没有什么好隐瞒的……我一向看不惯这些歌女，没什么特别的原因，就是她们靠<color=red>唱歌谋生的样子实在太难看了</color>。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
    
    我尤其讨厌那些跳得高的蛐蛐儿，总能跳到本小姐面前唧啾乱叫。别的歌舞团只要我稍微施点手段，她们很快就作鸟兽散了。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
    可星洋歌舞团倒好……顶着我<color=red>数次精心打压</color>，却还是慢慢成长起来。每次看见他们的人，尤其是那个月铃和蔓露，就像指甲边有短短的毛刺一样，让人烦躁。#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
    
    不过，那天我想到一个绝妙的宣泄手段，呵呵！本小姐真是聪明绝顶！#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
    ->c1_2
    
==c1_2==    
     *[什么手段？]
    
    那日订婚宴，我看见蔓露鬼鬼祟祟地站在舞台侧面的阴影里，便心中一动。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
    
    之前她大红大紫时我就很不爽了，明明只是个追名逐利的卑贱歌女，阿爸却总请她来家里唱歌，有时竟还能和我一桌吃饭了，更让我讨厌的是阿爸看她的那个眼神。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
    之前我碍于父亲的兴趣不能动她，但她现在过气了，还得多亏了她的徒弟月铃，呵呵！我暂时动不了当红的月铃，但<color=red>过气</color>的蔓露还不是随我揉捏。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
    于是我当即回房取了家里的<color=red>手枪</color>，准备好好教训一下这贱歌女。想象一下，用枪打断她的腿，那惨叫声该有多么悦耳。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
    
    而且阿爸说过，就算杀了人，他也会帮我妥善处理的。我虽是家中次女，亦有家人无尽的宠爱，哪像那些薄命歌女！#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
    
    我在大厅远远的<color=red>跟上了那个歌女</color>，但好像本小姐的行踪被他们<color=red>歌舞团的二当家</color>看见了。不过他似是被应酬拖住了脚步，没能跟上我们。#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
    
    之后蔓露走过一个黑暗的长过道，拐进了一个小房间里。我跟进去，发现月铃也在里面，心想正好可以一并吓吓她。没想到，蔓露那个蠢女人居然想抢我的枪，所以我就……砰！#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Smile
        ~ reason = true
        -> StartTalk
== c3_1 ==
*[了解，请展示胎记。]
了解，请配合地府工作，展示胎记，黑无常登记。#Layout:Right #Name:判官 #Speaker:HRS_Normal
不要。#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
    ->c3_2
    
==c3_2==
*[地府公务，烦请配合。]
啧，真是麻烦。那你动作快点，别忘了你欠着我这个人情，弄完赶紧送本小姐回去！#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient #CE:Add_8
已登记至证物匣。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

（此鬼便是前面两个鬼提到的何任舒，问一她下月铃的事吧。）#Layout:Right #Name:判官 #Speaker:HRS_Impatient
    ->c3_3_1
    
*[要我把你父亲抓来给你撑腰吗？]
……我刚刚是一时嘴快，你别计较，这不管阿爸的事。#Layout:Left #Name:何任舒 #Speaker:HRS_Guilty #CE:Add_8
已登记至证物匣。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

（此鬼便是前面两个鬼提到的何任舒，问一她下月铃的事吧。）#Layout:Right #Name:判官 #Speaker:HRS_Guilty
    ->c3_3_2
    
==c3_3_1 ==
*[你可知道月铃当日有无异样？]
怎么？那女人倒霉了吗？#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
    ->c3_4

==c3_3_2==
*[你可知道月铃当日有无异样？]
怎么？那女人倒霉了吗？#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
    ->c3_4
    
== c3_4 ==
*[此事尚未查明。]
我看她凶多吉少。问到本小姐算你走运，当时我碰巧在现场。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    ->c3_5_1
    
*[或许如此。]
一点都不奇怪，我早看出她俩之间有些新仇旧恨。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
    ->c3_5_2
    
== c3_5_1 ==
*[你杀了她？]
呵呵，你不会是觉得，本小姐因为吃味她和宋知年的那点破事所以杀了她吧？好笑！这样无聊的理由哪里值得脏了本小姐的手。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile

若说是因为星洋歌舞团的缘故杀她，都还说得过去……罢了！想到这个歌舞团就烦！现在本小姐只是告诉你现场情况，就当施舍了。#Layout:Left #Name:何任舒 #Speaker:HRS_Normal

那时我们三人在小房间里，月铃收到的花束香得令人发晕，我闻着隐隐觉得不太舒服，想是<color=red>哮喘的旧疾</color>又要犯了。不过没办法，谁叫本小姐天生娇贵呢。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

所以本小姐快速办完事就转身走了出去，<color=red>留下她和蔓露两人在屋内。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

这时，我忽然听见月铃那女人尖声喊了一句“不要！”，声音里透着恐惧，刺耳得让人心烦。接着，她的声音戛然而止，好像被什么给掐住了似的，同时还传来<color=red>重重倒地的声音。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
    
我正疑惑着回头呢，就被追上来的蔓露杀了。那个过气的老歌女，竟敢对本小姐下如此狠手！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
*[你可看见现场情况？]
我是没有亲眼看见，但也差不离了。#Layout:Left #Name:何任舒 #Speaker:HRS_Normal

那时我们三人在小房间里，月铃收到的花束香得令人发晕，我闻着隐隐觉得不太舒服，想是<color=red>哮喘的旧疾</color>又要犯了。不过没办法，谁叫本小姐天生娇贵呢。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

所以本小姐快速办完事就转身走了出去，<color=red>留下她和蔓露两人在屋内。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

这时，我忽然听见月铃那女人尖声喊了一句“不要！”，声音里透着恐惧，刺耳得让人心烦。接着，她的声音戛然而止，好像被什么给掐住了似的，同时还传来<color=red>重重倒地的声音。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
我正疑惑着回头呢，就被追上来的蔓露杀了。那个过气的老歌女，竟敢对本小姐下如此狠手！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
== c3_5_2 ==
*[何以见得？]
呵呵，但凡对星洋歌舞团有点<color=red>细致的观察</color>都会明白吧。一个正像盛放的鲜花般耀眼夺目，一个却像珠宝盒角落的陈旧货色渐渐被人遗忘，何况<color=red>前者是由后者教导</color>出来的，两人定是矛盾重重。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 
    
那时我们三人在小房间里，月铃收到的花束香得令人发晕，我闻着隐隐觉得不太舒服，想是<color=red>哮喘的旧疾</color>又要犯了。不过没办法，谁叫本小姐天生娇贵呢。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

所以本小姐快速办完事就转身走了出去，<color=red>留下她和蔓露两人在屋内。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

这时，我忽然听见月铃那女人尖声喊了一句“不要！”，声音里透着恐惧，刺耳得让人心烦。接着，她的声音戛然而止，好像被什么给掐住了似的，同时还传来<color=red>重重倒地的声音。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
我正疑惑着回头呢，就被追上来的蔓露杀了。那个过气的老歌女，竟敢对本小姐下如此狠手！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
*[月铃和谁有矛盾？]
当然是蔓露啊！你想想，月铃师承蔓露，但很快就<color=red>压过了蔓露的风头</color>，成为星洋歌舞团力捧的明星。而蔓露渐渐显露颓势，个中滋味，谁能心平气和？#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

那时我们三人在小房间里，月铃收到的花束香得令人发晕，我闻着隐隐觉得不太舒服，想是<color=red>哮喘的旧疾</color>又要犯了。不过没办法，谁叫本小姐天生娇贵呢。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

所以本小姐快速办完事就转身走了出去，<color=red>留下她和蔓露两人在屋内。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient 

这时，我忽然听见月铃那女人尖声喊了一句“不要！”，声音里透着恐惧，刺耳得让人心烦。接着，她的声音戛然而止，好像被什么给掐住了似的，同时还传来<color=red>重重倒地的声音。</color>#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
    
我正疑惑着回头呢，就被追上来的蔓露杀了。那个过气的老歌女，竟敢对本小姐下如此狠手！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Anger
    ~ identity = true
    -> StartTalk
    
==c2_1==
*[联络感情？]
呵呵，也不过是想教训一下她们罢了。星洋歌舞团既然要忤逆我，那就该付出相应的代价！#Layout:Left #Name:何任舒 #Speaker:HRS_Smile

我一进门，正好看到她们在内讧。蔓露背对着我，抓着月铃的肩，身体因为<color=red>愤怒而颤抖</color>；月铃则皱着眉，急得<color=red>满脸红晕</color>，见我进来后立刻露出恐惧的神情。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile

说是大家联络感情，结果我说完后她俩并不开心，蔓露还试图来夺本小姐的枪。呵呵…我只能先把她处理掉咯。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile

可那时屋里刺鼻的花香让人很不舒服，我心急想走，根本不知道击中了蔓露哪里……#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient

早知道她还有力气扑出来害我，我就该多给她几枪。真是好人不长命，贱人活千年！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger

我出门之后，突然听到一声异响，回头时只感到后脑一阵剧痛，眼前满是飘落的花瓣，顿时<color=red>哮喘发作</color>，泪水模糊了我的视线。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient

随即，我被压在了地上，喉咙和后脑传来阵阵钻心的疼痛，感觉意识逐渐模糊，仿佛整个世界都在我的耳边渐渐远去。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient

蔓露这女人以前和我的圈子接触较多，<color=red>想必早就得知了我的病症</color>，被我击中后，她还能想着用我这点弱点来加害于我，真让人不得不高看她一眼！只是她让我如此狼狈痛苦，形象尽失，待我回去后，一定要让她生不如死！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger #CE:Text_deadcause_窒息
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Anger
    ~ deadCaues = true
    -> StartTalk
    
*[怄气？]

是啊，两人在那瞪眼呢。蔓露背对着我，抓着月铃的肩，身体因为<color=red>愤怒而颤抖</color>；月铃则皱着眉，急得<color=red>满脸红晕</color>，见我进来后立刻露出恐惧的神情。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile

说是大家联络感情，结果我说完后她俩并不开心，蔓露还试图来夺本小姐的枪。呵呵…我只能先把她处理掉咯。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile

可那时屋里刺鼻的花香让人很不舒服，我心急想走，根本不知道击中了蔓露哪里……#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient

早知道她还有力气扑出来害我，我就该多给她几枪。真是好人不长命，贱人活千年！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger

我出门之后，突然听到一声异响，回头时只感到后脑一阵剧痛，眼前满是飘落的花瓣，顿时<color=red>哮喘发作</color>，泪水模糊了我的视线。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient

随即，我被压在了地上，喉咙和后脑传来阵阵钻心的疼痛，感觉意识逐渐模糊，仿佛整个世界都在我的耳边渐渐远去。#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient

蔓露这女人以前和我的圈子接触较多，<color=red>想必早就得知了我的病症</color>，被我击中后，她还能想着用我这点弱点来加害于我，真让人不得不高看她一眼！只是她让我如此狼狈痛苦，形象尽失，待我回去后，一定要让她生不如死！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:HRS_Anger
    ~ deadCaues = true
    -> StartTalk