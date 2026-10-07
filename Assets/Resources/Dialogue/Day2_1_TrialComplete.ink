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
    哈哈！给我些小恩小惠，就能弥补我这辈子受的伤吗……哈哈哈！#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    哈哈…罪！？别说笑了，明明是她负心于我！！大人怎还要降罪！#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   哈哈，从此挥别这辈子的谎言和欺骗，也好也好！#Layout:Left
    ->END
    
->END