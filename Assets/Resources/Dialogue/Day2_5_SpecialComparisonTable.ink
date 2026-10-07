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
        -choice == 9:
            -> choice_9
        -choice == 10:
            -> choice_10
    }  
  
== choice_1
这、这是什么？我没见过。 #Layout:Left 

*你真没见过吗？  #Layout:Right

我再看看……哎呀，我在休息室等月铃时好像看见过这杯子，当时杯沿已经有唇印了，只是没这么模糊…应当<color=red>是月铃上台前喝的</color>。#Layout:Left #CE:ED_3
    ->END
    
*是在月铃休息室发现的毒酒。 #Layout:Right

什、什么！我在等月铃时好像确实看见过这杯子，当时杯沿已经有唇印了，只是没这么模糊…应当<color=red>是月铃上台前喝的</color>。……大人，月铃她、她回房间后有喝过吗？#Layout:Left #CE:ED_3
    ->END
  
== choice_2
这方巾，我曾经也有过类似的呢……女儿家含蓄羞涩，不便开口，就只能做点绣活暗示心意，男方收下后这就成了定情信物。 #Layout:Left 

月铃幼时未学过绣工，当时还曾向我请教……哎，我们的师徒情谊，并不仅在唱歌上啊…多年携手熬过的黑暗和寂寞……大人，请您一定查明月铃下落……严惩、严惩恶人！ #Layout:Left 

    ->END

== choice_3
当年我每每登台献声时，也会收到如海洋般的花束……这捧花很是残败了，没有我曾经收到的好，终究…我也有过那样梦幻辉煌的时刻，不比月铃差……#Layout:Left 
    ->END
    
== choice_4
我的《山茶花开》，销量可<color=red>破了当年的最高记录</color>呢，还上过画报封面，风头无两。#Layout:Left

……春季来了，冬天纵有再多美景也该走了…四季更迭乃是天定，一如人的得意失落……#Layout:Left #CE:ED_12
    ->END

== choice_5
宋先生待月铃情深似海，在我看来也就仅次于金晤吧……呵呵，是的，我们的金二当家以为他将自己的感情藏地很好，其实也就只能瞒过月铃这样未经人事的小姑娘罢了。 #Layout:Left

但他的条件，又拿什么去和一片痴情的宋先生比呢。月铃若能挺过此劫，只要懂得在何任舒面前低头，后面有的是享不尽的荣华富贵，过不完的好日子呢。#Layout:Left
    ->END
    
== choice_6
模模糊糊的。#Layout:Left
    ->END

== choice_7
没我的好看。#Layout:Left
    ->END

== choice_8
这是谁的呀？和我的还挺像，也是个美人儿吧。#Layout:Left
    ->END

== choice_9
怎么又是杯子？我不知道……我真的不知道！#Layout:Left #CE:ED_17
    ->END

== choice_10
…我常在深夜独自一人时摩挲它，它陪着我，从寂寞年少到名声大震再到…… #Layout:Left
    ->END
    
->END