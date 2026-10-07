VAR currentEvidenceList = "13,10"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 4
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
堂下可是苏曼？本官将就当日宴会与歌罗频伽之事展开质询，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:ML_Normal
是……#Layout:Left #Name:蔓露 #Speaker:ML_Normal
你与月铃有何仇怨？#Layout:Right #Name:判官 #Speaker:ML_Normal
什么？没有，大人……没有，我方才也说过，我自豆蔻年华起便与月铃生活在一个屋檐下，初见时她才八岁，而今已经快成年了，我们陪伴着走过了这么长的动荡岁月，她对我来说就像妹妹一般…怎会有什么仇怨呢？#Layout:Left #Name:蔓露 #Speaker:ML_Guilty
世事变迁，时间可以改变太多东西。#Layout:Right #Name:判官 #Speaker:ML_Guilty
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
大人…不必拿这话刺我。我成名之时月铃才初初入行，早就享受过了她现今拥有的一切，怎会羡慕她呢？不如说在名利场中，她仍是我的学生。#Layout:Left #Name:蔓露 #Speaker:ML_Happy
而且，幼时在歌舞团学习，唱歌对我而言就已经是信手拈来，大当家常夸我天资聪颖，日后必将万众瞩目……而月铃学曲时远不及我轻松自如，常常练习至深夜才吹灯睡下。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
我的代表作可是直接让我成为了当季画报的封面女郎呢！那可是歌女里前所未有的成就……#Layout:Left #Name:蔓露 #Speaker:ML_Happy
<color=red>（我记得有件证物可以证明她对月铃有怨。）</color>#Layout:Right #Name:判官 #Speaker:ML_Happy
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:ML_Happy
->Node0

== Evidence0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = false
既是说到唱片，月铃的《春深情重》一经问世，便突破了历史记录，这件事你怎么看？#Layout:Right #Name:判官 #Speaker:ML_Happy
……记录都是会被后来者打破的，我也没有太过在意…#Layout:Left #Name:蔓露 #Speaker:ML_Guilty
~enemyHealth--
哎……现在说这些都已经没意义了……#Layout:Left #Name:蔓露 #Speaker:ML_Bitter
…我确实做出了自己都感到羞耻的错事儿…大人，我招了……#Layout:Left #Name:蔓露 #Speaker:ML_Normal
~enemyHealth--
我真的很怨她……她一出道就艳惊四座，以往簇拥着我的鲜花和掌声都如同江河潮落般从身旁退去，只余下光裸的泥洼……歌舞团的资源也向她尽数倾斜。#Layout:Left #Name:蔓露 #Speaker:ML_Bitter
我尽可能显得不在意，甚至表现出恭喜、欣慰的神色，但……我怎会心甘情愿地将一切拱手相让？#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile

无数个凌晨，我都看着月铃房内还未睡下的影子，尽量小声地独自练习，绝望地期盼着第二日醒来时，能重新回到那个“首席歌星蔓露”的时候……#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile
*[这样还是追不上她吗？]
    你既有天赋，又肯用功，难道还是追不上她吗？#Layout:Right #Name:判官 #Speaker:ML_BitterSmile
    呵呵……是啊，我也很疑惑，难道真如二当家所说，初心的不同就能带来如此差距吗？#Layout:Left #Name:蔓露 #Speaker:ML_Happy
*[她有何秘诀吗？]
    月铃难道有什么不为人知的秘诀吗？#Layout:Right #Name:判官 #Speaker:ML_BitterSmile
    呵呵……我没有一日不作此怀疑，甚至迫切地想找到她的独家秘笈，这样一定就能追赶上她了……#Layout:Left #Name:蔓露 #Speaker:ML_Happy
    可偏偏，她对我无所隐瞒，我心里也明白，这样的东西并不存在……难道真如二当家所说，初心的不同就能带来如此差距吗？#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile
-
我们这种人，努力学习唱歌不就是为了有朝一日能过上烈火烹油、鲜花着锦的好日子吗？要说是为了在音乐上有多高的追求，我反正是不信的。乱世之下，随时都可能没命，谁还管那些虚头巴脑的东西？#Layout:Left #Name:蔓露 #Speaker:ML_Normal
我多年冷眼看着，歌女们没有一个是不想过上安稳富足的生活的，月铃也不能免俗。但除此之外，她好似真的对音乐有所追求……
总之，我开始后悔曾经收她为徒，一点点萌生出“如果没有她”就好了的念头。
->Node1


== Node1 ==
~ currentNode = "Evidence"
~ node = "Node1"
~ EvidenceButtonAnim = true
当天，我想到月铃和订婚宴的两位主角有纠葛，若她碰巧……中毒身亡，嫌疑自不在我。而何家为了平息风波，定会在公众面前掩饰，如此最是神不知鬼不觉……#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile
因此，趁月铃上台演出，我悄悄混进她的休息室，在杯子中倒入毒酒……当时在后台犹能听见观众的掌声和赞叹，我的心中唯有快意…#Layout:Left #Name:蔓露 #Speaker:ML_Bitter
<color=red>（我记得有件证物可以佐证她的行为。）</color>#Layout:Right #Name:判官 #Speaker:ML_Bitter
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:ML_Bitter
->Node1


== Evidence1 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
正是这只杯子吧。#Layout:Right #Name:判官 #Speaker:ML_Bitter
是……大人，月铃喝下这杯酒了吗？#Layout:Left #Name:蔓露 #Speaker:ML_Guilty
* [没有，这杯酒最终刘平喝了]
~enemyHealth--
    刘平？仿佛……是月铃的狂热歌迷？他怎会喝下那杯酒？呵……看来也是个不光彩的人。#Layout:Left #Name:蔓露 #Speaker:ML_Happy
    你且说自己，之后又如何了？#Layout:Right #Name:判官 #Speaker:ML_Happy
* [没有，这样你会好受一点吗？]
~enemyHealth--
    呵……我已痛下杀手，与她喝没喝又有何相干？不过是她侥幸逃过，难道就能洗清我的孽障了吗……#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile
-
我下毒后怕被人发现，于是匆忙走去了草坪。但，正如大人先前发现的那样，与月铃共度的点点滴滴浮现在我眼前，时而欢喜时而痛苦的复杂思绪充斥着我的脑海，我……根本没有留意听清月铃的表演。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
思及此前种种……我，还是不忍心…后来的事，大人你也知晓了，我真想向她坦白、祈求原谅……但好不容易找到她时，她虽迷茫，却对我露出了那么信任坦诚的目光…#Layout:Left #Name:蔓露 #Speaker:ML_Bitter
我就迟疑了一会儿，只是一小会儿而已…然后，就再也没机会向她说明了……其实这样也好，我罪有应得，被何任舒杀死已是恶有恶报…她也不必再知道我曾这样对她。#Layout:Left #Name:蔓露 #Speaker:ML_Normal
~enemyHealth--
我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:ML_Normal
…怎会？盛年难再的不甘、日渐生怨的苦楚，这一切终于要了结了……大人，请判吧。#Layout:Left #Name:蔓露 #Speaker:ML_BitterSmile
->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:ML_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


