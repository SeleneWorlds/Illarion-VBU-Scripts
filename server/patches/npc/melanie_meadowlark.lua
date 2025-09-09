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
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the ranger Melanie Meadowlark. Keywords: Hello, quest, ranger."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist die Waldl�uferin Melanie Meadowlark. Schl�sselw�rter: Hallo, Aufgabe, Waldl�ufer."))
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
talkEntry:addResponse("Welcome to Elstree Forest.")
talkEntry:addResponse("Greetings, please mind the fairies and stay away from their cakes!")
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
talkEntry:addResponse("Gru�!")
talkEntry:addResponse("Willkommen im Elsbaumwald")
talkEntry:addResponse("Gr��e, bitte gebt auf die Feen Acht und bleibt weg von ihrem Kuchen!")
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
talkEntry:addResponse("Welcome to Elstree Forest.")
talkEntry:addResponse("Greetings, please mind the fairies and stay away from their cakes!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Tach, mein Freund!")
talkEntry:addResponse("Willkommen im Elsbaumwald")
talkEntry:addResponse("Gr��e, bitte gebt auf die Feen Acht und bleibt weg von ihrem Kuchen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Look at the wonderful world the gods have made for us, honour them in your travels.")
talkEntry:addResponse("Please visit again.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Schaut Euch die wunderbare Welt an, welche die G�tter f�r uns gemacht haben und ehrt sie auf eueren Reisen.")
talkEntry:addResponse("Bitte besucht uns erneut.")
talkEntry:addResponse("Gehabt euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Look at the wonderful world the gods have made for us, honour them in your travels.")
talkEntry:addResponse("Please visit again.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Schaut Euch die wunderbare Welt an, welche die G�tter f�r uns gemacht haben und ehrt sie auf eueren Reisen.")
talkEntry:addResponse("Bitte besucht uns erneut.")
talkEntry:addResponse("Gehabt euch wohl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I feel grand.")
talkEntry:addResponse("I am blessed by the Five")
talkEntry:addResponse("I feel like playing music.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich f�hle mich gro�artig.")
talkEntry:addResponse("Ich bin von den F�nfen gesegnet.")
talkEntry:addResponse("Mir ist danach zu musizieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Melanie Meadowlark.")
talkEntry:addResponse("I'm the ranger Melanie.")
talkEntry:addResponse("You can call me Mel, protector of the fairies.")
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
talkEntry:addResponse("Ich bin Melanie Meadowlark.")
talkEntry:addResponse("Ich bin eine Waldl�uferin namens Melanie.")
talkEntry:addResponse("Ihr k�nnt mich Mel nennen, Besch�tzerin der Feen.")
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
talkEntry:addCondition(condition_quest(500, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger I"))
talkEntry:addConsequence(consequence_quest(500, "=", 1))
talkEntry:addResponse("Help! We need assistance in the fairy bakery. We are short of honey, please bring me ten honeycombs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Waldl�ufer des Elsbaumwaldes I"))
talkEntry:addConsequence(consequence_quest(500, "=", 1))
talkEntry:addResponse("Helft uns! Wir brauchen Unterst�tzung in der Feenb�ckerei. Honig ist knapp. So bringt mir bitte zehn Honigwaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger I"))
talkEntry:addConsequence(consequence_quest(500, "=", 1))
talkEntry:addResponse("Help! We need assistance in the fairy bakery. We are short of honey, please bring me ten honeycombs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Waldl�ufer des Elsbaumwaldes I"))
talkEntry:addConsequence(consequence_quest(500, "=", 1))
talkEntry:addResponse("Helft uns! Wir brauchen Unterst�tzung in der Feenb�ckerei. Honig ist knapp. So bringt mir bitte zehn Honigwaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 1))
talkEntry:addCondition(condition_item(2529, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Do you have the honeycombs yet? Without it the baking stalls, which would be horrible.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 1))
talkEntry:addCondition(condition_item(2529, "all", "<", 10, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt ihr die Honigwaben schon? Ohne diese ist das Kuchenbacken unm�glich. Das w�re schrecklich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 1))
talkEntry:addCondition(condition_item(2529, "all", "<", 10, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Do you have the honeycombs yet? Without it the baking stalls, which would be horrible.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 1))
talkEntry:addCondition(condition_item(2529, "all", "<", 10, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Habt ihr die Honigwaben schon? Ohne diese ist das Kuchenbacken unm�glich. Das w�re schrecklich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 1))
talkEntry:addCondition(condition_item(2529, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(2529, 10, nil))
talkEntry:addConsequence(consequence_quest(500, "=", 2))
talkEntry:addResponse("Great! Now the cake baking can go ahead as scheduled. You are rewarded five silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 1))
talkEntry:addCondition(condition_item(2529, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(2529, 10, nil))
talkEntry:addConsequence(consequence_quest(500, "=", 2))
talkEntry:addResponse("Gro�artig! Das Kuchenbacken kann jetzt weitergehen wie geplant. Du erh�lst f�nf Silber als Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger II"))
talkEntry:addConsequence(consequence_quest(500, "=", 3))
talkEntry:addResponse("The forest rabbits are destroying the flowers! Please be a good ranger and reduce the population by ten Elstree Forest rabbits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Elsbaum-Waldl�ufer II"))
talkEntry:addConsequence(consequence_quest(500, "=", 3))
talkEntry:addResponse("Die Kaninchen machen die Blumen kaputt! Seid ein guter Wildh�ter und reduziert den Bestand von Kaninchen im Elsbaumwald um zehn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger II"))
talkEntry:addConsequence(consequence_quest(500, "=", 3))
talkEntry:addResponse("The forest rabbits are destroying the flowers! Please be a good ranger and reduce the population by ten Elstree Forest rabbits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Elsbaum-Waldl�ufer II"))
talkEntry:addConsequence(consequence_quest(500, "=", 3))
talkEntry:addResponse("Die Kaninchen machen die Blumen kaputt! Seid ein guter Wildh�ter und reduziert den Bestand vonKaninchen im Elsbaumwald um zehn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, ">", 2))
talkEntry:addCondition(condition_quest(500, "<", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you reduced the forest rabbit population yet? We can't let them destroy all the flowers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, ">", 2))
talkEntry:addCondition(condition_quest(500, "<", 13))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt ihr den Kaninchenbestand schon reduziert? Wir k�nnen sie nicht alle Blumen zerst�ren lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, ">", 2))
talkEntry:addCondition(condition_quest(500, "<", 13))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you reduced the forest rabbit population yet? We can't let them destroy all the flowers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, ">", 2))
talkEntry:addCondition(condition_quest(500, "<", 13))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Habt ihr den Kaninchenbestand schon reduziert? Wir k�nnen sie nicht alle Blumen zerst�ren lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, ">", 12))
talkEntry:addCondition(condition_quest(500, "<", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(500, "=", 29))
talkEntry:addResponse("The flowers are safe now. You are rewarded ten silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, ">", 12))
talkEntry:addCondition(condition_quest(500, "<", 29))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(500, "=", 29))
talkEntry:addResponse("Die Blumen sind gerettet. Du erh�lst zehn Silberst�cke als Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger III"))
talkEntry:addConsequence(consequence_quest(500, "=", 30))
talkEntry:addResponse("There is a disturbance at the Altar of Nargun, please check it out.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 29))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Waldl�ufer des Elsbaumwaldes III"))
talkEntry:addConsequence(consequence_quest(500, "=", 30))
talkEntry:addResponse("Etwas ist ungew�hnlich an Narguns Altar. K�nnt ihr Euch das ansehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 29))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger III"))
talkEntry:addConsequence(consequence_quest(500, "=", 30))
talkEntry:addResponse("There is a disturbance at the Altar of Nargun, please check it out.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 29))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Waldl�ufer des Elsbaumwaldes III"))
talkEntry:addConsequence(consequence_quest(500, "=", 30))
talkEntry:addResponse("Etwas ist ungew�hnlich an Narguns Altar. K�nnt ihr Euch das ansehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 30))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you looked over the altar yet? Something is wrong there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 30))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt ihr den Altar schon kontrolliert? Etwas Seltsames geht dort vor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 30))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you looked over the altar yet? Something is wrong there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 30))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Habt ihr den Altar schon kontrolliert? Etwas Seltsames geht dort vor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded an apple pie."))
talkEntry:addConsequence(consequence_item(353, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(500, "=", 32))
talkEntry:addResponse("#me giggles lightly. 'Oh it seems Nargun was just playing some jokes. Thank you for checking it out.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 31))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Apfelkuchen."))
talkEntry:addConsequence(consequence_item(353, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(500, "=", 32))
talkEntry:addResponse("#me kichert leise. 'Oh es scheint als ob Nargun nur einen Streich im Sinne hatte. Danke daf�r, dass ihr es euch angesehen habt.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 32))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger IV"))
talkEntry:addConsequence(consequence_quest(500, "=", 33))
talkEntry:addResponse("Oh great, you're here. We need some flowers for the arrangements. Please bring me twenty flamegoblet blossoms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 32))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Waldl�ufer des Elsbaumwaldes IV"))
talkEntry:addConsequence(consequence_quest(500, "=", 33))
talkEntry:addResponse("Oh, gut, dass Ihr da seid! Wir brauchen Blumen f�r den Tischschmuck. Bitte bringt mir 20 Flammenkelchbl�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 32))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Elstree Ranger IV"))
talkEntry:addConsequence(consequence_quest(500, "=", 33))
talkEntry:addResponse("Oh great, you're here. We need some flowers for the arrangements. Please bring me twenty flamegoblet blossoms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 32))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Waldl�ufer des Elsbaumwaldes IV"))
talkEntry:addConsequence(consequence_quest(500, "=", 33))
talkEntry:addResponse("Oh, gut, dass Ihr da seid! Wir brauchen Blumen f�r den Tischschmuck. Bitte bringt mir 20 Flammenkelchbl�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 33))
talkEntry:addCondition(condition_item(137, "all", "<", 20, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Have you found enough flowers yet? We need them urgently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 33))
talkEntry:addCondition(condition_item(137, "all", "<", 20, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt Ihr schon genung Blumen gefunden? Wir brauchen sie dringend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 33))
talkEntry:addCondition(condition_item(137, "all", "<", 20, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Have you found enough flowers yet? We need them urgently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 33))
talkEntry:addCondition(condition_item(137, "all", "<", 20, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Habt Ihr schon genung Blumen gefunden? Wir brauchen sie dringend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 33))
talkEntry:addCondition(condition_item(137, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded twenty silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(137, 20, nil))
talkEntry:addConsequence(consequence_quest(500, "=", 34))
talkEntry:addResponse("Thank you for the flowers. Here's a little reward for your help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 33))
talkEntry:addCondition(condition_item(137, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zwanzig Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(137, 20, nil))
talkEntry:addConsequence(consequence_quest(500, "=", 34))
talkEntry:addResponse("Danke f�r die Blumen. Hier eine kleine Belohnung f�r Euere M�hen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("There is no more work for you, thank you for the assistance!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 34))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es gibt nichts mehr zu tun. Danke f�r Eure Unterst�tzung!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 34))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("There is no more work for you, thank you for the assistance!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(500, "=", 34))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Es gibt nichts mehr zu tun. Danke f�r Eure Unterst�tzung!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Oh, I am a ranger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Oh, ich bin eine Waldl�uferin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Oh, I am a ranger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Oh, ich bin eine Waldl�uferin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith needed more Rangers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith brauchte mehr Waldl�ufer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Listen to the fairies sing!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("H�rt die Feen singen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fox den")
talkEntry:addResponse("In the fox den one can find cubs.")
talkEntry:addResponse("There is a fox den in the north.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fox")
talkEntry:addResponse("One day, the little cubs will hunt the rabbits.")
talkEntry:addResponse("My fox vixen has cubs.")
talkEntry:addResponse("If you are quiet about it, I'll let you say good night to the foxes here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("feed")
talkEntry:addResponse("You will learn a lot about animals by feeding them.")
talkEntry:addResponse("I feed the cubs so that they can one day hunt the rabbits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rabbit")
talkEntry:addResponse("They are so cute! If only they wouldn't nibble down all my flowers.")
talkEntry:addResponse("The rabbits breed like ... well, like rabbits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fuchsbau")
talkEntry:addResponse("Im dem Fuchsbau hier kann man Welpen beobachten.")
talkEntry:addResponse("N�rdlich von hier ist ein Fuchsbau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fuchs")
talkEntry:addResponse("Eines Tages werden die kleinen F�chse die Kaninchen jagen.")
talkEntry:addResponse("Meine F�chsin hat Junge.")
talkEntry:addResponse("Wer leise ist, kann hier den F�chsen gute Nacht sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Futter")
talkEntry:addTrigger("f�tter")
talkEntry:addResponse("F�ttere ruhig mal ein paar Tiere, du lernst sie dabei kennen.")
talkEntry:addResponse("Ich f�ttere die jungen F�chse damit sie sp�ter mal die Kaninchen jagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kaninchen")
talkEntry:addResponse("Sind die nicht s��? Wen sie nicht immer alle Blumen abknabbern w�rden.")
talkEntry:addResponse("Die Kaninchen vermehren sich wie ... na eben wie Kaninchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ranger")
talkEntry:addResponse("My job is to protect the forest and its inhabitants.")
talkEntry:addResponse("All of Ushara's creatures are under my protection.")
talkEntry:addResponse("My job is important to the life of the forest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Waldl�ufer")
talkEntry:addResponse("Meine Aufgabe ist es, den Wald und seine Bewohner zu sch�tzen.")
talkEntry:addResponse("Alle Gesch�pfe Usharas stehen unter meinem Schutz.")
talkEntry:addResponse("Meine Aufgabe ist wichtig f�r das Leben des Waldes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elstree")
talkEntry:addResponse("Elstree Forest is the home of the fairies.")
talkEntry:addResponse("Many plants and animals are at home here.")
talkEntry:addResponse("I find peace in the Elstree Forest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree")
talkEntry:addTrigger("Elsbaum")
talkEntry:addResponse("Der Elsbaumwald ist die Heimat der Feen.")
talkEntry:addResponse("Viele Pflanzen und Tiere sind hier zu Hause.")
talkEntry:addResponse("Ich finde Frieden im Elsbaumwald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fairies")
talkEntry:addResponse("Fairies are delightfully fun creatures.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fee")
talkEntry:addResponse("Feen sind herrlich lustige Kreaturen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Flower")
talkEntry:addResponse("The forest is filled with flowers that are not only pretty but useful.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blume")
talkEntry:addResponse("Der Wald ist gef�llt mit Blumen, die nicht nur sch�n, sondern auch n�tzlich sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("spider")
talkEntry:addResponse("Eek!! Don't tell anyone but spiders scare me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("spinne")
talkEntry:addResponse("Eek! Nicht weitersagen, aber Spinnen machen mir Angst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elf")
talkEntry:addResponse("Being an elf makes one closer to nature and Ushara.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elf")
talkEntry:addResponse("Ein Elf zu sein bedeutet, dass man n�her an der Natur und Ushara ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage of Runewick is an elf and understands the balance of nature.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier Runewicks ist ein Elf und versteht das Gleichgewicht der Natur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage of Runewick is an elf and understands the balance of nature.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier Runewick ist ein Elf und versteht das Gleichgewicht der Natur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The scholars of Runewick rarely venture into the forest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Gelehrten Runewicks wagen sich selten in den Wald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don is more concerned with profit than the forest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don ist mehr an Gewinn interessiert als an W�ldern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is the land of riches, to me the real riches are here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist das Land der Reicht�mer. F�r mich liegen die wahren Reicht�mer aber hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen has a lovely flower garden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Die K�nigin hat einen sch�nen Blumengarten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen has a lovely flower garden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die K�nigin hat einen sch�nen Blumengarten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I think honour is serving the forest, however they say Cadomyr is the land of honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich denke, Ehre bedeutet dem Wald zu dienen, aber sie sagen Cadomyr ist das Land der Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("In Elstree forest, gifts of the gods are everywhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Im Elsbaumwald sind �berall die Gaben der G�tter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("May Oldra continue to bless the forest!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("M�ge Oldra weiterhin den Wald segnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara blessed us with this rich and fertile land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara segnete uns mit diesem reichen und fruchtbaren Land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I do not sell or buy anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe und verkaufe nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("The forest is the most peaceful place.")
talkEntry:addResponse("Save a fairy and bring extra cakes.")
talkEntry:addResponse("I love my work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Der Wald ist der friedlichste Ort.")
talkEntry:addResponse("Rettet eine Fee und bringt mehr Kuchen.")
talkEntry:addResponse("Ich liebe meine Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Mel")
talkEntry:addTrigger("Melanie")
talkEntry:addResponse("Mel is my name!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mel")
talkEntry:addTrigger("Melanie")
talkEntry:addResponse("Mel ist mein Name!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Seht euch nur die Blumen an!", "Enjoy the flowers!")
talkingNPC:addCycleText("Rettet ein Leben...schenkt einer Fee einen Kuchen!", "Save a life... feed a fairy a cake today!")
talkingNPC:addCycleText("Haltet ein, atmet durch, geniesst die Sch�nheit.", "Stop, take a breath, and enjoy the splendour.")
talkingNPC:addCycleText("#me l�chelt und spielt entspannt eine Melodie auf der Harfe.", "#me smiles and relaxes, playing some tunes on a harp.")
talkingNPC:addCycleText("Besch�digt nicht die Blumen der Feen. Sie sorgen sich um jedes einzelne Bl�tenblatt.", "Don't touch the fairy's flowers, they care for each and�every petal.")
talkingNPC:addCycleText("#me scherzt mit vorbeifliegenden Feen, indem sie Mehlstaub in deren Richtung bl�st.", "#me joins in the play by blowing some flour out of her hand at a couple of passing fairies.")
talkingNPC:addCycleText("#me stellt einen klebrigen Kuchen ab, der mit Holunder- und Blaubeeren gef�llt ist. Sie gie�t Honig dar�ber und wartet offenbarauf die Ankunft einiger Feen.", "#me sets out a gooey cake filled with elder berries and black berries, pours honey over the top, and sits back, obviously waiting for the fairies to arrive.")
talkingNPC:addCycleText("#me beobachtet die blauen Lichter, die wie der Tanz von Feen wirken - ein beeindruckendes Spiel von Farben.", "#me watches the blue lights which resemble a dance of fairies, making it look like an explosion of colour.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Waldl�uferin Melanie Meadowlark.", "This NPC is the ranger Melanie Meadowlark.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 356)
mainNPC:setEquipment(3, 362)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 2780)
mainNPC:setEquipment(6, 64)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2114)
mainNPC:setEquipment(10, 698)
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
