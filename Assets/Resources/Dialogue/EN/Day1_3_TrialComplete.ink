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
    Guan Zhen takes his leave! May Lord Arbiter be safe and joyful!#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    Guan Zhen takes his leave! May Lord Arbiter remain just and incorruptible for a lifetime! #Layout:Left
    ->END

== choice_3
    // 短暂反阳
   God bless my lord. #Layout:Left
    ->END

== choice_4
    // 没奖没赏
  Guan Zhen takes his leave! May Lord Arbiter have a prosperous career! #Layout:Left
    ->END
    
->END