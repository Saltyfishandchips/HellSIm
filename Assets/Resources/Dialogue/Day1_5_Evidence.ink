VAR currentEvidenceList = ""
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 2
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
堂下可是崔二？本官将问你有关官府火灾和忘川花之事，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:CE_Normal
或许是吧，哈哈哈！开玩笑的，不过过了这关，小女终可摆脱这个名字了。#Layout:Left #Name:崔二 #Speaker:CE_Happy

*[你为什么那么讨厌这个名字？]
    倒也还未问过你，为什么如此厌恶这个名字？还有那么讨厌那些村民？#Layout:Right #Name:判官 #Speaker:CE_Happy
    ……#Layout:Left #Name:崔二 #Speaker:CE_Sad
    虽然今日判官大人听的故事够多了，但不妨再听小女说一个吧。#Layout:Left #Name:崔二 #Speaker:CE_Normal
    有个叫东桃村的地方，村里有一户姓彭的菜农。他家里清贫至极，可越是穷，孩子却越生越多。某天，菜农的妻子又生下了一个女孩，但与以往不同，这个孩子一出生，竟通体金黄。#Layout:Left #Name:崔二 #Speaker:CE_Happy
    菜农吓坏了，觉得这女孩是不祥之兆，犯了避讳。再加上他们也没有余力再养活一个女孩，更别说是这样的“怪胎”。于是光天化日之下，他们就把这个女婴丢在了村外的路边，由她自生自灭。#Layout:Left #Name:崔二 #Speaker:CE_Anger
    村里人来来往往，却没有一个人愿意停下来多看她一眼。大多数人只是避开不提，怕惹祸上身；还有人低声议论，说是这孩子的出生犯了当朝高祖的避讳。#Layout:Left #Name:崔二 #Speaker:CE_Anger
    真是可笑啊！放在皇帝身上，这金黄之色就是“黄袍加身”的天命征兆，而到了平民百姓这里，就成了不祥的凶兆。#Layout:Left #Name:崔二 #Speaker:CE_Kuang
    更可笑的是，这不过是幼儿黄疸，连治都不用治，三五天便自行消散！真是一群愚昧无知、自私自利的人！不如说，这天底下的人都蠢得厉害！那些读书人满口之乎者也，却只想着用笔墨讨好权贵，剩下的愚民也只会盲从，人云亦云！#Layout:Left #Name:崔二 #Speaker:CE_Dian
    
    **[后来呢？那个女婴怎么样了]？
        那个女孩被路过的一个江湖郎中捡了回去。#Layout:Left #Name:崔二 #Speaker:CE_Normal
        但这才是她厄运的开始。郎中也看出她不过是得了幼儿黄疸，捡她回去只是为了显得自己医术高明、医者仁心罢了。
        郎中懒得花心思起名，随口就叫她“彭一”。好笑的是，他家那条狗都有个名字，叫“枸杞”……哈哈哈！连狗的名字都比她好听些。#Layout:Left #Name:崔二 #Speaker:CE_Kuang
        女孩稍大一些，郎中便开始拿她来试药、练针。郎中治病的药方，哪怕是有一丝怀疑或不确定，他都会让她先尝个遍。他的那些针灸技法，也都是在她身上练出来的——每扎一针，她都得忍受剧痛，每服一药，她都得在生死边缘徘徊。#Layout:Left #Name:崔二 #Speaker:CE_Dian
        ~shackCamera++
        郎中的名气越来越大，不甘心待在东桃村，便带着他的“针灸铜人”四处闯荡。还得多亏了他，女孩掌握了毒性和药物相克之法。她在饭里悄悄下毒，一点！再一点！多一点！郎中就这样被毒死了，哈哈哈哈！
        ~shackCamera++
        临死前，郎中才惊觉地问，怎么每次一起吃饭，女孩怎么没事。没事？怎么会没事！只是女孩早已对毒物产生了耐性。到头来，他才是那个“药人”，真是好笑啊！
        后来，女孩回到了东桃村，却早已无人认得她，连她的亲生父母也不记得了。就在这时，女孩得到了一个复仇的契机。但她不满足于让他们轻易死去，她要他们活得生不如死！哈哈哈！
        ~shackCamera++
        这个故事如何呢，判官大人？#Layout:Left #Name:崔二 #Speaker:CE_Normal
        
        ***[……]
            在这个故事里，女孩可以叫彭一，也可以叫崔二、丙三。名字只是个代号，我不恨它，只是恨这代号背后的命运。#Layout:Left #Name:崔二 #Speaker:CE_Normal
            
            ****[但你为什么要杀李捷呢？]
                    我杀李捷，是恨这些村民，明明自私，却对他们兄妹那么好，那对我呢？有什么不同！#Layout:Left #Name:崔二 #Speaker:CE_Kuang
                    我也不信世上真有这样无私的人，他明知自己要死了，却还护着那些村民。他认得我，肯定知道我在村里的过去，却还是要我去医治他们——他不过也是个自私的人罢了。#Layout:Left #Name:崔二 #Speaker:CE_Sad
                    
                *****[但他隐瞒了花房中的事。]
                         但他隐瞒了花房中你抓住了他的这件事，他只说是关三柱杀了他。#Layout:Right #Name:判官 #Speaker:CE_Sad
                        ！！……真是个傻子…#Layout:Left #Name:崔二 #Speaker:CE_Sad
                        ~ enemyHealth--
                        ~ topic2 = true
                        罢了，小女从不后悔做过的事。 #Layout:Left #Name:崔二 #Speaker:CE_Happy
                        ******[你在阳间可还有什么挂念之事？]
                            你在阳间可还有什么挂念之事？我可以遣你去望乡台看看。#Layout:Right #Name:判官 #Speaker:CE_Happy
                            没有了……不过那个望乡台是不是可以看到黄泉路的全景，小女想去看看。刚才在路上，朦朦胧胧的看不真切。#Layout:Left #Name:崔二 #Speaker:CE_Happy
                            可以！黑白无常，带她过去吧。#Layout:Right #Name:判官 #Speaker:CE_Happy
                            是！#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
                            走吧走吧！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
                        ------
                -----
            ----
        ---
    --
-           
~questBG = true
呼！还挺美的，忘川花海。你看过我的故乡，现在我也见过你的了，这样我们也算两清了！#Layout:Left #Name:崔二 #Speaker:CE_Happy
~enemyHealth--
~ topic1 = true
啊？你在和谁说话？不过你这人是挺怪的！别人来望乡台都是来看阳间的，你倒专门来看咱们阴间的小烂路。有啥好看的？我和老黑天天路过，都看麻了，只觉得是红艳艳一片。看你喜欢这些花，我们这儿正缺个花匠，我觉得你挺适合的。#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
哈哈哈！花匠吗？倒也不错！我很喜欢。好了，我也看够了，两位小哥带我回去吧，判官大人还在等着呢。#Layout:Left #Name:崔二 #Speaker:CE_Happy
~questBG = false
还有一事，如果你能给自己取个名字，你想叫什么？#Layout:Right #Name:判官 #Speaker:CE_Happy
名字吗？之前还真没想过。“东风夜放花千树。更吹落，星如雨”这是我很喜欢的一首词，烟花更是赠与我重生，或许就叫星雨吧。#Layout:Left #Name:崔二 #Speaker:CE_Happy
好的，星雨，我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:CE_Happy
！！无异议，请吧，哈哈哈！#Layout:Left #Name:星雨 #Speaker:CE_Happy
->END

