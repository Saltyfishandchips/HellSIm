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
    The name is White Brandt. How many times do I have to repeat? #Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    Of course, I'm a man! #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    I can't really recognize your characters.#Layout:Left 
    ->END

== choice_4
    // 生辰八字是否一致
    I believe the day is Mid-autumn festival in your culture. #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    This person is outside of our jurisdiction. #Layout:Right
    I told you! <color=red>You have no authority over me. </color>#Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
   This person is outside of our jurisdiction. The rest of the travel pass information is correct. #Layout:Right
    ->END
    
== choice_7
    White is my given name, and Brandt is my family name. You've reversed the order—how strange! #Layout:Left
    ->END
    
== choice_8
    Of course, I'm a man! Isn't my beard thick enough? #Layout:Left

    ->END


== choice_9
    That part was filled in by the guy in the white hat. You should ask him. We don't record dates like that! #Layout:Left

    ->END

== choice_10
    You people sure love to set deadlines, as if my life and death could be decided by ink on a piece of paper! #Layout:Left
    ->END
    
== choice_11
    This is none of your business. Do you understand? #Layout:Left
    ->END

->END
