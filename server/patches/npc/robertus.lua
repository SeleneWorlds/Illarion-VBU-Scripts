local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the royal builder Robertus. Keywords: buy, sell, trade, hello, builder."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der k�nigliche Baumeister Robertus. Schl�sselw�rter: kaufe, verkaufe, Handel, Hallo, Baumeister."))
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
talkEntry:addResponse("I trade with building materials. I'll purchase anything that can help building Her Majesty's... place of peaceful rest.")
talkEntry:addResponse("Bricks, stone blocks, marble... all the workers need.")
talkEntry:addResponse("I can sell you the tools you need to serve the Queen. On, on!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Ich handele mit Baumaterialien. Ich werde alles erwerben, was ben�tigt wird um f�r ihre Majest�t... einen Ort der letzten Ruhe zu bauen.")
talkEntry:addResponse("Steinbl�cke, Marmor... Ich handele mit allem, was die Arbeiter brauchen.")
talkEntry:addResponse("Ich kann euch die Werkzeuge verkaufen, die ihr braucht, um K�nigin Rosaline zu dienen. Los, los!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Ah, you must be the marble deliverer. Put it just next to the stack of bricks.")
talkEntry:addResponse("Welcome, stranger. Do you have any building materials for me?")
talkEntry:addResponse("Be greeted, in the name of the Queen.")
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
talkEntry:addResponse("Ah, ihr m��t der Marmorlieferant sein. Lagert es neben den Ziegelsteinen.")
talkEntry:addResponse("Willkommen, Fremdling. Habt ihr Baumaterial f�r mich?")
talkEntry:addResponse("Seid im Namen der K�nigin gegr��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ah, you must be the marble deliverer. Put it just next to the stack of bricks.")
talkEntry:addResponse("Welcome, stranger. Do you have any building materials for me?")
talkEntry:addResponse("Be greeted, in the name of the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ah, ihr m��t der Marmorlieferant sein. Lagert es neben den Ziegelsteinen.")
talkEntry:addResponse("Willkommen, Fremdling. Habt ihr Baumaterial f�r mich?")
talkEntry:addResponse("Seid im Namen der K�nigin gegr��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Good bye")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("see you")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Goodbye.")
talkEntry:addResponse("Until next time!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Auf wiedersehen.")
talkEntry:addResponse("Bis zum n�chsten mal.")
talkEntry:addResponse("Gehet in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Goodbye.")
talkEntry:addResponse("Until next time!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Auf wiedersehen.")
talkEntry:addResponse("Bis zum n�chsten mal.")
talkEntry:addResponse("Gehet in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("As long as the Queen is content, I am happy, and I'd do anything to please her.")
talkEntry:addResponse("I just need to finish this calculation, then we can talk.")
talkEntry:addResponse("Every day is a great day to serve under Queen Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Solange die K�nigin zufrieden ist, bin ich es auch. Und ich werde alles tun, um sie zufrieden zu stellen.")
talkEntry:addResponse("Ich muss nur noch grad diese Berechnung abschlie�en, dann k�nnen wir reden.")
talkEntry:addResponse("Jeder Tag ist der richtige, um K�nigin Rosaline zu dienen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Robertus.")
talkEntry:addResponse("My name is Robertus, I am the royal builder. I serve the Queen with every fibre of my body.")
talkEntry:addResponse("They call me Robertus. I'm the royal builder of Cadomyr, loyal to the Queen.")
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
talkEntry:addResponse("Robertus.")
talkEntry:addResponse("Mein Name ist Robertus, ich bin der k�nigliche Baumeister. Ich diene der K�nigin mit jeder Faser meines K�rpers.")
talkEntry:addResponse("Man nennt mich Robertus. Ich bin der k�nigliche Baumeister Cadomyrs, stets der K�nigin ergeben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addTrigger("message")
talkEntry:addTrigger("news")
talkEntry:addTrigger("letter")
talkEntry:addTrigger("scroll")
talkEntry:addTrigger("parchment")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[Quest status] Delayed Mail II: You deliver the message from Hector Valerion to Robertus."))
talkEntry:addConsequence(consequence_quest(108, "=", 4))
talkEntry:addResponse("Oh! Her Majesty has drawn a sketch showing how she'd like her grave to be! What a marvellous plan! A cube in the desert!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addTrigger("nachricht")
talkEntry:addTrigger("brief")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Schriftrolle")
talkEntry:addTrigger("Pergament")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Queststatus] Sp�te Post II: Du �berbringst Robertus die Nachricht von Hector Valerion."))
talkEntry:addConsequence(consequence_quest(108, "=", 4))
talkEntry:addResponse("Oh, ihre Majest�t hat eine Skizze gezeichnet, wie ihr Grab aussehen soll. Was f�r ein wundervoller Plan! Ein Kubus in der W�ste!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hector")
talkEntry:addTrigger("Valerion")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Quest status] Delayed Mail II: You deliver the message from Hector Valerion to Robertus."))
talkEntry:addConsequence(consequence_quest(108, "=", 4))
talkEntry:addResponse("Oh! Her Majesty has drawn a sketch showing how she'd like her grave to be! What a marvellous plan! A cube in the desert!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addTrigger("Hector")
talkEntry:addTrigger("Valerion")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Queststatus] Sp�te Post II: Du �berbringst Robertus die Nachricht von Hector Valerion."))
talkEntry:addConsequence(consequence_quest(108, "=", 4))
talkEntry:addResponse("Oh, ihre Majest�t hat eine Skizze gezeichnet, wie ihr Grab aussehen soll. Was f�r ein wundervoller Plan! Ein Kubus in der W�ste!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("So, you want to assist with the construction of Her Majesty's grave? I'll always trade building material with you, but there's nothing specific I need.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("So, you want to assist with the construction of Her Majesty's grave? I'll always trade building material with you, but there's nothing specific I need.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nun, ihr wollt also dabei helfen, das Grabmal ihrer Hoheit zu bauen? Ich werde stets Baumaterial mit euch handeln, aber konkret k�nnt ihr mir gerade nicht weiterhelfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am Robertus, the royal builder. The Queen depends on me to build her a grave that will last for aeons.")
talkEntry:addResponse("Construction is my business. Behold the tavern - My work for the Queen. I am not proud of it, but proud to serve Queen Rosaline.")
talkEntry:addResponse("I am the builder of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Beruf")
talkEntry:addResponse("Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.")
talkEntry:addResponse("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.")
talkEntry:addResponse("Ich bin der Baumeister von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am Robertus, the royal builder. The Queen depends on me to build her a grave that will last for aeons.")
talkEntry:addResponse("Construction is my business. Behold the tavern - My work for the Queen. I am not proud of it, but proud to serve Queen Rosaline.")
talkEntry:addResponse("I am the builder of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.")
talkEntry:addResponse("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.")
talkEntry:addResponse("Ich bin der Baumeister von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addResponse("I've never heard of that place. Cadomyr is my home and I do everything I can to make it prosper.")
talkEntry:addResponse("Bless you.")
talkEntry:addResponse("Pardon me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addResponse("Von diesem Ort habe ich noch nie geh�rt. Cadomyr ist meine Heimat und ich werde alles tun, um es gedeihen zu lassen.")
talkEntry:addResponse("Gesundheit.")
talkEntry:addResponse("Pardon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Do yourself a favour... If you want your name to matter, make it known to the Queen by obeying her orders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Tut euch selbst einen Gefallen: Wenn ihr wollt, dass euer Name Gewicht bekommt, so macht euch bei der K�nigin beliebt, in dem ihr ihre Befehle ausf�hrt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("builder")
talkEntry:addResponse("I am Robertus, the royal builder. The Queen depends on me to build her a grave that will last for aeons.")
talkEntry:addResponse("Construction is my business. Behold the tavern - My work for the Queen. I am not proud of it, but proud to serve Queen Rosaline.")
talkEntry:addResponse("I am the builder of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("baumeister")
talkEntry:addResponse("Ich bin Robertus, der k�nigliche Baumeister. Die K�nigin vertraute mir an, ihr ein Grab zu bauen, welches die Zeiten �bersteht.")
talkEntry:addResponse("Bauwerke sind mein Gesch�ft. Seht euch die Taverne an: Meine Tat f�r die K�nigin. Ich bin nicht stolz auf die Taverne, ich bin stolz, der K�nigin zu dienen.")
talkEntry:addResponse("Ich bin der Baumeister von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("trader")
talkEntry:addTrigger("merchant")
talkEntry:addTrigger("collegue")
talkEntry:addTrigger("vendor")
talkEntry:addTrigger("market")
talkEntry:addResponse("You can buy many goods here in the marketplace. Garments to dress for the next festival, weapons to repel Cadomyr's enemies and the finest jewels around.")
talkEntry:addResponse("This market has it all and Cadomyr is proud of it!")
talkEntry:addResponse("The only thing you can't buy on this market are slaves, but Cadomyr really needs hands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("h�ndler")
talkEntry:addTrigger("kollege")
talkEntry:addTrigger("h�ker")
talkEntry:addTrigger("markt")
talkEntry:addResponse("Ihr k�nnt allerlei Dinge auf diesem Markt kaufen. Gew�nder f�r das n�chste Fest, Waffen um die Feinde Cadomyrs zur�ckzuschlagen oder feinste Juwelen.")
talkEntry:addResponse("Auf diesem Markt bekommt ihr alles und Cadomyr ist stolz darauf.")
talkEntry:addResponse("Das einzige, was ihr auf diesem Markt nicht bekommen werdet, das sind Sklaven. Cadomyr braucht aber dringend Arbeiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("queendom")
talkEntry:addTrigger("kingdom")
talkEntry:addResponse("Cadomyr is indeed a queendom. Never will the Queen choose a husband; she serves her people only.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�niginreich")
talkEntry:addTrigger("k�nigreich")
talkEntry:addResponse("Cadomyr ist wirklich ein K�niginreich. Nie wird die K�nigin einen Gemahl nehmen, sie dient nur ihrem Volke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grave")
talkEntry:addResponse("I am the one whose service for Queen Rosaline will stand the test of time, for I build her grave.")
talkEntry:addResponse("The grave is taking progress. We need more marble, though.")
talkEntry:addResponse("I think I should let the workers clad Her Majesty's grave chamber with gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grab")
talkEntry:addResponse("Ich bin derjenige, dessen Dienst f�r K�nigin Rosaline die Zeiten �berstehen wird, denn ich baue ihr Grab.")
talkEntry:addResponse("Das Grab macht Fortschritte, wir brauchen nur mehr Marmor.")
talkEntry:addResponse("Ich denke, ich sollte die Arbeiter anweisen, die Grabkammer ihrer Majest�t mit Gold auszukleiden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("pyramid")
talkEntry:addResponse("A pyramid as a grave? Who would do such a foolish thing?")
talkEntry:addResponse("The Queen prefers a cube, but the drawing is not done yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pyramid")
talkEntry:addResponse("Eine Pyramide als Grabmal? Wer w�rde denn so etwas t�richtes tun?")
talkEntry:addResponse("Die K�nigin bevorzugt einen Kubus, denke ich. Aber der Bauplan ist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("hastings")
talkEntry:addResponse("Baron Hastings? A traitor, he is, indeed!")
talkEntry:addResponse("The head of the baron will soon stuck on a pike!")
talkEntry:addResponse("A bastard, he is, the baron Hastings! The Queen will judge him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hastings")
talkEntry:addResponse("Baron Hastings? Ein Verr�ter ist er, jawohl.")
talkEntry:addResponse("Der Kopf des Barons wird bald auf einem Spie� stecken.")
talkEntry:addResponse("Ein Unmensch ist er, der Baron Hastings! Doch die K�nigin wird �ber ihn richten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cube")
talkEntry:addResponse("How creative our marvellous Queen is! A cube as grave! How brilliant!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kubus")
talkEntry:addResponse("Wie kreativ unsere wunderbare K�nigin ist! Ein Kubus als Grab! Wie brilliant!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("tavern")
talkEntry:addResponse("I built the tavern. Well... I commanded the workers, sometimes with the whip.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tavern")
talkEntry:addResponse("Ich habe die Taverne erbaut; nun, ich habe die Arbeiter befehligt, manchmal auch mit der Peitsche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sklave")
talkEntry:addResponse("Sklaven, nun, ich bevorzugen den Begriff Arbeiter. Es ist doch eine Ehre, der K�nigin zu dienen.")
talkEntry:addResponse("Eine Peitsche ist ein wichtiges Werkzeug. Ich verstehe wohl nie, warum einige Arbeiter nicht spuren. Es ist doch eine Ehre, f�r die K�nigin zu arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("slave")
talkEntry:addResponse("Slaves.. well... I prefer the term workers. It is an honour to work for the Queen afterall!")
talkEntry:addResponse("A whip is an important tool! I never understand why some workers don't obey. It's an honour to work for the Queen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Archmage Morgan, he calls himself. He's a bastard of impure blood.")
talkEntry:addResponse("He hides in his chamber, pretending to study. I assume he indulges his whores there!")
talkEntry:addResponse("An arrogant person, he is. Never trust a mage, I say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Erzmagier Morgan, so nennt er sich. Er ist ein Bastard unreinen Blutes.")
talkEntry:addResponse("Er versteckt sich in seiner Kammer und tut so, als wenn er die Schriften studieren w�rde. Ich glaube, er k�mmert sich dort mehr um seine Huren!")
talkEntry:addResponse("Eine solch arrogante Person. Traut niemals einem Magier, h�rt meine Worte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Archmage Morgan, he calls himself. He's a bastard of impure blood.")
talkEntry:addResponse("He hides in his chamber, pretending to study. I assume he indulges his whores there!")
talkEntry:addResponse("An arrogant person, he is. Never trust a mage, I say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Erzmagier Morgan, so nennt er sich. Er ist ein Bastard unreinen Blutes.")
talkEntry:addResponse("Er versteckt sich in seiner Kammer und tut so, als wenn er die Schriften studieren w�rde. Ich glaube, er k�mmert sich dort mehr um seine Huren!")
talkEntry:addResponse("Eine solch arrogante Person. Traut niemals einem Magier, h�rt meine Worte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("A wicked place! Witches and conjurers dwell there.")
talkEntry:addResponse("Runewick is a place of pure monotony and boredom... until the magicians are on the prowl.")
talkEntry:addResponse("One should burn down Runewick! Better today than tomorrow. I think all those books would burn quite well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ein verwunschener Ort! Hexen und Beschw�rer reichen sich dort die H�nde.")
talkEntry:addResponse("Runewick ist ein �der und langweiliger Ort... Bis die Magier ihr Unwesen treiben.")
talkEntry:addResponse("Man sollte Runewick lieber heute als morgen niederbrennen. Ich bin mir sicher, dass all diese B�cher gut brennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("There's one thing Don Guilianni is capable of - he knows how to control his minions.")
talkEntry:addResponse("Don Guilianni is a coward, but that's no wonder; a son of a whore he is.")
talkEntry:addResponse("I bet five copper the Don will be stabbed by one of his own men one of these days.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Eines kann man Don Guilianni nicht abstreiten: Er hat seine M�nner im Griff.")
talkEntry:addResponse("Don Guilianni ist ein Feigling. Aber das ist nicht �berraschend bei einem solchen Hurensohn.")
talkEntry:addResponse("Ich wette f�nf Kupferm�nzen, dass der Don eines Tage von einem seiner eigenen M�nner erdolcht wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("A cesspool of sin! Galmair knows no law, no rules, no customs!")
talkEntry:addResponse("Galmair... never venture there alone, please. You might find a dagger in your back before you even enter the town.")
talkEntry:addResponse("Galmair cannot be fixed. A lost cause.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ein S�ndenpfuhl! Galmair kennt keine Gesetze, keine Sitten, keine Gebr�uche!")
talkEntry:addResponse("Galmair... geht dort nie alleine hin. Ihr habt wohlm�glich einen Dolch in eurem R�cken, bevor ihr durch das Stadttor geht.")
talkEntry:addResponse("Galmair kann man nicht mehr helfen. Eine verlorene Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("My Queen. Speak her name with glee!")
talkEntry:addResponse("One bad word about Her Majesty and you'll find your tongue nailed to the gate of the Palace.")
talkEntry:addResponse("Hail Queen Rosaline Edwards of Cadomyr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Meine K�nigin. Sprecht ihren Namen mit Freude aus!")
talkEntry:addResponse("Ein schlechtes Wort �ber ihre Majest�t und eure Zunge wird an das Palasttor genagelt.")
talkEntry:addResponse("Hoch lebe K�nigin Rosaline Edwards von Cadomyr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("My Queen. Speak her name with glee!")
talkEntry:addResponse("One bad word about Her Majesty and you will find your tongue nailed to the gate of the Palace.")
talkEntry:addResponse("Hail Queen Rosaline Edwards of Cadomyr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Meine K�nigin. Sprecht ihren Namen mit Freude aus!")
talkEntry:addResponse("Ein schlechtes Wort �ber ihre Majest�t und eure Zunge wird an das Palasttor genagelt.")
talkEntry:addResponse("Hoch lebe K�nigin Rosaline Edwards von Cadomyr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is my home, my everything. All of us must work together to make it prosper under the guidance of our Queen.")
talkEntry:addResponse("Cadomyr rules!")
talkEntry:addResponse("I swore an oath and I hope you will also do anything to serve Cadomyr and Queen Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist meine Heimat, mein ein und alles. Wir alle m�ssen zusammen arbeiten, um es gedeihen zu lassen, vereint unter der F�hrung unserer K�nigin.")
talkEntry:addResponse("Cadomyr ist stark!")
talkEntry:addResponse("Ich habe einen Eid geschworen und ich hoffe, dass auch ihr alles tun werdet, um Cadomyr und K�nigin Rosaline zu dienen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("We remember our roots, our ancestors. Cadomyr stands alone, but this is not a reason to forget about the old customs.")
talkEntry:addResponse("Albar... ages ago, the people of Cadomyr set out from Albar.")
talkEntry:addResponse("I wish I could visit an Albarian slave market. There is so much work that need to be done.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Wir halten unsere Wurzeln und Ahnen in Ehren. Cadomyr steht nun alleine dar, aber dies ist kein Grund, die alten Sitten zu vergessen.")
talkEntry:addResponse("Albar... vor langer Zeit zog das Volk von Cadomyr aus, um Albar zu verlassen.")
talkEntry:addResponse("Ich w�nschte, ich k�nnte einen albarischen Sklavenmarkt aufsuchen. So viel Arbeit ist hier zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("#me spits on the ground.")
talkEntry:addResponse("Gync?! A pool of sins! No habits! Just like Galmair... Coincidence?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("#me spuckt auf den Boden.")
talkEntry:addResponse("Gynk? Ein S�ndenpfuhl! Keine Sitten! Fast wie Galmair... welch Zufall!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("#me laughs out loud.")
talkEntry:addResponse("Salkablabla - all they do is talk. Changes need actions, they'll never understand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("#me lacht ver�chtlich auf.")
talkEntry:addResponse("Salkablabla - die k�nnen nur reden! Wann begreifen die endlich, dass Taten einer starken Hand bed�rfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I pray to Irmorom - and to Queen Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich bete Irmorom an - und auch K�nigin Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom shall protect us from any accidents during the construction.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom m�ge uns vor Unf�llen w�hrend der Bauarbeiten beh�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I'll never let Cherga take away our Queen. If she departs from this world, I will follow.")
talkEntry:addResponse("I do not fear Cherga. I will meet Cherga, side by side with the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Niemals werde ich Cherga unsere K�nigin rauben lassen. Sollte sie dennoch diese Welt verlassen, so werde ich folgen.")
talkEntry:addResponse("Ich f�rchte Cherga nicht. Ich werde ihr, Seite an Seite mit der K�nigin, gegen�bertreten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Shh, don't speak about this in public, but we're actually building the Queen's grave.")
talkEntry:addResponse("I wonder where all the refugees came from. More hands for the Queen!")
talkEntry:addResponse("Never venture to the mountains alone, dragons were reported to roam there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Shh, redet nicht davon in der �ffentlichkeit, aber wir bauen das Grab der K�nigin")
talkEntry:addResponse("Ich frage mich nur, wo die Fl�chtlinge alle herkamen. Ach, mehr H�nde f�r die K�nigin!")
talkEntry:addResponse("Wagt es niemals, alleine in die Berge zu gehen. Angeblich treiben dort Drachen ihr Unwesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("can we fix it")
talkEntry:addResponse("Yes, we can!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nnen wir das schaffen")
talkEntry:addResponse("Yo, wir schaffen das!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("yes we can")
talkEntry:addResponse("So, can we fix it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("yo wir schaffen das")
talkEntry:addResponse("Also k�nnen wir das schaffen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bob the builder")
talkEntry:addResponse("I prefer to be referred to as Robertus, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bob der baumeister")
talkEntry:addResponse("Ich ziehe den Namen Robertus vor, bitte sch�n.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ass")
talkEntry:addTrigger("arse")
talkEntry:addResponse("Same to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("arsch")
talkEntry:addResponse("Ihr mich auch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Robertus")
talkEntry:addResponse("Indeed, I am Robertus, the royal builder. And no, I don't have a nickname.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Robertus")
talkEntry:addResponse("F�rwahr, ich bin Robertus, der k�nigliche Baumeister. Und nein, ich habe keinen Spitznamen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Hoch lebe die K�nigin!", "Hail the Queen!")
talkingNPC:addCycleText("#me beugt sich �ber eine gro�e Zeichnung und macht sorgf�ltig Korrekturen an einzelnen Linien.", "#me leans over a huge drawing and corrects individual lines carefully.")
talkingNPC:addCycleText("#me schl�gt mit seiner Faust auf eine auf dem Tisch liegende Zeichnung. 'Nein! So nicht!'", "#me slams his fist on a drawing lying on the table. 'No! Not this way!'")
talkingNPC:addCycleText("#me murmelt vor sich hin und streicht mit einem Federkiel an seinem Kinn entlang.", "#me murmurs to himself and strokes his chin with the feather of a quill.")
talkingNPC:addCycleText("Wir k�nnten eine S�ule hier hinzuf�gen... und da auch...", "We could add a pillar here... and there...")
talkingNPC:addCycleText("Sie wird beeindruckt sein, ich hoffe nur, die K�nigin wird ihr Grab nie brauchen.", "She will be impressed, I just hope the Queen will never need her grave.")
talkingNPC:addCycleText("Dient ihrer Hohheit!", "Serve Her Majesty!")
talkingNPC:addCycleText("#me kratzt sich am Kopf.", "#me scratches his forehead.")
talkingNPC:addCycleText("Ein Kubus - wie genial!", "A cube - how genius!")
talkingNPC:addCycleText("Der K�nigin ein Grabmal zu erbauen ist eine �u�erst ehrbare Tat.", "To build the Queen's grave is a very honourable deed.")
tradingNPC:addItem(trade.tradeNPCItem(24,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(312,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2710,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2751,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(737,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2763,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(26,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(726,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(316,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2535,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2550,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(104,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(236,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(21,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(22,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2536,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1062,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(234,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(251,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(255,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(252,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(253,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(256,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1266,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(733,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(735,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(26,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(726,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(316,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2535,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2550,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(104,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(236,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2571,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(21,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(22,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2536,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1062,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(234,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2534,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(251,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(255,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(252,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(253,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(256,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(257,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(254,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1266,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(733,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(735,"buySecondary"))
tradingNPC:addNotEnoughMoneyMsg("Das k�nnt ihr euch nicht leisten.", "You can't afford that.")
tradingNPC:addDialogClosedMsg("Im Namen Ihrer Majest�t danke ich.", "In lieu of her Royal Majesty: I thank you.")
tradingNPC:addDialogClosedNoTradeMsg("Bringt bitte mehr Steine.", "Please bring more stones.")
tradingNPC:addWrongItemMsg("Das ben�tige ich nicht.", "I do not need that.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der k�nigliche Baumeister Robertus.", "This NPC is the royal builder Robertus.")
mainNPC:setUseMessage("Fass mich nicht an!", "Don't touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 363)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 207)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2112)
mainNPC:setEquipment(10, 53)
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
