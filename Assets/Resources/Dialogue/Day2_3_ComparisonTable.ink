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
    // 姓名-错误
    哟，这哪里有问题？#Layout:Left
    ->END
  
== choice_2
    // 性别-错误
    哟，这哪里有问题？ #Layout:Left
    ->END

== choice_3
    // 生辰-错误
   哟，这哪里有问题？ #Layout:Left
    ->END

== choice_4
    // 死期-错误
你说死期吗？本小姐当然希望自己不会死，但是阿爸总有一天会先我一步去世，到那时……总之本小姐就一切顺遂地活到差不多百岁就好啦，也比一般人强多了。 #Layout:Left

*死生有定数，地府不是你说来就来、说走就走的。 #Layout:Right
    
啊呀，大人，这话那一黑一白两个东西已经给我念叨过了，本小姐也再说一遍，只要放本小姐回去，短不了好处，家里给的赎金够你们在这地儿舒舒服服过几辈子了！大人你肯定不会像他们那么迂腐吧。#Layout:Left
    ->END
    
*死期是填写你今次被无常抓归地府的时间。 #Layout:Right

哦，你是说这一次来的时间？早说嘛。不过我看不用这么麻烦，直接让那一黑一白两个东西送我回去，虽然这趟旅程不愉快，但家里还是会给你们点钱，就当是接待本小姐的开销了。#Layout:Left
    ->END

== choice_5
    // 辖区-错误
    哟，这哪里有问题？#Layout:Left
    ->END
    
== choice_6
    // 路引审核结束
    此人妄想推迟死期，其它信息正确无误。#Layout:Right
    ->END
    
== choice_7
    // 姓名-正确
    “卷舒开合任天真”，本小姐的名字饱含了家人的宠爱啊。#Layout:Left
    ->END
    
== choice_8
    // 性别-正确
    身为何家女儿，自是只管流连于绫罗绸缎、美酒香烟就好。#Layout:Left
    ->END

== choice_9
    // 生辰-正确
    本小姐还未到花信年华，就要嫁与那落魄小子……不过只要能延续现在悠闲奢华的日子，什么都好说。#Layout:Left

    ->END

== choice_10
    // 死期-正确
    哟，大人你真好！既是如此，能否给本小姐家人都再加数十年阳寿？#Layout:Left
    ->END
    
== choice_11
    // 辖区-正确
    本小姐是锦绣堆里长大的名媛，阿爸说世上美好的一切都会汇集到南京，并不需亲自出游追寻什么。#Layout:Left
    ->END
    
->END

