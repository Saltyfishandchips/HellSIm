VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #SpecialSpeaker:BWC
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #SpecialSpeaker:BWC

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。。 #Layout:Right #Name:判官 #SpecialSpeaker:BWC
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===白无常今日的事由===</color>#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    你来干嘛啊？#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    来给老大送拓片啊！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC #CE:Add_12 #CE:Text_description_送拓印证物
    老大，快帮我看看这鸟在谁身上？…等等，别直接告诉我，我猜猜！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
    <align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:BWC
        ~ reason = true
        -> StartTalk
        
    * {deadCaues == false} [询问此人死因]
    <align="center"><color=red>===白无常当日的死因===</color>#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    你可还记得你因何而死？#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    老大，不对吧？怎么真审起我来了？#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
    为了老黑吊死的，这话我逢人就说……那家伙心也太实了！认准就办，动作又快，一般人真受不了他！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC #CE:Text_deadcause_上吊
    <align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [询问此人死前身份]
    <align="center"><color=red>===白无常死前的身份===</color>#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    你之前的身份是什么？#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    老大，你被夺舍了？#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
    我是老白谢必安呀！……你还记得要帮我找鸟吗？呜呜……等这事办完再走不迟呀，老大，呜呜…#Layout:Left #Name:白无常 #SpecialSpeaker:BWC #CE:Text_identity_无常拘鬼使
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:BWC
    ~ identity = true
    -> StartTalk
}

== StartTalk ==
    -> Prefont

