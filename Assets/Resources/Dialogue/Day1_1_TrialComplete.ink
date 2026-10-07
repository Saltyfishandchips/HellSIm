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
    谢谢判官大人！薛某在阴间做牛做马报答您的大恩大德！#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    ……（某处执念-1）#Layout:Left
    ->END

== choice_3
    // 短暂反阳
    大恩大德，感激不尽！李某去去就回。#Layout:Left
    ->END
== choice_4
    // 没奖没赏
   呼，也不失为平安无事啊。#Layout:Left
    ->END

    
->END

