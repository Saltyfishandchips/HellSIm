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
这与我无关吧，我可不关心这些村民的生死。#Layout:Left
    ->END
  
== choice_2
薛挂在书房上的匾额，据他说是前几年百姓送的，他挺爱惜的<color=red>每月都要拿下来擦灰</color>。我看不太懂你们的文字，不过写的是什么，我也不在乎。 #Layout:Left ##CE:ED_3
    ->END

== choice_3
这是关三柱的刀吧，他天天挂在腰上，但我<color=red>从没见那个白痴用这刀</color>。他肯定是拿来，怎么说的来着，哦对虚张声势罢了。#Layout:Left #CE:ED_7
    ->END
    
== choice_4
哦哦！我的黑色黄金，等会我走的时候能一并带走吗？#Layout:Left
    ->END

== choice_5
这袋子我没见过，不过看起来质感不错，做工也挺精细的，倒是个能卖好价钱的东西。#Layout:Left
    ->END
    
== choice_6
这花真是奇怪，闻起来挺香的，但时间长了就让人头昏。#Layout:Left
我炼丹的时候<color=red>常常要出去透气</color>，但那个蠢货关总是像狗一样死跟着薛，都没人帮我开门，真是让人厌恶。#Layout:Left
    ->END
    
== choice_7
这些丹药是我炼的，但还没来得及好好研究，每次<color=red>炼制出来就被薛拿走了</color>。薛说是拿来治病，但<color=red>这丹药好像没什么治病功效</color>。 #Layout:Left #CE:ED_13
    ->END

== choice_8
这是薛写的丹方。我一直搞不明白，为什么炼丹时要放那么多没用的东西进去。薛说忘川花稀少而且药劲太足，需要稀释。#Layout:Left
    ->END
    
->END