VAR currentEvidenceList = "23"
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
现在是<color=red>消除执念阶段</color>，判官大人需根据梳理阶段总结的<color=red>鬼魂破执标签</color>，设法<color=red>消除其执念</color>。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
请在<color=red>左上角</color>查看<color=red>当前鬼魂的执念数、破执标签及案件证物</color>。同时，<color=red>您的信念值</color>也在左上角显示。
注意，信念值归零后，鬼魂执念消除失败。但我将用孟婆汤让鬼魂短暂失忆，您可以<color=red>再次尝试消除其执念</color>。
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
判官大人，可以用证物消除鬼魂的执念。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
请试试用证物消除我的执念吧。
<color=red>（从上方出示证物破除黑无常的执念吧）</color>
->Node0

== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
~ enemyHealth--
判官大人，您成功消除了我的一点执念。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
~topic1 = true
判官大人请随我来。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC


~questBG = true
这便是地府设有的<color=red>望乡台</color>。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
在望乡台鬼魂可以看到其在阳间仍留念之物，事物变迁也是消除执念的一大利器。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
~ enemyHealth--
~topic2 = true
看来判官大人已经基本掌握消除执念的流程。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
接下来将进入审判阶段，判官大人需要根据鬼魂的所做之事给予奖惩审判，请大人随心判定。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC

->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #SpecialSpeaker:HWC
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


