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
    ...That's fine; we share the same aspirations!#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    You!... It's fine, I will definitely make a comeback!#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you, Your Honor!#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   As long as there are green mountains, one need not worry about firewood!#Layout:Left
    ->END
    
->END