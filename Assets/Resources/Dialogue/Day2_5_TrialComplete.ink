// 这是审判完成的部分
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
    }  
  
== choice_1
    // 奖励
    大、大人赏我？……我定将珍惜，洗心革面、重新做人。#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    ……这是我应当承受的。#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   谢判官大人！#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   来时听闻莲花台有讲经会，我将静心思过……#Layout:Left
    ->END
    
->END