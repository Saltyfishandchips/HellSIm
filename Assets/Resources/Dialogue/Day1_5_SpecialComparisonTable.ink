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
    }  
  
== choice_1
   哈哈，村里的贱民，还想着失踪的人能活着回来？失踪了一个月、两天，有什么分别？终究<color=red>都成了肥料</color>罢了。#Layout:Left
    ->END
  
== choice_2
    清正廉明？哈哈哈！这世上全是道貌岸然之辈啊。#Layout:Left
    ->END

== choice_3
   那怂货的刀啊，跟了他半辈子，总算见了血。#Layout:Left
    ->END
    
== choice_4
  蠢货炼丹剩的废料，怂货每次都堆在门口不敢往花房去，还得小女移进去。
他不敢往花房去，是怕看见那些药人吧，真虚伪啊。#Layout:Left #CE:ED_9
    ->END

== choice_5
狗官不知道从哪弄来的忘川花种子，我和它竟生了几分共鸣。#Layout:Left #CE:ED_11
    ->END
    
== choice_6
真美啊，不是吗？血红如泪，花瓣如火。没想到你们地府也藏着这等艳丽之物。#Layout:Left
    ->END
    
== choice_7
忘忧丹，哈哈！狗官说是治病的药，其实是<color=red>他自己用于增寿</color>的。越吃越怕死，越吃越离不开，真可笑！#Layout:Left #CE:ED_14
    ->END
    
== choice_8
狗官写的东西还不如厕纸有用，除了忘川花，其他全是废物，偏偏还写得这么认真。#Layout:Left #CE:ED_16
    ->END
    
== choice_9
忘川花真是奇异无比，人活着时鲜血滋养，种子便能迅速催生出<color=red>鳞茎，开出花</color>来；可一旦人死了，<color=red>花朵凋零，鳞茎枯萎</color>，那些鳞茎又会化作坚硬如石的种子，仿佛在等待下一次生命的轮回。#Layout:Left #CE:ED_17
    ->END
->END
