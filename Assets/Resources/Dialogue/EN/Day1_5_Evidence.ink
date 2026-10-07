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
Are you Cui Er? I will ask you about the case of the fire and the flowers of Wangchuan, tell the truth and do not try to hide anything. #Layout:Right #Name:Arbiter #Speaker:CE_Normal
Maybe, hahaha! I'm joking, but after this, I can finally get rid of this name. #Layout:Left #Name:Cui Er #Speaker:CE_Happy

*[Why you hate this name so much?]
    I haven't asked you yet, why you hate this name so much? And why you hate those villagers so much?#Layout:Right #Name:Arbiter #Speaker:CE_Happy
    ……#Layout:Left #Name:Cui Er #Speaker:CE_Sad
    Although you have heard enough stories today, Lord Arbiter, I would like to tell you one other. #Layout:Left #Name:Cui Er #Speaker:CE_Normal
    In a place called Dong Tao Village, there lived a family of famers, Peng. They were really poor, but had more and more children. One day, they had another baby girl. Different from the other ones, her skin was yellow like gold when she was born.  #Layout:Left #Name:Cui Er #Speaker:CE_Happy
    The famer was terrified, believing that the girl was an omen of disaster. Besides, they did not have the money to raise another girl, not to mention a freak like her. They throw her away on the street, leaving her to feed herself. #Layout:Left #Name:Cui Er #Speaker:CE_Anger
    So many villagers passed through but no one stopped for her. Most of them kept their distance, afraid that the disaster would come for them; Some of them said that this child was a taboo, as the color of yellow should only belong to the emperor. #Layout:Left #Name:Cui Er #Speaker:CE_Anger
    Funny! The color of yellow is a sign of being the true ruler for the emperor, but an omen of disaster for a civilian.  #Layout:Left #Name:Cui Er #Speaker:CE_Kuang
    Funnier thing is, it was just infantile jaundice that would fade away in three to five days, without even treating it! What a bunch of ignorant, selfish people! Or rather, the people of this worlf are all stupid! The scholars are talking literary jargon but only want to please the bigwigs. The rest of the civilians only know to follow the others! #Layout:Left #Name:Cui Er #Speaker:CE_Dian
    
    **[What then? What happened to the girl]?
        That girl was taken by a doctor, but it was the beginning of her suffering.#Layout:Left #Name:Cui Er #Speaker:CE_Normal
        That doctor knew she had infantile jaundice, and he only took her to show his medical skills. That doctor was lazy to gave her a name, calling her Peng Yi. Funny thing is, even his dog has a better name "Gouqi berry"……Hahaha! #Layout:Left #Name:Cui Er #Speaker:CE_Kuang
        As the girl got older, the doctor used her to try out medicines and medical skills. The doctor would try his medicines on her if he was even slightly unsure about his script. His acupuncture skills were also practiced on her. Every needle brought her pain, every bowl of medicines made her struggle between life and death.  #Layout:Left #Name:Cui Er #Speaker:CE_Dian
        ~shackCamera++
        The doctor got more and more famous, he was unwilling to stay in the Dong Tao Village, so he brought with him his "practicing tool" and travelled far. Thanks to him, the girl learned the knowledge of medicines and poisons. She put some poisions in the meal, a little! And a little more! The doctor was poisoned to death, hahahaha!
        ~shackCamera++
        Before he died, the doctor was suprised and asked, since they eat together every time, why was the girl not poisoned. Not poisoned? No! It was because the girl was used to the poisons long ago. In the end, he himself was "the medicine puppet", so funny! 
        After that, the girl returned to the Dong Tao Village, but no one recognized her, even her birth parents. At this time, the girl got a chance of revenge. But merely killing them couldn't satisfy her, she wanted them to suffer! Hahaha! 
        ~shackCamera++
        How do you like the story, Lord Arbiter?#Layout:Left #Name:Cui Er #Speaker:CE_Normal
        
        ***[……]
            In the story, the girl can be called Peng Yi, or Cui Er, Bing San. Name is just a symbol, I don't hate it, I only hate the destiny behind this symbol. #Layout:Left #Name:Cui Er #Speaker:CE_Normal
            
            ****[But why you want to kill Li Jie?]
                    I killed Li Jie, because I hate the villagers. Selfish as they are, they are so kind to Li Jie and his sister. What about me? Why am I different? #Layout:Left #Name:Cui Er #Speaker:CE_Kuang
                    I Don't believe that there exists people so selfless like him. He knew he is going to die, but still tried to protect the villagers. He knew me, which means that he must know my past in the village. But he still asked me to treat the sick villagers——He is a selfish person after all. #Layout:Left #Name:Cui Er #Speaker:CE_Sad
                    
                *****[But he hid what you did in the flower room. ]
                         But he didn't tell the fact that you grabbed him in the flower room, he only said that Guan Sanzhu killed him. #Layout:Right #Name:Arbiter #Speaker:CE_Sad
                        !!……What an idiot…#Layout:Left #Name:Cui Er #Speaker:CE_Sad
                        ~ enemyHealth--
                        ~ topic2 = true
                        Never mind, I never regret about what I did.  #Layout:Left #Name:Cui Er #Speaker:CE_Happy
                        ******[Is there anything you still care about in the world of living?]
                            Is there anything you still care about in the world of living? I can send you to the Hometown-looking Platform.#Layout:Right #Name:Arbiter #Speaker:CE_Happy
                            Not anymore……But through that Hometown-looking Platform, is it possible to see the full view of the Yellow Spring Road? I want to see it. Back then on the road, it's to hazy to see it clearly. #Layout:Left #Name:Cui Er #Speaker:CE_Happy
                            Okay! Black and White Spirit Wardens, take her there. #Layout:Right #Name:Arbiter #Speaker:CE_Happy
                            Yes!#Layout:Left #Name:Black #SpecialSpeaker:HWC
                            Let's go!#Layout:Left #Name:White #SpecialSpeaker:BWC
                        ------
                -----
            ----
        ---
    --
-           
~questBG = true
Huh! It's pretty, the see of the flowers of Wangchuan. You've seen my hometown and I've seen yours, we are even!#Layout:Left #Name:Cui Er #Speaker:CE_Happy
~enemyHealth--
~ topic1 = true
Ah? Who are you talking with? You are strange! Others are here to see the world of living, but you are here to see the shabby road of the netherworld. What's there to see? Me and Black pass through here every day, we got tired to it, it's just full of redness. You like these flowers, and we need a gardener. I think you are the person for this job.  #Layout:Left #Name:White #SpecialSpeaker:BWC
Hahaha! Gardener? Not bad! I really like it. Okay, I am finished, you two can take me back, Lord Arbiter is still waiting for me. #Layout:Left #Name:Cui Er #Speaker:CE_Happy
~questBG = false
One more thing, if you want to give yourself a name, what would you like to call yourself?#Layout:Right #Name:Arbiter #Speaker:CE_Happy
A name for myself? Never thought about it before. "The East Wind at night blooms a thousand trees, then scatters them like stars, as it pleases". It's from a poetry that I really like, and the fireworks gave me a second life. Maybe I'll call myself Xingyu, meaning the scattering stars. #Layout:Left #Name:Cui Er #Speaker:CE_Happy
Okay, Xingyu, I'll start my trial according to your crime, do you have any objections?#Layout:Right #Name:Arbiter #Speaker:CE_Happy
!! No objections, please do, hahaha!#Layout:Left #Name:Xingyu #Speaker:CE_Happy
->END

