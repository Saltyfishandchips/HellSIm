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
    These are all citizens of my county. Misfortunes truly never come singly. Recently, many have reported missing persons to the county office, and though I have tried my best to investigate, I find myself powerless, unable to handle it all. #Layout:Left
    ->END
  
== choice_2
    This plaque was a gift <color=red>from the villagers a few years ago</color>, given out of their kindness. I hung it in my study to constantly remind myself to strive harder. #Layout:Left #CE:ED_2
    ->END

== choice_3
   This saber is an old relic <color=red>from Sanzhu's time in the army</color>, now used to guard the estate. He never parts from it. I’ve advised him not to work so hard, but he insists—truly loyal to me. #Layout:Left #CE:ED_6
    ->END
    
== choice_4
   These leftover materials are the remnants from the medicine-making process. I had Sanzhu <color=red>pile them in the flower house to use as fertilizer</color>, making the best use of their last bit of medicinal power. #Layout:Left #CE:ED_8
    ->END

== choice_5
    Is this something from the manor? Why have I never seen it before? #Layout:Left
    ->END
    
== choice_6
     don’t know where B found these foreign herbs, but they are truly miraculous.#Layout:Left
    ->END
== choice_7
    This is the fruit of my research with Dr. Cui—the medicine is highly effective. We hoped to alleviate the strange illness that has recently spread. #Layout:Left
    ->END

->END

