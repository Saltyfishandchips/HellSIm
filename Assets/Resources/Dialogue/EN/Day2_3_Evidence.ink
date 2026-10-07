VAR currentEvidenceList = "13,21"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 5
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
Is this He Renshu? I will now question you about the banquet and the Kalaviṅka incident; you must answer truthfully and cannot conceal anything.#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
Sigh, fine, fine! Just hurry up and tell those ugly spirits to open the door for me afterward and send me back properly!#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
Have you been persecuting the major performing troupes like Star Ocean Dance Troupe and admit to killing Man lu on that day?#Layout:Right #Name:Arbiter #Speaker:HRS_Impatient
Oh, is that all? I don’t really have any real grudge against them. I just occasionally send some thugs to harass them and kill a few people now and then, hehehe... You're being too serious, my lord!#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
* [Why do this?]
Why do this? Is there any particular reason?#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
    What special reason is needed? They've grown and thrived these past few years, even making a lot of stars! I'm just not in a good mood. People like them should just live honestly and not think about developing their music careers...#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
* [What do you think of the singers?]
   ...A bunch of shameless people! Their desperate attempts to climb up are so ugly. Wouldn't it be better to live a simple, honest life? Whether they want to attach themselves to the rich or develop a music career...#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
-
Hehehe... They're all dreaming! Living in poverty and degradation, like bugs in the mud, why do they think they can stand in the spotlight so carelessly?#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
So, do you have any special obsession with singing?#Layout:Right #Name:Arbiter #Speaker:HRS_Smile
!! How could that be! I am a respectable person and wouldn't stoop to singing!#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
I bully them just like I easily bully anyone else, completely equal, no favoritism! ...Hehehe.#Layout:Left #Name:He Renshu #Speaker:HRS_Smile
<color=red>(I remember there's evidence that can prove she is indeed very concerned about music.)</color>
->Node0

== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
~ enemyHealth--
If that's the case, how do you know about concepts like coarse-textured records and electric sound recording?#Layout:Right #Name:Arbiter #Speaker:HRS_Smile
~shackCamera++
……#Layout:Left #Name:He Renshu #Speaker:HRS_Normal
This... it's because I had some free time, and I just... slightly learned about it...#Layout:Left #Name:He Renshu #Speaker:HRS_Guilty
Sigh, I’ll tell you anyway! I indeed once longed for music, but that was an evil thought... I should be leisurely and composed, never needing to struggle with anything! So whenever I have such wicked thoughts, I control myself and turn to find other pleasures... like the Star Ocean Dance Troupe!#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
~shackCamera++
Since I must avoid music, why should they be able to sing loudly?#Layout:Left #Name:He Renshu #Speaker:HRS_Anger
~enemyHealth--
*[Have you never tried?]
...Try? Are you intentionally trying to make me look foolish? Dedicating oneself to work and career like commoners, how strange and terrifying that is! I look down on it!#Layout:Left #Name:He Renshu #Speaker:HRS_Guilty
And those singers are merely lowly people casually discarded by my father. Would I willingly lower myself to their level? I will never allow myself to become one of them!#Layout:Left #Name:He Renshu #Speaker:HRS_Guilty
->Node1


== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
Moreover, in this world, face and reputation are the most important. If I have no talent but still force my way into the singing world, wouldn't that just bring suffering upon myself and make me a laughingstock?#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
<color=red>(I remember there's evidence that could prove that if she tried to develop a music career, the outcome might not be so dire.)</color>#Layout:Right #Name:Arbiter #Speaker:HRS_Impatient
-> Node1

== Evidence1 ==
What a pity... You had the mark of the Kalaviṅka, meaning you were exceptionally gifted in music. With your family's resources, if you had firmly pursued a singing career, you would have likely achieved great success and become renowned, and you wouldn’t have turned into such a twisted evil person!#Layout:Right #Name:Arbiter #Speaker:HRS_Impatient
What! ...Is that so... I don’t believe it!!#Layout:Left #Name:He Renshu #Speaker:HRS_Despair
~ enemyHealth--
~ shackCamera++
You must be deceiving me! ...It’s not like this!#Layout:Left #Name:He Renshu #Speaker:HRS_Anger
~ shackCamera++
I want to go home! Let me go back! Let me go back!#Layout:Left #Name:He Renshu #Speaker:HRS_Anger
Her obsession is too deep; Black and White Spirits, take her to the Hometown-looking Platform for a visit.#Layout:Right #Name:Arbiter #Speaker:HRS_Anger
As you command, my lord.#Layout:Left #Name:Black #SpecialSpeaker:HWC
Understood!#Layout:Left #Name:White #SpecialSpeaker:BWC
~questBG = true
Look, this is your hometown. Desolation everywhere, a land of scorched earth; truly a hellish sight...#Layout:Left #Name:White #SpecialSpeaker:BWC
...Why is the crowd on the street so chaotic? Why are the He family gates wide open, allowing free passage? Where are the servants at the door? I must tell my father! ...Wait, where are my family? Why can’t I see them?#Layout:Left #Name:He Renshu #Speaker:HRS_Impatient
Two years after your death, foreign invaders attacked, and the He family secretly fled inland. They gradually lost their privileges and quietly perished during the war and revolution, with their descendants fading into obscurity, no different from ordinary citizens.#Layout:Left #Name:White #SpecialSpeaker:BWC
~shackCamera++
...How is this possible!?#Layout:Left #Name:He Renshu #Speaker:HRS_Despair
~enemyHealth--
Your short life has long been forgotten under the wear of time and your family’s deliberate concealment, not to mention the image and dignity you clung to all your life; everything has been crushed into dust amid the chaos of war.#Layout:Left #Name:White #SpecialSpeaker:BWC
On the other hand, the classic songs of stars like Yue Ling and Man lu have never been buried. Years later, people still love their songs and are willing to learn about their lives, allowing their names to shine for generations, becoming a faint starlight.#Layout:Left #Name:White #SpecialSpeaker:BWC
~shackCamera++
...Everything is wrong...#Layout:Left #Name:He Renshu #Speaker:HRS_Despair
~enemyHealth--
Alright, let's go back.#Layout:Left #Name:Black #SpecialSpeaker:HWC
~questBG = false
 will judge you according to your crimes. Do you have any objections?#Layout:Right #Name:Arbiter #Speaker:HRS_Despair
Why ask me again? I have no home to return to... All is in vain...#Layout:Left #Name:He Renshu #Speaker:HRS_Despair


->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
Hmm... it seems this is not the right evidence; I need to think more carefully.#Layout:Right #Name:Arbiter #Speaker:HRS_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


