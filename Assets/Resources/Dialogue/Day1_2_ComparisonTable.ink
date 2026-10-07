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
    怀特-布兰特，我还要说多少遍！#Layout:Left
    ->END
  
== choice_2
    // 姓名是否一致
    当然是男的！ #Layout:Left
    ->END

== choice_3
    // 性别是否一致
    看不太懂你们的字！#Layout:Left 
    ->END

== choice_4
    // 生辰八字是否一致
    那晚好像是你们的中秋节吧！#Layout:Left
    ->END

== choice_5
    // 死期是否一致
    此人的辖区不在我们的管辖范围。 #Layout:Right
    我早说了！<color=red>你无权处置我。</color>#Layout:Left
    ->END
    
== choice_6
    // 路引信息有误
    此人不在我们管辖范围，其余路引信息审查无误。 #Layout:Right
    ->END
    
== choice_7
    怀特是我的名字，布兰特才是我的家族姓氏。你们这居然颠倒了顺序，真是太古怪了！#Layout:Left
    ->END
    
== choice_8
    当然是男的！难道我的胡子还不够浓密？#Layout:Left

    ->END


== choice_9
    这行是那个戴白帽子的人给我填的，你问他去。我们拂林人可不这样记录日期！#Layout:Left

    ->END

== choice_10
    你们可真喜欢给人划定期限，仿佛我的生死能被这纸上墨迹所决定一样！#Layout:Left
    ->END
    
== choice_11
    你管不到我！知道吗！#Layout:Left
    ->END

->END
