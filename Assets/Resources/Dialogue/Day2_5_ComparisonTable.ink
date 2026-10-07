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
    我本名原叫……苏曼？对，苏曼、苏曼。呵呵……太久了，仿佛是在叫陌生人了。#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    呵呵，不打紧，大人再看看？#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   哎呀，果然…这也瞒不过大人。我确是1913年生人……填1929年是因为，那年歌星蔓露名声鹊起，对她而言宛若新生…… #Layout:Left
    ->END

== choice_4
    // 死期-错误
    呵呵，不打紧，大人再看看？#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    呵呵，不打紧，大人再看看？#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此人对姓名记忆模糊，而对成名之年印象深刻，其余信息无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    蔓露之名在偌大的南京家喻户晓。#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    画报上曾对我多加赞誉，夸我一开口便最是江南女子的温婉多情。#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    是呢，这正是蔓露的诞生之年。#Layout:Left#Layout:Left
    ->END

== choice_10
    // 死期-正确
    “寒风摧树木，严霜结庭兰”……再难忘、再不舍的时光也终有凋零之日……#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    我是南京江宁县人，小时候邻家阿婶阿叔常夸我声音美，我便早早出来打拼了。#Layout:Left
    ->END
    
->END
