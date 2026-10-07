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
    }  
  
== choice_1
    唉，这些都是我县的百姓啊，真是祸不单行啊。县衙近日常有人来报失踪，薛某虽也竭力查探，但真是分身乏术力不从心啊。#Layout:Left
    ->END
  
== choice_2
    这块匾额是<color=red>几年前乡亲们</color>抬爱赠送的，薛某悬于书房之上，为的是时刻勉励自己。 #Layout:Left #CE:ED_2
    ->END

== choice_3
   这刀是三柱当年<color=red>从军时的旧物</color>，如今用来护院。三柱总是刀不离身，薛某劝过他不用如此辛苦，但他依旧坚持，真是对薛某忠心耿耿啊。#Layout:Left #CE:ED_6
    ->END
    
== choice_4
   这些废料是炼药时的残留物，是薛某让三柱<color=red>堆到花房里当做为肥料</color>，也算不浪费这最后一丝药力。#Layout:Left #CE:ED_8
    ->END

== choice_5
    这是府上之物吗？为何薛某从未见过。#Layout:Left
    ->END
    
== choice_6
    不知布兄从哪寻来的异域药草，真是神妙非常。#Layout:Left
    ->END
== choice_7
    薛某与崔郎中的研究成果，药效卓然，本想缓解近期爆发的怪病。#Layout:Left
    ->END

->END

