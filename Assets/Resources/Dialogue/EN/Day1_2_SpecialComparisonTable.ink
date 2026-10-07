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
This has nothing to do with me. I don't care about the lives of these villagers. #Layout:Left
    ->END
  
== choice_2
The plaque hanging in Xue’s study, he said it was a gift from the people a few years ago, and he cherishes it, <color=red>taking it down every month to dust it off</color>. I don’t understand your writing, but whatever it says, I don't care. #Layout:Left ##CE:ED_3
    ->END

== choice_3
This is Guan Sanzhu’s saber, right? He wears it around his waist every day, but I’ve <color=red>never seen that idiot actually use it</color>. He probably just keeps it to—how do you say it—oh, right, to put on airs. #Layout:Left #CE:ED_7
    ->END
    
== choice_4
Oh, oh! My black gold! Can I take it with me when I leave later? #Layout:Left
    ->END

== choice_5
I haven’t seen this bag before, but it looks pretty nice, the craftsmanship is quite fine. It could probably fetch a good price. #Layout:Left
    ->END
    
== choice_6
This flower is really strange, it smells pretty nice, but after a while, it makes you dizzy. #Layout:Left
When I was making elixirs, <color=red>I often had to go outside for some fresh air</color>, but that idiot Guan always followed Xue around like a dog, and no one would open the door for me. It was really annoying. #Layout:Left
    ->END
    
== choice_7
These elixirs were made by me, but I haven’t had time to properly research them. Every time I finished <color=red>making them, Xue would take them away</color>. Xue said they were for curing illnesses, but <color=red>these elixirs don’t seem to have any healing effect</color>. #Layout:Left #CE:ED_13
    ->END

== choice_8
This is the elixir formula written by Xue. I’ve never understood why we had to put so much useless stuff into the mix when making elixirs. Xue said that the Flower of Wangchuan is rare and too potent, so it needs to be diluted. #Layout:Left
    ->END
    
->END