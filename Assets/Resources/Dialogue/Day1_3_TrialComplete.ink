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
    关镇告退！愿判官老爷平安喜乐！#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    关镇告退！愿判官老爷一辈子清正廉明！ #Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   关镇告退！愿判官老爷官运亨通！#Layout:Left
    ->END
    
->END