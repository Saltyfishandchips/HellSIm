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
    谢大人！…嗯……无、无常大人的恩情，本小姐必不会忘。#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    如今我已沦为庶民……大人高高在上，为何还不放过我…#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   大人！…你行行好吧……我已孤零零地没了家人，要如何在水深火热的地府活下去？#Layout:Left
    ->END
    
->END