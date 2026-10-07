VAR currentEvidenceList = ""
VAR node = "start"
VAR currentNode = "None"
VAR backNode = 0
VAR playerHealth = 5
VAR enemyHealth = 3
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
堂下可是李捷？本官将问你有关官府火灾和忘川花之事，你需据实回答，不得隐瞒。#Layout:Right #Name:判官 #Speaker:LJ_Normal
判官大人！刚才堂下那人是我小妹吗？？她叫李小玫！不对不对，这是地府，小妹不会来这。许是我太挂念着小妹，看错了，一定是这样的，一定不是小妹!#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
*[哎…刚才那人正是你的妹妹。]
    哎…刚才那人正是你的妹妹。她也卷入了此案，在你之后丧生了，一同来到地府受审。#Layout:Right #Name:判官 #Speaker:LJ_Suprise
    ~shackCamera++
    什么！？不对啊！她那晚不是和好友一同去灯会了吗？她怎会卷入进来？#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
    ~shackCamera++
    等等！是不是薛怀逸那狗官报复我！把小妹……把小妹杀了！#Layout:Left #Name:李捷 #Speaker:LJ_Anger
    都是我的错，我太冲动了。忙着逞英雄，自以为是什么大侠，根本没有考虑到后果，害了小妹……#Layout:Left #Name:李捷 #Speaker:LJ_Sad
    ~shackCamera++
    请判官大人为小玫做主！拘那薛怀逸偿命！#Layout:Left #Name:李捷 #Speaker:LJ_Anger
    ** [薛怀逸也死了，告诉你全程经过吧。]
        薛怀逸也已身亡，事情远比你想的复杂。听我把整个经过说与你听…… #Layout:Right #Name:判官 #Speaker:LJ_Anger
        ~shackCamera++
        ！！！……怎么会……竟然发生了这么多事！小玫她……她竟然烧了官府？？#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
        哎，但小妹的人生才刚刚开始……还有那些乡亲们……都是我没用……#Layout:Left #Name:李捷 #Speaker:LJ_Sad
        ……不过，小妹比我这个做哥哥的更有勇气和决心！她做到了我没能做到的事。#Layout:Left #Name:李捷 #Speaker:LJ_Happy
        ~enemyHealth = enemyHealth - 2
        ~ topic1 = true
        哦！！判官大人！村里还余一些怪病缠身之人！请判官大人救救他们！#Layout:Left #Name:李捷 #Speaker:LJ_Suprise
        *** [地府已然介入。]
        地府已然介入。罢了看你还未放下，黑白无常带他去望乡台看看。#Layout:Right #Name:判官 #Speaker:LJ_Suprise
        是。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
        干活干活！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
        ~ questBG=true
        那儿，那儿！瞧见了吗？那就是你们村子。放心吧，我和老黑连夜赶去，把那些阴气都给收走了，村民们慢慢会好起来的。不过可累坏我了！到底是谁把我们地府传得那么恐怖，害得白爷我大半夜才能去干活，简直就是造谣！造谣！#Layout:Left #Name:白无常 #SpecialSpeaker:BWC
        咳！李捷，你也看到了，村子的情况已经在好转了。至于后续的因果，地府自有分晓。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
        ~enemyHealth--
        ~ topic2 = true
        多谢两位无常大人！村子所受的苦难，终于有个了结了……。#Layout:Left #Name:李捷 #Speaker:LJ_Normal
        职责所在！走吧！#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
        ---
    --
        ~ questBG=false
        罢也！火已燃尽，人也归阴，事亦了结。草民已无留念，在此谢过判官大人！#Layout:Left #Name:李捷 #Speaker:LJ_Happy
        行，我将按你的罪行进行审判，你可有异议？#Layout:Right #Name:判官 #Speaker:LJ_Happy
        没有异议！请判官大人审判吧！#Layout:Left #Name:李捷 #Speaker:LJ_Normal
    -
    ->END
    


