// 这是审判完成的部分
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
    }  
  
== choice_1
    // 奖励
    Thank you, my lord! …Um... I, this lady, will never forget the grace of Lord Warden.#Layout:Left
    ->END
  
== choice_2
    // 惩罚
    Now that I’ve fallen to commoner status... you’re so high above, why can’t you let me go…#Layout:Left
    ->END

== choice_3
    // 短暂反阳
   Thank you, Lord Arbiter!#Layout:Left
    ->END

== choice_4
    // 没奖没赏
   My lord! …Please have mercy... I’m all alone now, without family. How can I survive in the depths of this hellish netherworld?#Layout:Left
    ->END
    
->END