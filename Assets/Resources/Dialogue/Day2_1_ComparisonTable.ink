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
    大人，若依刘某所见，仿佛无甚问题啊。。#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    大人，若依刘某所见，仿佛无甚问题啊。 #Layout:Left
    ->END

== choice_3
    // 生辰-错误
    大人，若依刘某所见，仿佛无甚问题啊。 #Layout:Left
    ->END

== choice_4
    // 死期-错误
    大人，若依刘某所见，仿佛无甚问题啊。#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    大人，若依刘某所见，仿佛无甚问题啊。#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此人路引信息明白无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    这名字是家母取的，希望在下一辈子平安稳当。毕竟，如今这世道还能希求什么呢？#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    身为男子，只希望在这乱世中能守护月铃小姐一生一世。#Layout:Left
    ->END


== choice_9
    // 生辰-正确
    不是刘某自满，从一介穷酸书生到如今坐拥一家出版社，也勉强能算作年轻有为了。#Layout:Left

    ->END

== choice_10
    // 死期-正确
    我们报社这行，对时间都很敏感，确是这个日期没错。#Layout:Left

    ->END
    
== choice_11
    // 辖区-正确
    在下自小便在人杰地灵、钟灵毓秀的江南水乡长大。#Layout:Left

    ->END
    
->END
