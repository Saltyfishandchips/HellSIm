// 这是审判完成的部分
VAR choice = 0

    {
        -choice == 1:  
            -> choice_1  
        -choice == 2:  
            -> choice_2 
        -choice == 3:
            -> choice_3
        -choice == 4:
            -> choice_4        
    }  
  
== choice_1
    // 奖励
    Thank you, Your Honor! I will work tirelessly in the underworld to repay your great kindness! #Layout:Left
    ->END
  
== choice_2
    // 惩罚
    Some obsessions have faded away... #Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you for your great kindness! I’ll be back shortly. #Layout:Left
    ->END
== choice_4
    // 没奖没赏
   Phew, at least it’s a matter of peace and safety. #Layout:Left
    ->END

    
->END

