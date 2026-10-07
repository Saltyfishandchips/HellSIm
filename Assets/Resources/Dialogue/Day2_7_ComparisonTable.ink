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
    老大，冤枉啊！老白我照老大吩咐仔细填了，不会有错的。#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    老大，冤枉啊！老白我照老大吩咐仔细填了，不会有错的。#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   老大，冤枉啊！老白我照老大吩咐仔细填了，不会有错的。 #Layout:Left
    ->END

== choice_4
    // 死期-错误
    老大，冤枉啊！老白我照老大吩咐仔细填了，不会有错的。#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    老大，冤枉啊！老白我照老大吩咐仔细填了，不会有错的。#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此鬼路引信息明白无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    老白我乃酆都地府阳无常拘鬼使，谢必安是也！#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    在这地府待久了什么鬼都见过，什么潘安卫玠韩子高、嵇康宋玉兰陵王……纵然他们盛名在外，老白我仍称得上是：酆都俏美男，地府一枝花！#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    白爷我如花般绽放于春日，在勾魂时就和老黑那冷情人不一样。我格外注意临终关怀，不断将爱意如春风般吹向阳间哦。#Layout:Left
    ->END

== choice_10
    // 死期-正确
    依稀记得那是一个雨夜，老黑与我在小桥边有约……#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    来东区勾魂已有一千三百三十八年了，秦广王许诺我再干一百六十二年就给我第二次涨薪和调休。#Layout:Left
    ->END
    
->END
