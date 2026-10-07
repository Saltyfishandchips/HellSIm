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
   It should be correct.#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
   It should be correct.#Layout:Left
    ->END

== choice_3
    // 生辰-错误
  It should be correct. #Layout:Left
    ->END

== choice_4
    // 死期-错误
    I may have a long life ahead, but I no longer have the heart to live in this world. Today, I wish to end my life; my resolve is firm. I hope the Master will grant my wish.#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    ...Before losing everything, Yue Ling and her family were from Jingbian County in Shaanxi. I wish to return home with her. If you could fulfill this humble request, I will repay you with all my efforts.#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    This person has altered his jurisdiction without permission and has chosen to die today; the rest of the information is correct.#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    In my family, I was given a name with a good meaning by a fortune-teller my parents encountered.#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    It's not easy to survive amidst the conflicts of warlords and bandits; in these times, the heads of all the song and dance troupes in Nanjing are men.#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    I am now twenty-five, not too young anymore; it's time I faced the consequences of my own actions.#Layout:Left
    ->END

== choice_10
    // 死期-正确
    It seems inconsistent.#Layout:Right
    ->END
    
== choice_11
    // 辖区-正确
    I was born in Yanziqi, truly impoverished, so I started fending for myself by the age of ten.#Layout:Left
    ->END
    
->END

