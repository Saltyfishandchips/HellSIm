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
    M-Master, will you grant me mercy? I will cherish it and turn over a new leaf.#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    ...This is what I must bear.#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you, Judge!#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   I heard there’s a sutra lecture at the Terrace of Lotus; I will reflect quietly there...#Layout:Left
    ->END
    
->END