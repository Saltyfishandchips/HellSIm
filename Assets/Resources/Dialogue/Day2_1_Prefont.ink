VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
老大老大，本次案情牵扯到很久前的一起地府事件。老大你刚来不久，难免未有听闻，白爷我能提供相关前情，审理案件前不妨一听。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC

这次确有帮助。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

既是如此，便说来听听。#Layout:Right #Name:判官 #SpecialSpeaker:HWC

好嘞！咳咳……老大在阳间时可曾读过《妙法莲华经》？其中写有一种<color=red>歌罗频伽鸟</color>，又名迦陵频伽。此鸟居于极乐世界，善歌善乐器，歌声犹如仙音，万物无所及。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC

哦？那是如何与我们酆都地府扯上关系的？ #Layout:Right #Name:判官 #SpecialSpeaker:BWC

这个嘛……据悉，多年前在转生台，曾有鬼差不慎将一只歌罗频伽丢失在奈何桥，致使这种拥有天籁妙音的生灵误入人间轮回，后被封印在宿主身上，化作人间所说的<color=red>胎记。</color> #Layout:Left #Name:白无常 #SpecialSpeaker:BWC

就是你干的，我亲眼看见…… #Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

咳咳！总之，我前些天勾魂时发现，<color=red>这鸟人就混在这起诡异案件中</color>。老大，拜托了！帮我找找歌罗频伽在谁身上！如果没找到歌罗频伽，秦广王肯定会降罪于我的！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC

老大！你先审着，等会儿老黑会帮你取证的，我现在先去取<color=red>歌罗频伽拓片！</color>  #Layout:Left #Name:白无常 #SpecialSpeaker:BWC

我觉着歌罗频伽很可能和卷宗中那叫<color=red>月铃</color>的歌星有关，判官大人记得多问问此鬼情况。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

本官知晓，现在正式开始审理，刘平上前！#Layout:Right #Name:判官 #SpecialSpeaker:HWC
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:LP_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:LP_Normal
悉听尊便。#Layout:Left #Name:刘平 #Speaker:LP_Normal
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:LP_Normal
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #Speaker:LP_Normal
    
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===刘平当日的事由===</color>#Layout:Right #Name:判官 #Speaker:LP_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:LP_Normal
    
    当日是军政部长爱女<color=red>何小姐</color>与国正党新星<color=red>宋先生</color>的订婚宴，二人真可谓是郎才女貌，佳偶天成啊。刘某不才，但身负采写编辑重任，亦在邀请之列。#Layout:Left #Name:刘平 #Speaker:LP_Normal #CE:Text_description_受邀参加宴会
    
    当然，若论私心，刘某也无论如何都要出席的。订婚宴上，<color=red>月铃小姐</color>的演出可谓是重头戏。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
    
    月铃小姐是<color=red>星洋歌舞团的台柱</color>，近年来声名鹊起，收获了无数歌迷，<color=red>刘某更是其中最为忠实的一位</color>。每逢她登台，必然赶到现场捧场。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
    
    那晚，月铃小姐演唱的<color=red>《春深情重》</color>真是余音绕梁，令人陶醉。每次听到这首曲子，刘某便仿佛重回童年。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
    
    在下的母亲生前也是一名歌女，虽然她的嗓音远不及月铃小姐，但<color=red>那种深情与爱意</color>……让我久久不能忘怀。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
    
    而如今，也只有月铃小姐能将这份情感再次展现。她年纪轻轻，却能演绎出如此高深的情感，真可谓天之骄女啊。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
    ->c1_7

    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===刘平当日的死因===</color>#Layout:Right #Name:判官 #Speaker:LP_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:LP_Normal
    
    这个……刘某也无甚头绪，当日演出结束后刘某<color=red>往后台去想找月铃小姐一叙，</color>但芳踪难觅，未能如在下所愿…#Layout:Left #Name:刘平 #Speaker:LP_Sad
    
    因此，耽误半晌后刘某便调头向大厅走去，谁知行至半道突觉<color=red>五脏六腑钻心地疼</color>，倒地后听见人群传来惊呼，随后便不省人事了。#Layout:Left #Name:刘平 #Speaker:LP_Sad
    
    （看来此鬼对自己死因有关的记忆很模糊。）#Layout:Right #Name:判官 #Speaker:LP_Sad
        ->c1_5
    
    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===刘平死前的身份===</color>#Layout:Right #Name:判官 #Speaker:LP_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:LP_Normal
    
    在下<color=red>新闻企业家刘平</color>，筹办过《国新日报》等刊物。虽说时代动荡，但新闻当能为生活在这乱世中的人们带来些许秩序和希望。 #Layout:Left #Name:刘平 #Speaker:LP_Normal #CE:Text_identity_新闻业企业家
    
    作为一名有志之士，刘某深知新闻对唤醒民众、引导社会风气的作用。每一篇报道，每一次揭露，都算是在下为社会进步尽的一点绵薄之力。#Layout:Left #Name:刘平 #Speaker:LP_Normal
    
    当然，这些小成就实在算不得什么，刘某实在不敢居功自傲。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter
        ->c1_1
}

== StartTalk ==
    -> Prefont
    
    
== c1_7==
*[那你当晚一直在大厅吗？]
不尽然。演出结束后，我便前往月铃小姐的休息室等候，想趁机采访她。虽然说是采访，实际上……不过是刘某想与她聊几句罢了。#Layout:Left #Name:刘平 #Speaker:LP_Normal

可那晚，月铃小姐迟迟未至。我在休息室里来回踱步，忽然瞥见她的酒杯，杯沿上还留着她的唇印……那一点缱绻的红，小小的，圆圆的，仿佛鸽子在我心头啄下的第一滴血。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter

想到她在台上向我投来的那一抹微笑，像阳光穿透阴霾，刘某一时难以自持，便贴着那唇印，轻啜了一口……#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter

哎，实在羞人。但如今已死，刘某也无意再顾形象，才敢将此事告知判官大人。还望大人切勿让月铃……他人知晓。#Layout:Left #Name:刘平 #Speaker:LP_Frown 
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:LP_Frown
        ~ reason = true
        -> StartTalk
== c1_1 ==
*[了解，请展示胎记。]
了解，请配合地府工作，展示胎记，黑无常登记。#Layout:Right #Name:判官 #Speaker:LP_SquintLaughter

当然当然，我们面向普罗大众的工作不容易，都理解的嘛。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter #CE:Add_6

胎记已登记至证物匣。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

（此鬼生前耳目灵便，正好借此询问黑无常之前提到的月玲吧。）#Layout:Right #Name:判官 #Speaker:LP_SquintLaughter
->c1_6

== c1_6 ==
*[你可与月玲熟识？]
熟识？刘某怎敢妄言与月铃小姐熟识。她那般清雅脱俗的神女，在下这等凡夫俗子怎敢攀附？平日里也不过是从远处默默关注罢了……#Layout:Left #Name:刘平 #Speaker:LP_Frown 

不过偶尔有机会，刘某会借采访之名<color=red>和她攀谈几句</color>，虽有违新闻人的操守，但实在是难掩对她的仰慕之情。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter 

   第一次听她歌唱，刘某便如痴如醉，整个人仿佛被她的歌声牢牢抓住。从那时起，便成了她的忠实歌迷。她的歌声如天籁，伴随那旋律，世间的一切烦恼仿佛都烟消云散。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter 

而且，刘某确实觉得近日与月铃小姐的<color=red>距离拉近了许多</color>。那日她竟在舞台上向我含情一笑，刘某当时激动得简直无法自持。#Layout:Left #Name:刘平 #Speaker:LP_SquintLaughter 

->c1_2
== c1_2 ==
*[哪月铃当日可有异样？]

什么！判官大人怎这样问？月铃小姐怎么了？大人，您可别吓刘某，若是月铃小姐有丁点不妥，在下真不敢想象自己会如何伤心。#Layout:Left #Name:刘平 #Speaker:LP_Sad 

->c1_3

== c1_3 ==
*[没有，此事还尚未明晰。]

那便好！……不过刘某有一大胆猜测，若月铃小姐真出事，恐怕与<color=red>何小姐或宋先生</color>脱不了干系。判官大人务必彻查，避免隐情被掩盖。#Layout:Left #Name:刘平 #Speaker:LP_Frown 

->c1_4

==c1_4==
*[为何？]
唉……判官大人请看<color=red>这份小报</color>。月铃小姐与宋先生的绯闻前些时日闹得沸沸扬扬，当然刘某是决然不信的。月铃小姐何等的清丽脱俗、高洁端庄，怎会与他人私会？更何况是<color=red>已有婚约在身</color>的宋先生。#Layout:Left #Name:刘平 #Speaker:LP_Frown #CE:Add_5
星洋歌舞团近年来名声大噪，宋先生或许曾私下拜访过月铃小姐，但流言蜚语却被越传越离谱，实在令人愤慨。这些小报记者捕风捉影、添油加醋，玷污了我们新闻行业的声誉，刘某实在羞与他们为伍。#Layout:Left #Name:刘平 #Speaker:LP_Frown

而如今<color=red>何宋两家联姻</color>，关系甚大，若因这绯闻影响了婚约，难免会让某些人利益受损。刘某近日一直担忧，月铃小姐会成这些利益纠葛中的牺牲品。#Layout:Left #Name:刘平 #Speaker:LP_Frown

本官知晓。黑无常，去将小报登记为该案新证物。#Layout:Right #Name:判官 #Speaker:LP_Frown   
是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
<align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    ~ identity = true
    -> StartTalk
    
    
=== c1_5 ===
*[黑无常！查询一下！]
堂下请回避。黑无常！你且查询一下此鬼死因。#Layout:Right #Name:判官 #Speaker:LP_Sad

是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
判官大人，三生石碎片显示此鬼是<color=red>中毒死亡</color>。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
中毒？先记录一下吧。#Layout:Right #Name:判官 #Speaker:LP_Sad #CE:Text_deadcause_中毒
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:LP_Sad
    ~ deadCaues = true
    -> StartTalk