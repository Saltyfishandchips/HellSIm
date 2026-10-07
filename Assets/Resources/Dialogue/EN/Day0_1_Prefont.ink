VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
This is the <color=red>stage of pre-trial investigation</color>, you need to complete the <color=red>Pre-Trial Document </color>at this stage. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Lord Arbiter, you need to ask the ghosts about <color=red>identity, cause of death, and what happened</color>, so that you can get to know the ghosts and the case. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Okay, now we practice the inquiry routine. #Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
After the inquiry, I will hand over my travel pass, please check the information on it.  #Layout:Left #Name:Black #SpecialSpeaker:HWC
    -> END
- else:
    Which one to ask?#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
    * {reason == false} [Ask what happened]
    What are you doing?#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
    I am now helping the Lord Arbiter to get familiar with the <color=red>workflow</color>. #Layout:Left #Name:Black #SpecialSpeaker:HWC #CE:Text_description_Workflow guidance
    ->c1_1
    
    * {deadCaues == false} [Ask about the cause of death]
    How did you die?#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
    <color=red>I drowned</color>.#Layout:Left #Name:Black #SpecialSpeaker:HWC #CE:Text_deadcause_Drowning
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [Ask about identity]
    What's your identity?#Layout:Right #Name:Arbiter #SpecialSpeaker:HWC
    I am the <color=red>Spirit Warden</color>in the Fengdu city of the netherworld, call me Black Spirit Warden. My name in the living world is Fan Wujiu. #Layout:Left #Name:Black #SpecialSpeaker:HWC #CE:Text_identity_Spirit Warden
    ~ identity = true
    -> StartTalk
}

== StartTalk ==
    -> Prefont

== c1_1 ==
*[What about the day you die?]
Oh, that day I was waiting on the bridge while White was going to get the umbrella. But the flood rised.#Layout:Left #Name:Black #SpecialSpeaker:HWC
Lord Arbiter, here, this is the <color=red>confession letter</color> written by White. #Layout:Left #Name:Black #SpecialSpeaker:HWC
The confession letter is registered as the new evidence.#Layout:Left #Name:Black #SpecialSpeaker:HWC #CE:Add_2
->c1_2

==c1_2 ==
*[Will the number of the evidence increase?]
Yes. Except for the initial evidences, the ghosts may provide <color=red>new evidence </color> during the inquiry stage. At that time I will help you register them as new evidences. #Layout:Left #Name:Black #SpecialSpeaker:HWC
        ~ reason = true
        -> StartTalk
