// 审查阶段证物询问
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
    }  
  
== choice_1
这是月铃小姐放在休息室中酒杯……刘某也饮了一口。 #Layout:Left
    ->c1_1
    
== c1_1 ==
*那酒可有异样吗？ #Layout:Right
没有，酒里充满了月铃小姐醉人的香气。不过……<color=red>杯中的酒液很满</color>，不像被人喝过。这也不奇怪，月铃小姐饮酒时一定非常矜持吧。#Layout:Left #CE:ED_1
    ->END
  
== choice_2
在下没见过这条方巾。不过，这一角的刺绣有点意思……“铃兰”也就罢了，月铃小姐的歌迷有时也以此花作为她的象征；倒是“知了”的纹样很是少见。 #Layout:Left #CE:ED_4
    ->END

== choice_3
这应该是歌迷送给月铃小姐的花，看这纯洁羞涩的铃兰、清雅芬芳的百合，一定是刚刚摘下的鲜花……只是花枝散乱、多有断折，看来其人待月铃小姐之心，到底还是不如在下罢了。#Layout:Left  #CE:ED_7
    ->END
    
== choice_4
作为月铃小姐的忠实拥趸，这东西刘某再熟悉不过了。 #Layout:Left

*这唱片可有什么特殊之处？#Layout:Right

俗话说“外行看热闹，内行看门道”，这唱片使用先进的<color=red>电声灌音</color>，不是一般的<color=red>粗纹唱片</color>能比拟的，这样的质感才配得上月铃小姐宛若天籁的歌喉啊。 #Layout:Left

不是刘某自夸，幸好大人您遇见的是我这个行家，要不这些技术细节，除了<color=red>专业人士和狂热歌迷</color>外，还真没人知道。#Layout:Left #CE:ED_10
    ->END

== choice_5
这新闻当时可闹得轰轰烈烈、人尽皆知，因为月铃小姐的知名度，一夜间民众对宋先生也熟悉起来。 #Layout:Left

人言可畏啊，月铃小姐如此独身自好的神女，怎会对他人动情。#Layout:Left #CE:ED_13
    ->END
    
== choice_6
这块胎记很不起眼，要不是大人你今日提起，我自己都忘了。#Layout:Left
    ->END
    
    
->END