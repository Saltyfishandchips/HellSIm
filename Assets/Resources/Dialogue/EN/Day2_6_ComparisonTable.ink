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
    Sorry……I was homeless since I was a child, and only remembered my family called me "Lingling" when they were still there. #Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    I'll help you check it, okay?…Lord, I think it's correct.#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   I'll help you check it, okay?…Lord, I think it's correct. #Layout:Left
    ->END

== choice_4
    // 死期-错误
    I'll help you check it, okay?…Lord, I think it's correct.#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    I remembered my home was at the north……After I was taken in by the dance troupe, Jin Wu asked around, it should be Shanbei, a north city. So many years passed, my family might be there waiting for me, please grant my wish, Lord.  #Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    This ghost almost forgot her name, and changed her jurisdiction. The rest of the information is correct.#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    The name Yue Ling is given by my boss.#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    Lord, don't judge from my appearance, I was very naughty when I was a child! Climbing trees, fishing, drilling ditches, my mom often said that I was more naighty than the boys in the village.#Layout:Left
    ->END

== choice_9
    // 生辰-正确
     When I was a child, my grandpa used to say that when I was born, a lot happened in the city. The parade and demonstrations got a lot of students arrested! It scared my mom, so I grew up with the chatter of adults telling me to "be good and be good". #Layout:Left#Layout:Left
    ->END

== choice_10
    // 死期-正确
    Next year I'll be eighteen years old, and there are a lot of things I haven't done yet……But death is always abrupt like this, who can be really prepared?#Layout:Right
    ->END
    
== choice_11
    // 辖区-正确
    Yes, Lord, I want to go back to the north. #Layout:Left
    ->END
    
->END
