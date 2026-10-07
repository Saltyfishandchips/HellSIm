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
    咦……谢谢判官大人！月铃无以为报，定会多多行善。#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    月铃领罪。大人，再见了。#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   谢谢大人，月铃已再无牵挂。#Layout:Left
    ->END
    
->END