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
    …也好，大人与我是志同道合之人！#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    你！…无妨，我定能东山再起！#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   留得青山在，不怕没柴烧！#Layout:Left
    ->END
    
->END