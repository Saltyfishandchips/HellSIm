VAR currentEvidenceList = "12"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 2
VAR questBG = false
VAR EvidenceButtonAnim = false
VAR shackCamera = 0
VAR topic1 = false
VAR topic2 = false
VAR topic3 = false
VAR BGMChange = false
->start

== start ==
~ currentNode = "None"
堂下可是吴玲玲？本官将就当日宴会与歌罗频伽之事展开质询，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:YL_Normal
是。#Layout:Left #Name:月铃 #Speaker:YL_Normal
对于杀害何任舒一事，你可供认不讳？#Layout:Right #Name:判官 #Speaker:YL_Normal
……是。我也想过了，若再来一次，自己是否还会做出同样的决定。#Layout:Left #Name:月铃 #Speaker:YL_Normal
虽然一想到自己杀了人，手指还是忍不住颤抖……但如果不杀她，我们的日子也只会越来越难过，如同“钝刀割肉”一般。#Layout:Left #Name:月铃 #Speaker:YL_Sad
->Node0


== Node0 ==
~ currentNode="Evidence"
~ node ="Node0"
~ EvidenceButtonAnim = true
当时并未多想，看见蔓露姐在面前死去，一心只想将这种痛苦、将这些年我们歌舞团受的委屈全部返还给她，于是拿起手边的东西就砸出去了。#Layout:Left #Name:月铃 #Speaker:YL_Anger
结果她的反应很剧烈，片刻间就虚弱地喘着气倒了下去……现在想来应该是过敏，或是别的什么弱症……#Layout:Left #Name:月铃 #Speaker:YL_Normal
那样的时机也不多见吧，平时我们基本不可能有机会和何小姐单独接触，只有她在背后设计暗算的时候，每次歌舞团受到攻击，甚至都不知道恶意来自何方……想要光明磊落地正面对决完全是痴想，更别说还像我当时那样处于上风了。#Layout:Left #Name:月铃 #Speaker:YL_Sad
恰巧在她艰难呼吸之时，你发现了一旁有可用的东西？#Layout:Right #Name:判官 #Speaker:YL_Sad
<color=red>（我记得有件证物可以佐证她的行为。）</color>#Layout:Right #Name:判官 #Speaker:YL_Sad
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:YL_Sad
->Node0


== Evidence0 ==
~ currentNode="None"
~ EvidenceButtonAnim = false
没错…当时我的思路异样地清晰，只想让她的呼吸就此停止，让她罪恶的生命就此结束。或许会有更好的途径去解决所有事……但月铃不是那么聪明的人，当时能想明白的，也只有杀人偿命这般简单粗暴的道理。#Layout:Left #Name:月铃 #Speaker:YL_Sad
~ enemyHealth--
……再说了，就像歌迷赠我的这花束一样，表面是无尽的爱，实际上，却能因为一些我无法理解的原因，随意就将我杀死…我真的看不清。#Layout:Left #Name:月铃 #Speaker:YL_Afraid

孰是孰非，要如何评判呢，按照当下的心意行事，至少事后不会后悔……#Layout:Left #Name:月铃 #Speaker:YL_Sad
大人，月铃认罪。#Layout:Left #Name:月铃 #Speaker:YL_Normal
你可还有挂念之事？#Layout:Right #Name:判官 #Speaker:YL_Normal
……有个不情之请，我在世间已经没什么可留恋的了，唯独……死的时候仿佛看见了晤哥的样子。他……现在可还好么？#Layout:Left #Name:月铃 #Speaker:YL_Shy
确认自己的心意后，还未能回应过他……如今阴阳两隔，他若知晓了我的心意恐怕只会徒增烦恼……#Layout:Left #Name:月铃 #Speaker:YL_Normal
就这样再无交集吧，多年来他我费尽心力护我周全，最后总算换我也为他考虑一次。#Layout:Left #Name:月铃 #Speaker:YL_Happy
黑白无常，带月铃去望乡台。#Layout:Right #Name:判官 #Speaker:YL_Happy
遵命，请随我来。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
干活干活！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
~ questBG = true
你们人间入夜后，这街道上就没有行人了吗？连车辆马匹都这般少，远不及我们鬼界堡繁华热闹呀……看上去好寂静，啊，是下雪了吗？看来已是当年初冬了…你看，那里门开了一条小缝，是金晤！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
……他的头发又长了一些，不过，看上去精神还不错呢。#Layout:Left #Name:月铃 #Speaker:YL_Normal
是啊，这么冷的天，他还只在长衫外穿了一件薄棉服褂子，看来身体也恢复得挺好！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
恢复？……啊，那是…？！…是，我们小时候约定的…#Layout:Left #Name:月铃 #Speaker:YL_Shy
……，看来他能好好活地活下去了，月铃放心了，谢谢两位大人。#Layout:Left #Name:月铃 #Speaker:YL_Happy
~ enemyHealth--
那就回吧。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
~ questBG=false
我将按你的罪行进行审判，你可有异议？。#Layout:Right #Name:判官 #Speaker:YL_Happy
是，月铃认罪，多谢大人了却我的心愿。#Layout:Left #Name:月铃 #Speaker:YL_Shy
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:YL_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


