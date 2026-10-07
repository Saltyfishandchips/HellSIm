// 这是对照表差异项的反馈
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
        -choice == 5:  
            -> choice_5
        -choice == 6:  
            -> choice_6
        -choice == 7:  
            -> choice_7
        -choice == 8:  
            -> choice_8
        -choice == 9:  
            -> choice_9
        -choice == 10:  
            -> choice_10
        -choice == 11:  
            -> choice_11
    }  
  
== choice_1
    // 姓名-错误
   You must be tired, so please take another careful look for me.#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    You must be tired, so please take another careful look for me. #Layout:Left
    ->END

== choice_3
    // 生辰-错误
   You must be tired, so please take another careful look for me. #Layout:Left
    ->END

== choice_4
    // 死期-错误
    Oh, I just filled in the death date casually. You hold the Book of Life and Death; just a glance will show that someone like me, destined for greatness, wouldn’t die from such a trivial accident today. I’ll need you to send me back afterward. #Layout:Left

*Your time is indeed up today. #Layout:Right

You jest! Heaven has given me a great mission; I will rise to prominence and accomplish great deeds in the world before returning to chat and discuss achievements with you.#Layout:Left
    ->END
    
*Life and death are fated, and wealth and nobility depend on heaven. What the King of Hell has recorded is not something a mere mortal can force. #Layout:Right

You speak wisely. However, I was born extraordinary, and my fate is strong. If there is divine favor, how could someone as fortunate as I quietly die like an ordinary person?#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    You must be tired, so please take another careful look for me.#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    This person is trying to delay his death, but the other information is correct.#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    This describes me as knowledgeable and enduring, also implying that “those who recognize the times are true heroes.”#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    I’m not talented, but I am a proud seven-foot man now famous in Nanjing.#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    At a young age, I hold at least the rank of a general… I think it’s worth my years of effort.#Layout:Left

    ->END

== choice_10
    // 死期-正确
    You are truly reasonable, Your Honor!#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    I have traveled many places due to military affairs, but my hometown of Nanjing, where I grew up, holds the most attachments for me.#Layout:Left
    ->END
    
->END
