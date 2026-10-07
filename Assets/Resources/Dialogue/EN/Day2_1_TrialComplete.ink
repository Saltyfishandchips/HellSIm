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
    Haha! A little kindness can make up for the wounds I’ve endured in this life?#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    Haha... Punishment!? Don’t joke! She was the one who betrayed me! Why should I be punished, Your Honor?#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you, Your Honor!#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   Haha, from now on, I can bid farewell to the lies and deceptions of this life. That’s good, very good!#Layout:Left
    ->END
    
->END