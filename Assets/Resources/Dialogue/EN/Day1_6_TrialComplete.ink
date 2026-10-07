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
    Thank you Lord Arbiter!#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    I am willing to take my punishment, thank you again, Lord Arbiter! #Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you Lord Arbiter!#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   Hard to decide? It's fine! I have a decision in my heart!#Layout:Left
    ->END
    
->END