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
    没错啊！迅捷的捷！#Layout:Left
    ->END
  
== choice_2
    // 性别是否一致
    作为大哥，没照顾好小妹……#Layout:Left
    ->END

== choice_3
    // 生辰是否一致
路引生辰有误！#Layout:Right
我爹娘走的早，街坊邻居也没人<color=red>记得我的生辰</color>了。我干脆就把<color=red>小妹的生辰当成自己的</color>，一起庆贺，也能省些钱。哈！#Layout:Left
哎……说到这儿，也不知道小妹现在怎么样了，我最放不下的就是她。#Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    死在中秋夜……小妹…… #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    判官大人，这就是东区啊！#Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    此人遗忘了自己的生辰，其余路引信息审查无误。 #Layout:Right
    ->END
    
== choice_7
这是我爹给我起的名，我也应着这名字，跑得快！唉，又想起我爹娘了，他们走得早……我娘生小妹那会儿伤了身子，没几天就去了。爹整日为我娘的事伤神，没多久也跟着走了。#Layout:Left

    ->END
    
== choice_8
小时候常跑东跑西，村里人见了都说我是个野小子，哈哈！#Layout:Left
    ->END


== choice_9
    不记得我的生辰了，写的小妹的…… #Layout:Left
    ->END

== choice_10
死在中秋夜……唉，小妹回家发现我不在，可怎么办啊。#Layout:Left

    ->END

== choice_11
我从小到大没出过县，一直就待在这儿。#Layout:Left
    ->END
    
->END