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
This wine glass looks ordinary, just like the most common ones from my residence. #Layout:Left #CE:ED_2
    ->END
  
== choice_2
This square scarf is decent, but the <color=red>embroidery is too rough</color>. With such quality, the servants would handle it without me even needing to instruct them; it wouldn’t even make it to my sight.  #Layout:Left 
    ->END

== choice_3
Hmm… this familiar yet nauseating floral scent seems to be <color=red>the same as what I smelled before I died</color>.#Layout:Left #CE:ED_8
    ->END
    
== choice_4
…This record uses <color=red>electronic sound recording</color>, which has better quality and effects; I suppose Yue Ling’s fame is largely thanks to this. If it were <color=red>coarse-textured records</color>, I doubt she’d have many fans.#Layout:Left #CE:ED_11
    ->END

== choice_5
Hmph, let’s face it—what’s Song Zhinian? Just a poor person suddenly becoming wealthy. Does he really think this petty matter deserves my attention? Wanting to get rid of Yue Ling for this reason? It’s laughable! They’re taking themselves too seriously; they don’t even realize who I am! #Layout:Left #CE:ED_14
    ->END
    
== choice_6
What is this? Other people's birthmarks look disgusting!#Layout:Left
    ->END

== choice_7
What is this? Other people's birthmarks look disgusting!#Layout:Left
    ->END

== choice_8
I’ve never liked my own birthmark... it ruins the beauty like a black dot on porcelain, but thankfully others can’t see it.#Layout:Left
    ->END
    
->END