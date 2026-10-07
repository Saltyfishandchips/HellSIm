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
What is this? I’ve never seen it before.#Layout:Left 

*Are you really unfamiliar with it? #Layout:Right

Let me take another look... Ah, I think I saw this cup while waiting for Yue Ling in the lounge. There were lip prints on the rim back then, just not this blurred... It should have been <color=red>what she drank before going on stage.</color>#Layout:Left #CE:ED_3
    ->END
    
*It’s the poisoned wine found in Yue Ling's lounge. #Layout:Right

Wh-what! I think I really saw this cup while waiting for her. There were lip prints on it back then… Did she drink from it after returning to her room?#Layout:Left #CE:ED_3
    ->END
  
== choice_2
This handkerchief, I had something similar… Young women are shy and can’t express their feelings directly, so they resort to embroidery to hint at their affection. Once the man accepts it, it becomes a token of love. #Layout:Left 

Yue Ling didn’t know embroidery as a child and asked me for help... Ah, our bond as teacher and student extends beyond singing... We’ve endured darkness and loneliness together for years. Lord, please find out what happened to her and punish the evil ones! #Layout:Left 

    ->END

== choice_3
Back when I performed, I received bouquets like an ocean... This one looks so wilted, not at all like the ones I used to receive. Ultimately, I too had my moments of brilliance, no less than Yue Ling.#Layout:Left 
    ->END
    
== choice_4
My song "The Camellia Blooms" color=red>broke sales records</color> and was even on the cover of magazines, making quite a splash.#Layout:Left

...Spring has arrived, and winter, no matter how beautiful, must depart… The changing of the seasons is destined, just like the ups and downs of life...#Layout:Left #CE:ED_12
    ->END

== choice_5
Mr. Song’s feelings for Yue Ling run deep, second only to Jin Wu in my eyes... Hehe, yes, our Second Boss thinks he hides his feelings well, but he can only deceive a naive girl like Yue Ling. #Layout:Left

But what can his circumstances compare to the devoted Mr. Song? If Yue Ling can weather this storm and bow to He Renshu, endless wealth and a good life await her.#Layout:Left
    ->END
    
== choice_6
So vague.#Layout:Left
    ->END

== choice_7
Not as beautiful as mine.#Layout:Left
    ->END

== choice_8
Whose is this? It looks quite like mine, must be another beauty.#Layout:Left
    ->END

== choice_9
Another cup? I don’t know... I really don’t know!#Layout:Left #CE:ED_17
    ->END

== choice_10
...I often caress it alone at night; it has been with me from lonely youth to my rise to fame and then... #Layout:Left
    ->END
    
->END