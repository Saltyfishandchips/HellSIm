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
    范无处，发现错误。请继续，判官大人。 #Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    男……判官大人，信息无误，请再核实一次。 #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    生辰错误。判官大人，核查妥当。#Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    这项判断不符，请判官大人再确认一遍。 #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    确为东区，判官大人，还请再查验一遍。 #Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
  审查完毕。我故意填错了两处路引信息，因为其余鬼魂不熟悉流程更会出错，判官大人需仔细核查。#Layout:Left
  但错误项也有可能是该鬼魂的执念导致。#Layout:Left
  我死期已至，判官大人需要判我归阴。#Layout:Left
    ->END

== choice_7
    实为范无咎，判官大人请重新确认。#Layout:Left
    ->END
    
== choice_8
    男，没错。判官大人明察。#Layout:Left
    ->END
    
== choice_9
    应为六五九年三月初九，还请再查验一遍。#Layout:Left
    ->END
    
== choice_10
    六八六年六月初三，正逢雨季。#Layout:Left
    ->END
    
== choice_11
    东区，完全正确。#Layout:Left
    ->END