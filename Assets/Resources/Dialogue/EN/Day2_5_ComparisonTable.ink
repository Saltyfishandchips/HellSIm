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
    My real name was... Su Man? Yes, Su Man, Su Man. Hehe... It’s been so long; it feels like I’m calling a stranger.#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    Hehe, no worries. Maybe take another look?#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   Ah, indeed… I can’t hide this from you. I was born in 1913... I filled in 1929 because that was the year the singer Man Lu rose to fame, a new beginning for her... #Layout:Left
    ->END

== choice_4
    // 死期-错误
    Hehe, no worries. Maybe take another look?#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    Hehe, no worries. Maybe take another look?#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    This person has a vague memory of their name but a clear impression of the year they became famous; the rest of the information is accurate.#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    The name Man Lu is well-known throughout Nanjing.#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    The illustrated magazines praised me greatly, saying that when I opened my mouth to sing, I embodied the gentleness and passion of Jiangnan women.#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    Yes, that was indeed the year of Man Lu's birth.#Layout:Left#Layout:Left
    ->END

== choice_10
    // 死期-正确
    “Cold winds destroy the trees, and harsh frost withers the garden orchids”… Even the most unforgettable and cherished times will eventually fade away...#Layout:Right
    ->END
    
== choice_11
    // 辖区-正确
    I’m from Jiangning County, Nanjing. When I was young, the neighbors often praised my beautiful voice, so I started working hard early on.#Layout:Left
    ->END
    
->END
