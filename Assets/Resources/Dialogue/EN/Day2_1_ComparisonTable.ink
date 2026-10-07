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
    My lord, from what I observe, there seems to be no problem at all.#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    My lord, from what I observe, there seems to be no problem at all. #Layout:Left
    ->END

== choice_3
    // 生辰-错误
    My lord, from what I observe, there seems to be no problem at all. #Layout:Left
    ->END

== choice_4
    // 死期-错误
    My lord, from what I observe, there seems to be no problem at all.#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    My lord, from what I observe, there seems to be no problem at all.#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    The travel pass information for this person is clear and accurate.#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    This name was given by my mother, hoping for a safe and stable next life. After all, what can we hope for in this world today?#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    As a man, I only wish to protect Miss Yueling for a lifetime in this chaotic era.#Layout:Left
    ->END


== choice_9
    // 生辰-正确
    It’s not self-satisfaction; from a humble scholar to now owning a publishing house, I can barely be considered a young person with ambition.#Layout:Left

    ->END

== choice_10
    // 死期-正确
    In our newspaper industry, we are very sensitive to time, and this date is indeed correct.#Layout:Left

    ->END
    
== choice_11
    // 辖区-正确
    I have grown up in the beautiful Jiangnan water town, a place renowned for its exceptional people and natural beauty.#Layout:Left

    ->END
    
->END
