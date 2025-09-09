local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_talkstate = require("npc.base.consequence.talkstate")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, ">", 14))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Error] Something went wrong, please inform a developer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Groktan Flintsplit the 'reminder'. Keywords: Reminder, Don Valerio Guilianni, quest, gods, debt, money."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Groktan Flintsplit der 'Erinnerer'. Schl�sselw�rter: Erinnerer, Don Valerio Guilianni, Quest, G�tter, Schulden, Geld."))
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
talkEntry:addResponse("You're not here to pay a bill, so, what is it you want?")
talkEntry:addResponse("Your account with the Don is balanced. Whatcha want?")
talkEntry:addResponse("A good day to you, a good day for Galmair.")
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
talkEntry:addResponse("Du bist nicht hier, um eine Rechnung zu begleichen. Also, was gibt es?")
talkEntry:addResponse("Du hast keine offenen Rechnungen mit dem Don. Was ist los?")
talkEntry:addResponse("Einen guten Tag w�nsche ich, einen guten Tag f�r Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("You're not here to pay a bill, so, what is it you want?")
talkEntry:addResponse("Your account with the Don is balanced. Whatcha want?")
talkEntry:addResponse("A good day to you, a good day for Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Du bist nicht hier, um eine Rechnung zu begleichen. Also, was gibt es?")
talkEntry:addResponse("Du hast keine offenen Rechnungen mit dem Don. Was ist los?")
talkEntry:addResponse("Einen guten Tag w�nsche ich, einen guten Tag f�r Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Come back with some money!")
talkEntry:addResponse("Good bye, and always think what the Don would do to you if you misbehave.")
talkEntry:addResponse("#me grunts, 'Aye, bye'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Komm mit Geld zur�ck!")
talkEntry:addResponse("Auf wiedersehen; und denk immer daran, was der Don mit dir machen w�rde, wenn du dich daneben benimmst.")
talkEntry:addResponse("#me grunzt: 'Aye, servus'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Come back with some money!")
talkEntry:addResponse("Good bye, and always think what the Don would do to you if you misbehave.")
talkEntry:addResponse("#me grunts, 'Aye, bye'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Komm mit Geld zur�ck!")
talkEntry:addResponse("Auf wiedersehen; und denk immer daran, was der Don mit dir machen w�rde, wenn du dich daneben benimmst.")
talkEntry:addResponse("#me grunzt: 'Aye, servus'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("The things I do make me feel alright. How about you?")
talkEntry:addResponse("Well, I know many folks who feel worse, usually, they owe the Don some money.")
talkEntry:addResponse("Business is good. The Don cares for me and I care for his debt claims.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Was mache mache, stellt mich zufrieden. Und wie sieht das bei dir aus?")
talkEntry:addResponse("Nun, ich kenne viele Leute, denen es weit schlechter geht. Meist schulden sie dem Don Geld.")
talkEntry:addResponse("Das Gesch�ft l�uft bestens. Der Don sorgt f�r mich und ich k�mmere mich um seine Schuldscheine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Badman!")
talkEntry:addResponse("They call me Groktan, as long as they don't mess with me... Then, they call me Master Groktan!")
talkEntry:addResponse("Groktan Flintsplit. At the Don's service.")
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
talkEntry:addResponse("Ich bin Badman!")
talkEntry:addResponse("Die Leute nennen mich Groktan, solange sie sich mit mir noch nicht angelegt haben. Hinterher nennen sie mich dann Meister Groktan!")
talkEntry:addResponse("Groktan Flintsplit. Stets dem Don zu Diensten.")
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
talkEntry:addCondition(condition_quest(107, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder I"))
talkEntry:addConsequence(consequence_quest(107, "=", 1))
talkEntry:addResponse("Aye, ye can help meh. We need five ropes. You know what for, do not ask. Bring 'em 'ere and all is fine. If you don't, I'll 'remind' you...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung I"))
talkEntry:addConsequence(consequence_quest(107, "=", 1))
talkEntry:addResponse("Japp, ich h�tte einen Handlangerdienst. Bring' mir f�nf Seile, du wei�t, wof�r. Frag nicht! Bring sie ran und alles ist gut, bring sie nicht und ich werde dich an sie... 'erinnern'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("message")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder I"))
talkEntry:addConsequence(consequence_quest(107, "=", 1))
talkEntry:addResponse("Aye, ye can help meh. We need five ropes. You know what for, do not ask. Bring 'em 'ere and all is fine. If you don't, I'll 'remind' you...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung I"))
talkEntry:addConsequence(consequence_quest(107, "=", 1))
talkEntry:addResponse("Japp, ich h�tte einen Handlangerdienst. Bring' mir f�nf Seile, du wei�t, wof�r. Frag nicht! Bring sie ran und alles ist gut, bring sie nicht und ich werde dich an sie... 'erinnern'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Five strong hemp ropes is what I need. Bring 'em 'ere or start attachin' them to the tree at the market place, whatever suits you best.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", "<", 5, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("F�nf feste Hanfseile brauch ich. Bring sie her oder kn�pf sie schonmal an den Baum auf dem Marktplatz, wie du meinst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", "<", 5, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("message")
talkEntry:addResponse("Five strong hemp ropes is what I need. Bring 'em 'ere or start attachin' them to the tree at the market place, whatever suits you best.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", "<", 5, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("F�nf feste Hanfseile brauch ich. Bring sie her oder kn�pf sie schonmal an den Baum auf dem Marktplatz, wie du meinst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2760, 5, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ah, yes, five strong ropes. They'll do the job, you know which job. If you are loyal to the Don, you can do another mission for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2760, 5, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 2))
talkEntry:addResponse("Ah, yes, five strong ropes. They'll do the job, you know which job. If you are loyal, you can do another mission for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2760, 5, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ah, ja, f�nf feste Seile. Sie werden's tun, du wei�t schon, was. Wenn du dem Don loyal bist, kannst du eine weitere Mission f�r mich �bernehmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 1))
talkEntry:addCondition(condition_item(2760, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2760, 5, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 2))
talkEntry:addResponse("Ah, ja, f�nf feste Seile. Sie werden's tun, du wei�t schon, was. Wenn du dem Don loyal bist, kannst du eine weitere Mission f�r mich �bernehmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder II: You receive a message for Miggs."))
talkEntry:addConsequence(consequence_quest(107, "=", 3))
talkEntry:addResponse("Aye, another favour you could do, indeed. I have a message for Miggs, a list with names on it, just names, don't ask! Take the list to Miggs and you won't read your name on it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung II: Du hast eine Nachricht f�r Miggs erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 3))
talkEntry:addResponse("Aye, du k�nntest mir noch einen Gefallen tun. Ich habe hier eine Nachricht f�r Miggs, eine Namensliste. Nur Namen, frag nicht! Bring sie zu Miggs und dein Name wird nicht drauf stehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 2))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder II: You receive a message for Miggs."))
talkEntry:addConsequence(consequence_quest(107, "=", 3))
talkEntry:addResponse("Aye, another favour you could do, indeed. I have a message for Miggs, a list with names on it, just names, don't ask! Take the list to Miggs and you won't read your name on it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung II: Du hast eine Nachricht f�r Miggs erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 3))
talkEntry:addResponse("Aye, du k�nntest mir noch einen Gefallen tun. Ich habe hier eine Nachricht f�r Miggs, eine Namensliste. Nur Namen, frag nicht! Bring sie zu Miggs und dein Name wird nicht drauf stehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Take my message to Miggs at once! He shouldn't hit the wrong faces, could be yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bring sofort meine Nachricht zu Miggs! Er soll doch nicht in die falschen Fressen schlagen, es k�nnte deine sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 3))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("Take my message to Miggs at once! He shouldn't hit the wrong faces, could be yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Bring sofort meine Nachricht zu Miggs! Er soll doch nicht in die falschen Fressen schlagen, es k�nnte deine sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and a red wizard hat."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(358, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 5))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Good, Miggs got the list of who needs some special treatment. I have a little something for you; one of the witches you brought the ropes for won't need her hat anymore. Here, a free hat!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and a red wizard hat."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(358, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 5))
talkEntry:addResponse("Good, Miggs got the list of who needs some special treatment. I have a little something for you; one of the witches you brought the ropes for won't need her hat anymore. Here, a free hat!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 4))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und einen roten Zauberhut."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(358, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 5))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Gut, Miggs wei� jetzt, wer eine Spezialbehandlung braucht. Ich hab da was f�r dich; eine der Hexen, f�r die du ein Seil gebracht hast, wird jetzt ihren Hut nicht mehr brauchen. Hier, ein freigewordener Hut!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 4))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und einen roten Zauberhut."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(358, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 5))
talkEntry:addResponse("Gut, Miggs wei� jetzt, wer eine Spezialbehandlung braucht. Ich hab da was f�r dich; eine der Hexen, f�r die du ein Seil gebracht hast, wird jetzt ihren Hut nicht mehr brauchen. Hier, ein freigewordener Hut!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder III: You receive a message for Bruno Blackhole."))
talkEntry:addConsequence(consequence_quest(107, "=", 6))
talkEntry:addResponse("Arr! Bruno Blackhole, that filthy bastard owes the Don quite a sum. You will have no problem taking him this special message from me? Good! Off!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung III: Du hast eine Nachricht f�r Bruno Blackhole erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 6))
talkEntry:addResponse("Arr! Bruno Blackhole, der dreckige Lump, schuldet dem Don eine ziemliche Summe. Du hast kein Problem damit, ihm diese spezielle Nachricht von mir zu �berbringen? Gut! Los!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 5))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder III: You receive a message for Bruno Blackhole."))
talkEntry:addConsequence(consequence_quest(107, "=", 6))
talkEntry:addResponse("Arr! Bruno Blackhole, that filthy bastard owes the Don quite a sum. You will have no problem taking him this special message from me? Good! Off!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung III: Du hast eine Nachricht f�r Bruno Blackhole erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 6))
talkEntry:addResponse("Arr! Bruno Blackhole, der dreckige Lump, schuldet dem Don eine ziemliche Summe. Du hast kein Problem damit, ihm diese spezielle Nachricht von mir zu �berbringen? Gut! Los!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("What are still waiting for? Every day that passes without Bruno Blackhole paying results in higher interest. Off to the Malachite Mine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Warauf wartest du? Mit jedem Tag, der vergeht, steigen die Zinsen, die Bruno Blackhole zu zahlen hat. Ab zur Malachitmine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("What are still waiting for? Every day that passes without Bruno Blackhole paying results in higher interest. Off to the Malachite Mine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Warauf wartest du? Mit jedem Tag, der vergeht, steigen die Zinsen, die Bruno Blackhole zu zahlen hat. Ab zur Malachitmine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a warhammer."))
talkEntry:addConsequence(consequence_item(226, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("Now Bruno will pay the debt one way or another. Anyway, here, for your good service, have my friend, his name is Skull Splitter!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a warhammer."))
talkEntry:addConsequence(consequence_item(226, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 8))
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("Now Bruno will pay the debt one way or another. Anyway, here, for your good service, have my friend, his name is Skull Splitter!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 7))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Kriegshammer."))
talkEntry:addConsequence(consequence_item(226, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Jetzt wird Bruno zahlen, auf die eine oder andere Weise. Nun, f�r deine guten Dienste gebe ich dir meinen Freund. Sein Name ist Sch�delspalter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 7))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Kriegshammer."))
talkEntry:addConsequence(consequence_item(226, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 8))
talkEntry:addResponse("Jetzt wird Bruno zahlen, auf die eine oder andere Weise. Nun, f�r deine guten Dienste gebe ich dir meinen Freund. Sein Name ist Sch�delspalter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder IV: You receive a message for Fronita Emery."))
talkEntry:addConsequence(consequence_quest(107, "=", 9))
talkEntry:addResponse("She thinks she's smart! Fronita Emery, an artisan of Runewick thinks she can hide in that wicked island town and avoid paying back her dues. Take her this payment reminder!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung IV: Du hast eine Nachricht f�r Fronita Emery erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 9))
talkEntry:addResponse("Sie denkt, sie ist schlau! Fronita Emery, eine Handwerkerin Runewicks, denkt sie kann sich in der Inselstadt verstecken und ihre Schulden nicht bezahlen. Bring ihr diese letzte Mahnung!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 8))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder IV: You receive a message for Fronita Emery."))
talkEntry:addConsequence(consequence_quest(107, "=", 9))
talkEntry:addResponse("She thinks she's smart! Fronita Emery, an artisan of Runewick thinks she can hide in that wicked island town and avoid paying back her dues. Take her this payment reminder!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung IV: Du hast eine Nachricht f�r Fronita Emery erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 9))
talkEntry:addResponse("Sie denkt, sie ist schlau! Fronita Emery, eine Handwerkerin Runewicks, denkt sie kann sich in der Inselstadt verstecken und ihre Schulden nicht bezahlen. Bring ihr diese letzte Mahnung!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Fronita Emery owes the Don a lot and her business isn't doing well. Glass goods don't pay off, keep that in mind when giving her my message.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Fronita Emery schuldet dem Don eine Menge; ihr Gesch�ft l�uft nicht so gut. Glaswaren zahlen sich nicht aus, denk daran, wenn du ihr meine Nachricht bringst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("Fronita Emery owes the Don a lot and her business isn't doing well. Glass goods don't pay off, keep that in mind when giving her my message.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Fronita Emery schuldet dem Don eine Menge; ihr Gesch�ft l�uft nicht so gut. Glaswaren zahlen sich nicht aus, denk daran, wenn du ihr meine Nachricht bringst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 40 silver coins."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(107, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Bad business for Fronita! I'll give you some of the interest she'll pay back now. The Don appreciates loyal minions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 40 silver coins."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(107, "=", 11))
talkEntry:addResponse("Bad business for Fronita! I'll give you some of the interest she'll pay back now. The Don appreciates loyal minions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 10))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 40 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(107, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Schlechtes Gesch�ft f�r Fronita! Ich gebe dir ein wenig von den Zinsen, die sie dem Don nun zur�ckzahlen wird. Der Don belohnt loyale Handlanger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 10))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 40 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(107, "=", 11))
talkEntry:addResponse("Schlechtes Gesch�ft f�r Fronita! Ich gebe dir ein wenig von den Zinsen, die sie dem Don nun zur�ckzahlen wird. Der Don belohnt loyale Handlanger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder V: You receive a message for Queen Rosaline Edwards."))
talkEntry:addConsequence(consequence_quest(107, "=", 12))
talkEntry:addResponse("The Don trusts me and I trust you. This time, you have to deliver a very... special message. Take this 'letter of appreciation' to the Queen of Cadomyr. No word to anyone! Off!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 11))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung V: Du hast eine Nachricht f�r K�nigin Rosaline Edwards erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 12))
talkEntry:addResponse("Der Don vertraut mir und ich traue dir. Diesmal musst du eine 'besondere' Nachricht �berbringen. Bring diesen 'Brief der Wertsch�tzung' zur K�nigin von Cadomyr. Kein Wort zu niemanden! Los!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 11))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] The Reminder V: You receive a message for Queen Rosaline Edwards."))
talkEntry:addConsequence(consequence_quest(107, "=", 12))
talkEntry:addResponse("I trust you. The Don trusts you. This time, you have to deliver a very... special message. Take this 'letter of appreciation' to the Queen of Cadomyr. No word to anyone! Off!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 11))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Erinnerung V: Du hast eine Nachricht f�r K�nigin Rosaline Edwards erhalten."))
talkEntry:addConsequence(consequence_quest(107, "=", 12))
talkEntry:addResponse("Der Don vertraut mir und ich traue dir. Diesmal musst du eine 'besondere' Nachricht �berbringen. Bring diesen 'Brief der Wertsch�tzung' zur K�nigin von Cadomyr. Kein Wort zu niemanden! Los!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Well, well, you haven't delivered the Don's love letter to Rosaline Edwards! So, what are you waiting for?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Soso, den Liebesbrief des Dons f�r Rosaline Edwards hast du noch nicht �berbracht? Also, worauf wartest du!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("Well, well, you haven't delivered the Don's love letter to Rosaline Edwards! So, what are you waiting for?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Soso, den Liebesbrief des Dons f�r Rosaline Edwards hast du noch nicht �berbracht? Also, worauf wartest du!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a charm of the icebird."))
talkEntry:addConsequence(consequence_item(334, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("I have already heard the Queen of Cadomyr wasn't so fond of the message you took her. The Don won't like to hear the news. My next mission would have been for you to take her this necklace; instead keep it and keep silent about all of this!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a charm of the icebird."))
talkEntry:addConsequence(consequence_item(334, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 14))
talkEntry:addResponse("I have already heard the Queen of Cadomyr wasn't so fond of the 'message' you took her. The Don won't like to hear the news. My next mission would have been for you to take her this necklace; instead keep it and keep silent about all of this!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 13))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Eisvogelamulett."))
talkEntry:addConsequence(consequence_item(334, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Ich habe schon davon geh�rt, dass die K�nigin von Cadomyr nicht so begeistert �ber die 'Nachricht' war, die du ihr gebracht hast. Den Don wird das nicht freuen. Meine n�chste Mission w�re gewesen, dass du ihr diesen Halsschmuck bringst. Behalte ihn und die ganze Angelegenheit f�r dich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 13))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Eisvogelamulett."))
talkEntry:addConsequence(consequence_item(334, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(107, "=", 14))
talkEntry:addResponse("Ich habe schon davon geh�rt, dass die K�nigin von Cadomyr nicht so begeistert �ber die 'Nachricht' war, die du ihr gebracht hast. Den Don wird das nicht freuen. Meine n�chste Mission w�re gewesen, dass du ihr diesen Halsschmuck bringst. Behalte ihn und die ganze Angelegenheit f�r dich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You did so much for me and the Don; one could be suspicious why, so, I'll stick to other henchmen, no offence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 14))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast schon so viel f�r mich und den Don getan; man k�nnte misstrauisch werden, warum. Ich werde mich anderer Handlanger bedienen, wenns dir nichts ausmacht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 14))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("You did so much for me and the Don; one could be suspicious why, so, I'll stick to other henchmen, no offence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 14))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Du hast schon so viel f�r mich und den Don getan; man k�nnte misstrauisch werden, warum. Ich werde mich anderer Handlanger bedienen, wenns dir nichts ausmacht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I remind people, that's what I do. First, I remind them that they have to pay, then I never miss reminding them that they haven't paid!")
talkEntry:addResponse("Many people owe the Don a lot. I keep track of this, and I never forget!")
talkEntry:addResponse("The Don relies on me to 'remind' people about paying their debts. Makes me proud, aye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich erinnere die Leute, das ist mein Ding. Zuerst erinnere ich sie daran, dass sie zu zahlen haben. Dann verpasse ich ihnen etwas, was sie immer daran erinnert, dass sie nicht gezahlt haben.")
talkEntry:addResponse("Viele Leute schulden dem Don eine Menge. Und ich vergesse nie etwas!")
talkEntry:addResponse("Der Don verl�sst sich auf mich, seine Schuldner daran zu 'erinnern', was sie ihm schulden. Macht mich stolz, aye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I remind people, that's what I do. First, I remind them that they have to pay, then I never miss reminding them that they haven't paid!")
talkEntry:addResponse("Many people owe the Don a lot. I keep track of this, and I never forget!")
talkEntry:addResponse("The Don relies on me to 'remind' people about paying their debts. Makes me proud, aye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich erinnere die Leute, das ist mein Ding. Zuerst erinnere ich sie daran, dass sie zu zahlen haben. Dann verpasse ich ihnen etwas, was sie immer daran erinnert, dass sie nicht gezahlt haben.")
talkEntry:addResponse("Viele Leute schulden dem Don eine Menge. Und ich vergesse nie etwas!")
talkEntry:addResponse("Der Don verl�sst sich auf mich, seine Schuldner daran zu 'erinnern', was sie ihm schulden. Macht mich stolz, aye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("What's that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Was soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Let me check... no, you don't have debts.")
talkEntry:addResponse("Nice, and I am not nice.")
talkEntry:addResponse("I'm Groktan. Mess with the Don and you mess with me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Lass mich mal nachsehen... nein, du hast keine Schulden.")
talkEntry:addResponse("Nett. Und ich bin nicht nett.")
talkEntry:addResponse("Ich bin Groktan. Leg dich mit dem Don an und du kriegst es mit mir zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("reminder")
talkEntry:addResponse("I remind people, that's what I do. First, I remind them that they have to pay, then I never miss reminding them that they haven't paid!")
talkEntry:addResponse("Many people owe the Don a lot. I keep track of this, and I never forget!")
talkEntry:addResponse("The Don relies on me to 'remind' people about paying their debts. Makes me proud, aye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruff")
talkEntry:addTrigger("bully")
talkEntry:addResponse("I'm not rough, I'm direct and strict... and I am fair. Pay and you are alright. Don't pay and, well, the opposite.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("owe")
talkEntry:addTrigger("debt")
talkEntry:addResponse("Debts with Don Valerio are a special issue. Those who are loyal to the Don get credit and deferral, but who do not pay his protection fee lose his protection - from me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("money")
talkEntry:addResponse("Copper, silver and gold. The first I toss at beggars, right into their face. The second I keep for me. The last is for the Don. Never forget this!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("interest")
talkEntry:addResponse("Interest? What's that? Either, you pay back in time what you borrowed or you pay with your bones. Does that go by the term 'interest'?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erinnerer")
talkEntry:addResponse("Ich erinnere die Leute, das ist mein Ding. Zuerst erinnere ich sie daran, dass sie zu zahlen haben. Dann verpasse ich ihnen etwas, was sie immer daran erinnert, dass sie nicht gezahlt haben.")
talkEntry:addResponse("Viele Leute schulden dem Don eine Menge. Und ich vergesse nie etwas!")
talkEntry:addResponse("Der Don verl�sst sich auf mich, seine Schuldner daran zu 'erinnern', was sie ihm schulden. Macht mich stolz, aye!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grobian")
talkEntry:addTrigger("Schl�ger")
talkEntry:addResponse("Ich bin kein Grobian. Ich bin streng und direkt. Aber ich bin fair. Zahle, und alles wird gut. Zahle nicht und es geschieht das Gegenteil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schuld")
talkEntry:addResponse("Schulden bei Don Valerio sind so eine Sache. Wer loyal zum Don steht, dem gew�hrt er gerne Kredit oder Stundung. Aber wer seine Protektionsgeb�hr nicht rechtzeitig zahlt, der verliert auch seinen Schutz... vor mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("geld")
talkEntry:addResponse("Kupfer, Silber und Gold. Mit dem ersten bewerfe ich Bettler, mitten in die Fresse. Das zweite behalte ich f�r mich. Das letzte geh�rt dem Don, vergiss das nie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zins")
talkEntry:addResponse("Zinsen? Was soll das denn sein? Entweder, du zahlst deine Schulden rechtzeitig zur�ck oder zu zahlst mit deinen Knochen. Ist es das, was man unter 'Zinsen' versteht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dwarf")
talkEntry:addResponse("If you're here for the throwing competition, I have to disappoint you. It was cancelled due to a lack of healthy participants.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwerg")
talkEntry:addResponse("Wenn du wegen dem Weitwurfwettbewerb hier bist, muss ich dich entt�uschen. Der wurde mangels gesunder Teilnehmer abgesagt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Miggs")
talkEntry:addResponse("Aye, Miggs, my best regards to him. You can find him in the headquarters of Don Valerio. He does the... serious cases for the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Miggs")
talkEntry:addResponse("Aye, Miggs. Meine besten Gr��e an ihn. Du findest ihn im Hauptquartier von Don Valerio. Er �bernimmt die... schwierigen F�lle des Dons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bruno")
talkEntry:addTrigger("Blackhole")
talkEntry:addResponse("Bruno Blackhole is a lazy digger who pretends to work in the Malachite mine. Didn't really make him rich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bruno")
talkEntry:addTrigger("Blackhole")
talkEntry:addResponse("Bruno Blackhole ist eine fauler W�hler der so tut, als w�rde er in der Malachitmine arbeiten. Hat ihn jedenfalls nicht reich gemacht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fronita")
talkEntry:addTrigger("Emery")
talkEntry:addResponse("In Runewick, you can find skilled artisans. Fronita Emery is one of them but instead of cost effective goods, she crafts silly vases nobody buys, anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fronita")
talkEntry:addTrigger("Emery")
talkEntry:addResponse("In Runewick kann man recht geschickte Handwerker finden. Fronita Emery geh�rt zu ihnen; anstatt allerdings preiswerte Waren anzubieten, verschwendet sie ihre Zeit mit Vasen, die eh niemand kauft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bottle")
talkEntry:addResponse("Payment reminders don't come in a bottle, well maybe by a bottle to your head!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("flasche")
talkEntry:addResponse("Mahnungen werden nicht als Flaschenpost verschickt. Vielleicht aber als Flasche auf deinen Kopf!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Snickers")
talkEntry:addResponse("Could take a while...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Snickers")
talkEntry:addResponse("Wenns mal wieder l�nger dauert...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I don't really know Archmage Morgan. Word is that he's a bit... quirky. If you are so interested, why don't you visit him?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich kenne den Erzmagier Morgan nicht recht. Man sagt, er sei etwas... sonderbar. Wenns dich interessiert, besuch in doch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I don't really know Archmage Morgan. Word is that he's a bit... quirky. If you are so interested, why don't you visit him?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich kenne den Erzmagier Morgan nicht recht. Man sagt, er sei etwas... sonderbar. Wenns dich interessiert, besuch in doch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is not a town but a joke. I mean, who would be so stupid to build a town in the ocean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist keine Stadt, sondern ein Witz. Ich meine, wer ist so d�mlich und baut eine Stadt im Ozean?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio is like a father to me, one could say, like a godfather.")
talkEntry:addResponse("Say a bad word about the Don and risk a tooth, say another and you risk your tongue.")
talkEntry:addResponse("Don Valerio built up what you see here, not by brick by brick, but coin by coin. Wealth is what made Galmair strong.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio ist wie ein Vater f�r mich. Wie ein Pate, k�nnte man auch sagen.")
talkEntry:addResponse("Sag ein b�ses Wort �ber den Don und du riskierst einen Zahn. Sage ein weiteres und du riskierst deine Zunge.")
talkEntry:addResponse("Don Valerio hat all dies hier aufgebaut. Nicht Stein f�r Stein, sondern M�nze f�r M�nze. Reichtum hat Galmair stark gemacht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Actually, Galmair is my home, and yes, in this valley, there was once a dwarven stronghold. I'm a dwarf, so I feel quite comfortable here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist genau genommen meine Heimat. Und ja, in diesem Tal war einst eine Zwergenfeste. Ich bin ein Zwerg, also f�hl ich mich hier wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Rosi, arr, a pretty wife she would be. Not for me, of course. For who? Nevermind!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Rosi. Arr, sie w�re eine sch�ne Ehefrau. Nat�rlich nicht f�r mich. F�r wen dann? Vergiss es.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Rosi, arr, a pretty wife she would be. Not for me, of course. For who? Nevermind!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Rosi. Arr, sie w�re eine sch�ne Ehefrau. Nat�rlich nicht f�r mich. F�r wen dann? Vergiss es.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Personally, I don't like Cadomyr. I understand that it has many resources and despite how arid it is, there's no denying it is a rich country, but I wouldn't want to live there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Wenn du mich fragst, ich mag Cadomyr nicht so recht. Ich wei�, dass es viele Bodensch�tze hat und trotz der Trockenheit ist es ein reiches Land. Aber leben m�chte ich dort nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I'm not so familiar with other lands. Albar you say? Sounds like a good sparkling wine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich kenne mich nicht mit anderen L�ndern aus. Albar sagst du? Klingt nach einem guten Schaumwein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Gynk, oh yes, the land of my dreams. Freedom for everyone, at least if you can afford it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Gynk; oh ja, das Land meiner Tr�ume. Freiheit f�r alle, solange man sie sich leisten kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Don Valerio once stated that Salkamar isn't as bad as everyone thinks. I don't want to find out, Galmair is my land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Don Valerio erw�hnte einst, Salkamar. w�re gar nicht so schlimm, wie alle immer meinen. Ich will es eigentlich gar nicht rausfinden, Galmair ist mein Land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Gods are overrated. They won't pay your dues. I suppose they may inspire your life, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Die G�tter werden �bersch�tzt. Sie werden nicht deine Schulden bezahlen. Aber sie k�nnen dich zu einem besseren Leben inspirieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("The God of booze, that's Adron. Anything interesting about him?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Der Suffgott, das ist Adron. Gibts sonst noch was �ber ihn zu sagen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Br�gon gave us the flame... my tinderbox does as well. Do I pray to my tinderbox!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Und Br�gon gab uns das Feuer... Z�ndh�lzer k�nnen das auch. Bete ich deshalb Z�ndh�lzer an!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I'm not dead, so leave me alone about Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich bin nicht tot, also lass mich mit Cherga in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Who was that again? Eleven Younger Gods, how am I supposed to remember them all?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Wer war die nochmal? Elf junge G�tter, wie soll man sich die alle merken!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("You don't want to talk to a dwarf like me about Eldan. You do not want to! Better for you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Du willst mit einem Zwerg wie mir nicht �ber Eldan reden. Das willst du nicht. Ist besser f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("You don't want to talk to a dwarf like me about Findari. You do not want to! Better for you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Du willst mit einem Zwerg wie mir nicht �ber Findari reden. Das willst du nicht. Ist besser f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom is called 'Father' by some of my bethren. I don't know my father,but I seriously doubt a god would mate with my mother.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Manche meiner Zwergenbr�der nennen Irmorom 'Vater' Ich kenne meinen Vater nicht. Aber ich glaube kaum, dass sich ein Gott mit meiner Mutter eingelassen hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Who was that again? Eleven Younger Gods, how am I supposed to remember them all?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Wer war die nochmal? Elf junge G�tter, wie soll man sich die alle merken!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Who was that again? Eleven Younger Gods, how am I supposed to remember them all?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Wer war die nochmal? Elf junge G�tter, wie soll man sich die alle merken!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("You don't want to talk to a dwarf like me about Narg�n. You do not want to! Better for you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Du willst mit einem Zwerg wie mir nicht �ber Narg�n reden. Das willst du nicht. Ist besser f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oh. Oldra, the Goddess of ferti... fert... something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oh. Oldra, die G�ttin der Fruchtbar... Furchtbarkeit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Oh, my God!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Oh, mein Gott!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("You don't want to talk to a dwarf like me about Sirani. You do not want to! Better for you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Du willst mit einem Zwerg wie mir nicht �ber Sirani reden. Das willst du nicht. Ist besser f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("You don't want to talk to a dwarf like me about Tanora. You do not want to! Better for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Du willst mit einem Zwerg wie mir nicht �ber Tanory reden. Das willst du nicht. Ist besser f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is called 'Mother' by some of my bethren. I knew my mother, her name wasn't Ushara, not even Ushi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Manche meiner Zwergenbr�der nennen Ushara 'Mutter' Ich kannte meine Mutter. Ihr Name war nicht Ushara, nicht mal Uschi.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra is the most overrated god of them all. Friendship, eh? I'll show you friendship. My friend is my fist... and yours?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra ist der am meisten �bersch�tzte Gott von allen. Freundschaft, eh? Ich zeig dir gleich Freundschaft. Meine Freundin ist meine Faust. Deine auch?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Come to me if you owe the Don money... Then, you give it to me. If you don't, I give something to you, right in your face!")
talkEntry:addResponse("I'm not a trader. The difference is, I just take money and give nothing in return. You just get something from me if you don't pay, pain!")
talkEntry:addResponse("Get lost if you want to barter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Komm zu mir, wenn du dem Don Geld schuldest. Das gibst du dann mir. Wenn du das nicht tust, dann gebe ich dir was. Auf die Fresse!")
talkEntry:addResponse("Ich bin doch kein H�ndler. Der Unterschied: Ich nehme nur Geld und gebe nichts im Gegenzug. Du bekommst nur etwas von mir, wenn du nicht bezahlst. Schmerz!")
talkEntry:addResponse("Hau ab, wenn du feilschen willst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I'm not in the mood.")
talkEntry:addResponse("Do I look like an elven bard?")
talkEntry:addResponse("Do you know how much pain is involved when you pull on somebody's tongue? Lizards don't like it, especially.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Mir ist nicht danach.")
talkEntry:addResponse("Sehe ich aus wie ein Elfenbarde?")
talkEntry:addResponse("Wei�t du eigentlich, wie schmerzhaft es ist, jemanden an der Zunge zu ziehen? Echsenwesen hassen das ganz besonders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addResponse("Who asks for me?")
talkEntry:addResponse("Arr!")
talkEntry:addResponse("What do you want? Bruises?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addResponse("Wer fragt nach mir?")
talkEntry:addResponse("Arr!")
talkEntry:addResponse("Was wollt ihr? Ne Abreibung?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Rarr!", "Rarr!")
talkingNPC:addCycleText("Eine gutgemeinte Mahnung: Vergesst nie, was ihr dem Don schuldet.", "Today's free reminder: Never forget what you owe the Don.")
talkingNPC:addCycleText("#me z�ckt ein Notizbuch und streicht etwas durch: 'Erinnert!'", "#me takes out a notebook and rules out a line: 'Reminded!'")
talkingNPC:addCycleText("Wenn der Don all das Geld h�tte, was ihm die Leute schulden, w�re er ein reicher Mann!", "If the Don had all the money people owe him, he'd be rich!")
talkingNPC:addCycleText("Zahltag!", "Payday!")
talkingNPC:addCycleText("#me r�mpft die Nase: 'Geld stinkt nicht. Muss also was anderes sein. Ich bin's nicht!'", "#me wrinkles his nose, 'Money doesn't stink, has to be something else, but not me!'")
talkingNPC:addCycleText("Schweigen ist Gold, Zahlen h�lt gesund.", "Silence is golden, paying is healthy.")
talkingNPC:addCycleText("Ich bin der Herr von Ratschkling!", "I am the Lord of Kerching!")
talkingNPC:addCycleText("Die, die bezahlt haben, wurden daran erinnert. Die, die nicht zahlten, werden sich immer daran erinnern.", "Those who paid were reminded, those who didn't will remember.")
talkingNPC:addCycleText("Bringt da jemand Geld f�r den Don?", "Got money for the Don?")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der 'Erinnerer' Groktan.", "This NPC is the 'reminder' Groktan.")
mainNPC:setUseMessage("Ich werd' dir Manieren beibringen!", "I'll teach yer touchin' meh!")
mainNPC:setConfusedMessage("Schnauze!", "Shut it!")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 812)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2664)
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
