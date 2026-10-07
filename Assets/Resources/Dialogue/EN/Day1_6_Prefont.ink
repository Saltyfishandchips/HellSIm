VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
……Okay.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Normal
->Prefont

== Prefont ==
~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
    The inquiry is finished, it's time to review the travel pass. Layout:Right #Name:Arbiter #Speaker:LXM_Normal
    -> END
- else:
    (Which one to ask?)#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
    
    * {reason == false} [Ask what happened]
    What were you doing during the time of the crime?#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
    
    That night……after work I wanted to go home and spend the Mid Autumn Festival with my brother……but when I got home, my brother was not there……#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Doubt
    
    His leg was not fully recovered, I know he got to be in the <color=red>ministey</color>again. So I got worried and went to find him.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Normal
    
    As soon as I got to the ministry, I saw Guan Sanzhu went out of the flower room, terrified……his face, it was like he saw a ghost……#Layout:Left #CE:Text_description_Looking for Li Jie#Name:Li Xiaomei #Speaker:LXM_Doubt

    ->c9_1
    
    * {deadCaues == false} [Ask about the cause of death]
    Do you still remember how you die?#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
    
    How I die……die……Ah!#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Afraid
    
    …Brother……Villagers…What to do…And how to deal with the flowers!How!Burn the flowers?Yes!#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Afraid
    
   ……But how to set fire…………On the dove of the kitchen there was<color=red>fire crackers……</color>……The cooking oil is in the kitchen……Only to spill a little……I remembered the firewood room is open……full of firewood……There are newly bought fireworks in the warehouse……#Layout:Left #CE:Text_deadcause_Blown to death#Name:Li Xiaomei #Speaker:LXM_Afraid
    
    She seems to be lost in that memory. #Layout:Right #Name:Arbiter #Speaker:LXM_Afraid
    ->c8_1
    
    * {identity == false} [Ask about identity]
    What's your identity?#Layout:Right #Name:Arbiter #Speaker:LXM_Normal
    
    I am Li Xiaomei, a, a villager in the XiYou Village. I work as <color=red>a maid in the ministry</color>, doing some chores.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Doubt

   Uhm……Sometimes I help my brother with information! He is a mighty hero in our village, everyone says he robs the rich to feed the poor, which saved a lot of people…… #Layout:Left #CE:Text_identity_Official Maid#Name:Li Xiaomei #Speaker:LXM_Happy
    ->c7_1
}

== StartTalk ==
    -> Prefont

=== c7_1 ===
*[So it was you who told Li Jie that there were elixirs in the ministry?]
    ->c7_2
    
=== c7_2 ===
Ah…yes.In those days<color=red>uncle Liang of the meat shop was seriously sick</color>, the villagers was so worried they cannot do anything, my brother cannot even sleep.#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Normal

Uncle Liang is a nice man, he always treats people with pork in festivals, and often gave me and my brother leftover leaf fat for oil. #Layout:Left #Name:Li Xiaomei #Speaker:LXM_Normal

I know that the master of the ministry just got a foreigner<color=red>and made a batch of elixir that were really precious to him……</color>I thought my brother can use it for uncle Liang's sickness, but I never would heve known……I just wanted to help……#Layout:Left #Name:Li Xiaomei #Speaker:LXM_Sad
    
        ~ identity = true
        -> StartTalk

    
=== c8_1 ===
    *[Black Spirit Warden!Check it up!]
It's hard get any information about her death like this. Black Spirit Warden! Check her cause of death. #Layout:Right #Name:Arbiter #Speaker:LXM_Afraid
Yes. #Layout:Left #Name:Black #SpecialSpeaker:HWC
Lord Arbiter!The Harma Stone says he died of explosion. #Layout:Left #Name:Black #SpecialSpeaker:HWC
~ deadCaues = true
Okay.#Layout:Right #Name:Arbiter #Speaker:LXM_Afraid
-> StartTalk


=== c9_1 ===
  *[Then you went to the folower room?]

Yes……at that day I gathered my courage, and sneaked into the flower room……#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Sad

I……I saw<color=red>the villagers</color>……the crimsom flowers probing out of their flesh #Layout:Left#Name:Li Xiaomei #Speaker:LXM_Afraid

Uncle Liang of the meat shop, granny Zhang who sells the vegitables, aunt Chen who makes fabric, the blacksmith Zhao……they all had the flowers……Ah…… #Layout:Left#Name:Li Xiaomei #Speaker:LXM_Afraid

Then……Then I saw……my brother lying on the ground<color=red>not moving, covered with blood</color>……He's just……lying there……ahhhhh……#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Afraid


    ->c9_2

=== c9_2 ===
*[Calm down.]

……Brother, I am sorry……I always thought that I had nothing to worry about when you are here……So, even if I felt there was something wrong I never really thought twice……#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Sad

Or I was such a coward to face that……everything started because of me, I told you the whereabouts of the elixir……#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Sad

Now you are gone, what should I do……these things should not be burried……#Layout:Left#Name:Li Xiaomei #Speaker:LXM_Sad
        ~ reason = true
        -> StartTalk