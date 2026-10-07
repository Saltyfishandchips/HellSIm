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
  
== choice_1 ==
这些村民<color=red>没失踪</color>啊，他们都是病人，老爷叫俺悄悄把他们带到府里的花房，让<color=red>崔郎中</color>照看着。老爷怕<color=red>这病会传染</color>，村里人又不知道，怕引起恐慌，所以才让俺私底下把他们带走。等病治好了，老爷再告诉县里。#Layout:Left #CE:ED_1
    ->END
  
== choice_2 ==
这个匾俺来的时候就挂在老爷书房门上了。老爷对这匾特别在意，说是百姓送来夸他是个好官的，<color=red>每个月都叫侍女取下来擦干净哩</color>。#Layout:Left #CE:ED_4
    ->END

== choice_3 ==
这！！判官老爷在哪儿找到的？这是俺的军刀，当年在军中发的。俺刀从不离身，生怕有啥变故。可那天晚上追贼的时候，<color=red>刀不小心给弄丢了</color>。#Layout:Left
    ->END
    
== choice_4 ==
这些是炼药留下的废料，俺按老爷的吩咐，把它们都<color=red>堆到花房里了</color>。#Layout:Left
    ->END

== choice_5 ==
这好像是<color=red>崔郎中的袋子</color>，俺见她经常去库房拿这个袋子。里面装的是什么，俺不太清楚。#Layout:Left #CE:ED_10
    ->END
    
== choice_6 ==
这朵花是老爷说的什么<color=red>忘川花</color>，俺也不太懂这些东西。但俺只需要知道它是老爷拿来救人的东西就行了，是<color=red>崔郎中负责在花房里种这个花</color>。#Layout:Left #CE:ED_12
    ->END
    
== choice_7 ==
这些丹药是洋鬼子炼的，老爷说是能让那些病人好起来的药，俺得把这些丹药看好了。#Layout:Left
    ->END

== choice_8 ==
这丹方是老爷写的，那些个外文什么的是洋鬼子的手笔。俺大字不识一个，看不懂上面写的是啥。#Layout:Left
    ->END
    
->END