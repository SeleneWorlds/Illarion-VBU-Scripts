local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_skill = require("npc.base.condition.skill")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_skill = require("npc.base.consequence.skill")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the butcher Henry Darter. Keywords: Hello, quest, butcher."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Schlachter Henry Darter. Schl�sselw�rter: Hallo, Quest, Schlachter."))
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
talkEntry:addResponse("Greetings, my friend.")
talkEntry:addResponse("Hello. A great day to butcher some pigs, isn't it?")
talkEntry:addResponse("Hello, hello. Welcome to the Dewy Swamps.")
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
talkEntry:addResponse("Gr��e, mein Freund.")
talkEntry:addResponse("Hallo. Ein herrlicher Tag zum Schweineschlachten, nicht?")
talkEntry:addResponse("Hallo, hallo. Willkommen im Morgentausumpf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings. Do not waste your time with small talk!")
talkEntry:addResponse("Be greeted.")
talkEntry:addResponse("Greetings, my friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Gr��e. Verschwende deine Zeit nicht mit Plausch!")
talkEntry:addResponse("Seid gegr��t.")
talkEntry:addResponse("Gr��e, mein Freund.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Have a nice day!")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Goodbye, my friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Sch�nen Tag noch!")
talkEntry:addResponse("Lebt wohl!")
talkEntry:addResponse("Auf bald, mein Freund.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("See you later!")
talkEntry:addResponse("Aye, goodbye.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Auf bald!")
talkEntry:addResponse("Ja, ja, gehabt euch wohl!")
talkEntry:addResponse("Frohes Schaffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Good, as long as I have enough to butcher.")
talkEntry:addResponse("Good as always.")
talkEntry:addResponse("I'm fine and you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Gut, so lange ich genug zum Schlachten habe")
talkEntry:addResponse("Gut wie immer.")
talkEntry:addResponse("Mir geht's gut und euch?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Henry the butcher.")
talkEntry:addResponse("Just good, old Henry")
talkEntry:addResponse("Henry Darter.")
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
talkEntry:addResponse("Ich bin Henry der Schlachter")
talkEntry:addResponse("Der gute alte Henry.")
talkEntry:addResponse("Henry Darter.")
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
talkEntry:addCondition(condition_quest(64, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps I"))
talkEntry:addConsequence(consequence_item(189, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 1))
talkEntry:addResponse("You can help me butchering the pigs. Take this knife and bring me ten pieces of pork. You will earn some money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf I"))
talkEntry:addConsequence(consequence_item(189, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 1))
talkEntry:addResponse("Du kannst mir helfen die Schweine zu schlachten. Nehme dieses Messer und bring mir zehn St�cke Schweinefleisch. Du bekommst auch ein paar M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps I"))
talkEntry:addConsequence(consequence_item(189, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 1))
talkEntry:addResponse("You can help me butchering the pigs. Take this knife and bring me ten pieces of pork. You will earn some money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf I"))
talkEntry:addConsequence(consequence_item(189, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 1))
talkEntry:addResponse("Du kannst mir helfen die Schweine zu schlachten. Nehme dieses Messer und bring mir zehn St�cke Schweinefleich. Du bekommst auch ein paar M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, great. I'll take the pork and you get your money. Tell me if you want another task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, great. I'll take the pork and you get your money. Tell me if you want another task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, wunderbar. Ich nehme das Fleisch und du bekommst deinen Lohn. Sag bescheid, wenn du noch einen Auftrag willst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, wunderbar. Ich nehme das Fleisch und du bekommst deinen Lohn. Sag bescheid, wenn du noch einen Auftrag willst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded silver five coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, great. I'll take the pork and you get your money. Tell me if you want another task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, great. I'll take the pork and you get your money. Tell me if you want another task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, wunderbar. Ich nehme das Fleisch und du bekommst deinen Lohn. Sag bescheid, wenn du noch einen Auftrag willst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_item(307, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(307, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 2))
talkEntry:addResponse("Ah, wunderbar. Ich nehme das Fleisch und du bekommst deinen Lohn. Sag bescheid, wenn du noch einen Auftrag willst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Not less than ten pieces of pork!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zehn St�cke Schweinefleisch und nicht weniger!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Not less than ten pieces of pork!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Zehn St�cke Schweinefleisch und nicht weniger!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps II"))
talkEntry:addConsequence(consequence_quest(64, "=", 3))
talkEntry:addResponse("You did very well with the pork. Now you can try to bring twenty pieces of raw leather to me. Your reward will be ten silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf II"))
talkEntry:addConsequence(consequence_quest(64, "=", 3))
talkEntry:addResponse("Das Schweinefleisch hast du gut besorgt. Nun kannst du mir mal zwanzig H�ute Rohleder auftreiben. Dein Lohn sollen zehn Silberst�cke sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps II"))
talkEntry:addConsequence(consequence_quest(64, "=", 3))
talkEntry:addResponse("You did very well with the pork. Now you can try to bring twenty pieces of raw leather to me. Your reward will be ten silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf II"))
talkEntry:addConsequence(consequence_quest(64, "=", 3))
talkEntry:addResponse(" Das Schweinefleisch hast du gut besorgt. Du kannst mir nun mal zwanzig H�ute Rohleder auftreiben. Dein Lohn sollen zehn Silberst�cke sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Very good pieces of leather. Here is your money and tell me if you want an other task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Very good pieces of leather. Here is your money and tell me if you want an other task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Das sind doch mal ein paar ordentlichen H�ute! Hier dein Geld und sag bescheid, wenn du wieder eine Aufgabe brauchst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Das sind doch mal ein paar ordentlichen H�ute! Hier dein Geld und sag bescheid, wenn du wieder eine Aufgabe brauchst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Very good pieces of leather. Here is your money and tell me if you want an other task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Very good pieces of leather. Here is your money and tell me, if you want an other task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Das sind doch mal ein paar ordentlichen H�ute! Hier dein Geld und sag bescheid, wenn du wieder eine Aufgabe brauchst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_item(69, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(69, 20, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 4))
talkEntry:addResponse("Das sind doch mal ein paar ordentlichen H�ute! Hier dein Geld und sag bescheid, wenn du wieder eine Aufgabe brauchst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("And? Where are my twenty pieces of raw leather?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Na, wo bleiben meine zwanzig H�ute Rohleder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("And? Where are my twenty pieces of raw leather?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Na, wo bleiben meine zwanzig H�ute Rohleder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps III"))
talkEntry:addConsequence(consequence_quest(64, "=", 5))
talkEntry:addResponse("You want another task? Well, bring me five pieces of lamb meat and you will earn ten silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf III"))
talkEntry:addConsequence(consequence_quest(64, "=", 5))
talkEntry:addResponse("Du willst noch eine Aufgabe? Dann bring mir mal f�nf Lammkeulen und du erh�ltst zehn Silberm�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps III"))
talkEntry:addConsequence(consequence_quest(64, "=", 5))
talkEntry:addResponse("You want another task? Well, bring me five pieces of lamb meat and you will earn ten silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf III"))
talkEntry:addConsequence(consequence_quest(64, "=", 5))
talkEntry:addResponse("Du willst noch eine Aufgabe? Dann bring mir mal f�nf Lammkeulen und du erh�ltst zehn Silberm�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("That's meat of great quality, here are your coins for this work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("That's meat of great quality, here are your coins for this work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("Was f�r ein hervorragendes Fleisch. Daf�r bekommst du deine zehn Silberst�cke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("Was f�r ein hervorragendes Fleisch. Daf�r bekommst du deine zehn Silberst�cke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("That's meat of great quality, here are your coins for this work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("That's meat of great quality, here are your coins for this work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("Was f�r ein hervorragendes Fleisch. Daf�r bekommst du deine zehn Silberst�cke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_item(2934, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2934, 5, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 6))
talkEntry:addResponse("Was f�r ein hervorragendes Fleisch. Daf�r bekommst du deine zehn Silberst�cke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Five fine pieces of lamb meat, hurry up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("F�nf feine Lammkeulen. Los, los.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Five fine pieces of lamb meat, hurry up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("F�nf feine Lammkeulen. Los, los.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps IV"))
talkEntry:addConsequence(consequence_quest(64, "=", 7))
talkEntry:addResponse("Of course I have another task for you. For a barbecue, I need ten lumps of coal. Head to the Dark Hole Mine, my buddy Daerbur will help you, and believe it or not your reward will be 20 silver coins!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf IV"))
talkEntry:addConsequence(consequence_quest(64, "=", 7))
talkEntry:addResponse("Nat�rlich habe ich noch was f�r dich zutun. F�r ein richtiges Grillfest brauche ich zehn Klumpen Kohle. Lauf mal zur Dunkellochmine, mein Kumpel Daerbur wird dir helfen. Und glaub es oder nicht, dein Lohn werden 20 Silberst�cke sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Dewy Swamps IV"))
talkEntry:addConsequence(consequence_quest(64, "=", 7))
talkEntry:addResponse("Of course I have another task for you. For a barbecue, I need ten lumps of coal. Head to the Dark hole Mine, my buddy Daerbur will help you, and believe it or not your reward will be 20 silver coins!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Morgentausumpf IV"))
talkEntry:addConsequence(consequence_quest(64, "=", 7))
talkEntry:addResponse(" Nat�rlich habe ich noch was f�r dich zutun. F�r ein richtiges Grillfest brauche ich zehn Klumpen Kohle. Lauf mal zur Dunkellochmine, mein Kumpel Daerbur wird dir helfen. Und glaub es oder nicht, dein Lohn werden 20 Silberst�cke sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Hmmm, good coal. You really deserve the coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Hmmm, good coal. You really deserve the coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Das ist wirklich gute Kohle. Da hast du dir diese M�nzen wirklich verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Das ist wirklich gute Kohle. Da hast du dir diese M�nzen wirklich verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and your cooking skill increases."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Hmmm, good coal. You really deserve the coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Hmmm, good coal. You really deserve the coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.cookingAndBaking, "<", 90))
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und deine Kochfertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.cookingAndBaking, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Das ist wirklich gute Kohle. Da hast du dir diese M�nzen wirklich verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_item(21, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(21, 10, nil))
talkEntry:addConsequence(consequence_quest(64, "=", 8))
talkEntry:addResponse("Das ist wirklich gute Kohle. Da hast du dir diese M�nzen wirklich verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Where is my coal, eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wo ist denn meine Kohle, bitte sch�n?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Where is my coal, eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wo ist denn meine Kohle, bitte sch�n?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I'm sorry, but you really did enough for me. You were a great help. Maybe you should go to the Malachite mine, close to Galmair, where there is someone who needs your help as well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Tut mir leid, du hast wirklich genug gemacht. Du warst eine tolle Hilfe. Aber gehe doch mal zur Malachitmine bei Galmair. Da ist jemand, der deine Hilfe gebrauchen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I'm sorry, but you really did enough for me. You were a great help. Maybe you should go to the Malachite mine, close to Galmair, where there is someone who needs your help as well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(64, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Tut mir leid, du hast wirklich genug gemacht. Du warst eine tolle Hilfe. Aber gehe doch mal zur Malachitmine bei Galmair. Da ist jemand, der deine Hilfe gebrauchen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a butcher and proud of it!")
talkEntry:addResponse("Yes, I am a butcher.")
talkEntry:addResponse("Butchering is hard but good work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Schlachter und stolz darauf!")
talkEntry:addResponse("Ja, ich bin ein Schlachter.")
talkEntry:addResponse("Schlachten ist eine harte, aber ehrliche Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a butcher and proud of it!")
talkEntry:addResponse("Yes, I am a butcher.")
talkEntry:addResponse("Butchering is hard but good work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Schlachter und stolz darauf!")
talkEntry:addResponse("Ja, ich bin ein Schlachter.")
talkEntry:addResponse("Schlachten ist eine harte, aber ehrliche Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Are you one of the refugees? I do not have anything to spare!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Seid ihr einer dieser Fl�chtlinge? Ich habe nichts zu verschenken!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Welcome to the Dewy Swamps. I am Henry the butcher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Willkommen im Morgentausumpf. Ich bin Henry, der Schlachter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("butcher")
talkEntry:addResponse("I am a butcher and proud of it!")
talkEntry:addResponse("Yes, I am a butcher.")
talkEntry:addResponse("Butchering is a hard but good work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlachter")
talkEntry:addResponse("Ich bin Schlachter und stolz darauf!")
talkEntry:addResponse("Ja, ich bin ein Schlachter.")
talkEntry:addResponse("Schlachten ist eine harte, aber ehrliche Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("swamp")
talkEntry:addTrigger("dew")
talkEntry:addResponse("It's beautiful here, isn't it? So wet and full of life.")
talkEntry:addResponse("This place wasn't always a swamp, I like it much better this way, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sumpf")
talkEntry:addTrigger("morgentau")
talkEntry:addResponse("Sch�n hier, nicht? So feucht und lebendig.")
talkEntry:addResponse("Diese Gegend war nicht immer ein Sumpf, aber so gef�llt sie mir viel besser.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Messer")
talkEntry:addTrigger("Dolch")
talkEntry:addTrigger("Beil")
talkEntry:addResponse("Schlachten tut man am besten mit einem Messer. Ein Beil ist so... brutal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("knife")
talkEntry:addTrigger("dagger")
talkEntry:addTrigger("hatchet")
talkEntry:addResponse("Butchering is done best with a knife. A hatchet is so... brutal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rind")
talkEntry:addTrigger("Kuh")
talkEntry:addTrigger("K�he")
talkEntry:addTrigger("Kalb")
talkEntry:addResponse("Rinder findet ihr in der Steppe. Die Steaks von den Rindern sind wirklich gut. Aber irgendwie m�gen die Elfen nicht, wenn ich sie besuchen komme...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwein")
talkEntry:addResponse("Schinken vom Schwein ist der Klassiker. Damit verdient so mancher sein erstes Geld hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schaf")
talkEntry:addResponse("Schafe findet ihr auf den Weiden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reh")
talkEntry:addTrigger("Wild")
talkEntry:addResponse("Rehe findet ihr in den meisten Waldgebieten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cow")
talkEntry:addTrigger("cattle")
talkEntry:addResponse("You can find cattle on the plains. The steaks from the cattle there are really good, but for some reason the elves don't like me visiting them...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pig")
talkEntry:addResponse("Ham from the pigs is delicate. A lot of people earn their first money with it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sheep")
talkEntry:addResponse("You can find sheep in the pastures.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("deer")
talkEntry:addResponse("You can find deers in most of the forest areas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Mr Morgan is a strange person, I think he smokes too many flowers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Herr Morgan ist ein komischer Kauz. Ich glaube, er raucht zu viele Blumen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Mr. Morgan is a strange person, I think he smokes too many flowers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Herr Morgan ist ein komischer Kauz. Ich glaube, er raucht zu viele Blumen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("It is peaceful in the vicinity of Runewick, but sometimes, those animal lovers worry me. What do they eat? Flowers?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Friedlich ist es hier in der N�he von Runewick. Nur manchmal st�ren mich die Tierliebhaber, was essen denn die? Blumen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("No, I do not owe money to the Don, you must be searching for someone else.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Nein, ich schulde dem Don kein Geld. Ihr m�sst mich verwechseln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("It is quite nice in Galmair, but I don't want to pay for my safety. I don't earn that much with my meat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Nett ist es in Galmair, aber ich zahl doch kein Schutzgeld von dem wenigen, was ich mit meinem Fleisch verdiene.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Ruling Cadomyr isn't a nice thing to do... sand, wind, sun, scorpions and thirst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Cadomyr zu regieren macht sicher keinen Spa�; Sand, Wind, Sonne, Skorpione und Durst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ruling Cadomyr isn't a nice thing to do... sand, wind, sun, scorpions and thirst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Cadomyr zu regieren macht sicher keinen Spa�; Sand, Wind, Sonne, Skorpione und Durst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr has serveral drawbacks: It is far away, the people speak strangely and it is dry there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr hat diverse Nachteile: Es ist weit weg, die Leute reden komisch und es ist trocken dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I am a butcher, not a traveller. How am I supposed to talk to you about Albar?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich bin ein Schlachter, kein Reisender. Wie soll ich also mit euch �ber Albar reden k�nnen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("My grandfather was born in Gynk, and murdered, so be careful there!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Mein Gro�vater wurde in Gynk geboren. Und ermordet. Also seid dort vorsichtig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar, with all due respect, is the most stupid realm with the wisest people.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Bei allem Respekt, Salkamar ist das d�mlichste Reich mit den weisesten B�rgern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Honour the Gods! All of them!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Huldigt den G�ttern! Allen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron is the God of yum yum! My very special god he is.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron ist der Gott des Happahappa. Mein ganz besonderer Gott!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Fire plus meat equals barbecue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Feuer plus Fleisch gleich Grillfest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("In all honesty, why should I not pray to Ronagan? He 'guides' the travellers to my swamps so they can buy meat from me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Nun mal ehrlich, warum sollte ich nicht Ronagan anbeten? Er 'f�hrt' Reisende in meinen Sumpf, die dann Fleisch von mir kaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't buy anything.")
talkEntry:addResponse("I'm a butcher, not a merchant.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe nichts.")
talkEntry:addResponse("Bin Schlachter, aber kein H�ndler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("If you want to butcher, make sure that you use a sharp knife.")
talkEntry:addResponse("You better smoke meat rather than cook it.")
talkEntry:addResponse("Work carefully with deer meat! It is expensive.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Wenn du Schlachten willst, stelle sicher, dass du ein scharfes Messer verwendest.")
talkEntry:addResponse("Fleisch kann besser ger�uchert werden als gekocht.")
talkEntry:addResponse("Arbeite vorsichtig mit Wildfleich. Es ist kostbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Henry")
talkEntry:addTrigger("Darter")
talkEntry:addResponse("My mother once told me that she named me Henry because of a famous cook in Gynk. Strangely, I was never able to ask my unknown father about this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Henry")
talkEntry:addTrigger("Darter")
talkEntry:addResponse("Meine Mutter hat mir einst erz�hlt, dass ich nach einem ber�hmten Koch aus Gynk benannt wurde. Merkw�rdigerweise konnte ich meinen unbekannten Vater nie �ber diese Dinge befragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mother")
talkEntry:addTrigger("father")
talkEntry:addTrigger("family")
talkEntry:addTrigger("shop")
talkEntry:addResponse("My family - my mother and me - once had a shop here, but then, the water came... I am still here, though, and I won't yield!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mutter")
talkEntry:addTrigger("Vater")
talkEntry:addTrigger("Familie")
talkEntry:addTrigger("Laden")
talkEntry:addTrigger("Gesch�ft")
talkEntry:addResponse("Meine Familie - also meine Mutter und ich - hatten hier einst einen Laden. Aber dann kam das Wasser... Ich bleibe hier, ich werde nicht weichen!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me wischt etwas Blut von seinem Schlachtermesser.", "#me wipes some blood from his knife.")
talkingNPC:addCycleText("Frisches Fleisch! Beste Qualit�t!", "Fresh meat! Best quality!")
talkingNPC:addCycleText("#me spricht leise zu sich selbst: 'Ich brauche neues Fleisch.'", "#me speaks quietly to himself, 'I need more meat.'")
talkingNPC:addCycleText("#me singt: 'Ich hack das Schwein, ich hack es klein'", "#me sings, 'I butcher the pig, I butcher until it's dead.'")
talkingNPC:addCycleText("Will man es richtig geschlachtet haben, muss man es selbst schlachten.", "If you want to have it butchered the right way, you need to butcher it yourself.")
talkingNPC:addCycleText("Brust oder Keule? Was r�uchere ich zuerst?", "Breast or leg? What shall I smoke first?")
talkingNPC:addCycleText("Willst du ein Schnitzel?", "Do you want a Schnitzel?")
talkingNPC:addCycleText("J�gerschnitzel, hmm...", "Escalope chasseur, hmm...")
talkingNPC:addCycleText("Wer w�rde so wahnsinnig sein und Hackfleisch zwischen zwei Broth�lften packen!?", "Who would dare to put minced meat between two bread halfs?")
talkingNPC:addCycleText("P�rierte Tomaten zu einem Steak? Wer macht denn sowas!", "Mashed tomatoes with a steak? Who would do such a thing!")
talkingNPC:addCycleText("Lasst uns was schlachten!", "Let's butcher something!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Schlachter Henry Darter.", "This NPC is the butcher Henry Darter.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 811)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 189)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 34)
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
