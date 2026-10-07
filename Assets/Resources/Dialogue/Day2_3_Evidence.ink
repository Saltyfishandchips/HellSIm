VAR currentEvidenceList = "13,21"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 5
VAR questBG = false
VAR EvidenceButtonAnim = false
VAR shackCamera = 0
VAR topic1 = false
VAR topic2 = false
VAR topic3 = false
VAR BGMChange = false
->start

== start ==
~ currentNode = "None"
堂下可是何任舒？本官将就当日宴会与歌罗频伽之事展开质询，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:HRS_Normal
哎，行吧行吧，那你结束后快点叫那丑牛丑马把门给我打开，然后好好送我回去！#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
你是否一直在迫害星洋等各大歌舞团，并且承认在当日杀害了蔓露？#Layout:Right #Name:判官 #Speaker:HRS_Impatient
哎呀，就为这点事！我其实和他们也并无什么实际的仇怨，所以只是时不时地派几个匪帮去骚扰他们，然后偶尔杀几个人罢了，呵呵呵呵……大人你也太较真了！#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
* [为什么要这样做?]
为什么要这样做，可有什么原因?#Layout:Right #Name:判官 #Speaker:HRS_Normal
    这哪需要什么特别的缘由？他们这几年发展壮大，办得风生水起，还捧红了一众歌星！本小姐心情不爽而已。他们这种人哪，就应该老老实实地活着，还想着发展什么音乐事业…#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
* [你对歌星们有什么看法？]
    ……一群恬不知耻的东西！她们拼命挣扎想往上爬的样子也太难看了，安分守己地过过平淡日子不好吗？不管是想攀附权贵一举嫁入豪门，还是想发展什么音乐事业……#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
-
呵呵呵…都在做梦！明明活得贫穷低贱，就像泥水里的臭虫，凭什么还可以自顾自地站在聚光灯下潇洒？#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
这么说来，你对唱歌这件事有什么特殊的执念吗？#Layout:Right #Name:判官 #Speaker:HRS_Smile
！！怎么会！本小姐是体面人，才不屑于去唱歌呢！#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
我欺负他们，就和我顺手欺负别的什么人一样，完全平等，一视同仁！……呵呵呵呵。#Layout:Left #Name:何任舒 #Speaker:HRS_Smile
<color=red>（我记得有件证物可以证明她确实很关心音乐。）</color>#Layout:Right #Name:判官 #Speaker:HRS_Smile
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:HRS_Smile
->Node0

== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
~ enemyHealth--
既然如此，你又为何能了解粗纹唱片、电声灌音这些专业概念？#Layout:Right #Name:判官 #Speaker:HRS_Smile
~shackCamera++
……#Layout:Left #Name:何任舒 #Speaker:HRS_Normal
这、这是因为本小姐一时有空，就、就稍微了解一下……#Layout:Left #Name:何任舒 #Speaker:HRS_Guilty
哎，告诉你也无妨！本小姐心中确实曾向往音乐，但那是邪恶的想法……本小姐应是悠闲从容的，从来不该费劲去做什么事儿！因此每每心中有此邪念，我都及时控制住了自己，转而去寻别的乐子……比如星洋歌舞团！#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
~shackCamera++
既然我都要对音乐避而远之，他们又凭什么可以放声高歌！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
~enemyHealth--
*[你从来都没有尝试过吗？]
……尝试？你是故意想看我笑话吧，像平民讨生计一般，劳累繁忙地投身于工作和事业，是多么陌生、多么恐怖的事情啊！我瞧不上！#Layout:Left #Name:何任舒 #Speaker:HRS_Guilty
而且那些歌女不过是被阿爸随意抛弃的下贱身份，难道我会甘愿沦落到她们的境地？我绝不会让自己沦为她们的同类！#Layout:Left #Name:何任舒 #Speaker:HRS_Guilty
->Node1


== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
再说了，人活世上，脸面和名誉才是最要紧的。若本小姐天赋极差，却还硬是要跻身歌坛，岂不是自讨苦吃，白白落人笑柄！#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
<color=red>（我记得有件证物可以证明，若她尝试发展音乐事业，结局大概不会这么差。）</color>#Layout:Right #Name:判官 #Speaker:HRS_Impatient
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:HRS_Impatient
-> Node1

== Evidence1 ==
可惜啊……你本有着歌罗频伽鸟的印记，换言之，在音乐上天赋异禀。而你又背靠着家族资源，若能坚定地发展歌星事业，极大可能会卓有所成、名满天下，更不会成为如此扭曲邪恶之人！#Layout:Right #Name:判官 #Speaker:HRS_Impatient
什么！……竟是这样……我不信！！#Layout:Left #Name:何任舒 #Speaker:HRS_Despair
~ enemyHealth--
~ shackCamera++
你一定在蒙我！…不是这样的！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
~ shackCamera++
我要回家！你们快放我回去！放我回去！#Layout:Left #Name:何任舒 #Speaker:HRS_Anger
她执念太深，黑白无常，带她去望乡台走一遭吧。#Layout:Right #Name:判官 #Speaker:HRS_Anger
依大人所言。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
得令得令！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
~questBG = true
看吧，这便是你的家乡。哀鸿遍野、一片焦土，当真是地狱景象……#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
……街上人群怎会如此混乱，何家府怎么也敞着大门通行无阻？那些看门的仆从呢？我一定要告诉阿爸！……等等，我的家人呢？怎么不见他们踪影？#Layout:Left #Name:何任舒 #Speaker:HRS_Impatient
你死后第二年，外族发动入侵，何家人早已偷偷逃往内地，之后逐渐失了特权，在战争和革命期间默默无闻地死去，后人渐渐不知所终，与一般百姓再无区别。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
~shackCamera++
……这、这怎么可能！？#Layout:Left #Name:何任舒 #Speaker:HRS_Despair
~enemyHealth--
而你短暂的一生，早就在时间的消磨和家人的刻意掩盖下被人遗忘，更别说你一辈子困守的形象和尊严了，一切都在战火纷飞中碾落成泥。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
倒是月铃、蔓露等歌星的经典曲目从不曾被埋没，多年后，世人仍旧因为喜爱她们的歌曲，愿意去了解并挖掘她们的身前之事，也让其姓名流芳百世，成为一抹微弱的星光。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
~shackCamera++
……一切都错了…#Layout:Left #Name:何任舒 #Speaker:HRS_Despair
~enemyHealth--
行了，回吧。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
~questBG = false
我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:HRS_Despair
何必再问我？我已无家可回了……世事一场空…#Layout:Left #Name:何任舒 #Speaker:HRS_Despair


->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:HRS_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


