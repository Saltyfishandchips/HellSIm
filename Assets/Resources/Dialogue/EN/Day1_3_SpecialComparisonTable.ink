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
These villagers <color=red>haven't disappeared</color>, they are all patients. The master asked me to quietly bring them to the flower house in the mansion and let <color=red>Dr. Cui</color> take care of them. The master is worried that <color=red>the disease might spread</color>, and the villagers don't know about it, fearing it would cause panic, so he asked me to secretly take them away. Once they are cured, the master will inform the county. #Layout:Left #CE:ED_1
    ->END
  
== choice_2 ==
This plaque was hanging on the door of the master’s study when I arrived. The master is particularly fond of this plaque, saying it was sent by the people to praise him as a good official, <color=red>and he has the maid take it down and clean it every month</color>. #Layout:Left #CE:ED_4
    ->END

== choice_3 ==
This!! Where did you find this, Lord Arbiter? This is my saber, issued to me in the army. I never part with my blade, fearing any unexpected events. But that night while chasing a thief, <color=red>I accidentally lost the saber</color>. #Layout:Left
    ->END
    
== choice_4 ==
These are the leftover materials from the alchemy, which I piled up in the flower house as per the master's orders. #Layout:Left
    ->END

== choice_5 ==
This seems to be <color=red>Dr. Cui's bag</color>; I’ve seen her go to the storeroom to take this bag often. I’m not quite sure what’s inside. #Layout:Left #CE:ED_10
    ->END
    
== choice_6 ==
This flower is what the master called <color=red>Wangchuan Flower</color>; I don’t quite understand these things. But I only need to know it’s something the master uses to save people, and <color=red>Dr. Cui is responsible for growing this flower in the flower house</color>. #Layout:Left #CE:ED_12
    ->END
    
== choice_7 ==
These elixirs were concocted by foreign devils; the master said they are medicines that can help those patients recover, so I need to keep an eye on these elixirs. #Layout:Left
    ->END

== choice_8 ==
This prescription was written by the master, and the foreign script is the work of the foreign devils. I can't read a single character, so I don’t understand what’s written on it. #Layout:Left
    ->END
    
->END