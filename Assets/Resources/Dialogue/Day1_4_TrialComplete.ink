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
    草民领赏！谢了！#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    草民罪该至此，并无异议！ #Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   也算一种了结吧！我要去寻小妹了！再会！#Layout:Left
    ->END
    
->END