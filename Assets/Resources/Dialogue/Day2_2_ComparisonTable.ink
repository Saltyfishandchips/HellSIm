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
    阁下许是疲乏，烦请再为鄙人仔细查看下。#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    阁下许是疲乏，烦请再为鄙人仔细查看下。 #Layout:Left
    ->END

== choice_3
    // 生辰-错误
   阁下许是疲乏，烦请再为鄙人仔细查看下。 #Layout:Left
    ->END

== choice_4
    // 死期-错误
    哦，死期是我随便填的，阁下手握生死簿，只消一看就能明白，鄙人这等成大事之人必不会死于今日那种小小意外，一会儿还得麻烦阁下派鬼送鄙人回去。 #Layout:Left

*你今日确实大限已至。 #Layout:Right

阁下说笑了。天降大任于我，待我平步青云，在人世间做出一番千秋大业，再来与阁下谈笑论功赏。#Layout:Left
    ->END
    
*生死有命，富贵在天，阎王造册所言，岂是凡人能勉强的？  #Layout:Right

阁下所言在理。只是鄙人生而不凡，命数强劲，如有神佑，我等福泽深厚之人岂会似平头百姓般不声不响地死掉？#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    阁下许是疲乏，烦请再为鄙人仔细查看下。#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此人妄想拖延死期，其它信息正确无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    既是形容鄙人博学多才、经久不衰，又取“识时务者为俊杰”之意。#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    鄙人不才，却是如今名动金陵的堂堂七尺男儿。#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    年纪轻轻位至一等军正……也算是对得起我这些年的付出。#Layout:Left

    ->END

== choice_10
    // 死期-正确
    大人真是通情达理！#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    鄙人曾因军旅事务辗转多地，但还是自小长大的南京有最多的牵挂。#Layout:Left
    ->END
    
->END
