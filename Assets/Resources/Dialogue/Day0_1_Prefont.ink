VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
此为<color=red>例行询问环节</color>，判官大人需在此环节完成对<color=red>鬼魂预审表</color>的填写。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
为此判官大人需从<color=red>身份、死因、事由</color>三点对鬼魂展开询问，以便更好的了解鬼魂、梳理案件。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
好的，下面进行例行询问演练。#Layout:Right #Name:判官 #SpecialSpeaker:HWC
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #SpecialSpeaker:HWC

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，我将会提交我的路引，请判官大人审核一下路引信息。 #Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    * {reason == false} [询问此鬼事由]
    <align="center"><color=red>===黑无常当日的事由===</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    你在干什么？#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    现在在帮判官大人进行<color=red>工作流程引导。</color> #Layout:Left #Name:黑无常 #SpecialSpeaker:HWC #CE:Text_description_工作流程引导
    ->c1_1
    
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===黑无常当日的死因===</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    你是怎么死的？#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    <color=red>淹死的</color>。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC #CE:Text_deadcause_淹死
    <align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===黑无常死前的身份===</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    你的身份是？#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    我担任酆都地府阴<color=red>无常拘鬼史</color>一职，简称黑无常。阳间名为范无咎。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC #CE:Text_identity_无常拘鬼史
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    ~ identity = true
    -> StartTalk
}

== StartTalk ==
    -> Prefont

== c1_1 ==
*[你死的那天呢？]
哦。那天在桥上等老白去拿伞，结果水涨上来了。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
判官大人，给，这是老白写的<color=red>忏悔书</color>。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
忏悔书已登记为该案新证物。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC #CE:Add_2
->c1_2

==c1_2 ==
*[证物数量会增加吗？]
是。除了初始证物，鬼魂在问询阶段<color=red>可能会提供新的案件证物</color>。届时我会协助判官大人将其登记为案件新证物。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
        ~ reason = true
        -> StartTalk
