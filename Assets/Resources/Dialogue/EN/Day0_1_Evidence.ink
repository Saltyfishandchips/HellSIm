VAR currentEvidenceList = "23"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 6
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
Now it's the <color=red>stage of obsession break</color>. Lord Arbiter, you need to <color=red>break the ghost's obsessions</color> according to the <color=red>obsessions tags</color> from the case review section. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Please check <color=red>the current ghost's number of obsessions, obsession tags, and the evidences</color> on the <color=red>top left corner</color>. Also, <color=red>your faith points</color> will also be displayed there. 
Attention, when your faith points turn zero, you fail the obsession break. But I will use the Meng Borneo soup to make you forget it for a while, so you can <color=red>try again</color>.
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
Lord Arbiter, you can use the evidences to break the ghosts' obsessions. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Please try to use the evidences to break my obsessions. 
<color=red>(Show the evidence to break the obsessions of the Black Spirit Warden)</color>
->Node0

== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
~ enemyHealth--
Lord Arbiter, you just successfully broke one of my obsessions. #Layout:Left #Name:Black #SpecialSpeaker:HWC
~topic1 = true
Lord Arbiter please follow me. #Layout:Left #Name:Black #SpecialSpeaker:HWC


~questBG = true
It is the <color=red>Hometown-looking Platform</color> of the netherworld. #Layout:Left #Name:Black #SpecialSpeaker:HWC
From here the ghosts can see things that they still linger on in the world of the living, which is also a way to break obsessions. #Layout:Left #Name:Black #SpecialSpeaker:HWC
~ enemyHealth--
~topic2 = true
Looks like Lord Arbiter has learned the way of obsession break. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Now we go to the trial stage, you need to decide whether to give the ghost award or punishment. Follow your heart. #Layout:Left #Name:Black #SpecialSpeaker:HWC

->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Uhm……It's not the right evidence, I need to think more carefully. #Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


