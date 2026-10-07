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
    Ah……Thank you Lord Arbiter! I don't have anything to repay you, I'll do more good things from now on!#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    I take the blame. Goodbye, Lord Arbiter.#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you Lord Arbiter! #Layout:Left
    ->END

== choice_4
    // 没奖没赏
   Thank you Lord Arbiter, I do not have any more trouble. #Layout:Left
    ->END
    
->END