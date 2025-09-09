local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_state = require("npc.base.consequence.state")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Tobis Vunu the pirate. Keywords: Adventure, Gods."))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Help? I won't help you. Get rid, Jack!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Tobis Vunu der Pirat. Schl�sselw�rter: Abenteuer, G�tter."))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Helfen? Ich werd dir nich helfen. Verschwinde, Leichtmatrose!")
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
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addConsequence(consequence_inform("Tobis Vunu reicht dir ein B�ndel Kleidung und einen Schlapphut. Du sollst alles anziehen und das Tabakfeld suchen um es mit einer Fackel unbemerkt zu zerst�ren."))
talkEntry:addConsequence(consequence_item(356, 1, 550, nil))
talkEntry:addConsequence(consequence_item(180, 1, 550, nil))
talkEntry:addConsequence(consequence_item(181, 1, 550, nil))
talkEntry:addConsequence(consequence_item(391, 1, 550, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 2))
talkEntry:addResponse("Aye. Piero schickt dich? Also gut, du ziehst jetzt dieses Zeug an. Nimmst eine Fackel und brennst das Tabakfeld der Piraten ab. Lass dich aber nicht dabei beobachten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_inform("Tobis Vunu reicht dir ein B�ndel Kleidung und einen Schlapphut. Du sollst alles anziehen und das Tabakfeld suchen um es mit einer Fackel unbemerkt zu zerst�ren."))
talkEntry:addConsequence(consequence_item(356, 1, 550, nil))
talkEntry:addConsequence(consequence_item(180, 1, 550, nil))
talkEntry:addConsequence(consequence_item(181, 1, 550, nil))
talkEntry:addConsequence(consequence_item(391, 1, 550, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 2))
talkEntry:addResponse("Aye. Piero schickt dich? Also gut, du ziehst jetzt dieses Zeug an. Nimmst eine Fackel und brennst das Tabakfeld der Piraten ab. Lass dich aber nicht dabei beobachten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_inform("Tobis Vunu hands you a bunch cloth and a slouch hat. Dress up and sneak at the tobaccofield to burn it."))
talkEntry:addConsequence(consequence_item(356, 1, 550, nil))
talkEntry:addConsequence(consequence_item(180, 1, 550, nil))
talkEntry:addConsequence(consequence_item(181, 1, 550, nil))
talkEntry:addConsequence(consequence_item(391, 1, 550, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 2))
talkEntry:addResponse("Aye. Piero sends you? Allright, get dressed with this stuff. Take the torch and burn the pirates tobacco field. And do't let you catched, by doing it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addConsequence(consequence_inform("Tobis Vunu hands you a bunch cloth and a slouch hat. Dress up and sneak at the tobaccofield to burn it."))
talkEntry:addConsequence(consequence_item(356, 1, 550, nil))
talkEntry:addConsequence(consequence_item(180, 1, 550, nil))
talkEntry:addConsequence(consequence_item(181, 1, 550, nil))
talkEntry:addConsequence(consequence_item(391, 1, 550, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 2))
talkEntry:addResponse("Aye. Piero sends you? Allright, get dressed with this stuff. Take the torch and burn the pirates tobacco field. And do't let you catched, by doing it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 3))
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addTrigger("feuer")
talkEntry:addTrigger("brenn")
talkEntry:addTrigger("Tabak")
talkEntry:addConsequence(consequence_inform("Du hast ein paar M�nzen bekommen. Frage nun nach der geheimen Bootschaft die zu Corpotal Piero gebracht werden soll."))
talkEntry:addConsequence(consequence_money("+", 2300))
talkEntry:addConsequence(consequence_quest(305, "=", 4))
talkEntry:addResponse("#me hebt seine Nase in die Luft und schnuppert, er grinst breit. 'Aye, das riecht nach Erfolg. U-und du bist immer noch lebendig. Gut gemacht! Hier hast du n'paar M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 3))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_inform("Du hast ein paar M�nzen bekommen. Frage nun nach der geheimen Bootschaft die zu Corpotal Piero gebracht werden soll."))
talkEntry:addConsequence(consequence_money("+", 2300))
talkEntry:addConsequence(consequence_quest(305, "=", 4))
talkEntry:addResponse("#me hebt seine Nase in die Luft und schnuppert, er grinst breit. 'Aye, das riecht nach Erfolg. U-und du bist immer noch lebendig. Gut gemacht! Hier hast du n'paar M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_inform("You earned some coins. Ask him about the secret information you shall deliver to Corporal Piero."))
talkEntry:addConsequence(consequence_money("+", 2300))
talkEntry:addConsequence(consequence_quest(305, "=", 4))
talkEntry:addResponse("#me rises his nose and sniffles, he gives a broad grin. 'Aye, that smells like success. A-and you are still alive. Well done. Here's some coin for you. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 3))
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addTrigger("fire")
talkEntry:addTrigger("burn")
talkEntry:addTrigger("tobacco")
talkEntry:addConsequence(consequence_inform("You earned some coins. Ask him about the secret information you shall deliver to Corporal Piero."))
talkEntry:addConsequence(consequence_money("+", 2300))
talkEntry:addConsequence(consequence_quest(305, "=", 4))
talkEntry:addResponse("#me rises his nose and sniffles, he gives a broad grin. 'Aye, that smells like success. A-and you are still alive. Well done. Here's some coin for you. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 4))
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addConsequence(consequence_quest(305, "=", 5))
talkEntry:addResponse("Oh ja, sicherlich. Bitte berichte Corporal Piero, die Piraten sind ziemlich sauer. Jemand hat ihr Tabak-Feld zerst�rt. *Er lacht am�siert auf.* Nun m�ssen wir mit einem Racheakt rechnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 4))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_quest(305, "=", 5))
talkEntry:addResponse("Oh ja, sicherlich. Bitte berichte Corporal Piero, die Piraten sind ziemlich sauer. Jemand hat ihr Tabak-Feld zerst�rt. *Er lacht am�siert auf.* Nun m�ssen wir mit einem Racheakt rechnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_quest(305, "=", 5))
talkEntry:addResponse("Oh, yes, for sure. Please tell Corporal Piero the pirates are really pissed. Cause their tobacco field got destroyed. *He gives an amused laughter.* We have to await revenge now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 4))
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addConsequence(consequence_quest(305, "=", 5))
talkEntry:addResponse("Oh, yes, for sure. Please tell Corporal Piero the pirates are really pissed. Cause their tobacco field got destroyed. *He gives an amused laughter.* We have to await revenge now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Oh ja, sicherlich. Bitte berichte Corporal Piero, die Piraten sind ziemlich sauer. Jemand hat ihr Tabak-feld zerst�rt. *Er lacht am�siert auf.* Nun m�ssen wir mit einem Racheakt rechnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Oh ja, sicherlich. Bitte berichte Corporal Piero, die Piraten sind ziemlich sauer. Jemand hat ihr Tabak-feld zerst�rt. *Er lacht am�siert auf.* Nun m�ssen wir mit einem Racheakt rechnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Oh, yes, for sure. Please tell Corporal Piero the pirates are really pissed. Cause their tobacco field got destroyed. *He gives an amused laughter.* We have to await revenge now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Oh, yes, for sure. Please tell Corporal Piero the pirates are really pissed. Cause their tobacco field got destroyed. *He gives an amused laughter.* We have to await revenge now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(182, "body", "=>", 1, nil))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(182, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(182, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(182, "body", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(181, "body", "=>", 1, nil))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(181, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(181, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(181, "body", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(457, "body", "=>", 1, nil))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(457, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(457, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(457, "body", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(180, "body", "=>", 1, nil))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(180, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(180, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(180, "body", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(195, "body", "=>", 1, nil))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(195, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye. Jetzt siehste aus wie N' Pirat! Geh r�ber zum Tabakfeld und brenn es mit ner Fackel ab. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(195, "body", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_item(356, "body", "=>", 1, nil))
talkEntry:addCondition(condition_item(195, "body", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Aye, now you'r looking like a pirate! Make you way to the tobacco field and burn it down with the toarch. Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addConsequence(consequence_inform("Du solltest am besten ein Hemd anziehen und einen Schlapphut aufsetzen."))
talkEntry:addResponse("Arr, wenn du das Zeug nich anziehst, wird dich die Wache nicht durchlassen. Wir Piratn tragn nunmal Hemden. Den Hut musst nur du tragen, damit sie nich sehn wie h�sslich du bist. Har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_inform("Du solltest am besten ein Hemd anziehen und einen Schlapphut aufsetzen."))
talkEntry:addResponse("Arr, wenn du das Zeug nich anziehst, wird dich die Wache nicht durchlassen. Wir Piratn tragn nunmal Hemden. Den Hut musst nur du tragen, damit sie nich sehn wie h�sslich du bist. Har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_inform("You should dress yourself with a shirt and a slouch hat."))
talkEntry:addResponse("Arr, when not wearing the stuff, the guard won't let you pass. We pirates wearing shirts as usual. The hat you got is just they don't see how ugly you are. Har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addConsequence(consequence_inform("You should dress yourself with a shirt and a slouch hat."))
talkEntry:addResponse("Arr, when not wearing the stuff, the guard won't let you pass. We pirates wearing shirts as usual. The hat you got is just they don't see how ugly you are. Har-har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Nimm dir 'n Messer und entf�hr ne Jungfrau! Arr. Und dann steckst du sie dir an den Ort wo die Sonne nich scheint! Verschwinde du Landratte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Nimm dir 'n Messer und entf�hr ne Jungfrau! Arr. Und dann steckst du sie dir an den Ort wo die Sonne nich scheint! Verschwinde du Landratte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addResponse("Take a Knife and take a Virgins as hostage! Arr. And then you put her at the place where the sun never shines! Get rid, Lubber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Take a knife and take a virgin as hostage! Arr. And then you put her at the place where the sun never shines! Get rid, Lubber.")
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
talkEntry:addResponse("Hej lubber!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Always fair winds and following seas, Jack.")
talkEntry:addResponse("Arr! Whats new?")
talkEntry:addResponse("Oi me matee! Ya wouldn' happen to 'ave a bottle o' rum on ya would yee?")
talkEntry:addResponse("Ahoy, me Hearties!")
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
talkEntry:addResponse("Hej Landratte!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Mast- und Schotbruch, Matrose!")
talkEntry:addResponse("Arr! Was gibt's?")
talkEntry:addResponse("Ahoi!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hej lubber!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Always fair winds and following seas, Jack.")
talkEntry:addResponse("Arr! Whats new?")
talkEntry:addResponse("Oi me matee! Ya wouldn' happen to 'ave a bottle o' rum on ya would yee?")
talkEntry:addResponse("Ahoy, me Hearties!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hej Landratte!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Mast- und Schotbruch, Matrose!")
talkEntry:addResponse("Arr! Was gibt's?")
talkEntry:addResponse("Ahoi!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Don't get biten by seedogs!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Good wind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Lass dich nich von Seehunden beissn!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Gut Wind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Don't get biten by seedogs!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Good wind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Lass dich nich von Seehunden beissn!")
talkEntry:addResponse("Aye.")
talkEntry:addResponse("Gut Wind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm good matee! The winds fair and my bottle is filled. Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht's gut, Kumpel. Die Winde sind gut und die Flasche is voll. Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Tobis Vunu. Siver me timbers!")
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
talkEntry:addResponse("Ich bin Tobis Vunu. Bei meinen wankenden Masten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm a scary Pirate! Arr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin n' gef�hrlicher Pirat! Arr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm a scary Pirate! Arr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin n' gef�hrlicher Pirat! Arr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Pirat")
talkEntry:addResponse("Hey - pirates ho! Ho-h! We're mean guys, ho!")
talkEntry:addResponse("Arr! We're robbing an' invade an' slitting an' ... uh robbin'! Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pirat")
talkEntry:addResponse("Hey - Pirat'n ho! Ho-h! Wir sin' �ble Kerle, ho!")
talkEntry:addResponse("Arr! Wirr raub'n und entern und schlitzn und ... �h raubn! Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("Oh... good old King Reginald. I'm sad he's dead now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("Oh... guter alter K�nig Reginald. Schade, dass er jetzt tot ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("king")
talkEntry:addResponse("Oh... good old King Reginald. I'm sad he's dead now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nig")
talkEntry:addResponse("Oh... guter alter K�nig Reginald. Schade, dass er jetzt tot ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Piero")
talkEntry:addResponse("I don't know any Pieros.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Piero")
talkEntry:addResponse("Ich kenne keinen Piero.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ruggero")
talkEntry:addTrigger("bloom")
talkEntry:addResponse("Aye Ruggero is my matee! Don't annoy him, he's kind of bullsish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruggero")
talkEntry:addTrigger("bloom")
talkEntry:addResponse("Aye, Ruggero ist ein guter Kumpel von mir. Leg dich lieber nicht mit ihm an, er ist leicht reizbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("murgo")
talkEntry:addResponse("Also under the flags of us pirates is the orc Murgo well known. They say he is able to rip a tree out of the ground with his bare hands!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("murgo")
talkEntry:addResponse("Auch unter den Flaggen von uns Piraten ist der Ork Murgo bestens bekannt. Man sagt, er k�nne einen Baum mit seinen blo�en H�nden entwurzeln!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Har, Har! I'm a pirate! I don't BUY stuff! I take it! Aye?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Har, Har! Ich bin n' Piart! Ich KAUFE kein Zeug! Ich nehms mir einfach, klar?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Once, when we shipped over the sea I saw a... you never guess what... a mermaid! Honestly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Einmal... als wir �ber die See reisten sah ich... ihr werdets nich glauben... ne Meerjungfrau! Ehrlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("There matee's who don't care about the gods at all. Idiots I say - Tanora an' Ronagan may save my live when our ship get's in trouble. Aye.")
talkEntry:addResponse("There matee's who don't care about the gods at all. Idiots I say - Adron shall save all the rum and Nargun shall make me a rich man! Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("S' gibt Kumpel die k�mmern sich nich um die G�tter - Allesamt Idioten. Tanora und Ronagan soll'n mir helfn wenn's �rger am Schiff gibt. Aye.")
talkEntry:addResponse("S' gibt Kumpel die k�mmern sich nich um die G�tter - Allesamt Idioten. Adron sch�tze unsre F�sser mit Rum und Nargun m�g' f�r sorgen da� ich einmal n' reicher Mann werd! Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron may save all the rum. Arr. Hail Adron, praise to the rum - I say.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron sch�tze die Rum-f�sser. Arr. Heil Adron, ein Loblied dem Rum sag ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Nargun is Chaos. He makes a man rich one day - the other he's poor again. Chance of fifty-fifty. I take the risk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Nargun ist Chaos. Heute biste ein reicher Mann, morgen arm. Iss ne Chanche von f�nfzig zu f�nfzig - ich geh's Risiko ein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan respects our Pirate Code. Aye. Therefore it's good to offer his altair some coins now and again. Eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan respektiert unsren Codex. Den Piratn-Codex. Aye. Also hinterlass ich ihm immer wieder mal'n paar M�nzen am Altar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("All Sailor's praise Tanora. Aye. She'S goddes of wather and sea. You don't want her angry when shipping with a nutshell over the migthy sea.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Alle Seeleute beten zu Tanora. Aye. Sie's die G�ttin des Meeres - du will's sie nich ver�rgern wenn du mit ner Nu�schale �ber'n Ozean schipperst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Elvaine Morgan isn't that the name of this renegade Mage comming from Lor Angur? He's kind of chief in Runewick now, it seems to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Elvaine Morgan ist das nicht dieser abtr�nnige Magier aus Lor Angur? Der scheint jetzt der gro�e H�uptling in Runewick zu sein, wenn du mich fragst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Elvaine Morgan isn't that the name of this renegade Mage comming from Lor Angur? He's kind of chief in Runewick now, it seems to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Elvaine Morgan ist das nicht dieser abtr�nnige Magier aus Lor Angur? Der scheint jetzt der gro�e H�uptling in Runewick zu sein, wenn du mich fragst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ye, ye! In Runewick are a lot of clever people. Or they think they are. A pirate have a hard stand there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Jaja! In Runewick gibts viele kluge Leute. Oder zumindest halten sie sich daf�r. Als Pirat hat man's dort nicht leicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Do you know... there are people better not annoyed. Don Valerio Guilianni is one of those.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Wei�t du.. es gibt Leute mit denen sollte man sich nicht anlegen. Don Valerio Guilianni ist wohl genauso jemand, wenn du mich fragst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair would be a nice place indeed, when ignored all the churlish dwarves there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair w�re ja ein nettes Pl�tzchen. W�re es dort blo� nicht voller knausriger Zwerge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The guard of queen Rosaline makes it hard to live our pirate-life. But we'll Kkep our tails up!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Die Wache von K�nigin Rosaline macht uns das Piratenleben schwer. Aber wir lassen uns nicht unterkriegen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The guard of queen Rosaline makes it hard to live our pirate-life. But we'll Kkep our tails up!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Wache von K�nigin Rosaline macht uns das Piratenleben schwer. Aber wir lassen uns nicht unterkriegen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Her's not Cadomyr! Her's the pirate bay! Here we follow our own code! As long as the seadogs don't bite us!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Das hier ist nicht Cadomyr! Hier ist die Piratebay! Hier haben wir unseren eigenen Codex! Solang uns die Seehunde nich beissn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Once I knew a guy from Albar... dirty swine. He choped of the hand of a friend. Aye. Damn Albarian.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Arr. Ich kannte Mal nen Typn aus Albar... Dreckskerl. Hat'n Freund von mir die Hand abgehackt. Aye. Verdammter Albarer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I know many people comming from Gynk. You can't trust them. - Well that remainds me my mother was Gynkese as well... thie-hie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich kenn viele Leute aus Gynk. Denen kannste nich vertraun. - Da f�llt mir ein 'ch bin selber einer... h�h�h�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Weirdos... Salkamarians are weirdos. They are crazy, if you count on my opinion. Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Die Salkamarer sin' allesamt Spinner, sag ich dir. Ver�ckt sin se. Aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Aye, I went there for a loot trip, once. But I don't think there's a ship sealing there, this days.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Aye, ich war dort mal auf Beutezug. Aber ich denke nicht das heutzutage da noch Schiffe hinsegeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Ace name, matee!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Spitzen Name, Kumpel!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tobis")
talkEntry:addTrigger("Vunu")
talkEntry:addResponse("Aye - that's me! What's up matee?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tobis")
talkEntry:addTrigger("Vunu")
talkEntry:addResponse("Aye - 's bin ich. Was gibt's Kumpel?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me s�uselt leise ein Lied. '...und ne Buddel voll Rum!'", "#me sings a quit song. '... and a bottle with rum!'")
talkingNPC:addCycleText("#me zieht sein S�bel und h�lt es pr�fend gegen das Licht.", "#me takes his sabre and examines it with narrowed eyes.")
talkingNPC:addCycleText("Aye. Wassimma.", "Aye. Whatevva.")
talkingNPC:addCycleText("Wassa in die Stiefl und ne Kette um den Hals. Arr.", "Whater in the boots and chained nack. Arr.")
talkingNPC:addCycleText("#me reibt seine rauen H�nde an einander.", "#me rubs his rude hands together.")
talkingNPC:addCycleText("#me kaut auf einem schwarzen Kraut herum.", "#me chews a black haulm.")
talkingNPC:addCycleText("Alles klar zum kentern? Aye!", "Ready to capsizal? Aye!")
talkingNPC:addCycleText("Auf der See... da steht man sein' Mann. Oder ers�uft!", "At the sea you have to stand your man, or got drown.")
talkingNPC:addCycleText("Arr-h!", "Arr-h!")
talkingNPC:addCycleText("Bei meinen wankenden Masten, Kumpel!", "Shiver me timbers, matee!")
talkingNPC:addCycleText("Eh, du hass nich ne Flasche Rum �brich oder?", "Eh you got a bottle of rum?")
talkingNPC:addCycleText("Dreizehn Mann sa�en auf einem Sarg, Ho! Ho! Ho! - Sie soffen drei Tage, der Schnaps war stark. - Ho! Ho! Ho!", "We're drinking rum all night long.- Ho! Ho! Ho! The waves are high, the wind is strong.- Ho! Ho! Ho!")
talkingNPC:addCycleText("Sie liebten das Meer und den Schnaps und das Gold. Ho! Ho! Ho! - Bis einst alle dreizehn n' D�mon holt. - Ho! Ho! Ho!", "We are the lords of the sea. - Ho! Ho! Ho! Drink rum and beer, but never tea.- Ho! Ho! Ho!")
talkingNPC:addCycleText("Wir sind die Herrn der See. - Ho! Ho! Ho! Drinken Rum und Bier, aber niemals Tee! Ho! Ho! Ho!", "Thirteen men on a dead man�s chest! - Ho! Ho! Ho! Every man has got the pest! - Ho! Ho! Ho!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Arr, das ist ein h�sslicher wilder Pirat! Nimm dich in Acht!", "Arr, thiss seems like a ugly wild pirate! Take care.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 181)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 34)
mainNPC:setEquipment(10, 53)
mainNPC:setEquipment(3, 181)
mainNPC:setEquipment(5, 230)
mainNPC:setEquipment(6, 2445)
mainNPC:setEquipment(9, 2194)
mainNPC:setEquipment(10, 369)
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
