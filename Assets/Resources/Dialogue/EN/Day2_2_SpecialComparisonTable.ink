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
I haven't seen this before, and I'm not sure. Is there a problem? #Layout:Left

* It was poison found in Yue Ling's lounge. #Layout:Right

Is it poison? ...I don't know, but it should be <color=red>He Renshu</color>'s doing.#Layout:Left
    ->END
  
== choice_2
...You truly know how to handle your subordinates; my personal belongings have also been found.  #Layout:Left

This is a handkerchief that Yue Ling secretly gave me. I often went to see her performances, and we had some musical exchanges.  #Layout:Left #CE:ED_5
    ->END

== choice_3
These flowers were given to Yue Ling by her fans, right? Even though there were many social elites at my engagement party, many of them were her fans.#Layout:Left 
*How do you know that?#Layout:Right

After the performance, the people giving flowers surged toward the stage like a tide, and Yue Ling has always been very kind to her fans, patiently engaging with each flower giver and accepting their opinions. #Layout:Left 
    ->c3_1

== c3_1==
*She sounds like a very humble person. #Layout:Right
Yes. However, today is a bit unusual; Yue Ling personally received a couple of lucky fans' bouquets and then <color=red>quickly went backstage</color>, while the other bouquets were collected by the crew of their dance troupe. #Layout:Left 
    ->END
    
== choice_4
The song Yue Ling performed live today was <color=red>even more exquisite</color> than the record.#Layout:Left 

Though I'm embarrassed, I suspect it’s because I’m engaged to He Renshu; she wanted to attract my attention.#Layout:Left 

The emotions in the song are intertwined and poignant, making them hard to ignore. #Layout:Left 

Alas, even if it becomes her swan song, it won't be in vain...#Layout:Left 
    ->END

== choice_5
Which social elite doesn’t have some unclear romantic entanglements? I pity Yue Ling's feelings for me; even though I know there's no possibility of reciprocation, I still feel guilty and often agree to meet her. I believe He Renshu can understand, until... cough, I was pressured by the Minister of Military and Political Affairs.#Layout:Left
    ->END
    
== choice_6
What is this thing?#Layout:Left
    ->END

== choice_7
I haven't specifically examined it; it looks a bit strange this way.#Layout:Left
    ->END
    
->END