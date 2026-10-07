VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass. #Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    -> END
- else:
    Which one to ask?#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    * {reason == false} [Ask what happened]
    <align="center"><color=red>===What happened to the White Spirit Warden===</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    What are you doing here?#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    I am here to bring the rubbings to the boss!#Layout:Left #Name:White #SpecialSpeaker:BWC #CE:Add_12 #CE:Text_description_Delivering Imprint Evidence
    Boss, helo me see where that bird is… Wait, don't tell me right away, I'll guess!#Layout:Left #Name:White #SpecialSpeaker:BWC
    <align="center"><color=red>---The inquiry of what happened is over--</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
        ~ reason = true
        -> StartTalk
        
    * {deadCaues == false} [Ask about the cause of death]
    <align="center"><color=red>===The White Spirit Warden's cause of death===</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    Do you still remember how you die?#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    Boss, that's not right? Are you really going to investigate me?#Layout:Left #Name:White #SpecialSpeaker:BWC
    I hanged myself for Black. I swear I'll tell everyone……That guy is just too honest! Once decided, he take actions quickly, normally poeple cannot stand him! #Layout:Left #Name:White #SpecialSpeaker:BWC #CE:Text_deadcause_Hanging
    <align="center"><color=red>---The inquiry about the cause of death is over---</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [Ask about identity]
    <align="center"><color=red>===The White Spirit Warden's identity===</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    What's your identity before you die?#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    Boss, are you still you?#Layout:Left #Name:White #SpecialSpeaker:BWC
    I am the White Spirit Warden Xie Bi'an!……Do you still remember to find my bird? Ah……boss, Ah…#Layout:Left #Name:White #SpecialSpeaker:BWC #CE:Text_identity_Spirit Warden
    <align="center"><color=red>---The inquiry about identity is over---</color>#Layout:Right #Name:Arbiter #SpecialSpeaker:BWC
    ~ identity = true
    -> StartTalk
}

== StartTalk ==
    -> Prefont

