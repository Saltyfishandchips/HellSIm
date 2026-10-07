VAR currentEvidenceList = "4"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 1
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
Black and White Spirit Wardens, what's going on? Didn't he already return to the living world? #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
Huh? Just now, Ox-Head said someone was sneaking around near the Gate of Ghosts, so we went to check it out. As soon as I saw those blonde hair and blue eyes, I recognized it was the person from your case. Wasn't it me and Black who brought him back from the ministry before? I figured he was trying to escape punishment, so I just caught him directly. #Layout:Left #Name:White #SpecialSpeaker:BWC
Indeed. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Oh no, this might cause a diplomatic incident. Forget it, newbie, you handle the judgment. Consider it a cultural exchange. #Layout:Left #Name:Jin Ling #SpecialSpeaker:Bird_Normal
Fine. #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
How much longer are you going to talk! What exactly is going on! You better give me an explanation today! #Layout:Left #Name:White Brandt #Speaker:BRT_Anger
~ shackCamera++
Is the person before me White Brandt? I will now ask you about the ministry fire and the Flower of Wangchuan. You must answer truthfully and not withhold anything. #Layout:Right #Name:Arbiter #Speaker:BRT_Anger
~shackCamera++
Huh！#Layout:Left #Name:White Brandt #Speaker:BRT_Anger #Anim:2,2,3,Trial
//Huh? You're just ignoring my requests, aren't you? I refuse to answer! I have no obligation to respond to your questions! #Layout:Left #Name:White Brandt #Speaker:BRT_Anger
Boss! What should we do? This guy isn't cooperating. Should we use some techniques? Let him experience our netherworld's exclusive Hell package. Start with the 'Seven-Seven Forty-Nine' set, and if that doesn’t work, we’ll hit him with the 'Nine-Nine Eighty-One' package! Guaranteed to make him talk! #Layout:Left #Name:White #SpecialSpeaker:BWC
I've already contacted the Tongue-Pulling Hell. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Wait! You two stop making things worse. Newbie, think of something he's interested in to get him to start talking.#Layout:Left #Name:Jin Ling #SpecialSpeaker:Bird_Normal
*[You said you were killed by black powder?]
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
Yeah! That night, the warehouse suddenly shook violently, the explosion was deafening, and the surrounding walls were instantly blown to pieces. The explosion even affected several nearby buildings! #Layout:Left #Name:White Brandt #Speaker:BRT_Doubt
~shackCamera++
Such power could only be from black powder exploding! #Layout:Left #Name:White Brandt #Speaker:BRT_Anger
Hehe! The black powder I made is even more powerful than I imagined! I could make a fortune if I brought it back! #Layout:Left #Name:White Brandt #Speaker:BRT_Happy
Are you sure it was the black powder you made? #Layout:Right #Name:Arbiter #Speaker:BRT_Happy
Of course! It’s the result of my alchemy! Where else would it come from? Xue doesn’t understand it at all; there’s no way he could’ve bought something like this. #Layout:Left #Name:White Brandt #Speaker:BRT_Happy
<color=red>(It seems there might be some evidence that proves the explosion wasn't caused by the black powder Brandt claimed to have made.)</color>#Layout:Right #Name:Arbiter #Speaker:BRT_Happy
->Node0


== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
You said the explosion happened in the warehouse, but the black powder you made was stored in the greenhouse, or rather, the herb room as you call it. #Layout:Right #Name:Arbiter #Speaker:BRT_Happy
Just now, I had Black Spirit Warden check the evidence, and there’s no black powder in the herbal residue or elixir residue. What exploded were the fireworks Guan Sanzhu bought, and the main component of fireworks is also black powder.
Exactly, especially since the elixir residue was mostly just charcoal. Even if it could explode, it’d just go poof and be over! #Layout:Left #Name:Black #SpecialSpeaker:HWC
Huh? #Layout:Left #Name:White Brandt #Speaker:BRT_Normal
~shackCamera++
Impossible! Are you messing with me? How could those fireworks cause such an explosion? My powder was carefully mixed; there’s no way it could be replaced by some cheap fireworks! Who’s behind this? Wait, did you mess with my stuff? #Layout:Left #Name:White Brandt #Speaker:BRT_Anger
*[Take a look yourself.]
    ~enemyHealth--
    Look at the black powder you said. #Layout:Right #Name:Arbiter #Speaker:BRT_Anger
    Wait, this really does look like my elixir residue... No way, how could this happen... sulfur, one jin four liang; saltpeter, two jin and a half; charcoal, Fifty-two jin... the ratio is correct… #Layout:Left #Name:White Brandt #Speaker:BRT_Sad
    Boss, I’ve been meaning to ask, why did he put so much charcoal powder in the black powder? Fifty-two jin! #Layout:Left #Name:White #SpecialSpeaker:BWC
    He must have been looking at the black powder formula from Essentials of Military Affairs, but the original says sulfur, one jin four liang; saltpeter, two jin and a half; coarse charcoal powder, five liang. #Layout:Left #Name:Black #SpecialSpeaker:HWC
    Huh? He translated liang into two... #Layout:Left #Name:White #SpecialSpeaker:BWC
    ……#Layout:Left #Name:Black #SpecialSpeaker:HWC
    ……Yes. #Layout:Right #Name:Arbiter #Speaker:BRT_Sad
   Let’s proceed with the process. #Layout:Right #Name:Arbiter #Speaker:BRT_Sad
    I will now judge you based on your crimes. Do you have any objections? #Layout:Right #Name:Arbiter #Speaker:BRT_Sad
    Impossible... the formula is correct... Could it be the materials? Or the process...? #Layout:Left #Name:White Brandt #Speaker:BRT_Doubt
    Actually, it’s a translation issue, but never mind, he’s not listening anymore. #Layout:Right #Name:Arbiter #Speaker:BRT_Doubt
    Let’s assume there are no objections. #Layout:Right #Name:Arbiter #Speaker:BRT_Doubt
-
->END


== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Hmm... It seems this isn't the right evidence. I need to think more carefully. #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


