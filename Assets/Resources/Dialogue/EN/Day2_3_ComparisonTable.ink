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
    Oh, where's the problem here?#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    Oh, where's the problem here? #Layout:Left
    ->END

== choice_3
    // 生辰-错误
   Oh, where's the problem here? #Layout:Left
    ->END

== choice_4
    // 死期-错误
Are you talking about the date of death? Of course, I hope I won't die, but my father will eventually pass away before me. At that time... anyway, I just hope to live smoothly until I'm nearly a hundred; that’s much better than most people.#Layout:Left

*Life and death have their fates; the netherworld isn’t something you can come and go from as you please. #Layout:Right
    
Oh dear, my lord, those two black and white spirits have already lectured me on this. Let me say it again: if you let me go back, there will be plenty of benefits. The ransom my family offers will be enough for you to live comfortably here for several generations! You surely won’t be as stubborn as they are.#Layout:Left
    ->END
    
*The date of death is the time when you were taken back to the netherworld by the spirits. #Layout:Right

Oh, you mean the time of this trip? You should have said so earlier! But I think we don't need to complicate things. Just have those two black and white spirits send me back. Although this journey has been unpleasant, my family will still give you some money as hospitality for hosting me.#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    Oh, where's the problem here?#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    This person wishes to delay her death, and the other information is accurate.#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    “Opening and closing as one wishes,” my name carries my family's affection.#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    As a daughter of the He family, I should only indulge in silks, brocades, fine wines, and fragrances.#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    I haven't even reached my blossoming years, and I’m to marry that down-and-out fellow... but as long as I can continue this leisurely and luxurious life, anything is negotiable.#Layout:Left

    ->END

== choice_10
    // 死期-正确
    Oh, you are so kind, my lord! If that's the case, could you grant my family several more decades of life?#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    I grew up as a debutante amidst luxury. My father says that all the beautiful things in the world will converge in Nanjing, so there's no need to personally go out and seek anything.#Layout:Left
    ->END
    
->END

