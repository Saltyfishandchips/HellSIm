// 这是对照表差异项的反馈
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
        -choice == 11:  
            -> choice_11

    }  
  
== choice_1
    // 是否提交路引
    下官姓薛名怀逸，无错。 #Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    薛某乃男儿身。 #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    薛某的生辰无错。 #Layout:Left
    ->END

== choice_4
    // 生辰八字是否一致
    那晚确是中秋佳节。 #Layout:Left
    ->END

== choice_5
    // 死期是否一致
    雷州算是东区吧。 #Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    此人路引信息倒是无误，但<color=red>死期已至</color>，却<color=red>还余大量阳寿</color>，些许蹊跷。 #Layout:Right
    ->END

== choice_7
    此名为家父薛进取自诗仙李太白的“俱怀逸兴壮思飞”。他是望薛某能胸怀壮志，心境脱俗啊。#Layout:Left
    ->END
    
== choice_8
    薛某乃男儿身，虽平凡一介，但心有正气，行事无愧于天地。#Layout:Left
    ->END
    
== choice_9
    薛某的生辰无错。四十余载光阴，恍如一瞬，虽已过入不惑之年，然薛某胸中仍存几分少年之志。#Layout:Left
    ->END
    
== choice_10
    正逢中秋佳节，本该是合家团圆的日子，竟发生如此祸事。#Layout:Left
    ->END
    
== choice_11
    雷州算是东区吧。薛某生于雷州，又回雷州任职，也算有始有终吧。#Layout:Left
    ->END
