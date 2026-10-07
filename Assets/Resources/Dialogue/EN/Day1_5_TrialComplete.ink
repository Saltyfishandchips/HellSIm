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
    Thank you Lord Arbiter, I'll be the gardener like that guy talked about. #Layout:Left
    ->END
  
== choice_2
    // 惩罚
    How ruthless! Just joking! Like I said, I never regret for what I did!#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you Lord Arbiter!#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   Hard to decide? Hahaha, that's okay!#Layout:Left
    ->END
    
->END