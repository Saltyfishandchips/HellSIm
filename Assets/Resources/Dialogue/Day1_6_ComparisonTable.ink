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
    // 姓名
李小玫不是你的大名吗？ #Layout:Right
不是民女大名，爸妈走之前好像有给我起名。可哥小时候不识字，总是小妹小妹的喊我，村里人也就跟着叫。#Layout:Left
后来大家就真叫我李小玫了，这名字也就这样用了下来……#Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    啊？判官大人是不是走神了？ #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    好想来年二月八号也能和哥哥再一起吃寿面。 #Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    民女记得那夜是中秋节。 #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    雷州好像是东区。#Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    此人阳间常用名为李小玫，其余路引信息审查无误。#Layout:Right
    ->END
    
== choice_7
虽然很想一直叫李小玫，但这好像不是民女的大名。#Layout:Left
    ->END
    
== choice_8
……好想一辈子当哥哥的小妹……#Layout:Left
    ->END


== choice_9
每年这个时候，哥哥都会和我互相送礼。今年他送了我这套发饰，我好喜欢！#Layout:Left

    ->END

== choice_10
……中秋节……也好，算和哥哥在地下团圆了。#Layout:Left

    ->END
    
== choice_11
民女一直在县里，没出过远门。外面的世界是什么样的呢……真想去看看。#Layout:Left
    ->END
    
->END
