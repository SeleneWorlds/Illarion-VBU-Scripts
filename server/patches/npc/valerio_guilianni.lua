local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local consequence_treasure = require("npc.base.consequence.treasure")
local basic = require("npc.base.basic")
local condition_chance = require("npc.base.condition.chance")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Don Valerio Guilianni of Galmair. Keywords: Task, Gods, Realms, Galmair."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Don Valerio Guilianni von Galmair. Schl�sselw�rter: Aufgabe, G�tter, Reiche, Galmair."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, "=", 1))
talkEntry:addCondition(condition_item(61, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_town(3))
talkEntry:addConsequence(consequence_quest(632, "=", 2))
talkEntry:addConsequence(consequence_deleteitem(61, 1, nil))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addConsequence(consequence_inform("[Quest 'Find Don Valerio Guilianni' end]"))
talkEntry:addResponse("Arrr, gold! The best gift, you could choose. I appreciate it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, "=", 1))
talkEntry:addCondition(condition_item(61, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_town(3))
talkEntry:addConsequence(consequence_quest(632, "=", 2))
talkEntry:addConsequence(consequence_deleteitem(61, 1, nil))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addConsequence(consequence_inform("[Quest 'Finde Don Valerio Guilianni' Ende]"))
talkEntry:addResponse("Arrr, Gold! Das beste Geschenk, dass du w�hlen konntet. Perfekt!")
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
talkEntry:addResponse("The Don greets you.")
talkEntry:addResponse("Greetings, greetings. The Don is busy right now but he always has an open ear for the pleas of his prot�g�s.")
talkEntry:addResponse("Hm? State your cause to the Don but make it brief or one of my associates might have to cut you off.")
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
talkEntry:addResponse("Der Don gr��t euch. Ihr seid also gekommen um euch um euer Schicksal zu k�mmern?")
talkEntry:addResponse("Gr��e, Gr��e. Der Don ist zwar besch�ftigt aber f�r die Anliegen seiner Sch�tzlinge hat er immer ein offenes Ohr.")
talkEntry:addResponse("Hm? Tragt eure Sache dem Don vor aber fasst es kurz oder ich mache euch ein Angebot, das ihr nicht ablehnen k�nnt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("The Don greets you. Now tell me what you can do for me.")
talkEntry:addResponse("Greetings, greetings. The Don is busy right now but he always has an open ear for the pleas of his prot�g�s.")
talkEntry:addResponse(" Hm? State your cause to the Don but make it brief or one of my associates might have to cut you off.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Der Don gr��t euch. Ihr seid also gekommen um euch um euer Schicksal zu k�mmern?")
talkEntry:addResponse("Gr��e, Gr��e. Der Don ist zwar besch�ftigt aber f�r die Anliegen seiner Sch�tzlinge hat er immer ein offenes Ohr.")
talkEntry:addResponse("Hm? Tragt eure Sache dem Don vor aber fasst es kurz oder ich mache euch ein Angebot, das ihr nicht ablehnen k�nnt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me rubs his chin looking contemplative, 'Eh, you may leave. Probably not worth it to send someone to keep an eye on ya.'")
talkEntry:addResponse("May Ronagan keep ya safe in the shadows but not too safe, and be sure to give my regards to the family!")
talkEntry:addResponse("#me gives a brief nod and then turns away, 'Hm, an interesting person, gonna get good one day, maybe too good. Hope I don't have to send Miggs to keep an eye on him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me f�hrt sich nachdenklich �bers Kinn 'Eh, ihr k�nnt gehen. Wohl nicht wert euch im Auge behalten zu lassen.'")
talkEntry:addResponse("Ronagan breite seinen sch�tzenden Mantel �ber euch aus. Und Gr��e an die Familie!")
talkEntry:addResponse("#me nickt nur knapp und wendet sich dann ab 'Hm. Eine interessante Person, k�nnte es weit bringen, zu weit. Miggs soll ihn beschatten lassen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me rubs his chin looking contemplative, 'Eh, you may leave. Probably not worth it to send someone to keep an eye on ya.'")
talkEntry:addResponse("May Ronagan keep ya safe in the shadows but not too safe, and be sure to give my regards to the family!")
talkEntry:addResponse("#me gives a brief nod and then turns away, 'Hm, an interesting person, gonna get good one day, maybe too good. Hope I don't have to send Miggs to keep an eye on him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me f�hrt sich nachdenklich �bers Kinn 'Eh, ihr k�nnt gehen. Wohl nicht wert euch im Auge behalten zu lassen.'")
talkEntry:addResponse("Ronagan breite seinen sch�tzenden Mantel �ber euch aus. Und Gr��e an die Familie!")
talkEntry:addResponse("#me nickt nur knapp und wendet sich dann ab 'Hm. Eine interessante Person, k�nnte es weit bringen, zu weit. Miggs soll ihn beschatten lassen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Excellent. But that's of no concern right now. Tell me, %CHARNAME, what can the Don do for you?")
talkEntry:addResponse("#me waves dismissively 'Oh still a little shaken from the weekly assassination attempt.'")
talkEntry:addResponse("How? One could say: Like the leader of a pack of wolves that has to guard his position at all times.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ausgezeichnet. Aber das tut nichts zur Sache. Sagt was kann der Don f�r euch tun, %CHARNAME?")
talkEntry:addResponse("#me winkt ab 'Oh noch etwas aufgeregt vom allw�chentlichen Anschlag auf mein Leben.'")
talkEntry:addResponse("Wie? Ein treffender Vergleich w�re dies: Wie der einsame Leitwolf, der seine Stellung im Rudel verteidigen muss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("#me makes a broad welcoming gesture with his hands. 'Ah forgive my manners. Valerio Guilianni is my name but call me 'The Don'.")
talkEntry:addResponse("Hm, you're not too bright are ya? I thought my residence and hoards of servants would have given you a hint.")
talkEntry:addResponse("#me sighs, '%CHARNAME, how can one be so naive? Where's the respect? I am the Don.'")
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
talkEntry:addResponse("#me macht eine ausladende willkommende Geste 'Ah meine Manieren. Valerio Guilianni ist mein Name aber nennt mich 'Mein Don'.")
talkEntry:addResponse("Hm, der hellste Blitz scheint ihr nicht zu sein. Und ich dachte die Residenz und Dienerschaft w�ren Hinweis genug.")
talkEntry:addResponse("#me seufzt '%CHARNAME, wie kann man nur so blau�ugig sein? Wo bleibt der Respekt? Ich bin der Don.'")
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
talkEntry:addResponse("I am not a trader.")
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
talkEntry:addResponse("Ich bin kein H�ndler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Mirarie")
talkEntry:addTrigger("Bragolin")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(317, "=", 13))
talkEntry:addResponse("A letter from Cadomyr? Oh, thank you very much. What? Ah, I see. I'll take care of that, you may leave now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 12))
talkEntry:addTrigger("Mirarie")
talkEntry:addTrigger("Bragolin")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(317, "=", 13))
talkEntry:addResponse("Ein Brief aus Cadomyr? Oh, vielen Dank... Was? Ah, ich verstehe. Ich werde mich darum k�mmern. Ihr k�nnt nun gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 12))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("letter")
talkEntry:addTrigger("message")
talkEntry:addConsequence(consequence_quest(317, "=", 13))
talkEntry:addResponse("A letter from Cadomyr? Oh, thank you very much. What? Ah, I see. I'll take care of that, you may leave now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(317, "=", 12))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Brief")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_quest(317, "=", 13))
talkEntry:addResponse("Ein Brief aus Cadomyr? Oh, vielen Dank... Was? Ah, ich verstehe. Ich werde mich darum k�mmern. Ihr k�nnt nun gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The day will come, when the Don will ask you for a favour. Ask Miggs if that day is today.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es wird der Tag kommen, an dem dich der Don um einen Gefallen bittet. Frage Miggs, ob heute dieser Tag ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You know, the Don likes you for some reason, ya gotta look about ya. Maybe I gotta task for ya; go and ask Miggs how you can earn the Don's favour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wei�t du, der Don mag dich. Und der Don wird dir auch eine Arbeit verschaffen. Frage Miggs, wie du in der Gunst des Don steigen kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(10.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(1))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(10.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(1))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(11.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(11.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(13.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(3))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(13.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(3))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(14.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(4))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(14.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(4))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(17.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(5))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(17.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(5))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(6))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(6))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(7))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(7))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(34.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(8))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(34.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addConsequence(consequence_treasure(8))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(51.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3522, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(51.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3522, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3524, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(632, ">", 0))
talkEntry:addCondition(condition_quest(633, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3524, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(633, "=", 1))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Well, I provide for myself and my family. Ah and I rule Galmair of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Nun, ich sorge f�r mich, meine Familie und meine Freunde. Ach und Galmair beherrsche ich nat�rlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Well, I provide for myself and my family. Ah and I rule Galmair of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Nun, ich sorge f�r mich, meine Familie und meine Freunde. Ach und Galmair beherrsche ich nat�rlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ja, eine Schande. Tragisch, furchtbar. Und dabei herrschten ideale Bedingungen um ein zweites Galmair zu errichten.")
talkEntry:addResponse("As far as I heard, Troll's Bane could easily compete with Galmair in terms of security, quality of life and civil rights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ja, eine Schande. Tragisch, furchtbar. Und dabei herrschten ideale Bedingungen um ein zweites Galmair zu errichten.")
talkEntry:addResponse("Soweit ich geh�rt habe, stand Troll's Bane Galmair in Sicherheit, Lebensqualit�t und politischer Mitsprache um nichts nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("I got deep pockets if ya know what I mean, %CHARNAME. It's my business to know people and what happens in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ich zahle gutes Geld um zu wissen was in meiner Stadt passiert, %CHARNAME. Euer Aufenthalt hier war mir bekannt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Rosie")
talkEntry:addResponse("She doesn't like the name, what can I say? Prefers Rosaline and her fancy title o' Queen.")
talkEntry:addResponse("Believe me, it is my privilege alone to call her that. Best ta keep it outya mouth.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rosie")
talkEntry:addResponse("Sie mag den Namen nicht, ihr werdet sie eher als K�nigin Rosaline kennen.")
talkEntry:addResponse("Glaubt mir, das Privileg sie so zu nennen ist allein mir vorbestimmt. Versucht es erst gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Miggs")
talkEntry:addResponse("Every successful businessman need two things: A supportive wife and a muscle to do his biding. If only I had Rosie, I'd have both in one person.")
talkEntry:addResponse("Miggs is like a second left hand for me, but enough jokes. See him if you need a task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Miggs")
talkEntry:addResponse("Jeder erfolgreiche Gesch�ftsmann braucht zwei Dinge: Eine unterst�tzende Frau und einen Mann f�rs Grobe. Ach, mit Rosie h�tte ich beides in einem.")
talkEntry:addResponse("Miggs ist wie eine zweite linke Hand, aber genug gescherzt. Geh zu ihm wenn du eine Aufgabe suchst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("protect")
talkEntry:addTrigger("fee")
talkEntry:addResponse("You wanna be in the know? So do about a thousand other people. Don't talk about things that don't concern you.")
talkEntry:addResponse("You talking about protection fees? You need some protection? You might if you keep talking about things that don't concern you.")
talkEntry:addResponse("A business has to have protection from a lot of things. Also, has to pay a lot of fees. That's about all you need to know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schutz")
talkEntry:addTrigger("Protekt")
talkEntry:addTrigger("Geb�hr")
talkEntry:addResponse(" Was wollt ihr wissen? - Sprecht nicht �ber Dinge die Euch nichts angehen.")
talkEntry:addResponse("Sprecht ihr �ber die Protektionsgeb�hren? Braucht ihr etwa Schutz? Vermutlich schon... sprecht ihr immerhin �ber Dinge die Euch nicht im gerningsten zu interessieren haben.")
talkEntry:addResponse("Ein Laden muss vor vielen Dingen gesch�tzt werden. - Und muss viele Geb�hren zahlen. Das ist alles was ihr wissen m�sst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Corleone")
talkEntry:addResponse("Ach, a dazzler from Gynk, no honour. And throaty all the time, only the gods know why.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Corleone")
talkEntry:addResponse("Ach, ein Blender aus Gynk, keine Ehre. Und immer heiser, die G�tter wissen warum.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("realm")
talkEntry:addResponse("Ya know I hear people talking about these 'realms', but all I see is the land of my future wife and a drugged out magician leading halfers.")
talkEntry:addResponse("Ya, ya Runewick, Cadomyr, and Galmair that's all you newcomers want to talk about. Focus on what's important, getting rich, plain and simple.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reich")
talkEntry:addResponse("Wisst ihr, ich h�re die Leute immer wieder �ber die 'Reiche' sprechen. Aber f�r mich sind sie nichts weiter als die L�nder meiner zuk�nftigen Frau und des �bergeschnappten Magiers, der Frauenkleider tr�gt.")
talkEntry:addResponse("Aye, Runewick, Cadomyr und Galmair, das ist alles wor�ber Neuank�mmlinge wie ihr sprechen wollt. Konzentriert Euch lieber auf die wichtigen Dinge! Reichtum und Macht! Ganz einfach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Tell me, what should I think of a man who wears women's clothing and enjoys men swooning over his greatness?")
talkEntry:addResponse("He is said not to leave his library very often. If you ask me, that's a good thing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Sagt mir ernsthaft, was soll ich von einem Mann halten der Frauengew�nder tr�gt und sich von M�nnern anhimmeln l�sst?")
talkEntry:addResponse("Er soll seine Bibliothek ja nicht oft verlassen, und wenn ihr mich fragt ist das auch gut so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Tell me, what should I think of a man who wears women's clothing and enjoys men swooning over his greatness?")
talkEntry:addResponse("He is said not to leave his library very often. And if you ask me, that's a good thing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Sagt mir ernsthaft, was soll ich von einem Mann halten der Frauengew�nder tr�gt und sich von M�nnern anhimmeln l�sst?")
talkEntry:addResponse("Er soll seine Bibliothek ja nicht oft verlassen, und wenn ihr mich fragt ist das auch gut so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Sadly, the tide never rises high enough for a wave to wash away all those bookworms into the sea.")
talkEntry:addResponse("Some suspect me of blackmail, but do you know how much a mage from Runewick charges for his services? Now that's a crime!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Leider steigt die Flut nie hoch genug, um diese ganzen B�cherw�rmer mit einer Welle ins Meer zu sp�len.")
talkEntry:addResponse("Man warf mir schon einmal Erpressung vor, aber wisst ihr, wieviel die Magier Runewicks f�r ihre Dienste verlangen? Das ist ein Verbrechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is like a mountain flower, enchanting every wanderer with its beauty.")
talkEntry:addResponse("Sometimes, if I am up early and look down from the battlement I can almost smell the success and profit of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist eine wilde Gebirgsblume, die jeden Wanderer mit ihrer Sch�nheit in ihren Bann zieht.")
talkEntry:addResponse("Manchmal, wenn ich fr�h aufstehe und von den Zinnen hinabblicke kann ich den Erfolg und Profit von Galmair fast riechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Oh Rosie! That's my kind of woman. Such fire, such a fierce temper!")
talkEntry:addResponse("She fell for me completely! Sadly, she would never show her true feelings openly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Oh Rosie! Das ist eine richtige Frau! Voll Feuer, voll Temperament!")
talkEntry:addResponse("Sie ist mir vollkommen verfallen! Leider w�rde sie ihre wahren Gef�hle f�r mich nie offen zeigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Oh Rosie! That's my kind of woman. Such fire, such a fierce temper!")
talkEntry:addResponse("She fell for me completely! Sadly, she would never show her true feelings openly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Oh Rosie! Das ist eine richtige Frau! Voll Feuer, voll Temperament!")
talkEntry:addResponse("Sie ist mir vollkommen verfallen! Leider w�rde sie ihre wahren Gef�hle f�r mich nie offen zeigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("A nice place. Maybe it lacks the proper night life, but Rosie does a good job overall.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ein h�bscher Ort. Das Nachtleben l�sst vielleicht etwas zu w�nschen �brig, aber Rosie macht ihre Sache gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Proud people. I find their way of dealing with weakness appealing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ein stolzes Volk. Und ihre Art, wie sie mit Schw�che umgehen, gef�llt mir ebenfalls.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Honorable former 'business partners' of my father lived there. Until we had to terminate them, the business relationships o'course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ehrenwerte ehemalige 'Gesch�ftspartner' meines Vaters wohnten dort. Wir mussten sie leider terminieren. Die Gesch�ftsbeziehungen meine ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Even though they like to act all noble, many of them visit Galmair to entertain themselves. Their vice pays our dice, see whatta mean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Auch wenn sie sich gerne nobel geben, viele kommen zu uns nach Galmair um sich zu am�sieren. Ihr Laster bringt uns Zaster, hehe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("god")
talkEntry:addResponse("You got faith, %CHARNAME? Don't let the priests and zealots fool ya, if you're looking for practical words about the gods just ask me about one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gott")
talkEntry:addTrigger("g�tter")
talkEntry:addResponse("Glaubt ihr, %CHARNAME? Habt ihr Vertrauen? - Lasst Euch von den Priestern und M�nchen nicht an der Nase herumf�hren, wenn ihr nach aufrichtigen Worten �ber die G�tter sucht, seid ihr bei mit genau an den Richtigen geraten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ahh, what would a tavern be without him? How could tempers run high over a game of cards if not due to Adron's gifts?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ahh, was w�re eine Taverne ohne ihn? Wie k�nnten sich sonst die Gem�ter so beim Kartenspiel erhitzen wenn nicht durch Adrons Gaben?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("I wonder if he takes offence to my dragon hide boots, but didn't he leave this world already? If you can't stand the heat, stay outta the hearth, I always say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Ich frage mich ob er meine Stiefel aus Drachenleder anst��ig findet. Aber hat er diese Welt nicht schon verlassen? Und was er nicht wei� macht ihn nicht hei�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("If you had to wake up with a dagger poking your throat every other night you'd also respect the lady in black.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("W�rdet ihr jede zweite Nacht mit einem Messer an der Kehle aufwachen, ihr h�ttet auch Respekt vor der schwarzen Dame.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Books might teach ya a lot, but everything I had to learn to become successful I've experienced through action.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("B�cher m�gen einem viel beibringen k�nnen. Aber alles, was ich lernen musste um erfolgreich zu sein, habe ich durch Taten erfahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("I don't believe Eldan shows any interest in Galmair or myself. The mountains are pretty secluded however, maybe he'd like those.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Ich glaube kaum, dass Eldan sich f�r Galmair und mich interessiert. Obwohl das Gebirge doch sehr abgeschieden ist, vielleicht w�rde ihm das gefallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Sometimes, when the temperature becomes unbearable in winter, I think to myself 'One can overdo in fulfilling his tasks'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Manchmal, wenn die Temperaturen im Winter unertr�glich werden, denke ich mir 'Man kann seine Aufgaben auch zu gr�ndlich erf�llen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("As Galmair's wealth comes from the mining and processing of ore it would be foolish not to drink a mug of beer regularly in honour of the great craftsman, right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Da Galmair vorallem vom Bergbau und Weiterverarbeitung von Metallen lebt, w�re es t�richt, nicht regelm��ig einen Krug Bier f�r den gro�en Handwerker mitzutrinken, nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Hah, noble that one, jumping in front of an arrow to save a comrade in battle. Doesn't he know how much that hurts!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Hah, ehrenhaft ist, wer einen Pfeil abf�ngt um seinen Kameraden in der Schlacht zu retten. Wei� er nicht wie weh sowas tut!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Maybe not all of my decisions in life were 'right', but I do know the thin line between twilight and eternal darkness. You cross that line and you're just a foolish bastard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Ich mag nicht immer das 'Richtige' getan haben, aber ich kenne die feine Linie zwischen dem Zwielicht und der ewigen Dunkelheit. Ich werde diese Linie nicht �bertreten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Narg�n blessed me many a times when I had to play my cards right. On the other hand there's no reason not to tip luck into your favour, he's pretty unreliable after all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Schon oft war mir Narg�n hold, als es darum ging auf die richtige Karte zu setzen. Anderenseits spricht nichts dagegen dem Gl�ck auch nachzuhelfen, immerhin ist er nicht sehr verl�sslich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("We live amidst a scarce mountain range and I shall pay reverence to Oldra? Forget about it...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Wir leben inmitten eines kargen Gebirges, und da soll ich Oldra Respekt erweisen? Pfft... also bitte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("No coins, no wares leave my possession without being blessed in the face of Ronagan. You can figure out why I'd do that ya'self.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Kein Geldst�ck, keine Ware verl�sst meinen Besitz bevor sie nicht in Gebete zu Ronagan mit eingeschlossen wurde. Spekulationen, warum ich das mache, seien euch selbst �berlassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("I would have the most beautiful temple carved into the mountains, if only Rosie wouldn't be so abrasive. Sirani is gunna have to settle for less until that happens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Den sch�nsten Tempel w�rde ich in das Gebirge hauen lassen, wenn nur Rosie nicht immer so abweisend zu mir w�re. Bis dahin muss Sirani sich mit weniger begn�gen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("In spring, after the snow has melted, I sometimes think we don't pay enough respect to her. Then, after the floods are under control, I disregard those thoughts again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Nach der Schneeschmelze im Fr�hling glaube ich manchmal dass wir Tanora nicht genug huldigen. Wenn die �berschwemmungen aber beseitigt sind, verdr�nge ich diese Gedanken wieder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Some of the dwarves pray to her. They say if we don't, the mountain will collapse upon us. Whatever, let the superstitious believe what they wanna.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Einige der Zwerge beten zu ihr. Sie sagen sonst st�rzt uns der Berg auf den Kopf, was auch immer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Family is all that matters, you remember that. You rely on friends and best believe your pockets will be empty and a knife will be in your back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Wenn man lacht, lacht die Welt mit einem mit, aber weine und du weinst allein. Ich hatte nie eine Verwendung f�r Freunde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't sell anything, I grant favours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe nichts, ich gew�hre Gef�lligkeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Money gets you everywhere in Galmair. Even those places you probably shouldn't be.")
talkEntry:addResponse("My father once said: 'Son, stay honest and upright, you'll be rewarded.' Oh how we laughed that day.")
talkEntry:addResponse("#me winks knowingly, 'If there's one habit I broke out of doing, it's telling others about something.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("In Galmair bringt Geld euch �berall hin. Wohl auch an Orte die ihr meiden solltet.")
talkEntry:addResponse("Mein Vater sagte einmal: 'Sohn, bleib ehrbar und anst�ndig, es wird dir gelohnt.' Oh was haben wir an diesem Tag gelacht.")
talkEntry:addResponse("#me zwinkert wissend. 'Wenn es eine Sache gibt die ich mir abgew�hnt habe, dann anderen Dinge zu erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("#me bows ever so slightly. 'That's me. How can I help you, %CHARNAME ?'")
talkEntry:addResponse("You've heard about me I see very good, very good. Ask and the Don will help you.")
talkEntry:addResponse("What do you want from him? Who sent you? Guards! Has this meat bag been searched for weapons?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("#me deutet eine Verbeugung an. 'Das bin ich. Wie kann ich euch helfen, %CHARNAME ?'")
talkEntry:addResponse("Ihr habt also von mir geh�rt. Sehr sch�n, sehr sch�n. Bittet und der Don wird euch helfen.")
talkEntry:addResponse("Was wollt ihr von ihm? Wer hat euch geschickt? Wache! Wurde diese Person auf Waffen untersucht?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me geht m��ig ein paar Schritte auf und ab, dabei l�chelt er zufrieden.", "#me walks  at a leisurely pace with a content smile on his face.")
talkingNPC:addCycleText("Respekt? Wo ist nur der Respekt geblieben? All diese M�chtegerns...", "Respect? Where's the respect? All these wannabes...")
talkingNPC:addCycleText("#me dreht sich besorgt um 'Halt! Wer ist da? Es ist noch nicht Zeit f�r das w�chentliche Attentat!'", "#me turns around concerned: 'Damn assassination attempts, they occur almost weekly now.'")
talkingNPC:addCycleText("#me spuckt angewidert ein paar Trauben aus. 'Ugh. Wer hat das zu verantworten?", "#me spits out some grapes in disgust. 'Ugh. Who's responsible for that?'")
talkingNPC:addCycleText("Ich bef�rchet, dieser Kr�uterhandel wird uns noch in den n�chsten Jahren viele Sorgen bereiten.", "I believe this herb business is gonna destroy us in the years to come.")
talkingNPC:addCycleText("Ich war niemals unvorsichtig. Frauen und Kinder d�rfen unvorsichtig sein, M�nner nicht.", "I spent my life trying not to be careless. Females and children can be careless, but not dwarves or men.")
talkingNPC:addCycleText("Ich glaube an Gold, Reicht�mer und Macht. Wer an sie nicht ehrt, hat sie wohl schlichtweg nicht!", "I have faith in gold, wealth and power. Those who don't honour such meaningful things simply don't have either.")
talkingNPC:addCycleText("Miggs! Wo ist Miggs schon wieder! Einige H�ndler haben ihre 'Protektionsgeb�hr' diesen Monat noch nicht entrichtet.", "Miggs! Where is Miggs again? Some merchants haven't paid their 'protection fee' this month.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Aufgrund seines noblen Gebahrens und Auftretens muss dies Don Valerio Guilianni h�chst pers�nlich sein.", "Judging by his noble attire and overall demeanour this must be Don Valerio Guilianni.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2390)
mainNPC:setEquipment(11, 2384)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 526)
mainNPC:setEquipment(9, 2172)
mainNPC:setEquipment(10, 697)
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
