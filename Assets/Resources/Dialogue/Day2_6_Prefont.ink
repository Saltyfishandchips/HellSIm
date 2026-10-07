VAR deadCaues = false
VAR identity = false
VAR reason = false

->Start

=== Start ===
下面进行预审调查。#Layout:Right #Name:判官 #Speaker:YL_Normal
请堂下陈述案件相关事实。#Layout:Right #Name:判官 #Speaker:YL_Normal

->Prefont

== Prefont ==

~ temp all_chosen =  deadCaues && identity && reason

{all_chosen:
询问结束，该去审核该人的路引信息了。 #Layout:Right #Name:判官 #Speaker:YL_Normal
    -> END
- else:
    询问哪一点呢？#Layout:Right #Name:判官 #Speaker:YL_Normal
    * {reason == false} [询问案发时的事由]
    <align="center"><color=red>===月铃当日的事由===</color>#Layout:Right #Name:判官 #Speaker:YL_Normal
    你案发时在干什么？#Layout:Right #Name:判官 #Speaker:YL_Normal
    ……当时的我已被宋先生<color=red>冷遇多月</color>，中间听闻两人订婚一事后便心灰意冷、不再对他有期待。#Layout:Left #Name:月铃 #Speaker:YL_Sad
    
    虽是如此，但国正党向歌舞团发来演出邀请时，我还是有些担心自己前去演出时，<color=red>亲眼目睹</color>两人情状会有所反应，因此并不愿去。#Layout:Left #Name:月铃 #Speaker:YL_Normal #CE:Text_description_参与现场表演
        ->c1_1
        
    * {deadCaues == false} [询问此鬼死因]
    <align="center"><color=red>===月铃当日的死因===</color>#Layout:Right #Name:判官 #Speaker:YL_Normal
    你可还记得你因何而死？#Layout:Right #Name:判官 #Speaker:YL_Normal
    
    当时蔓露姐艰难地看着我，嘴唇颤抖、眼神绝望，却再也说不出话……明明是她中枪，我的眼前却闪起了走马灯… #Layout:Left #Name:月铃 #Speaker:YL_Sad
    
    土匪横刀砍向大人时溅在我脸上的血、那天嘈杂街道上金晤递给土匪的钱、凌晨惊醒时夜猫子的叫声、蔓露姐拉着我认曲谱时的笑容、军匪前来收保护费时隔间晃动的昏黄煤灯、歌女们幻想一朝嫁人时的打闹笑骂…… #Layout:Left #Name:月铃 #Speaker:YL_Sad
    
    而如今，教会我歌唱的蔓露姐就那样倒在了面前。#Layout:Left #Name:月铃 #Speaker:YL_Sad
    
    我脑中或喜或悲的混乱思绪突然消失了，一片澄净中，只感到了深切入骨的恨意。#Layout:Left #Name:月铃 #Speaker:YL_Anger
    
    我拿起一旁的花束，追出门去砸向了何小姐，她窒息般边咳嗽边如蔓露姐方才一样倒在地上，我只感到报仇的爽快…但这还远远不够！#Layout:Left #Name:月铃 #Speaker:YL_Anger
    
    愤怒已经完全支配了我…当我回过神，已经听不见她的喘息和挣扎，走廊里已经安静下来很久了，而我的<color=red>手中的缎带</color>，已经因为过于用力，深深勒进了掌心。这时，我麻木地起身，却发现身后站着一个男人。#Layout:Left #Name:月铃 #Speaker:YL_Normal
    
    他像座雕塑一样无声无息，我<color=red>不知道他来了多久</color>。仔细辨认下，我发现他是常来捧场的狂热歌迷之一。#Layout:Left #Name:月铃 #Speaker:YL_Normal
    
    他的眼镜反射着寒光，看不清神情，但我明白，无论他看见了多少，自己杀了人，就已经罪无可赦……只希望他看在过往的喜欢与情分上，能不要牵连到歌舞团…… #Layout:Left #Name:月铃 #Speaker:YL_Afraid
    
    正胡乱想着，他突然开口了，问我“月铃小姐？”#Layout:Left #Name:月铃 #Speaker:YL_Normal
    
    我想过他会厌恶我、质问我，甚至当场大声叫人…但实在没想到会这样…… #Layout:Left #Name:月铃 #Speaker:YL_Normal
    
    我一时愣住了，看着他朝我走来，下意识地向后退去，他一边说着“你是谁？”、“月铃小姐不可能是这样的，你是谁？”云云，一边流下了眼泪，最后问道“如果你是月铃小姐，哪为什么要怕我？<color=red>你不是最爱我了吗？</color>…回答我！”#Layout:Left #Name:月铃 #Speaker:YL_Afraid
    
    我完全被吓傻了，不知道自己说了什么，下一秒就被他扯住了头发，一刀刀地刺入身体…… #Layout:Left #Name:月铃 #Speaker:YL_Afraid
    
    一开始还很痛，我挣扎着想避开刀锋，到最后就麻木了…头脑里一片空白，满眼都是他痛苦绝望的扭曲表情…… #Layout:Left #Name:月铃 #Speaker:YL_Afraid
    
    不知过了多久，我以为我已经死了，却突然看见了晤哥…现在想来是出现幻觉了吧…… #Layout:Left #Name:月铃 #Speaker:YL_Happy #CE:Text_deadcause_刺伤
    <align="center"><color=red>---死因询问结束---</color>#Layout:Right #Name:判官 #Speaker:YL_Happy
    ~ deadCaues = true
    -> StartTalk

    * {identity == false} [询问此鬼死前身份]
    <align="center"><color=red>===月铃死前的身份===</color>#Layout:Right #Name:判官 #Speaker:YL_Normal
    你之前的身份是什么？#Layout:Right #Name:判官 #Speaker:YL_Normal
    我叫月铃，是星洋歌舞团的后辈。 #Layout:Left #Name:月铃 #Speaker:YL_Normal #CE:Text_identity_星洋歌舞团歌星
    ->c3_1
}

== StartTalk ==
    -> Prefont

==c1_1==
*[那为何还要去？]
大人您有所不知，星洋歌舞团在晤哥的运作下名声在外，很快一骑绝尘成为南京<color=red>最受瞩目的表演团体</color>。国正党高层宴会上向来样样奢靡豪华，只求最好。如若避开我们邀请其它歌舞团，反而落人口实。#Layout:Left #Name:月铃 #Speaker:YL_Normal

因此，<color=red>宋先生为证名声清白</color>，必须邀我演出，不仅如此，我还要表现得从容不迫、光明坦荡。他们舒坦了，我们歌舞团的日子才会好过，月铃再不懂事，也明白要为大家考虑。#Layout:Left #Name:月铃 #Speaker:YL_Normal
    ->c1_2_1
    
*[有所反应？]
大人您别笑话我……闲来无事时我常看话本小说，上面都写，女子失恋后必是痛苦绝望、辗转反侧，甚至多有殉情者。#Layout:Left #Name:月铃 #Speaker:YL_Shy
可月铃当时却不似那般难熬，好似心中下过一场暴雨，雨停了，天也就晴了。但歌舞团的话本都是前人所著经典，想来不会有错。#Layout:Left #Name:月铃 #Speaker:YL_Normal

月铃思来想去，觉得极可能是那之后未曾见过宋先生，如若见面，说不定便会“心碎欲绝”。#Layout:Left #Name:月铃 #Speaker:YL_Normal
    ->c1_2_2
    
==c1_2_1==
*[那你去了之后情况如何？]

<color=red>临上台前</color>我仍有些担心忐忑，晤哥…他应是看出来了，轻轻握住我的手，温暖透过手掌传来，他微笑着说：“不管怎样，我都陪在你身边。”他一向如此温柔体贴，但那时我并未太在意。#Layout:Left #Name:月铃 #Speaker:YL_Normal
随后我踏上舞台，唱起《春深情重》。当我唱到“若君不在春深处，孤影徘徊无所依”时，目光扫过宾客，看到宋知年在谈笑风生，似乎并不在意我的演出。此刻，<color=red>我却没有如预想般难过</color>，心里奇怪，仿佛这一切与我无关。 #Layout:Left #Name:月铃 #Speaker:YL_Normal

当旋律转至“春风轻拂心头意，愿君常在梦中留”，我的目光与晤哥相遇，他在观众中，眼神坚定而温柔，注视着我。我心跳骤然加速，仿佛有小鹿在心中乱撞，所有的担忧与不安瞬间消散，只有他那温暖的笑容在我脑海中萦绕。#Layout:Left #Name:月铃 #Speaker:YL_Shy

我脑海中瞬间闪出上台前他说的话，以及每次我害怕、低落时，他温柔的安慰……多年的陪伴和支持让我逐渐忽略了他的存在，仿佛他是我生活中的常态，就如太阳每日都会照常悬在卧房的窗角…可若某天太阳不再升起…我又该如何面对？#Layout:Left #Name:月铃 #Speaker:YL_Shy

当我唱到“愿君知我心底意”的时候，目光再次与晤哥相遇，那一瞬间，我的心似乎要跳出胸口。心中那种甜蜜而又微妙的情感让我脸颊微微发热，仿佛整个世界都在这一刻凝固。#Layout:Left #Name:月铃 #Speaker:YL_Shy

…思及此，我的声音愈发坚定，仿佛在向他倾诉：“何惧风雨共君行。”此时，我终于明白了自己的心意，坚定地回望过去，并对<color=red>晤哥投去一个微笑</color>。但他正在<color=red>同一位宾客说话</color>，好像也对我笑了，又好像没注意到我的目光……隔着重重人群我没有看清。#Layout:Left #Name:月铃 #Speaker:YL_Normal

突然间明白了自己的心意，我内心很震动…表演结束后就匆匆下去了…… #Layout:Left #Name:月铃 #Speaker:YL_Shy
    ->c1_3
    
==c1_2_2==
*[那你去了之后情况如何？]

<color=red>临上台前</color>我仍有些担心忐忑，晤哥…他应是看出来了，轻轻握住我的手，温暖透过手掌传来，他微笑着说：“不管怎样，我都陪在你身边。”他一向如此温柔体贴，但那时我并未太在意。#Layout:Left #Name:月铃 #Speaker:YL_Normal
随后我踏上舞台，唱起《春深情重》。当我唱到“若君不在春深处，孤影徘徊无所依”时，目光扫过宾客，看到宋知年在谈笑风生，似乎并不在意我的演出。此刻，<color=red>我却没有如预想般难过</color>，心里奇怪，仿佛这一切与我无关。 #Layout:Left #Name:月铃 #Speaker:YL_Normal

当旋律转至“春风轻拂心头意，愿君常在梦中留”，我的目光与晤哥相遇，他在观众中，眼神坚定而温柔，注视着我。我心跳骤然加速，仿佛有小鹿在心中乱撞，所有的担忧与不安瞬间消散，只有他那温暖的笑容在我脑海中萦绕。#Layout:Left #Name:月铃 #Speaker:YL_Shy

我脑海中瞬间闪出上台前他说的话，以及每次我害怕、低落时，他温柔的安慰……多年的陪伴和支持让我逐渐忽略了他的存在，仿佛他是我生活中的常态，就如太阳每日都会照常悬在卧房的窗角…可若某天太阳不再升起…我又该如何面对？#Layout:Left #Name:月铃 #Speaker:YL_Shy

当我唱到“愿君知我心底意”的时候，目光再次与晤哥相遇，那一瞬间，我的心似乎要跳出胸口。心中那种甜蜜而又微妙的情感让我脸颊微微发热，仿佛整个世界都在这一刻凝固。#Layout:Left #Name:月铃 #Speaker:YL_Shy

…思及此，我的声音愈发坚定，仿佛在向他倾诉：“何惧风雨共君行。”此时，我终于明白了自己的心意，坚定地回望过去，并对<color=red>晤哥投去一个微笑</color>。但他正在<color=red>同一位宾客说话</color>，好像也对我笑了，又好像没注意到我的目光……隔着重重人群我没有看清。#Layout:Left #Name:月铃 #Speaker:YL_Normal

突然间明白了自己的心意，我内心很震动…表演结束后就匆匆下去了…… #Layout:Left #Name:月铃 #Speaker:YL_Shy
    ->c1_3

==c1_3==
*[你去哪里了？]

当时感觉很激动……又有点心烦意乱，想自己静静，于是就直接拿着花束去了一个小房间，那条<color=red>走廊两边靠墙堆满了杂物</color>，黑暗拥挤，只够一个人侧身而过。#Layout:Left #Name:月铃 #Speaker:YL_Normal

后来……一切突然急转直下了，其中细节让人真的不愿再记起……但，我会配合大人工作的。#Layout:Left #Name:月铃 #Speaker:YL_Sad
    ->c1_4
    
*[路上有遇见谁在等你吗？]

等我？没有呀，大家都在各忙各的，也或许是我没留意……但我去小房间的一路上肯定没有人，那条<color=red>走廊两边靠墙堆满了杂物</color>，黑暗拥挤，只够一个人侧身而过。#Layout:Left #Name:月铃 #Speaker:YL_Normal

后来……一切突然急转直下了，其中细节让人真的不愿再记起……但，我会配合大人工作的。#Layout:Left #Name:月铃 #Speaker:YL_Sad
    ->c1_4
    
==c1_4==
*[慢慢来。]
过了没多久，我正思绪万千时，蔓露姐突然冲了进来，抓住我的肩气喘吁吁地上下打量着我，仿佛有什么要紧事。我被吓了一跳，可是问及有什么事时，她又吞吞吐吐、眼神闪烁。#Layout:Left #Name:月铃 #Speaker:YL_Sad

还没等她开口说话，何小姐又站在了门口，她举着枪，调笑着对我们大加嘲讽，从她的话语中我逐渐明白过来，曾经歌舞团多次面临生死危机，竟都是她从中作梗……而她还多次笑称，只要我们活在世上一天，她就会折磨我们一天，永远不会放过…… #Layout:Left #Name:月铃 #Speaker:YL_Afraid
若是因为我的缘故，针对我就是，为何还要连累无辜的人？况且如她所言，我岂不是为养育我的歌舞团带来了无穷后患。#Layout:Left #Name:月铃 #Speaker:YL_Anger
还没等我想明白，她便突然朝蔓露姐开枪了…… #Layout:Left #Name:月铃 #Speaker:YL_Sad
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:YL_Sad
        ~ reason = true
        -> StartTalk
        
*[我能理解。]
过了没多久，我正思绪万千时，蔓露姐突然冲了进来，抓住我的肩气喘吁吁地上下打量着我，仿佛有什么要紧事。我被吓了一跳，可是问及有什么事时，她又吞吞吐吐、眼神闪烁。#Layout:Left #Name:月铃 #Speaker:YL_Sad

还没等她开口说话，何小姐又站在了门口，她举着枪，调笑着对我们大加嘲讽，从她的话语中我逐渐明白过来，曾经歌舞团多次面临生死危机，竟都是她从中作梗……而她还多次笑称，只要我们活在世上一天，她就会折磨我们一天，永远不会放过…… #Layout:Left #Name:月铃 #Speaker:YL_Afraid
若是因为我的缘故，针对我就是，为何还要连累无辜的人？况且如她所言，我岂不是为养育我的歌舞团带来了无穷后患。#Layout:Left #Name:月铃 #Speaker:YL_Anger
还没等我想明白，她便突然朝蔓露姐开枪了…… #Layout:Left #Name:月铃 #Speaker:YL_Sad
<align="center"><color=red>---事由询问结束---</color>#Layout:Right #Name:判官 #Speaker:YL_Sad
        ~ reason = true
        -> StartTalk
        
==c3_1==
 *[了解，请展示胎记。]
    了解，请配合地府工作，展示胎记，黑无常登记。#Layout:Right #Name:判官 #Speaker:YL_Normal
    月铃：噢，好的，您辛苦了。#Layout:Left #Name:月铃 #Speaker:YL_Normal #CE:Add_11
    
    已登记至证物匣。#Layout:Left #Name:黑无常 #SpecialSpeaker:HWC
    <align="center"><color=red>---身份询问结束---</color>#Layout:Right #Name:判官 #SpecialSpeaker:HWC
    ~ identity = true
    -> StartTalk