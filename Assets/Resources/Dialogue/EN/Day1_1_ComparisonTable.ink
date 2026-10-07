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
    // 是否提交路引
     This name is correct. #Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    I am but an ordinary man. #Layout:Left
    ->END

== choice_3
    // 性别是否一致
     My birthdate is correct. #Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
   It was the Mid-Autumn Festival. #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    Leizhou is in the eastern district. #Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    This person's pass information is correct, but <color=red>the death date has arrived</color> while <color=red>there is still a large amount of life left</color>, which is rather suspicious. #Layout:Right
    ->END

== choice_7
    This name was given to me by my father, Xue Jin, inspired by the great poet Li Bai's verse, "All share a lofty ambition and soaring thoughts." He hopes that I can harbor grand aspirations and maintain a transcendent mind. #Layout:Left
    ->END
    
== choice_8
    I am but an ordinary man, but my heart is filled with righteousness, and my actions are always in line with the heavens and the earth. #Layout:Left
    ->END
    
== choice_9
   My birthdate is correct. However, more than forty years have passed in the blink of an eye, and though I have entered the age of understanding, a youthful ambition still remains in my heart. #Layout:Left
    ->END
    
== choice_10
    It was the Mid-Autumn Festival, a day meant for family reunions, yet such a disaster occurred. #Layout:Left
    ->END
    
== choice_11
    Leizhou is in the eastern district, isn't it? I was born in Leizhou, and now I've returned to serve here. It seems I've come full circle. #Layout:Left
    ->END
