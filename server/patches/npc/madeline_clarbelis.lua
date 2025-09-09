local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
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
talkEntry:addCondition(condition_quest(334, ">", 2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Error] Something went wrong, please inform a developer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, ">", 12))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Error] Something went wrong, please inform a developer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Madeline Clarbelis the apprentice druid. Keywords: quest, Aurora, profession, Ushara."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe]  Dieser NPC ist Madeline Clarbelis die Druiden-Sch�lerin. Schl�sselw�rter: Auftrag, Aurora, Beruf, Ushara."))
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
talkEntry:addResponse("#me blushes slightly, 'H.. .hello there.'")
talkEntry:addResponse("#me glances toward her feet, 'Greetings.'")
talkEntry:addResponse("G... greetings.")
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
talkEntry:addResponse("#me wird leicht rot.,'H... Hallo.'")
talkEntry:addResponse("#me schaut verlegen zu Boden 'G... Gr��e '.")
talkEntry:addResponse("G... Gr��e.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me blushes slightly, 'H... hello there.'")
talkEntry:addResponse("#me glances toward her feet, 'Greetings.'")
talkEntry:addResponse("G... greetings.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me wird leicht rot.,'H... Hallo.'")
talkEntry:addResponse("#me schaut verlegen zu Boden 'G... Gr��e '.")
talkEntry:addResponse("G... Gr��e.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me purses her lips, nodding once.")
talkEntry:addResponse("Take care.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me sch�tzt ihre Lippen, nickt einer mal kurz.")
talkEntry:addResponse("Gebt Acht.")
talkEntry:addResponse("Lebt wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me purses her lips, nodding once.")
talkEntry:addResponse("Take care.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me sch�tzt ihre Lippen, nickt einer mal kurz.")
talkEntry:addResponse("Gebt Acht.")
talkEntry:addResponse("Lebt wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I... I am fine.")
talkEntry:addResponse("Well... of course. Why would I be otherwise?")
talkEntry:addResponse("#me fidgets nervously, 'I cannot complain.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("I... Ich, mir geht es gut.")
talkEntry:addResponse("Gut... nat�rlich. Warum sollte es mir schlecht gehen?")
talkEntry:addResponse("#me zappelt nerv�s. 'Ich kann nicht klagen'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Madeline. Madeline Clarbelis.")
talkEntry:addResponse("I am Madeline.")
talkEntry:addResponse("M... my name is Madeline Clarbelis.")
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
talkEntry:addResponse("Madeline. Madeline Clarbelis.")
talkEntry:addResponse("I am Madeline.")
talkEntry:addResponse("M... mein Name i... ist Madeline Clarbelis.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Quest Update] Aurora's Staff: Part I"))
talkEntry:addConsequence(consequence_item(401, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(333, "=", 3))
talkEntry:addResponse("#me's eyes dart around nervously as she hands across a long wooden staff, 'Oh? You are here for the staff? Here it is. Be... careful with it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Auroras Stab: Teil I"))
talkEntry:addConsequence(consequence_item(40, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(333, "=", 3))
talkEntry:addResponse("#me's Augen huschen nerv�s hin und her als sie dir einen l�nglichen Holzstab reicht 'Oh? Ihr seid hier um den Stab zu hohlen?' Hier ist er... seid vorsichtig damit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Aurora's Staff: Part I"))
talkEntry:addConsequence(consequence_item(40, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(333, "=", 3))
talkEntry:addResponse("#me's eyes dart around nervously as she hands across a long wooden staff, 'Oh? You are here for the staff? Here it is. Be... careful with it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Auroras Stab: Teil I"))
talkEntry:addConsequence(consequence_item(40, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(333, "=", 3))
talkEntry:addResponse("#me's Augen huschen nerv�s hin und her als sie dir einen l�nglichen Holzstab reicht 'Oh? Ihr seid hier um den Stab zu hohlen?' Hier ist er... seid vorsichtig damit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Quest Update] Aurora's Staff: Part II"))
talkEntry:addConsequence(consequence_quest(333, "=", 6))
talkEntry:addResponse("I'm sorry. I shouldn't have lied. A Halfling, Fosco Goodbarrel, tricked me into giving up the staff. He told me that he could make me a powerful druid. I didn't want people to think I was stupid. You'll find him in the forest west of here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Auroras Stab: Teil  II"))
talkEntry:addConsequence(consequence_quest(333, "=", 6))
talkEntry:addResponse("Es tut mir wirklich leid. Ich h�tte nicht l�gen sollen. Ein Halbling, Fosco Goodbarrel hat mich rein gelegt, so dass ich ihm den Stab gegeben habe. Er sagte, er k�nne mich zu einem m�chtigeren Druiden machen. Ich wollte nicht, dass man mich f�r dumm h�lt. Ihr findet ihn im Wald westlich von hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("staff")
talkEntry:addConsequence(consequence_inform("[Quest Update] Aurora's Staff: Part II"))
talkEntry:addConsequence(consequence_quest(333, "=", 6))
talkEntry:addResponse("I'm sorry. I shouldn't have lied. A Halfling, Fosco Goodbarrel, tricked me into giving up the staff. He told me that he could make me a powerful druid. I didn't want people to think I was stupid. You'll find him in the forest west of here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Stab")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Auroras Stab: Teil  II"))
talkEntry:addConsequence(consequence_quest(333, "=", 6))
talkEntry:addResponse("Es tut mir wirklich leid. Ich h�tte nicht l�gen sollen. Ein Halbling, Fosco Goodbarrel hat mich rein gelegt, so dass ich ihm den Stab gegeben habe. Er sagte, er k�nne mich zu einem m�chtigeren Druiden machen. Ich wollte nicht, dass man mich f�r dumm h�lt. Ihr findet ihn im Wald westlich von hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You should go find the Halfling, Fosco Goodbarrel. He is in the forest west of here. He has Aurora's staff.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr sollt gehen und den Halbling Fosca Goodbarrel finden. Er hat Auroras Stab.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("staff")
talkEntry:addResponse("You should go find the Halfling, Fosco Goodbarrel. He is in the forest west of here. He has Aurora's staff.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Stab")
talkEntry:addResponse("Ihr sollt gehen und den Halbling Fosca Goodbarrel finden. Er hat Auroras Stab.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Apprentice"))
talkEntry:addConsequence(consequence_quest(334, "=", 1))
talkEntry:addResponse("Mistress Snow wants me to gather some herbs for her. I don't really feel like it though. If you get them for me, I'll give you a nice present. I need four foot leaves and two firnis blossoms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der faule Lehrling"))
talkEntry:addConsequence(consequence_quest(334, "=", 1))
talkEntry:addResponse("Meine Lehrerin Frau Snow m�chte, dass ich Kr�uter sammle. Aber ich habe nicht wirklich Lust dazu. Wenn ihr mir die Kr�uter sucht gebe ich euch ein sch�nes Geschenk. Ich brauche vier Fussblatt und zwei Firnisbl�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Apprentice"))
talkEntry:addConsequence(consequence_quest(334, "=", 1))
talkEntry:addResponse("Mistress Snow wants me to gather some herbs for her. I don't really feel like it though. If you get them for me, I'll give you a nice present. I need four foot leaves and two firnis blossoms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der faule Lehrling"))
talkEntry:addConsequence(consequence_quest(334, "=", 1))
talkEntry:addResponse("Meine Lehrerin Frau Snow m�chte, dass ich Kr�uter sammle. Aber ich habe nicht wirklich Lust dazu. Wenn Ihr mir die Kr�uter sucht gebe ich euch ein sch�nes Geschenk. Ich brauche vier Fussblatt und zwei Firnisbl�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(153, "all", "<", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I really need you to bring me those four foot leaves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(153, "all", "<", 4, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr solltet mir wirklich noch die vier Fussblatt bringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(153, "all", "<", 4, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I really need you to bring me those four foot leaves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(153, "all", "<", 4, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ihr solltet mir wirklich noch die vier Fussblatt bringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(148, "all", "<", 2, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You've got the four foot leaves, but I also need you to bring me those two firnis blossoms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(148, "all", "<", 2, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr habt mir vier Fussblatt gegeben. Jetzt sucht mir noch zwei Firnisbl�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(148, "all", "<", 2, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You've got the four foot leaves, but I also need you to bring me those two firnis blossoms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(148, "all", "<", 2, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ihr habt mir vier Fussblatt gegeben. Jetzt sucht mir noch zwei Firnisbl�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(153, "all", ">", 3, nil))
talkEntry:addCondition(condition_item(148, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(153, 4, nil))
talkEntry:addConsequence(consequence_deleteitem(148, 2, nil))
talkEntry:addConsequence(consequence_quest(334, "=", 2))
talkEntry:addResponse("Oh wonderful, thank you! Mistress Snow shall be so pleased with me! Here, take this as payment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 1))
talkEntry:addCondition(condition_item(153, "all", ">", 3, nil))
talkEntry:addCondition(condition_item(148, "all", ">", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(153, 4, nil))
talkEntry:addConsequence(consequence_deleteitem(148, 2, nil))
talkEntry:addConsequence(consequence_quest(334, "=", 2))
talkEntry:addResponse("Oh, wunderbar, vielen Dank! Meine Lehrerin Frau Snow wird so stolz auf mich sein! Hier, nehmt dies zu Dank.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thanks for your help. I should really start doing some work, though. I don't want to disappoint Aurora.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Danke f�r eure Hilfe. Ich sollte nun wirklich mit der Arbeit beginnen, schlie�lich will ich Aurora nicht entt�uschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Thanks for your help. I should really start doing some work, though. I don't want to disappoint Aurora.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(334, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Danke f�r eure Hilfe. Ich sollte nun wirklich mit der Arbeit beginnen, schlie�lich will ich Aurora nicht entt�uschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I... I am training to be a druid.")
talkEntry:addResponse("I am an apprentice druid.")
talkEntry:addResponse("I will be a druid, one day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("I... Ich lerne um eine Druidin zu werden.")
talkEntry:addResponse("Ich bin ein angehender Druide.")
talkEntry:addResponse("I werde eines Tages eine Druidin sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I... I am training to be a druid.")
talkEntry:addResponse("I am an apprentice druid.")
talkEntry:addResponse("I will be a druid, one day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("I... Ich lerne um eine Druidin zu werden.")
talkEntry:addResponse("Ich bin ein angehender Druide.")
talkEntry:addResponse("I werde eines Tages eine Druidin sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("That island was... dull.")
talkEntry:addResponse("The people there were so... nosy.")
talkEntry:addResponse("I liked Gobaith, I suppose.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Die Insel war... totlangweilg.")
talkEntry:addResponse("Die Leute dort waren so... neugierig.")
talkEntry:addResponse("Ich mochte Gobiath, glaub ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("I... it is nice to meet you.")
talkEntry:addResponse("A p... pleasure to meet you.")
talkEntry:addResponse("I am glad to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("F... freut mich euch kennen zu lernen.")
talkEntry:addResponse("I... Ich freue mich euch zu treffen.")
talkEntry:addResponse("E... Es ist eine Freuda euch zu treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("druid")
talkEntry:addResponse("Yes, one day I shall be a druid! I cannot wait for that day to come!")
talkEntry:addResponse("I am only learning the ways of the druids at the moment, but soon I hope to be one myself!")
talkEntry:addResponse("#me sighs faintly, 'It takes a long time to learn the true ways of nature.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("aurora")
talkEntry:addResponse("Aurora was kind enough to choose me as her apprentice. She is very slow to teach me, though.")
talkEntry:addResponse("Mistress Aurora is teaching me the ways of the druids. I wish she would hurry up...")
talkEntry:addResponse("Aurora tells me that I need to learn patience. I wish she would hurry up and teach me it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Druid")
talkEntry:addResponse("Ja, eines Tages werde ich Druidin sein! Ich kann den Tag kaum erwarten!")
talkEntry:addResponse("Ich lerne  noch ein Druide zu sein, aber ich hoffe schon jetzt, dass ich eines Tages selbst eine Druidin sein werde.")
talkEntry:addResponse("#me seufzt leise. 'Es wird noch lange dauern, die Wege der Natur zu ergr�nden.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Aurora")
talkEntry:addResponse("Aurora war so freundlich mich als ihre Sch�lerin aufzunehmen. Aber sie unterrichtet sehr langsam.")
talkEntry:addResponse("Meine Lehrerin Aurora bringt mir bei ein Druide zu sein, ich w�nschte nur sie w�rde sich etwas mehr beeilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Mistress Aurora says that he is missing something. I wonder what she means?")
talkEntry:addResponse("I hear that the Archmage is the most powerful mage to ever step foot on these lands.")
talkEntry:addResponse("I wonder if he takes as long to teach magic as Mistress Aurora does to teach me the ways of a druid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Meine Lehrerin Aurora sagt, er �bersieht etwas. Ich frage mich, was sie damit meint.")
talkEntry:addResponse("Ich h�rte der Erzmagier sei der m�chtigste Magier, der jemals seinen Fu� auf dieses Lang gesetzt hat.")
talkEntry:addResponse("Ich frage mich ob er genauso lange bracht Magie zu unterrichten, wie meine Lehrerin Aurora braucht um Magie zu unterrichten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Mistress Aurora says that he is missing something. I wonder what she means?")
talkEntry:addResponse("I hear that the Archmage is the most powerful mage to ever step foot on these lands.")
talkEntry:addResponse("I wonder if he takes as long to teach magic as Mistress Aurora does to teach me the ways of a druid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Meine Lehrerin Aurora sagt, er �bersieht etwas. Ich frage mich, was sie damit meint.")
talkEntry:addResponse("Ich h�rte der Erzmagier sei der m�chtigste Magier, der jemals seinen Fu� auf dieses Lang gesetzt hat.")
talkEntry:addResponse("Ich frage mich ob er genauso lange bracht Magie zu unterrichten, wie meine Lehrerin Aurora braucht um Magie zu unterrichten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("There are so many books in Runewick. Can you read? I can.")
talkEntry:addResponse("Mistress Aurora says that I should spend lots of time in Runewick, if I want to become wise like she is.")
talkEntry:addResponse("Sometimes I can't understand what the people in Runewick are saying. They speak with really big words.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Dort sind so viele B�cher in Runewick. K�nnt Ihr lesen?")
talkEntry:addResponse("Meine Lehrerin sagt ich solle viel Zeit in Runewick verbringen, wenn ich so weise wie sie werden will.")
talkEntry:addResponse("Manchmal kann ich verstehen, was die Leute in Runewick sagen. Sie gebrauchen wirklich komplizierte Worte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("They say he has a lot of money.")
talkEntry:addResponse("Mistress Aurora says that money isn't important. The Don has a lot of it, though.")
talkEntry:addResponse("The Don rules the town of Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Man sagt, er habe viel Geld.")
talkEntry:addResponse("Meisterin Aurora sagt, dass Geld nicht wichtig ist, der Don jedoch hat viel davon.")
talkEntry:addResponse("Der Don herrscht �ber die Stadt Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Mistress Aurora says that the people who live there are small-minded.")
talkEntry:addResponse("People say that Galmair reminds them of Gynk. I've never been to Gynk, though.")
talkEntry:addResponse("The town of Galmair is ruled by the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Meine Lehrerin Aurora sagt die Leute da seinen engstirnig.")
talkEntry:addResponse("Man sagt Galmair erinnert an Gynk. Ich war niemals in Gynk.")
talkEntry:addResponse("Die Stadt Galmair wird beherrscht vom Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Mistress Aurora doesn't tell me too much about the Queen.")
talkEntry:addResponse("Queen Rosaline is very pretty.")
talkEntry:addResponse("Queen Rosaline is the ruler of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Meisterin Aurora sagt nie viel �ber die K�nigin.")
talkEntry:addResponse("K�nigin Rosaline ist sehr h�bsch.")
talkEntry:addResponse("K�nigin Rosaline ist die Herrscherin �ber Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Mistress Aurora doesn't tell me too much about the Queen.")
talkEntry:addResponse("Queen Rosaline is very pretty.")
talkEntry:addResponse("Queen Rosaline is the ruler of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Meisterin Aurora sagt nie viel �ber die K�nigin.")
talkEntry:addResponse("K�nigin Rosaline ist sehr h�bsch.")
talkEntry:addResponse("K�nigin Rosaline ist die Herrscherin �ber Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I think the people who live in Cadomyr are very nice.")
talkEntry:addResponse("Mistress Aurora says that very good lessons can be learned from the people of Cadomyr. She won't tell me what the lessons are, though.")
talkEntry:addResponse("The town of Cadomyr is ruled by Queen Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I denke, die Leute in Cadomyr sind sehr nett.")
talkEntry:addResponse("Lehrerin Aurora sagt, man k�nnte eine gute Lektion von den Leuten aus Cadomyr lernen. Sie sagt mir jedoch nicht welche Lektion das ist.")
talkEntry:addResponse("Die Stadt Cadomyr wird von Queen Rosaline beherrscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I don't know much about Albar.")
talkEntry:addResponse("I hear that they don't respect women in Albar. Is that true?")
talkEntry:addResponse("People tell me that Albar is a corrupt land. Aurora tells me that it is none of my concern, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich wei� nicht viel �ber Albar.")
talkEntry:addResponse("Die Leute sagen, dass man in Albar die Frauen nicht respektiert. Stimmt das?")
talkEntry:addResponse("Die Leute sagten mir, Albar sei in korruptes Land. Aurora sagte mir, das solle mich nicht bek�mmern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I don't know much about Gynk.")
talkEntry:addResponse("I've never been to Gynk. Do you think it's nice?")
talkEntry:addResponse("Mistress Aurora says that society is like a mask. Society doesn't make me laugh, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich wei� nicht viel �ber Gynk.")
talkEntry:addResponse("Ich war noch nie in Gynk. Glaubt Ihr es ist sch�n dort?")
talkEntry:addResponse("Gesellschaft ist eine Fassade, sagt meine Lehrerin Aurora. Ich frage mich, was man wohl erblickt, wenn man dahinter schaut?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I don't know much about Salkamar.")
talkEntry:addResponse("I used to enjoy listening to stories about the heroes from Salkamar.")
talkEntry:addResponse("Mistress Aurora says that society is like a mask. Society doesn't make me laugh, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich wei� nicht viel �ber Salkamar.")
talkEntry:addResponse("Fr�her h�rte ich gern Geschichten �ber Helden aus Salkamar.")
talkEntry:addResponse("Gesellschaft ist eine Fassade, sagt meine Lehrerin Aurora. Ich frage mich, was man wohl erblickt, wenn man dahinter schaut?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I like to listen to the stories about the Younger Gods. Aurora says that I must learn more about the Elder Ones, though.")
talkEntry:addResponse("The Elder Ones gave birth to everything... that's what Aurora tells me.")
talkEntry:addResponse("Aurora talks a lot about Ushara, one of the Elder Gods.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich h�re gerne Geschichte �ber die jungen G�tter. Aurora sagt aber, dass ich mehr �ber die Alten lernen soll.")
talkEntry:addResponse("Die alten G�tter haben alles erschaffen... das hat Aurora mir gesagt.")
talkEntry:addResponse("Aurora redet viel �ber Ushara, einen der alten G�tter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Aurora always talks about Ushara. She is the Goddess of Earth.")
talkEntry:addResponse("Aurora tells me that she has met Ushara. She must be so old.")
talkEntry:addResponse("I have to learn a lot about Ushara. I wish it didn't take so long.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Aurora redet immer �ber Ushara. Sie ist die G�ttin der Erde.")
talkEntry:addResponse("Aurora erz�hlte mir sie habe Ushara getroffen, sie muss so alt sein.")
talkEntry:addResponse("Ich muss viel �ber Ushara lernen, ich w�nschte es w�rde nicht so lange brauchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Aurora hasn't taught me much about that God yet.")
talkEntry:addResponse("Aurora tells me to respect the followers of all of the Gods.")
talkEntry:addResponse("Aurora sometimes mentions that God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Aurora hat mir noch nicht viel �ber diesen Gott beigebracht.")
talkEntry:addResponse("Aurora sagt, man soll die Anh�nger jeden Gottes respektieren.")
talkEntry:addResponse("Manchmal erw�hnt Aurora diese Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't want to trade.")
talkEntry:addResponse("I don't wish to trade today, thank you.")
talkEntry:addResponse("Sorry, but Aurora tells me that I cannot be enticed by material possessions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich m�chte nicht handeln.")
talkEntry:addResponse("Ich w�nsche heute nicht zu handeln, habt Dank.")
talkEntry:addResponse("Entschuldigt, aber Aurora hat gesagt ich solle mich nicht von materiellen Dingen verf�hren lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("You should go for a walk through the forest. It's quiet, and very pretty. Watch out for wild animals, though.")
talkEntry:addResponse("Sometimes you can find herbs that have blown across the land. Aurora gets me to pick them up for her.")
talkEntry:addResponse("If you want to become a druid, you should find someone to take you as their apprentice. I don't recommend an Elf, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ihr solltet im Wald spazieren gehen. Dort ist es ruhig und sehr sch�n. Gebt nur Acht auf wilde Tiere.")
talkEntry:addResponse("Manchmal findet man Kr�uter die der Wind �ber dem Land verstreut hat. Aurora l�sst mich diese Kr�uter f�r sie sammeln")
talkEntry:addResponse("Wenn Ihr Druide werden wollt so such jemanden, er euch als Sch�ler annimmt. Ich rate euch, w�hlt keinen Elfen als Lehrmeister.")
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
talkEntry:addResponse("Ich bin keine Marktfrau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Madeline")
talkEntry:addTrigger("Clarbelis")
talkEntry:addResponse("I need a nap.")
talkEntry:addResponse("Gosh, I am so tired.")
talkEntry:addResponse("I suppose I should go visit Aurora soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Madeline")
talkEntry:addTrigger("Clarbelis")
talkEntry:addResponse("Ich m�chte ein Nickerchen machen.")
talkEntry:addResponse("Uff, ich bin so m�de.")
talkEntry:addResponse("Ich denke, ich sollte bald mal Aurora besuchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me g�hnt hinter vorgehaltener Hand.", "#me yawns into the back of her hand.")
talkingNPC:addCycleText("#me niest.", "#me sneezes.")
talkingNPC:addCycleText("#me seufzt leise.", "#me sighs faintly.")
talkingNPC:addCycleText("#me kichert leise.", "#me giggles quietly.")
talkingNPC:addCycleText("#me spielt mit ihrem Haar.", "#me plays with her hair.")
talkingNPC:addCycleText("#me streicht sich mit einem Finger durchs Haar.", "#me runs a finger through her hair.")
talkingNPC:addCycleText("#me klatscht in die H�nde.", "#me claps her hands together.")
talkingNPC:addCycleText("#me fl�stert sich selbst etwas zu.", "#me whispers to herself.")
talkingNPC:addCycleText("�hm.", "Erm.")
talkingNPC:addCycleText("Hm...", "Hm...")
talkingNPC:addCycleText("Ich m�chte ein Nickerchen machen.", "I need a nap.")
talkingNPC:addCycleText("Uff, ich bin so m�de.", "Gosh, I am so tired.")
talkingNPC:addCycleText("Ich denke, ich sollte bald mal Aurora besuchen.", "I suppose I should go visit Aurora soon.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Madeline der Druiden-Sch�lerin.", "This NPC is Madeline Clarbelis the apprentice druid.")
mainNPC:setUseMessage("#me geht nerv�s zur�ck.", "#me pulls away nervously.")
mainNPC:setConfusedMessage("#me sch�ttelt ihren Kopf, sie scheint sich zu sch�men.", "#me shakes her head, seemingly embarrassed.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 385)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
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
