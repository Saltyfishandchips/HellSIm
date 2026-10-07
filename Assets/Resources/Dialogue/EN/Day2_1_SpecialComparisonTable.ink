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
    }  
  
== choice_1
This is the wine glass Miss Yue Ling left in the dressing room... I took a sip from it as well. #Layout:Left
    ->c1_1
    
== c1_1 ==
*Was there anything unusual about the wine? #Layout:Right
No, the wine was filled with Miss Yue Ling's intoxicating fragrance. However... <color=red>the wine in the glass is still full</color>, which suggests it hasn’t been drunk from. That’s not surprising; she must be very reserved when drinking.#Layout:Left #CE:ED_1
    ->END
  
== choice_2
I haven’t seen this handkerchief before. However, the embroidery on this corner is quite interesting... The “lily of the valley” is fine, as her fans sometimes use that flower as her symbol; but the “cicada” pattern is quite rare. #Layout:Left #CE:ED_4
    ->END

== choice_3
This should be the flowers given to Miss Yue Ling by her fans. Looking at these pure and shy lilies of the valley and the elegant and fragrant lilies, they must have just been picked... But the branches are scattered and quite broken, which shows that the sender's feelings for Miss Yue Ling are still not as genuine as mine.#Layout:Left  #CE:ED_7
    ->END
    
== choice_4
As a devoted fan of Miss Yue Ling, I’m quite familiar with this item. #Layout:Left

*Does this record have anything special about it?#Layout:Right

As the saying goes, “Amateurs watch the excitement, while professionals watch the details.” This record uses advanced <color=red>electronic sound recording</color>, which cannot be compared to ordinary <color=red>coarse records</color>. Such quality befits Miss Yue Ling's voice, which is like celestial music. #Layout:Left

I’m not boasting, but luckily you met me, an expert; otherwise, these technical details are known only to <color=red>professionals and fervent fans</color>.#Layout:Left #CE:ED_10
    ->END

== choice_5
That news caused quite a stir and became widely known. Thanks to Miss Yue Ling’s fame, the public became familiar with Mr. Song overnight. #Layout:Left

Rumors can be fearsome. How could a goddess like Miss Yue Ling, so pure and self-reliant, develop feelings for someone else?#Layout:Left #CE:ED_13
    ->END
    
== choice_6
This birthmark is quite inconspicuous; if you hadn’t brought it up today, I would have forgotten about it myself.#Layout:Left
    ->END
    
    
->END