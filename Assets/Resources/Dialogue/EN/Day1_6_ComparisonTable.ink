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
    // 姓名
Isn't Li Xiaomei your real name? #Layout:Right
No it's not. My parents gave me a name before they left, but my brother was not literate so he always called me Xiaomei, meaning little sister. The villagers quickly followed suit.#Layout:Left
It became my actual name as everyone calls me that. #Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    Ah? Lord Arbiter, are you distracted? #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    I wish on February 28th next year I can have the birthday noodles with my brother again. #Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    I remembered that night was the Mid-Autumn Festival.  #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    The Lei City seems to be part of the East District. #Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    In the world of the living, her name is Li Xiaomei. The rest is reviewed correct.#Layout:Right
    ->END
    
== choice_7
Although I really want to be called Li Xiaomei, but it's not my real name.#Layout:Left
    ->END
    
== choice_8
 ……I want to be my brother's little sister forever……#Layout:Left
    ->END


== choice_9
At this time each year, my brother and I will exchange gifts. This year he gave me this set of hair accessories, I really love them!#Layout:Left

    ->END

== choice_10
……Mid Autumn Festival……Not that bad, I can finally reunite with my brother underneath. #Layout:Left

    ->END
    
== choice_11
 I stayed in town and never went far. What's the outside world like……I really want to see.#Layout:Left
    ->END
    
->END
