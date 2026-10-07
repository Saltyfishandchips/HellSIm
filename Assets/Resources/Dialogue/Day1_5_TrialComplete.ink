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
    小女谢过判官大人，许去应那个小哥提到的花匠一职吧。#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    真狠心呢！开玩笑的！说过了，小女从不为做过的事后悔！#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   难以判定小女功过吗！哈哈哈！没事啦！#Layout:Left
    ->END
    
->END