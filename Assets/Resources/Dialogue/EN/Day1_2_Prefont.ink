VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
The pre-trial investigation will be conducted.#Layout:Right #Name:Arbiter #Speaker:BRT_Normal
Please state the relevant facts of the case.#Layout:Right #Name:Arbiter #Speaker:BRT_Normal
What a problem! #Layout:Left #Name:White Brandt #Speaker:BRT_Anger
->Prefont

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
The inquiry is finished, it's time to review the travel pass. #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
    -> END
- else:
    (Which one to ask?)#Layout:Right #Name:Arbiter #Speaker:BRT_Normal
    * {reason == false} [Ask what happened]
    What were you doing at the time of the incident? #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
    
    That night? As usual, that idiot <color=red>locked me in the pharmacy</color> to make elixirs according to his recipe. Recently, Xue has been in urgent need of <color=red>a large amount of Wangyou elixirs</color>, keeping me so busy that I’ve had no time for alchemy. #Layout:Left #CE:Add_8 #Name:White Brandt #Speaker:BRT_Anger
    
    I was in the middle of making elixirs when I heard <color=red>sounds of fighting and arguing</color> outside, and soon after, a fire broke out. #Layout:Left  #CE:Text_description_Refining medicine  #Name:White Brandt #Speaker:BRT_Doubt
    -> c9_1
        
    * {deadCaues == false} [Ask about the cause of death]
    Do you remember why you died? #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
   Yes, yes! The <color=red>black powder</color> in the warehouse exploded and killed me.#Layout:Left #Name:White Brandt #Speaker:BRT_Anger

    I knew this black powder had unlimited potential—truly a genius invention, the Song people's <color=red>black gold</color>! One jin and four liang of sulfur, two jin and a half of saltpeter, and fifty-two jin of coarse charcoal powder... #Layout:Left #CE:Text_deadcause_Blown to death #Name:White Brandt #Speaker:BRT_Happy
        ->c8_1

    * {identity == false} [Ask about identity]
    What's your formal identity? #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
    
   I am <color=red>White Brandt from a Western Empire</color>. I'm here for business. If it weren't for that guy Xue pestering me to help with his elixir, I wouldn't have gotten tangled up in this absurd disaster. #Layout:Left #Name:White Brandt #Speaker:BRT_Anger

   Your rules simply <color=red>don't apply to me</color>, Arbiter. Let's not waste each other's time. #Layout:Left #CE:Text_identity_Foreign Merchant #Name:White Brandt #Speaker:BRT_Doubt
    ~ identity = true
    -> StartTalk
}


=== c8_1 ===
*What are you chanting?  #Layout:Right #Name:Arbiter #Speaker:BRT_Happy
 ->c8_2

=== c8_2 ===
A formula. It won't hurt to tell you, this is the <color=red>formula for black powder</color>. Officially, I'm making elixirs, but in reality, it's <color=red>alchemy</color>. #Layout:Left #Name:White Brandt #Speaker:BRT_Happy

That fool Xue is obsessed with his Wangchuan flowers and elixirs. He thinks the waste is priceless. Those are actually the <color=red>ingredients for black powder</color>. #Layout:Left #Name:White Brandt #Speaker:BRT_Happy

In my spare time while making elixirs, I secretly tried to <color=red>recreate black powder</color>, and I was so close to succeeding. #Layout:Left #Name:White Brandt #Speaker:BRT_Anger
 
*[Where did the failed black powder go?]
        ->c8_3

=== c8_3 ===
  Every time, Xue would collect all the <color=red>elixir dregs, furnace ash, and elixirs</color>, so I mixed it in with the rest. #Layout:Left #Name:White Brandt #Speaker:BRT_Normal
 
It seems all that so-called waste was stored in the <color=red>warehouse</color>. Xue is really paranoid about his formula getting out. #Layout:Left #Name:White Brandt #Speaker:BRT_Doubt

But now that the warehouse has exploded, which means I succeeded! #Layout:Left #Name:White Brandt #Speaker:BRT_Happy
      ~ deadCaues = true
    -> StartTalk
    

=== c9_1 ===
*[Why were you locked in the pharmacy?]
    ->c9_4

=== c9_4 ===
Every time I make elixirs, that <color=red>guard Guan</color> locks the door, saying it’s to help me focus. #Layout:Left #Name:White Brandt #Speaker:BRT_Doubt

In reality, Xue is just afraid I’ll <color=red>steal the elixirs</color> and take them back to the West to sell for money. It’s an insult to my character! #Layout:Left #Name:White Brandt #Speaker:BRT_Anger

Besides, I don’t even <color=red>know how to grow Wangchuan flowers</color>. How could I make his elixir? #Layout:Left #Name:White Brandt #Speaker:BRT_Anger

*Didn’t you bring the Wangchuan flowers? #Layout:Right #Name:Arbiter #Speaker:BRT_Anger
    ->c9_2

=== c9_2 ===
hat? Before I came here, <color=red>I had never seen that kind of flower</color>. Every time I make elixirs, the flower materials are always secretly brought by Guan from the <color=red>Herb Cultivation Room</color>.  #Layout:Left #Name:White Brandt #Speaker:BRT_Doubt

They guard me as if I’m a thief—it’s ridiculous! I wouldn’t bother stealing those flowers. #Layout:Left #Name:White Brandt #Speaker:BRT_Anger

*[What is the Herb Cultivation Room?] 
    ->c9_3

=== c9_3 ===
It’s a small room next to the pharmacy and the warehouse. I suspect <color=red>Xue grows the Wangchuan flowers there</color>, so I casually call it the Herb Cultivation Room. #Layout:Left #Name:White Brandt #Speaker:BRT_Normal

That room is very mysterious, and it even has a <color=red>complicated lock</color> on the door. #Layout:Left #Name:White Brandt #Speaker:BRT_Normal
All right. #Layout:Right #Name:Arbiter #Speaker:BRT_Normal
    ~ reason = true
    -> StartTalk

== StartTalk ==
    -> Prefont
