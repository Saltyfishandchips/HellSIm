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
    // 姓名是否一致
    It's not wrong! It means running fast!#Layout:Left
    ->END
  
== choice_2
    // 性别是否一致
    As the big brother, I didn't protect my younger sister作为大哥，没照顾好小妹……#Layout:Left
    ->END

== choice_3
    // 生辰是否一致
The birthday on the travel pass is not correct!#Layout:Right
 My parents died early, and no one in the neighborhood<color=red> remembered my birthday</color>. So I just used <color=red>my sister's birthday</color>, celebrating together can save some money, too. Ha!#Layout:Left
Ah……To this point, I don't know how my sister is right now, she is the only onw I cannot let go.#Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
     Died in the Mid-Autumn Festival……my sister…… #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    Lord Arbiter, it is the East District!#Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    He forgot his birthday, the rest of the information is correct. #Layout:Right
    ->END
    
== choice_7
My dad gave me this name, meaning "a fast runner", and I am just like my name! Ah, I am thinking about my parents again, they died early……My mom got weak after giving birth to my sister, and died in a few days. My dad was sad over my mom's death, and died not long after that. #Layout:Left

    ->END
    
== choice_8
I liked to run around when I was a kid, and the villagers said I was a wild boy, haha!#Layout:Left
    ->END


== choice_9
    I don't remember my birthday, write my sister's please…… #Layout:Left
    ->END

== choice_10
Died in the Mid-Autumn Festival……Ah, when my sister went home and couldn't find me, what should I do.#Layout:Left

    ->END

== choice_11
I never went out of town since I was born, I stayed here for my whole life.#Layout:Left
    ->END
    
->END