VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:SZN_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:SZN_Normal
鄙人知晓。#Layout:Right #Name:判官 #Speaker:SZN_Normal
->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:SZN_Normal
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #Speaker:SZN_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===宋知年当日的事由===</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:SZN_Normal
    当日毕竟是鄙人与何家小姐的<color=red>订婚宴</color>此事对我而言意义非凡，实乃人生的重要转折点。从今往后，生活和工作恐都会发生巨变，再难回到从前……#Layout:Left #Name:宋知年 #Speaker:SZN_Narcissism  #CE:Text_description_订婚宴主角
    
    咳咳……总之，鄙人心中难免有万千思绪，因此晨起便饮了些小酒，一整天都感觉有些飘然。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
    
    当日月铃演唱的《春深情重》格外<color=red>情意缠绵</color>，犹如仙乐，让鄙人不禁<color=red>再添了几杯</color>。演出结束后，我不想被道喜的人群围堵，便寻了个僻静之处想要冷静一下。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
    
     谁知醉意骤然袭来……加之那何家的<color=red>露台栏杆又极为低矮</color>，鄙人身材高大，难免一时失去重心，竟然……#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
    
    您看，鄙人实在莫名其妙地枉死一场，稍后恐要麻烦您送我回去。给阁下增加工作，真是抱歉，请您海涵。#Layout:Left #Name:宋知年 #Speaker:SZN_Narcissism
    <align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:SZN_Narcissism
        ~ reason = true
        -> StartTalk
        
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===宋知年当日的死因===</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:SZN_Normal
    
    鄙人当时靠在宴会厅外的露台栏杆上醒酒。正当我恍惚时，似乎不慎绊了一下，竟然跌了下去。模糊间就看见绿茵茵的草地向鄙人飞来，随即便是剧烈的嗡鸣与疼痛。#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
    
    ……鄙人断不至于如此愚蠢，必有他人加害于我。那露台较为偏僻，下边正是花园，视线所及皆是丰茂的植被，实在是个仇杀的绝佳场所。#Layout:Left #Name:宋知年 #Speaker:SZN_Anger 
    
    然而，<color=red>露台与喧闹的酒会仅一墙之隔</color>，想要动手谈何容易？难道有如此巧合的时机？#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
    
    更何况，鄙人一向温和谨慎，平日待人宽厚，就算有仇家……可当日我是盛宴的男主角，谁敢在众目睽睽之下动手？就算精心谋划也难以得手，除非是临时起意？#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
    
    如此分析，阁下也觉得此事古怪吧。不过，鄙人回去后定会尽快查明真相，毋庸阁下操心。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal #CE:Text_deadcause_坠楼
<align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===宋知年死前的身份===</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:SZN_Normal
    
    鄙人宋知年，<color=red>刚升至一等军正。</color>#Layout:Left #Name:宋知年 #Speaker:SZN_Normal #CE:Text_identity_国正党少将
    ->c3_1
}

== StartTalk ==
    -> Prefont

== c3_1 ==
*[了解，请展示胎记。]
了解，请配合地府工作，展示胎记，黑无常登记。#Layout:Right #Name:判官 #Speaker:SZN_Normal

这是出于何种考虑？#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
->c3_2

==c3_2==
*[地府公务，烦请您配合。]
地府公务，需要排查歌罗频伽鸟的下落，烦请您配合。#Layout:Right #Name:判官 #Speaker:SZN_Doubt
…行，不过有时规则也应随人变通。当然，阁下睿智，此事不需鄙人多嘴。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal #CE:Add_7

已登记至证物匣。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

(此鬼便是刘平方才提到的宋知年，问一下月铃的事吧。)#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
->c3_3

==c3_3==
*[你可知道月铃当日有无异样？]

月铃？阁下与月铃相熟吗？#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt
->c3_4

==c3_4==
* [是的。]

月铃聪慧认真、歌喉动人，鄙人与她亦是关系融洽，想必阁下与她也颇有投缘。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal

……哎……这事…怎么说呢……好吧，阁下若是在寻月铃，我倒可能有一点线索。#Layout:Left #Name:宋知年 #Speaker:SZN_Doubt

鄙人<color=red>未婚妻何任舒</color>看似纯良，实则天性善妒、行事狠毒，加上家世显赫，连我也难以应付。如果月铃有所不测，十之八九是她下的狠手……#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt

说来令人叹息，不过也就是女人间<color=red>为情所困</color>的明争暗斗罢了。#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt

以上秘辛，仅因阁下与月铃相熟，望有所帮助，鄙人才敢宣之于口，还请阁下保密。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
    ~ identity = true
    -> StartTalk
    
* [并没有。]

果然，像月铃这样的卖唱歌女，阁下何等身份断不会与她有所牵扯。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal

她虽在聚光灯下风光无限，表面单纯，然背后却难免藏有复杂心思。常言道，“婊子无情，戏子无义”，她对鄙人虽有爱慕，恐怕也不乏攀附权贵的心思。#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt

至于月铃的下落，不过小事，鄙人<color=red>未婚妻何任舒</color>天真单纯、涉世未深，碰上月铃这等风尘女子，大概就有些误会龃龉，因此可能一气之下……
#Layout:Left #Name:宋知年 #Speaker:SZN_Contempt

不过也就是女人间<color=red>为情所困</color>的明争暗斗罢了，掀不起什么风浪，对阁下来说就更是小事了。#Layout:Left #Name:宋知年 #Speaker:SZN_Normal
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #Speaker:SZN_Normal
    ~ identity = true
    -> StartTalk

