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
        -choice == 7:
            -> choice_7
        -choice == 8:
            -> choice_8        
    }  
  
== choice_1
这只酒杯看上去没什么特别的，好似是我府上最普通的那种。 #Layout:Left #CE:ED_2
    ->END
  
== choice_2
这条方巾材质还行吧，但<color=red>绣工也太粗糙了</color>。这样的货色，都不需要我指示，佣人就会直接处理掉了，根本到不了我眼前。  #Layout:Left 
    ->END

== choice_3
嗯……这个熟悉又恶心的花香，好像<color=red>与我死前闻到的相同</color>。#Layout:Left #CE:ED_8
    ->END
    
== choice_4
……这唱片用的是<color=red>电声灌音</color>，质感和效果都更好，我看月铃的成名主要也归功于此吧。如果换成<color=red>粗纹唱片</color>，谅她也没几个粉丝。#Layout:Left #CE:ED_11
    ->END

== choice_5
哼，还是那句话，他宋知年算什么东西，不过是穷人乍富，这点破事也配让我费心思？因为这个原因就想去除掉月铃，传出去都好笑！他们俩也太把自己当回事了，也不看看我何任舒是什么人！ #Layout:Left #CE:ED_14
    ->END
    
== choice_6
什么玩意儿，别人的胎记看着真恶心！#Layout:Left
    ->END

== choice_7
什么玩意儿，别人的胎记看着真恶心！#Layout:Left
    ->END

== choice_8
我从没喜欢过自己的胎记…它就像瓷胚上的黑点一样破坏美感，幸好旁人看不见。#Layout:Left
    ->END
    
->END