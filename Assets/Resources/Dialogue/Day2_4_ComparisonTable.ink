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
    应是无错的。#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    应是无错的。#Layout:Left
    ->END

== choice_3
    // 生辰-错误
   应是无错的。 #Layout:Left
    ->END

== choice_4
    // 死期-错误
    我虽阳寿有余，却再也无心于人世，今日了却自己的性命，心意坚决，还望大人成全。#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    ……月铃和家人流离失所前来自陕北的小县靖边…我想和她一起归乡。大人，若能满足这个不情之请，金某必竭力报答。#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此人擅自改动辖区，且今日主动赴死，其余信息无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    我在家中行五，父母遇到算命的，就给随便选了个寓意好的字眼。#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    要在军阀和匪帮的倾轧下下混口饭吃，实在不易，这年头南京大大小小歌舞团的当家都是男性。#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    我如今廿五岁，也是老大不小了，早该为自己种下的恶因承担苦果。#Layout:Left
    ->END

== choice_10
    // 死期-正确
    貌似对不上。#Layout:Right
    ->END
    
== choice_11
    // 辖区-正确
    我出生在燕子矶，实在是一穷二白，因此满十岁便出来混日子了。#Layout:Left
    ->END
    
->END

