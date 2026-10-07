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
These……These are the missing villagers in the flower room……My brother had been looking for them.#Layout:Left
    ->END
  
== choice_2
This……This is the Plaque in master Xue's study, he asked me to often take it down and clean it. Once I saw he hid a elixir bottle<color=red>behind the plaque</color>.#Layout:Left
    ->END

== choice_3
It's Guan Sanzhu's saber, that day, it seems that he went out of the flower room without it… #Layout:Left
    ->END
    
== choice_4
It seems to be the waste of the elixir production from the pharmacy. It's the same as those I cleaned out of the pharmacy. 
 #Layout:Left
    ->END

== choice_5
A bag that I've never seen before……#Layout:Left
    ->END
    
== choice_6
This flower……is the one I saw in the flower room……the villagers…#Layout:Left
    ->END
    
== choice_7
This bottle seems to be the one that master Xue hid <color=red>behind the plaque</color>.#Layout:Left
    ->END
    
== choice_8
It's the handwriting of master Xue, that foreigner also wrote something on that……#Layout:Left
    ->END
    
== choice_9
These seeds……look strange……never seen them before……#Layout:Left
    ->END
->END
