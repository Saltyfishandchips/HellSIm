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
    Boss, that's not fair! I did it carefully as you asked, it shouldn't be wrong. #Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    Boss, that's not fair! I did it carefully as you asked, it shouldn't be wrong.#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   Boss, that's not fair! I did it carefully as you asked, it shouldn't be wrong. #Layout:Left
    ->END

== choice_4
    // 死期-错误
    Boss, that's not fair! I did it carefully as you asked, it shouldn't be wrong.#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    Boss, that's not fair! I did it carefully as you asked, it shouldn't be wrong.#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    The travel pass of this ghost is correct. #Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    I am the Spirit Warden of the Fengdu city in netherworld, Xie Bi'an!#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    I've been in the netherworld for a long time, I've seen all kind of ghosts. Like Pan Anwei, Han Zigao……Even though they are famous, I can still be called: a handsome man in the Fengdu city, a flower in the netherworld!#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    I am just like the a flower, blooming in the springdays, different from that cold guy Black since we became spirit wardens. I value on caring for the dead, like spring breeze who blows love to the living world. #Layout:Left
    ->END

== choice_10
    // 死期-正确
    I remember it was a rainy night, Black and I had a date near the bridge……#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    It's been one thousand and thirty eight years since I became a spirit warden in the East District, Qin Guang King promised me the second salary raise and holidays.#Layout:Left
    ->END
    
->END
