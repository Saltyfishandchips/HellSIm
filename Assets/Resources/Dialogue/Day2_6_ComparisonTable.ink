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
    抱歉……月铃幼时便没了家，只依稀记得家人尚在时唤我“玲玲”。#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    我帮大人看看，可以吗？…大人，月铃觉得两边好像是一致的。#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   我帮大人看看，可以吗？…大人，月铃觉得两边好像是一致的。 #Layout:Left
    ->END

== choice_4
    // 死期-错误
    我帮大人看看，可以吗？…大人，月铃觉得两边好像是一致的。#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    我记得自己家在北边……被歌舞团收留后，金晤曾千方百计打听过，应是陕北没错，虽这么些年了，但我的家人说不定还在地下等我，求大人成全。#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此人几乎忘记姓名，擅改辖区希望回到家乡，其余信息无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    月铃这名儿是大当家给起的。#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    大人，别看我现在这样，其实小时候可淘气了！爬树摸鱼钻水沟子，一天净往深山里跑，我娘常说我比同村男娃还皮。#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    姥爷常说，我出生那年城里可闹腾了，又是游行又是示威的，抓进去好多学生！把我娘吓坏了，所以我打小就在大人叫我“安分点、老实点”的念叨声中长大。#Layout:Left#Layout:Left
    ->END

== choice_10
    // 死期-正确
    明年我就十八了，好像也还有很多事情没来得及做……不过死亡总是这般突然吧，又有谁能真的做足准备呢？#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    对，大人，我想回北边去。#Layout:Left
    ->END
    
->END
