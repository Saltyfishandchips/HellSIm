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
你本名不叫关三柱？ #Layout:Right
果然什么事都瞒不过判官老爷。俺不是有意隐瞒的，只是叫三柱习惯了。#Layout:Left

实话讲了，当年打仗<color=red>俺当了逃兵</color>，老爷收留了我，并把这事帮我瞒过去了。从此以后俺就以关三柱这名活了，现在死了也得叫这名。#Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    没错啊，俺是个大老爷们儿啊，咋了？ #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    俺应生在正月十七啊。 #Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    俺死的那晚该是中秋节，哎…… #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    俺记得雷州也是东区吧。#Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    此人阳间常用名为关三柱，其余路引信息审查无误。#Layout:Right
    ->END
    
== choice_7
    老爷给起的，死了也得叫这名。 #Layout:Left
    ->END
    
== choice_8
俺是个大老爷们儿，当兵本应是俺的责任，但战场实在太…… #Layout:Left

    ->END

== choice_9
俺生在正月十七，正好赶上天寒地冻，那时候家里穷，连炭火都没得烧。#Layout:Left

    ->END
    
== choice_10
中秋节啊，真希望老爷也去看看集上的灯会。#Layout:Left
    ->END
    
== choice_11
俺也是雷州人，打仗时被征去北边了几年。俺回来后，便一直待在老爷府上。#Layout:Left

    ->END

->END
