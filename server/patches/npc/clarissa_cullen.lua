local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Clarissa Cullen, the Priestess of Zhambra. Keywords: Hello, god, Zhambra, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Clarissa Cullen, eine Priesterin des Zhambra. Schl�sselw�rter: Hallo, Gott, Zhambra, Gunst, Opfergabe."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addTrigger("Good night")
talkEntry:addResponse("Be greeted!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Morgen")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Gute Nacht")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("Mohltied")
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegr��t!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Until we meet again, friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Until we meet again, friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Mir geht es gut. Solange die Sonne auf Cadomyr scheint, kann ich mich nicht beklagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am well. So long as the sun shines on Cadomyr, I can not complain.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es gut. Solange die Sonne auf Cadomyr scheint, kann ich mich nicht beklagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Clarissa Cullen. A pleasure to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ihr name")
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie hei�t")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse(" Ich bin Clarissa Cullen. Freut mich euch kennen zu lernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sell")
talkEntry:addTrigger("buy")
talkEntry:addTrigger("wares")
talkEntry:addTrigger("price")
talkEntry:addTrigger("trade")
talkEntry:addTrigger("purchase")
talkEntry:addResponse("You can find merchants in the market place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("preis")
talkEntry:addTrigger("Handel")
talkEntry:addTrigger("ver�u�er")
talkEntry:addTrigger("ver�usser")
talkEntry:addTrigger("erwerb")
talkEntry:addResponse("H�ndler kannst du am markt finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a paladin of Zhambra. I have served Cadomyr faithfully and fought in numerous battles on her behalf. Now I serve Queen Rosaline and Cadomyr by attending to Zhambras' Altar and training new recruits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a paladin of Zhambra. I have served Cadomyr faithfully and fought in numerous battles on her behalf. Now I serve Queen Rosaline and Cadomyr by attending to Zhambras' Altar and training new recruits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Paladin von Zhambra. Ich habe Cadomyr treu gedient und in zahlreichen Schlachten in ihrem Namen gek�mpft. Jetzt diene ich K�nigin Rosaline und Cadomyr, indem ich Zhambras Altar besuche und neue Rekruten trainiere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("There are eleven younger gods and five elder gods. I serve the younger god Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Es gibt elf junge und f�nf alte G�tter. Ich diene dem jungen Gott Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("There are eleven younger gods and five elder gods. I serve the younger god Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Es gibt elf junge und f�nf alte G�tter. Ich diene dem jungen Gott Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("He is the god of wine and festivities. Most of Adron's followers are drunkards. Though I do appreciate the camaraderie they share over a glass or three of wine. His altar can be found in the tavern in Runewick. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Er ist der Gott des Weines und der Feste. Die meisten Anh�nger von Adron sind S�ufer. Trotzdem sch�tze ich die Kameradschaft, welche sie ��ber ein oder mehrere Gl�ser Wein teilen. Sein Altar kann in der Taverne in Runewick gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon is the elder god of fire. He is just and noble, as are his followers. They are also ferocious warriors. I do not suggest getting on the bad side of any single one of them. His followers now follow Malachin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon ist der �ltere Gott des Feuers. Er ist gerecht und edel wie seine Anh�nger. Sie sind auch wilde Krieger. Ich schlage �vor, sie besser nicht zum Feind zu haben. Seine Anh�nger folgen nun Malachin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("She is the goddess of death, but she does not cause it haphazardly. Cherga guides our spirits in the afterlife. Her followers nobily give peace to the dead and their families. Her altar is found in the graveyard on Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Sie ist die G�ttin des Todes, aber sie macht es nicht zuf�llig. Cherga f�hrt unsere Geister ins Jenseits. Ihre ehrenvollen Anh�nger geben den Toten und ihren Familien Frieden. Ihr Altar befindet sich auf dem Friedhof auf der Schulterplatten Insel")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Goddess of wisdom. Her followers are people who spend most of their time sealed off in libraries away from others. Elara's altar is suitably located in the library in Runewick. I imagine it to be a rather dull place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("G�ttin der Weisheit. Ihre Anh�nger sind Menschen, die die meiste Zeit in Bibliotheken weg von anderen verbringen. Elaras Altar befindet sich in der Bibliothek in Runewick. Ich stelle mir vor, dass es ein ziemlich langweiliger Ort ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan is the god of the spirit. He cares the least about the mortal realm and prefers to seal himself away from others. Few hermits follow him. All others follow Elara now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan ist der Gott des Geistes. Er k�mmert sich am wenigsten um das sterbliche Reich und zieht es vor, sich von anderen zu fern zu bleiben. Nur wenige Einsiedler folgten ihm. Alle anderen folgen �Elara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Goddess of air. Her winds are the cause of violent sandstorms out in the desert. Though if not for her, music would not carry on the wind. Findari's followers now follow Adron.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Sie ist die G�ttin der Luft. Ihre Winde verursachen die schlimmen Sandst�rme in der W�ste. Doch ohne sie g�be es auch keine Musik. �Die meisten ihrer Anh�nger sind zu Adron gewechselt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("God of crafts and trade. Irmorom is patron to industrious dwarves. His followers love coin as much as they do fine craftsmanship. His altar is built into the mountains in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Gott des Handwerks und des Handels. Irmorom ist Schirmherr f�r flei�ige Zwerge. Seine Anh�nger lieben die M�nze so sehr wie sie feine Handwerkskunst machen. Sein Altar ist in die Berge Galmairs gebaut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin is the god of the hunt and of battle. His followers are apt rangers and honourable warriors. He stands for what is right and just, and is against those who oppose the law. His altar sits above the Cornerstone of Candour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin ist der Gott der Jagd und der Schlacht. Seine Anh�nger sind treffsichere Ranger und ehrenvolle Krieger. Er steht f�r das Richtige und Gerechte und ist gegen diejenigen, die dem Gesetz widersprechen. Sein Altar sitzt �ber dem Grundstein von Cadomyr")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me drops her hand to her sword, glaring, 'Do not speak that name in my presence!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Sprich nicht seinen Namen in meiner Gegenwart.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("#me rolls her eyes. 'He is the god of mischief. Though all of his followers are gamblers or babbling fools. His altar is located somewhere in the Galmair sewers, along with the rest of his followers.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("#me rollt mit den Augen. 'Er ist der Gott des Unfuges. Alle seine Anh�nger sind Spieler oder plappernde Narren. Sein Altar befindet sich irgendwo in den Abwasserkan�len Galmairs zusammen mit dem Rest seiner Anh�nger.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra is the goddess of life and fertility. Her followers are skilled healers and great cooks. Mothers pray to her for an easy birth and sanity while raising children. Her altar is located in Yewdale within Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra ist die G�ttin des Lebens und der Fruchtbarkeit. Ihre Anh�nger sind erfahrene Heiler und hervorragende K�che. Die M�tter beten zu ihr f�r eine leichte Geburt �und Vernunft bei der Kindererziehung. Ihr Altar befindet sich in Eibental im Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Only criminals pray to the god of thieves and shadows. Ronagan and his followers take pleasure in disorder. But by the gods, are they loyal to one another. His altar is found in the dark underbelly of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Nur Verbrecher beten zum Gott der Diebe und Schatten. Ronagan und seine Anh�nger haben Freude an der Unordnung. Aber bei den G�ttern sie sind einander treu. Sein Altar findet sich im dunklen Unterleib von Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Goddess of love and beauty. If you need food, shelter, or healing, seek out a Sirani follower. If you dare to demean women, you will soon wish you have spoken otherwise. You can find her altar in an oasis south of the Cadomyr gate.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("G�ttin der Liebe und Sch�nheit. Wenn Sie Nahrung, Schutz oder Heilung ben�tigen, suchen Sie einen Sirani-Anh�nger. Wenn du es wagst, Frauen zu erniedrigen, wirst du bald w�nschen, dass du anders gesprochen h�ttest. Sie k�nnen ihren Altar in einer Oase s�dlich des Cadomyr-Tores finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora is the elder goddess of water. She is the mother to Lizards. Lizardfolk in turn are fiercely loyal to her. She still sometimes walks the realm of mortals even though the other elder gods remain distant. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora ist die �ltere G�ttin des Wassers. Sie ist die Mutter der Echsen. Echsenkrieger wiederum sind ihr treu ergeben. Sie geht manchmal noch in das Reich der Sterblichen, auch wenn die anderen �lteren G�tter weit weg bleiben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is the elder goddess of earth. She is a wise, motherly figure who has no interest in goods of monetary value. Those few who follow her are elderly druids. All others have converted to following Oldra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist die �ltere G�ttin der Erde. Sie ist eine weise, m�tterliche Gestalt, die kein Interesse an dem Geldwert hat. Die wenigen, die ihr folgen, sind �ltere Druiden. Alle anderen haben sich Oldra zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra is the god of friendship and loyalty. He is noble and honourable, as are those who follow him. Pray to him for the safety of loved ones in battle.")
talkEntry:addResponse("In the afterlife, Zhambra counts his followers friends. Should they be numerous and the follower has been loyal to them in life they are lead to paradise. Should they have failed, Zhambra sends them back to be reborn.")
talkEntry:addResponse("A follower for Zhambra's word is their bond. They are sworn to uphold what is fair and just. To intentionally deceive another is the most reprehensible thing that can be done to a person, especially a friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra ist der Gott der Freundschaft und Loyalit�t. Er ist edel und ehrenhaft, wie diejenigen, die ihm folgen. Bete zu ihm f�r die Sicherheit der Geliebten in der Schlacht.")
talkEntry:addResponse("Im Jenseits z�hlt Zhambra die Freunde seiner Anh�nger. Sollten sie zahlreich sein und der Anh�nger ist ihnen im Leben treu gewesen, werden sie zum Paradies gef�hrt. Sollten sie versagt haben, schickt Zhambra sie zur�ck, um wiedergeboren zu werden.")
talkEntry:addResponse("Das Wort eines Anh�ngers Zhambras ist bindend. Sie �schw�ren, das zu halten, was fair und gerecht ist. Und einen anderen absichtlich zu t�uschen, ist das Verwerflichste, was einer Person, besonders einem Freund, antun kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (250); end))
talkEntry:addResponse("Zhambra is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (200); end))
talkEntry:addResponse("Zhambra is delighted with you, friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (150); end))
talkEntry:addResponse("Zhambra is charmed by your good deeds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (100); end))
talkEntry:addResponse("Zhambra is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 14))
talkEntry:addResponse("Zhambra is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (50); end))
talkEntry:addResponse("Zhambra is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-50); end))
talkEntry:addResponse("Zhambra is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 14))
talkEntry:addResponse("Zhambra is displeased with you, if you go on this way you will not be able to call yourself devoted to Zhambra anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-100); end))
talkEntry:addResponse("Zhambra is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-150); end))
talkEntry:addResponse("Zhambra is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-200); end))
talkEntry:addResponse("Zhambra is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-250); end))
talkEntry:addResponse("Zhambra is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Zhambra is wrathful about you. Can't you tell?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (250); end))
talkEntry:addResponse("Zhambra ist �berschw�nglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (200); end))
talkEntry:addResponse("Zhambra ist au�erordentlich zufrieden mit dir, mein Freund.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (150); end))
talkEntry:addResponse("Zhambra ist begeistert von deinen guten Taten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (100); end))
talkEntry:addResponse("Zhambra ist gl�cklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 14))
talkEntry:addResponse("Zhambra ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, "=>", function(number) return (50); end))
talkEntry:addResponse("Zhambra ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-50); end))
talkEntry:addResponse("Zhambra ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 14))
talkEntry:addResponse("Zhambra ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anh�nger Zhambras zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-100); end))
talkEntry:addResponse("Zhambra ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-150); end))
talkEntry:addResponse("Zhambra ist entt�uscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-200); end))
talkEntry:addResponse("Zhambra ist w�tend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(416, ">", function(number) return (-250); end))
talkEntry:addResponse("Zhambra ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Zhambra ist rasend vor Zorn auf dich. Merkst du das nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("What can protect your friends better then a suit of armour? Only your own valour!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Was kann deine Freunde besser besch�tzen als eine R�stung? Nur dein eigene Tapferkeit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("From what I hear, he is an incredibly accomplished mage. He is also a shut in who makes his home an an island that can only be reached by a magical portal. He is loyal only to his work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("From what I hear, he is an incredibly accomplished mage. He is also a shut in who makes his home an an island that can only be reached by a magical portal. He is loyal only to his work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich h�rte er sei ein unglaublicher Magier. Der kennt nichts als seine B�cher und lebt auf einer Insel, die nur �ber ein magisches Portal erreichbar ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("It is home to the largest library on Illarion and is the busiest port of all three towns. It's people are too self absorbed in their work for my tastes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Es ist die Heimat der gr��ten Bibliothek auf Illarion und ist der gesch�ftigste Hafen aller drei St�dte. Es sind die Leute welche selbst f�r meinen Geschmack zu sehr in ihrer Arbeit vertieft sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("He is a greedy individual who I wish to speak no more of.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Er ist eine gierige Person, �ber die ich nicht mehr sprechen m�chte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("I prefer not to concern myself with that dingy town. The Don and his people are more concerned with coin than they are the well being of others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ich ziehe es vor, mich nicht mit dieser sch�bigen Stadt zu besch�ftigen. Der Don und seine Leute sind mehr mit der M�nze besch�ftigt, als mit dem Wohlergehen Anderer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Queen Rosaline is wise and noble. The city of Cadomyr has flourished under her rule.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Queen Rosaline is wise and noble. The city of Cadomyr has flourished under her rule.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("K�nigin Rosaline ist weise und edel. Die Stadt Cadomyr ist unter ihrer Herrschaft aufgebl�ht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr has been ruled by the Edwards family for decades. Substantial changes have been made to the laws since the Queen has taken the throne. Changes that may not align to Albarian standards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr wird seit Jahrzehnten von der Familie Edwards regiert. Erhebliche �nderungen wurden an den Gesetzen vorgenommen, seit die K�nigin auf den Thron gestiegen ist. �nderungen, die nicht zu albaristische Standards passen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Albar")
talkEntry:addResponse("Albar is a country a long ways from here by boat. The majority of their nobles would not appreciate the progressiveness of Cadomyr. Personally, my loyalty is to Cadomyr and not Albar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Albar")
talkEntry:addResponse("Albar ist ein Land, das selbst mit einem schnellen Schiff weit weg ist. Die Mehrheit ihrer Adligen w�rde die modernen Errungenschaften von Cadomyr nicht sch�tzen. Pers�nlich liegt meine Loyalit�t bei Cadomyr und nicht Albar.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Niemand ist eine Insel. Diejenigen, die das glauben, brauchen jemanden, der ihnen zeigt, wie man ein Boot baut.", "No one is an island. Those who think they are may just need someone to show them how to build a boat.")
talkingNPC:addCycleText("An seinen Freunden erkennst du das Wesen einer Person.", "You can tell the true measure of a person by the friends they keep.")
talkingNPC:addCycleText("Im Kampfe muss sich jeder auf jeden verlassen k�nnen.", "In battle it is important to know that you can trust the warrior next to you and that they can trust you.")
talkingNPC:addCycleText("W�hle deine Freunde sorgf�ltig. Gute Freunde befl�geln sich gegenseitig und haben Zeit f�reinander. Schlechte Freunde nutzen dich aus und ruinieren dich am Ende.", "Choose your friends carefully. A good friend will grow each other's character and provide for each other in times of need. A bad friend will only provide for themselves and bring you ruin.")
talkingNPC:addCycleText("H�te dich vor falschen Freunden. Ihre Loyalit�t reicht nur so weit, wie es ihnen passt. Suche die, die ehrlich zu dir sind bis ans Ende ihrer Tage.", "Beware of false friends. For their loyalty only goes as far as you can get them. Seek out instead those who will remain true to others until the end of their days.")
talkingNPC:addCycleText("#me's Hand ruht auf dem Schwertgriff.", "#me rests her hand idly on her sword hilt.")
talkingNPC:addCycleText("#me beobachtet aufmerksam die Stra�e.", "#me's eyes scan the road attentively.")
talkingNPC:addCycleText("#me gr��t die Vorbeigehenden freundlich.", "#me greets passers by with a nod and a friendly smile.")
talkingNPC:addCycleText("#me korrigiert den Sitz ihrer Armschiene.", "#me adjusts the straps on her vambrace. ")
talkingNPC:addCycleText("#me's goldene R�stung gl�nzt in der Sonne.", "#me's golden armor shines in the sun.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Clarissa Cullen, eine Priesterin des Zhambra.", "This NPC is Clarissa Cullen, the Priestess of Zhambra.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 1445)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 95)
mainNPC:setEquipment(4, 1465)
mainNPC:setEquipment(9, 2193)
mainNPC:setEquipment(10, 1517)
mainNPC:setAutoIntroduceMode(true)

mainNPC:initDone()
return mainNPC
end
local mNPC = initNpc()
initNpc = nil
local M = {}
function M.receiveText(npcChar, texttype, message, speaker) mNPC:receiveText(npcChar, texttype, speaker, message) end
function M.nextCycle(npcChar) mNPC:nextCycle(npcChar) end
function M.lookAtNpc(npcChar, char, mode) mNPC:lookAt(npcChar, char, mode) end
function M.useNPC(npcChar, char, counter, param) mNPC:use(npcChar, char) end
return M
