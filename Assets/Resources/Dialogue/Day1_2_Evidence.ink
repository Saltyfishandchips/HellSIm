VAR currentEvidenceList = "4"
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 1
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
黑白无常，这怎么回事？他不是已经返阳了吗？#Layout:Right #Name:判官 #Speaker:BRT_Normal
啊？刚才老牛说有人在鬼门关那儿鬼鬼祟祟的，让我们去瞧瞧。我一看见这金发碧眼的模样，就认出是你案子里的人。当初不也是我和老黑把他从官府带回来的吗？我寻思着他是不是想逃罪，就直接把他抓回来了。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
确是如此。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
糟了，这下要闹出外交事故了。算了，新来的，你先判着吧，就当是文化交流了。#Layout:Left #Name:金翎 #SpecialSpeaker:Bird_Normal
行吧。#Layout:Right #Name:判官 #Speaker:BRT_Normal
~ shackCamera++
你们还要说多久！这到底是怎么回事！今天必须给我一个解释！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger
堂下可是怀特-布兰特？本官将问你有关官府火灾和忘川花之事，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:BRT_Anger
~shackCamera++
哼！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger #Anim:2,2,3,Trial
老大！怎么办？这个人不配合，要不要上点手段？给他体验一下我们地府精选的地狱套餐，先试试个七七四十九套餐！要是不招，再上一套九九八十一套餐！包准他招的！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
拔舌地狱那边我已经联系好。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
等等！你俩别添乱了，新来的，你想想他感兴趣的事情，先让他开口。#Layout:Left #Name:金翎 #SpecialSpeaker:Bird_Normal
*[你说你是被黑火药炸死的？]
->Node0

== Node0 ==
~ currentNode = "Evidence"
~ node = "Node0"
~ EvidenceButtonAnim = true
是啊！那晚库房突然剧烈震动，爆炸声震耳欲聋，四周的墙壁瞬间被炸得粉碎，接连着的几间房子都被爆炸波及了！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Doubt
~shackCamera++
这么大的威力只可能是黑火药爆炸!#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger
嘿嘿！我造的黑火药比我想的威力还大！我带回去一定可以大赚特赚！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Happy
你确定是你造的黑火药吗？#Layout:Right #Name:判官 #Speaker:BRT_Happy
那是当然啊！我炼金的成果！不然哪来的？薛都不懂的，不可能买到这种东西的。#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Happy
<color=red>（好像有什么证物可以证明爆炸的不是布兰特所说他造的黑火药。）</color>#Layout:Right #Name:判官 #Speaker:BRT_Happy
<align="center"><color=red>===出示对应证物===</color>#Layout:Right #Name:判官 #Speaker:BRT_Happy
->Node0


== Evidence0 ==
~ currentNode = "None"
~ EvidenceButtonAnim = false
你说爆炸是发生在库房，但是你炼制的黑火药是被存放在花房中的，额，也就是你说的药田房里。#Layout:Right #Name:判官 #Speaker:BRT_Happy
刚才我叫黑无常去查看了一下证物，药渣和丹渣中都不含黑火药。爆炸的是关三柱买的烟花，烟花的主要成分也是黑火药。
是这样的，特别是丹渣基本只有木炭残渣，就算是真能爆炸，也就噗的一声就结束了！#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
啊？#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Normal
~shackCamera++
不可能！你们在耍我吗？那些烟花怎么会造成这样的爆炸？我的火药可是精心调配的，绝不可能被什么廉价的烟花替代！这到底是谁在搞鬼！不行，是不是你们动了我的东西！#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Anger
*[你自己来看看吧。]
    ~enemyHealth--
    你自己来看看你所说的黑火药吧。#Layout:Right #Name:判官 #Speaker:BRT_Anger
    等等，好像真的是我的丹渣……不可能怎么会这样……硫黄一斤四二，硝石二斤半，炭末五二斤…… ……没错啊这个配比……#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Sad
    老大，之前我就想问了这黑火药为什么要放那么多木炭末，五十二斤啊#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
    他看的应该是《武经总要》里的黑火药配方，但原文是硫黄一斤四两，焰硝二斤半，粗炭末五两。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    啊？他把两翻译成二了……#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
    ……#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    ……是的。#Layout:Right #Name:判官 #Speaker:BRT_Sad
    还是走一下流程吧。#Layout:Right #Name:判官 #Speaker:BRT_Sad
    我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:BRT_Sad
    不可能啊……配方没有问题……难道是材料？还是步骤……#Layout:Left #Name:怀特-布兰特 #Speaker:BRT_Doubt
    其实是翻译的问题，算了他已经听不进去了。#Layout:Right #Name:判官 #Speaker:BRT_Doubt
    当作没有异议吧。#Layout:Right #Name:判官 #Speaker:BRT_Doubt
-
->END


== HasProblem ==
~ currentNode = "None"
~ playerHealth--
~ backNode++
嗯……看来这并不是该证物,我得再仔细想想。#Layout:Right #Name:判官 #Speaker:BRT_Normal
->HasProblem  // 这里在调用回调以后还会调用一次，因此需要在下面加一句话



    


