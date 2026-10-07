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
   你也记不清这个代号啊！哈哈哈！#Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    嗯？判官大人再仔细瞧瞧？#Layout:Left
    ->END

== choice_3
    // 生辰是否一致
    路引生辰有误！ #Layout:Right
哟，小女还以为这世上，包括我自己，都<color=red>没人记得我的生辰了呢</color>。这生死簿真是有趣啊，判官大人就按上面的记的来吧。#Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    判官大人？那夜应是中秋吧。#Layout:Left
    ->END

== choice_5
    // 死期是否一致
    这儿当属东区。#Layout:Left
    ->END
    
== choice_6
    // 阳寿
    嗯，崔二路引也无误，但还是那个问题。此人死期已至，却还余大量阳寿，难道是忘川花的作用？ #Layout:Right
    ->END
    
== choice_7
只是个代号罢了，无须在意。#Layout:Left
    ->END
    
== choice_8
小女这厢有礼了。哈哈！#Layout:Left
    ->END


== choice_9
嗯？生死簿上写的如若真是这个日期，那真是有点造化弄人了。#Layout:Left
    ->END

== choice_10
忌日是中秋节，哈哈哈不错我很喜欢！#Layout:Left
    ->END
    
== choice_11
兜兜转转还是回到了这里，造化弄人啊。#Layout:Left
    ->END

->END
