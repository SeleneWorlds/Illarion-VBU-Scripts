local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local condition_chance = require("npc.base.condition.chance")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the mortician Gregor Remethar. Keywords: Hello, quest, mortician, tomb, chambers, value of life."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Leichenbestatter Gregor Remethar. Schl�sselw�rter: Hallo, Quest, Leichenbestatter, Gruft, Kammern, Wert des Lebens."))
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
talkEntry:addResponse("Ah, one of the living visits me. What brought you here - you want to honour your ancestors in the crypt?")
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
talkEntry:addResponse("Ah, einer der Lebenden besucht mich. Was hat euch hergebracht - wollt ihr in der Gruft eure Vorfahren ehren?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ah, one of the living visits me. What brought you here - you want to honour your ancestors in the crypt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse(", einer der Lebenden besucht mich. Was hat euch hergebracht - wollt ihr in der Gruft eure Vorfahren ehren?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go with the blessing of the Gods, and do not return again too soon, if you know what I mean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehet mit dem Segen der G�tter. Und kehrt nicht sobald wieder - falls ihr versteht, was ich meine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Go with the blessing of the Gods, and do not return again too soon, if you know what I mean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gehet mit dem Segen der G�tter. Und kehrt nicht sobald wieder - falls ihr versteht, was ich meine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I bury those who died. How do you suppose I feel? To appreciate the value of life is indeed not easy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich beerdige diejenigen, die starben. Wie meint ihr wohl, f�hle ich mich dabei? Den Wert eines Lebens zu sch�tzen ist f�rwahr nicht einfach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Gregor Remethar, I am delighted to meet you and to be able to - still - talk to you.")
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
talkEntry:addResponse("Mein Name ist Gregor Remethar, es freut mich, mich mit Euch - noch - unterhalten zu k�nnen.")
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
talkEntry:addCondition(condition_quest(105, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] A light at the end of the tunnel"))
talkEntry:addConsequence(consequence_item(469, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Indeed, I have a task for you. Could you please go down into the crypt and make sure the lights burn in front of the urns in honour of the mages? Here, take this lamp oil and come back to me when you have lit the lamps.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Ein Licht am Ende des Tunnels"))
talkEntry:addConsequence(consequence_item(469, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("In der Tat, ich habe einen Auftrag f�r euch. K�nntet ihr bitte in die Gruft gehen und sicherstellen, dass die Ehrenlichter vor den Urnen der Magier brennen? Hier, nehmt dieses Lampen�l und kommt zu mir zur�ck, wenn ihr die Leuchten angez�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] A light at the end of the tunnel"))
talkEntry:addConsequence(consequence_item(469, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Indeed, I have a task for you. Could you please go down into the crypt and make sure the lights burn in front of the urns in honour of the mages? Here, take this lamp oil and come back to me when you have lit the lamps.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Ein Licht am Ende des Tunnels"))
talkEntry:addConsequence(consequence_item(469, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("In der Tat, ich habe einen Auftrag f�r euch. K�nntet ihr bitte in die Gruft gehen und sicherstellen, dass die Ehrenlichter vor den Urnen der Magier brennen? Hier, nehmt dieses Lampen�l und kommt zu mir zur�ck, wenn ihr die Leuchten angez�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Well, did you make sure the lights are burning in honour of the tomb? If you do ever light the lamps, come to me for a little compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nun, habt ihr schon sichergestellt, dass die Ehrenlichter in der Gruft brennen? Wenn immer ihr die Leuchten angez�ndet habt, kommt zu mir f�r eine kleine Aufwandsentsch�digung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Well, did you make sure the lights are burning in honour of the tomb? If you do ever light the lamps, come to me for a little compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nun, habt ihr schon sichergestellt, dass die Ehrenlichter in der Gruft brennen? Wenn immer ihr die Leuchten angez�ndet habt, kommt zu mir f�r eine kleine Aufwandsentsch�digung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(30.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded two silver coins."))
talkEntry:addConsequence(consequence_money("+", 200))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take these two silver coins for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(30.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zwei Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 200))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt diese zwei Silberst�cke f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(14.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a bottle of lamp oil."))
talkEntry:addConsequence(consequence_item(469, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this lamp oil for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(14.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Flasche Lampen�l."))
talkEntry:addConsequence(consequence_item(469, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt dieses Lampen�l f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(17.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a piece of wax."))
talkEntry:addConsequence(consequence_item(431, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this piece of wax for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(17.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein St�ck Wachs."))
talkEntry:addConsequence(consequence_item(431, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt dieses St�ck Wachs f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a candle."))
talkEntry:addConsequence(consequence_item(43, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this candle for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Kerze."))
talkEntry:addConsequence(consequence_item(43, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt diese Kerze f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a torch."))
talkEntry:addConsequence(consequence_item(391, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this torch for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Fackel."))
talkEntry:addConsequence(consequence_item(391, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt diese Fackel f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(33.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a cookie."))
talkEntry:addConsequence(consequence_item(453, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this cookie for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(33.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Keks."))
talkEntry:addConsequence(consequence_item(453, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt diesen Keks f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a parchment."))
talkEntry:addConsequence(consequence_item(2745, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this parchment for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Pergament."))
talkEntry:addConsequence(consequence_item(2745, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt dieses Pergament f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a golden ring."))
talkEntry:addConsequence(consequence_item(235, 1, 577, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, you lit the lights of honour. Here, take this golden ring for your efforts. Come again to me if you ever rekindle the lights.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(105, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Goldring."))
talkEntry:addConsequence(consequence_item(235, 1, 577, nil))
talkEntry:addConsequence(consequence_quest(105, "=", 1))
talkEntry:addResponse("Ah, ihr habt also die Ehrenlichter angez�ndet. Hier, nehmt diesen Goldring f�r eure M�hen. Kommt erneut zu mir, wenn ihr die Lichte erneut entz�ndet habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("There is nothing you can do for me. Except one thing, but that happens soon enough...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr k�nnt mir nicht helfen. Nunja, es g�be da etwas, aber das widerf�hrt euch schon fr�h genug...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("There is nothing you can do for me. Except one thing, but that happens soon enough...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ihr k�nnt mir nicht helfen. Nunja, es g�be da etwas, aber das widerf�hrt euch schon fr�h genug...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mortician")
talkEntry:addTrigger("undertaker")
talkEntry:addTrigger("gravedigger")
talkEntry:addTrigger("funeral")
talkEntry:addResponse("My job is to bury those whose life is at an end - and to assess the value of their life, that determines what happens to them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bestatter")
talkEntry:addTrigger("Totengr�ber")
talkEntry:addTrigger("Beerdigung")
talkEntry:addResponse("Meine Aufgabe ist es, diejenigen zu begraben, deren Leben am Ende ist - und den Wert ihres Lebens einzusch�tzen. Den der bestimmt, was mit ihnen geschieht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am the local mortician. I judge who has made valuable contributions such as as wisdom and justice... After all, this is what determines our reputation in the afterlife.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin hier der Bestatter. Ich entscheide, wer sich wie sehr verdient gemacht hat um die Weisheit und die Gerechtigkeit. Denn dies bestimmt unser aller Ansehen im Tode.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am the local mortician. I judge who has made valuable contributions such as wisdom and justice... After all, this is what determines our reputation in the afterlife.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin hier der Bestatter. Ich entscheide, wer sich wie sehr verdient gemacht hat um die Weisheit und die Gerechtigkeit. Denn dies bestimmt unser aller Ansehen im Tode.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("May I take your measurements?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Darf ich schonmal eure Ma�e aufnehmen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tomb")
talkEntry:addResponse("The crypt of Runewick is a place where the people are divided - urns for the mages, caskets for the apprentices and darkness for the common folk. All are buried in different chambers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("value")
talkEntry:addTrigger("fame")
talkEntry:addTrigger("fate")
talkEntry:addResponse("Depending on the value of one's life, there are three methods to bury someone. I could tell you more about these methods...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("assess")
talkEntry:addTrigger("earn")
talkEntry:addTrigger("judge")
talkEntry:addResponse("What, do I imagine I can judge the value of a life? That I must not - the reputation mostly precedes the corpse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("method")
talkEntry:addTrigger("urn")
talkEntry:addResponse("Those whose lives had a high value will be cremated such that their body may not be desecrated. Those who did good are buried in caskets - for future use. Those who failed will be cast into darkness...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bury")
talkEntry:addTrigger("grave")
talkEntry:addTrigger("coffin")
talkEntry:addResponse("Those whose lives had a high value will be cremated such that their body may not be desecrated. Those who did good are buried in caskets - for future use. Those who failed will be cast into darkness...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gruft")
talkEntry:addTrigger("Grab")
talkEntry:addResponse("Die Gruft von Runewick ist ein Ort, an dem sich das Volk aufteilt; Urnen f�r die Magier, S�rge f�r die Lehrlinge und die Dunkelheit f�r das gemeine Volk. Alle werden in unterschiedlichen Kammern beigesetzt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wert")
talkEntry:addTrigger("Ansehen")
talkEntry:addTrigger("Schicksal")
talkEntry:addResponse("Je nachdem, wie hoch der Wert des Lebens war, gibt es drei Methoden, jemanden zu begraben. Ich k�nnte euch mehr �ber diese Methoden erz�hlen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("verdien")
talkEntry:addTrigger("sch�tz")
talkEntry:addTrigger("Urteil")
talkEntry:addResponse("Was ich mir einbilde, den Wert eines Lebens einsch�tzen zu k�nnen? Das muss ich gar nicht; der Ruf eilten einer Leiche zumeist vorraus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("method")
talkEntry:addTrigger("grab")
talkEntry:addTrigger("urne")
talkEntry:addTrigger("Sarg")
talkEntry:addResponse("Die, deren Leben einen hohen Wert hatte, werden einge�schert, so dass ihre Leiche nicht gesch�ndet werden kann. Die, die guter Dinge waren, werden in S�rgen begraben - f�r weitere Verwendung. Die, die versagten, werden in die Dunkelheit geworfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raum")
talkEntry:addTrigger("Kammer")
talkEntry:addResponse("Die Gruft hat drei Kammern: Die Kammer des Lichtes, die Kammer des Zwielichtes und die Kammer der Dunkelheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("room")
talkEntry:addTrigger("chamber")
talkEntry:addResponse("The crypt has three chambers: The Chamber of Light, the Chamber of Twilight and the Chamber of Darkness.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwielicht")
talkEntry:addResponse("In der Kammer des Zwielichtes stehen die S�rge der Lehrlinge - falls ihre K�rper nochmal gebraucht werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Twilight")
talkEntry:addResponse("In the Chamber of Twilight there are the coffins of the apprentices - located where their bodies will be needed once again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dunkel")
talkEntry:addResponse("In der Kammer der Dunkelheit rotten die Knochen der Unw�rdigen vor sich hin, die es zu Lebzeiten nicht verstanden haben, der Weisheit nachzustreben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dark")
talkEntry:addResponse("In the Chamber of Darkness the bones of the unworthy rot, those who have not understood during their lifetime the need to strive for wisdom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Licht")
talkEntry:addResponse("In der Kammer des Lichtes werden die weisen Magier Runewicks beigesetzt, nachdem man ihren K�rper einge�schert hat, wie es seit jeher Sitte ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Light")
talkEntry:addResponse("In the Chamber of Light the wise mages of Runewick are buried, after having their body cremated, as has always been the custom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Calaway")
talkEntry:addResponse("I am not the Undertaker! I prefer the term mortician.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Calaway")
talkEntry:addResponse("Ich bin nicht der Totengr�ber! Ich ziehe die Bezeichnung Leichenbestatter vor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage is a good man. He knows exactly whose life is valuable to the community.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier ist ein guter Mann. Er wei� genau, wessen Leben wertvoll f�r die Gemeinschaft ist; und wessen nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage is a good man. He knows exactly whose life is valuable to the community.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier ist ein guter Mann. Er wei� genau, wessen Leben wertvoll f�r die Gemeinschaft ist; und wessen nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Everyone is born equal in Runewick. Anyone who brings about nothing, however, his life is forfeited.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("In Runewick ist Jedermann gleich geboren. Wer nichts zustandebringt, dessen Leben ist allerdings verwirkt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I have heard a rumour about the Don; he makes people disappear as easily as they come to him. No gravestone will ever remember them...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich habe eine Ger�cht �ber den Don geh�rt; er l�sst Leute einfach so verschwinden, die ihm quer kommen. Kein Grabstein wird jemals an sie erinnern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("In Galmair, the grave of a deceased person depends greatly on their wealth obviously. Large purse, large grave, small purse, no grave. How terrible!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("In Galmair h�ngt der Ruf eines Verstorbenen offensichtlich stark vom Reichtum ab. Gro�er Geldbeutel, gro�es Grab, kleiner Geldbeutel, kein Grab - wie schrecklich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I have heard Queen Rosaline is to have a glorious grave in the desert. Her royal builder Robertus is commissioned but I just wonder whether he will finish before she passes...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich habe geh�rt, dass K�nigin Rosaline ein glorreiches Grab in der W�ste haben m�chte. Ihr k�niglicher Baumeister Robertus ist damit beauftragt. Ich frage mich nur, ob er damit fertig wird, bevor sie verstirbt...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I have heard Queen Rosaline is to have a glorious grave in the desert. Her royal builder Robertus is commissioned but I just wonder whether he will finish before she passes...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich habe geh�rt, dass K�nigin Rosaline ein glorreiches Grab in der W�ste haben m�chte. Ihr k�niglicher Baumeister Robertus ist damit beauftragt. Ich frage mich nur, ob er damit fertig wird, bevor sie verstirbt...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I appreciate the people of Cadomyr. Their habits are somewhat different to ours; the value of life is determined by birth, remaining with us after death... but does this make us so different?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich sch�tze das Volk von Cadomyr. Ihre Gebr�uche sind etwas anders als unsere; der Wert eines Lebens wird bei ihnen bei der Geburt bestimmt, bei uns nach dem Tode. Aber macht uns das so verschieden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("The Albarians burn their dead. This is indeed a homage, for he who is burnt can not be called back into life by the dark arts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Die Albarier verbrennen ihre Toten. Dies ist f�rwahr eine Ehrerweisung, denn wer verbrannt ist, kann nicht durch dunkle K�nste ins Leben zur�ckgerufen werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("There are strange customs in Gynk. They say they just cast their dead into the swamps. What a cruel custom!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Es gibt merkw�rdige Sitten in Gynk. Man sagt, sie werfen ihre Toten einfach in den Sumpf. Was f�r ein grausamer Brauch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("The Archmage once told me that in Salkamar, only the righteous are buried in coffins whereas the wicked face an indescribable fate.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Einst sagte mir der Erzmagier, dass in Salkamar nur die Rechtschaffenden in S�rgen begraben werden w�hrend die Niedertr�chtigen ein unbeschreibliches Schicksal erleiden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I serve Cherga every day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich diene Cherga jeden Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I do not love Cherga, but I honour her. Her acts as Guardian of the Afterlife deserve our respect, or would you like to do that job?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich liebe Cherga nicht, aber ich ehre sie. Ihre Taten als H�terin des Jenseits verdienen unseren Respekt. Oder m�chtet ihr ihren Job �bernehmen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("You cannot bribe me. I accept neither goods nor money. My judgement is independent.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Man kann mich nicht bestechen. Ich nehme weder Waren noch Geld an. Mein Urteil ist unabh�ngig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("We could talk about the tomb or my profession as mortician. I also have a task for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Wir k�nnten �ber die Gruft oder meinen Beruf reden. Ich habe auch eine Aufgabe f�r euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gregor")
talkEntry:addTrigger("Remethar")
talkEntry:addResponse("I am the local mortician. Nobody loves me, but everyone needs me - eventually.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gregor")
talkEntry:addTrigger("Remethar")
talkEntry:addResponse("Ich bin hier der Leichenbestatter. Niemand liebt mich, aber jeder braucht mich - eines Tages.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wie soll jemand seine letzte Ruhe finden, wenn kein Licht brennt?", "How can someone find their final resting place when no light is burning?")
talkingNPC:addCycleText("Die Dunkelheit wartet... darauf, dass das Licht ausgeht.", "The darkness is waiting... for the light to extinguish.")
talkingNPC:addCycleText("Eine helle Kerze soll dir ein Leuchtfeuer sein.", "A candle of light, to you shall be a beacon.")
talkingNPC:addCycleText("Drei Schicksale und ich bin der Sch�tzer; was wird wohl euer Schicksal sein?", "Three fates and I am the judge. What will become of your fate?")
talkingNPC:addCycleText("Es ist nicht die Zeit, Tr�bsal zu blasen.", "No time to wallow in the mire.")
talkingNPC:addCycleText("Drei Pfade; welchen werdet ihr beschreiten?", "Three paths, which will you take?")
talkingNPC:addCycleText("#me rollt bed�chtig ein Ma�band aus.", "#me slowly rolls out a measuring tape.")
talkingNPC:addCycleText("Soll ich eure Ma�e jetzt oder sp�ter aufnehmen?", "Should I take your measurements now or later?")
talkingNPC:addCycleText("Mein Gesch�ft ist sicher - gestorben wird immer!", "My business is safe - there will always be death.")
talkingNPC:addCycleText("#me keucht wiederholt auf.", "#me coughs repeatedly.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Leichenbestatter Gregor Remethar.", "This is NPC is the funeral director Gregor Remethar.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 809)
mainNPC:setEquipment(11, 194)
mainNPC:setEquipment(5, 24)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
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
