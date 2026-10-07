VAR currentEvidenceList = "9,5,8,2"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 6
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
堂下可是薛怀逸？本官将问你有关官府火灾和忘川花之事，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:XFG_Normal
薛某遵命。这便是阴间的公堂吗？公堂啊，薛某还真是有些怀念啊。不过以往薛某可都是坐在堂上审案的，如今却是头一回站在这堂下啊。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
*[忘川花的来源究竟为何？]
本官问你，忘川花的来源究竟为何？你又为何擅自种植此花？#Layout:Right #Name:判官 #Speaker:XFG_Normal
->Node0

== Node0 ==
~EvidenceButtonAnim = true
~node = "Node0"
~currentNode = "Evidence"
判官大人真是健忘啊，薛某方才已经说过忘川花乃布兄所寻。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Why
至于种植之事，更是无稽之谈，如此玄妙之物，薛某之前从未见过，且并未有其鳞茎如何种植。
<color=red>（鳞茎?我记得有件证物中提到该物。）</color>#Layout:Right #Name:判官 #Speaker:XFG_Why
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:XFG_Why
->Node0

== Evidence0 ==
~EvidenceButtonAnim = false
~currentNode = "None"
你既说从未见过这花，怎么知道它有鳞茎用以种植？#Layout:Right #Name:判官 #Speaker:XFG_Why
判官大人，这……薛某不过猜测罢了，布兄提过一些关于此花的生长环境，说起鳞茎也不过是随口一说。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Doubt
*[那为何不说是种子？]
    猜测？那为何不说是种子，却直指鳞茎？这世间鳞茎种植可比种子种植少多了！你倒是说得挺准啊。#Layout:Right #Name:判官 #Speaker:XFG_Doubt
-
->Node1

== Node1 ==
~EvidenceButtonAnim = true
~node = "Node1"
~currentNode = "Evidence"
判官大人，是下官错了！实在不该隐瞒。这忘川花确是在薛某府上种的，薛某本不想多生事端……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
炼药需要消耗大量忘川花，而布兄寻来的花数量实在杯水车薪。为了救人，下官才偷偷托布兄找寻其种植方法，布兄便带来一袋忘川花的鳞茎。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
只是那袋鳞茎……布兄为了帮我，不惜偷窃而来。为此我不愿再让布兄承担更多罪责，不想再连累他。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
<color=red>（那袋鳞茎？好像与一个证物相悖。）</color>#Layout:Right #Name:判官 #Speaker:XFG_Sad
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:XFG_Sad
->Node1

== Evidence1 ==
~currentNode = "None"
~EvidenceButtonAnim = false
你说的可是这个袋子。#Layout:Right #Name:判官 #Speaker:XFG_Sad
！！！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Doubt
*[你知道里面装的就不是鳞茎！]
    怎么不说话了？因为你知道这里面装的根本不是鳞茎，而是石头状的种子！#Layout:Right #Name:判官 #Speaker:XFG_Doubt
我看你对这些种子如何催化成鳞茎，倒是了解得很清楚啊！#Layout:Right #Name:判官 #Speaker:XFG_Doubt
判官大人，此花的种子确实古怪。种子无法用水栽培，崔郎中发现，只有用鲜血才能让它催化为鳞茎。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
薛某命三柱买来许多猪，宰杀浇灌，可仍不见成效。此花竟只能在活物之上生长。为早日炼出更多丹药，解救病患，薛某只能将花种在活猪身上，那些猪在房中哀鸣不断……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
罪过罪过，这样的事情若传出去，只怕牵连的人都要损功折德啊……薛某已死，但不愿再拖累更多在世之人。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
->Node2

== Node2 ==
~EvidenceButtonAnim = true
~node = "Node2"
~currentNode = "Evidence"
事到如今，薛某也只能在阴间祈愿，盼望阳间之人能将忘忧丹炼制成功，治病救人，以此弥补些许功德罢了。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
<color=red>（治病救人，忘忧丹能做到吗？）</color>#Layout:Right #Name:判官 #Speaker:XFG_Sad
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:XFG_Sad
->Node2

== Evidence2 ==
~EvidenceButtonAnim = false
~currentNode = "None"
薛怀逸，本官看你写的丹方，除了忘川花为主料，其他都是些毫无药用价值的草药。就算炼成了，也未必能治病救人啊。#Layout:Right #Name:判官 #Speaker:XFG_Sad
判官大人！莫要消遣下官！这……这不是因为薛某医术不精吗？治病救人的药方，还需崔郎中多多改进才是。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Doubt
*[怎么还没改进就炼丹？]
    哦？可为何还没等崔郎中改进，就急着用这珍贵的忘川花来炼丹？#Layout:Left #Name:薛怀逸 #Speaker:XFG_Doubt
    哦！是那穷巷的李捷来求我，说他小妹病入膏肓，薛某念李小玫为府上侍女，勤劳能干！便急着炼制丹药，想救她一命……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Doubt
-
*[事到如今，你还在装模作样！]
    ~BGMChange = true
    ~enemyHealth--
    薛怀逸！事到如今，你还在本官面前装模作样！仗着大火烧尽一切证据，且相关人士还在世，活无对证！就以为无人能揭你罪行，审判一过便可逍遥无事？#Layout:Right #Name:判官 #Speaker:XFG_Doubt
    可惜啊！你所提及的那些人早已与你一同去世，本官方才已审过他们！你所做的事早已暴露无遗！#Layout:Right #Name:判官 #Speaker:XFG_Doubt
    ……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
    判官大人，您也演得一出好戏啊，明知府上之事，却还与薛某在此装模作样地唱戏。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Happy
    本官只是想看看薛大人为了圆一个谎言，还能编造出多少新的谎言出来。薛大人倒也不负本官的期望，可真伶牙俐齿啊！#Layout:Right #Name:判官 #Speaker:XFG_Happy
-
* [你哪来的忘川花种子！？] 
    判官大人如此大义凛然地审判薛某，可你们地府的鬼差，却早已监守自盗，把那忘川花的种子偷偷卖给了我！只不过是用些闲杂人等的魂魄换取罢了。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
    ~topic1 = true
-
* [你真是不惜一切代价！]
    为了炼制忘忧丹，你真是不惜一切代价，甚至是残害百姓，践踏人命！#Layout:Right #Name:判官 #Speaker:XFG_Normal
    欲成大事者，自当不拘小节。那些无关紧要的人，不过是薛某追求之路上的微末之障罢了。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
    ~topic2 = true
    何况，都是他们咎由自取，特别是西幽村那些人。梁关贪图小利，捡回府上丢弃的死猪吃，害全家染病；李捷擅闯府邸，偷窃丹药。薛某不过是顺势而为，让他们自食其果罢了。
    你们地府不总讲因果报应吗？薛某从堂堂户部侍郎沦落为七品知县，不正是因这西幽村所致？如今也算一报还一报吧！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
-

* [何出此言？]
    家父薛进为了雷州百姓事必躬亲，尤其是对那西幽村，他更是殚精竭虑。村人为了感恩，送了块匾额给他。结果呢？这匾额成了他的催命符！父亲操劳过度，最终病逝。#Layout:Left #Name:薛怀逸 #Speaker:XFG_Normal
    薛某在京城仕途正盛，但不得不为守孝三年回乡。守孝期间，无一人前来问候父亲，也无一人探望薛家。那些曾受过恩惠的村民与同僚，竟无人记得家父的功劳！
    ~shackCamera++
    薛某守孝结束再回京时也早已物是人非。那些薛某曾不屑的下属，靠着炼丹取巧飞黄腾达，薛某却只能被贬回乡，真是被家父和雷州人害得不轻！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
    ~shackCamera++
    哼！家父一生如此蠢笨！他以为辛劳奉献能换得善果，结果却如此凄惨收场。所以薛某将那匾额挂在书房，时时提醒自己——世间万物皆如刍狗，无需怜惜之意！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
-

* [你炼忘忧丹到底是为了什么？]
    所以呢？薛怀逸你费尽心机炼制忘忧丹到底是为了什么？#Layout:Right #Name:判官 #Speaker:XFG_Anger
    当然是为了长生不死啊，判官大人！从古至今，上至皇帝，下至百姓，哪个人不曾梦想过长生不死呢？您这都猜不到吗？#Layout:Left #Name:薛怀逸 #Speaker:XFG_Happy
    人间短暂如白驹过隙，谁不想在阳间多享几年富贵荣华，或是多活几世红尘醉梦呢？更是为了免得死后在这阴间受罪啊！
    ~shackCamera++
    但薛某的志向远不止此！若能长生不死，仕途便无止境——薛某本可平步青云，成为大宋社稷的栋梁，甚至更高的位阶……权倾朝野，岂非人间极乐？
    ~shackCamera++
    不！为何只局限于这眼前的大厦将倾的大宋？若长生不死之道得成，哪怕宋室衰败，薛某也可凭此身不朽之力，立新朝，开新国，成就千秋霸业，为万世景仰！这，才是薛某真正的追求！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Happy
-
*[你机关算尽却还是死了！]
    长生不死，万世景仰……想得倒是挺好。可惜啊，薛怀逸，你机关算尽，到头来还是死了！而且，还是死在这中秋佳节！#Layout:Right #Name:判官 #Speaker:XFG_Happy
    那是因为薛某的丹药还未炼成！否则，怎会遭此横祸！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
-

*[哈哈！横祸！]
    哈哈！横祸？你不是最信因果报应吗？不如猜猜，你这次是因何而死？#Layout:Right #Name:判官 #Speaker:XFG_Anger
    ？？我不是被火烧死的吗？难道是布兰特那个蠢货在药房里炼黑火药，引发了爆炸？#Layout:Left #Name:薛怀逸 #Speaker:XFG_Anger
    ~shackCamera++
    我早知道他在偷偷炼制黑火药，但他能帮我炼丹，便由着他去了！可谁知竟坏我大事！该死，该死，该死！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Yy
-

*[是烟火爆炸！]
    ~enemyHealth--
    不，是关三柱放在库房里的烟花爆炸了！#Layout:Right #Name:判官 #Speaker:XFG_Yy
    ~shackCamera++
    关三柱这个蠢材！我多少次告诫他，不要买那些乱七八糟的危险品放在府里！他偏偏不听！他这个狗日的逃兵！我真是瞎了眼才收留他！该死！该死！该死！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Yy
-
*[你就不好奇烟火怎么会爆炸吗？]
    你就不好奇烟花怎么会爆炸吗？是你最讨厌的西幽村村民——李小玫放的火，引燃了烟花！#Layout:Right #Name:判官 #Speaker:XFG_Yy
    李小玫！这个该死的东西！还有李捷那小贼！真是有爹生没娘养的两个杂种！真该死啊！不！是整个西幽村都该死！#Layout:Left #Name:薛怀逸 #Speaker:XFG_Yy
-

*[哈哈！因果报应啊！]
    ~enemyHealth--
    哈哈！因果报应啊！李小玫放火，就是为了替那些被你残害的西幽村村民复仇！#Layout:Right #Name:判官 #Speaker:XFG_Yy
-
-> Node3


== Node3
~EvidenceButtonAnim = true
~node = "Node3"
~currentNode = "Evidence"
不过，你并非死于火烧或爆炸，真正杀死你的，是你自己！#Layout:Right #Name:判官 #Speaker:XFG_Yy
<color=red>（出示真正杀死薛怀逸的物品！）</color>#Layout:Right #Name:判官 #Speaker:XFG_Yy
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:XFG_Yy
->Node3


== Evidence3 ==
~EvidenceButtonAnim = false
~currentNode = "None"
你为了拿取忘忧丹，经常把那块匾额拿下来，日复一日，固定匾额的螺卯逐渐松动。那晚它竟掉下来，把你活生生砸死！死在了这清正廉明的匾额下，真是讽刺啊！#Layout:Right #Name:判官 #Speaker:XFG_Yy
~shackCamera++
~enemyHealth--
~topic3 = true
<b>啊啊！啊啊啊啊！啊啊啊啊！</b>#Layout:Left #Name:薛怀逸 #Speaker:XFG_Yy

*[忘忧丹确是起效了！]
    ~enemyHealth--
    不过好消息是！忘忧丹确是起效了！你确实将阳寿延长许多时日！#Layout:Right #Name:判官 #Speaker:XFG_Yy
    ~shackCamera++
    <b>……什么！那我怎么……</b>#Layout:Left #Name:薛怀逸 #Speaker:XFG_Yy
    但死生有命，岂是你一颗丹药能改的？阎王要你三更死，谁敢留你到五更？死期一到，哪怕阳寿再长，也得把你拘来，堂前受审！#Layout:Right #Name:判官 #Speaker:XFG_Yy
    ……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
    薛怀逸，我将按你的罪行进行审判，你不得有异议。#Layout:Right #Name:判官 #Speaker:XFG_Sad
    ……#Layout:Left #Name:薛怀逸 #Speaker:XFG_Sad
-

->DONE

== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:XFG_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


