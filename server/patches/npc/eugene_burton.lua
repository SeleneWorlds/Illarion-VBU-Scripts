local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local consequence_talkstate = require("npc.base.consequence.talkstate")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(-1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the poacher Eugene Burton. Keywords: Hello, quest, poacher, animals."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Wilderer Eugene Burton. Schl�sselw�rter: Hallo, Quest, Wilderer, Tiere."))
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
talkEntry:addResponse("Shh! Not so loud! You'll scare away my game!")
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
talkEntry:addResponse("Psst, nicht so laut, ihr verscheucht ja das ganze Wild.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Shh! Not so loud! You'll scare away my game!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Psst, nicht so laut, ihr verscheucht ja das ganze Wild.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go forth with Malachin's blessing. May you never starve.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Geht mit Malachins Segen. Auf dass ihr nie Hunger leiden m��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Go forth with Malachin's blessing. May you never starve")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Geht mit Malachins Segen. Auf dass ihr nie Hunger leiden m��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'd feel much better if you could help me a bit, hunting.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich w�rde mich weit besser f�hlen, wenn ihr mir bei der Jagd helfen k�nntet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Eugene Burton, father to four hungry mouths. Feeding those mouths has become so difficult these days...")
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
talkEntry:addResponse("Ich bin Eugene Burton, Vater von vier hungrigen M�ulern. Diese zu stopfen ist dieser Tage wirklich schwierig geworden.")
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
talkEntry:addCondition(condition_quest(4, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher I"))
talkEntry:addConsequence(consequence_quest(4, "=", 1))
talkEntry:addResponse("My family is starving and without food, we won't survive the next winter. Please, will you head for Elstree forest, hunt half a dozen rabbits and bring me their meat?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer I"))
talkEntry:addConsequence(consequence_quest(4, "=", 1))
talkEntry:addResponse("Meine Familie ist am verhungern und ohne etwas zu essen �berleben wir den Winter nicht. Bitte, k�nntet ihr bitte in den Elsbaumwald gehen, ein halbes Dutzend Kaninchen jagen und mir ihr Fleisch bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher I"))
talkEntry:addConsequence(consequence_quest(4, "=", 1))
talkEntry:addResponse("My family is starving and without food, we won't survive the next winter. Please, will you head for Elstree forest, hunt half a dozen rabbits and bring me their meat?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer I"))
talkEntry:addConsequence(consequence_quest(4, "=", 1))
talkEntry:addResponse("Meine Familie ist am verhungern und ohne etwas zu essen �berleben wir den Winter nicht. Bitte, k�nntet ihr bitte in den Elsbaumwald gehen, ein halbes Dutzend Kaninchen jagen und mir ihr Fleisch bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 0))
talkEntry:addCondition(condition_quest(4, "<", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh, please, will you hunt half a dozen rabbits in the Elstree forest? My children beg for food, every day, and I have to disappoint them over and over again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 0))
talkEntry:addCondition(condition_quest(4, "<", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh, w�rdet ihr bitte ein halbes Dutzend Kaninchen im Elsbaumwald jagen gehen? Meine Kinder flehen um etwas zu essen und jeden Tag muss ich sie aufs Neue entt�uschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 0))
talkEntry:addCondition(condition_quest(4, "<", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Oh, please, will you hunt half a dozen rabbits in the Elstree forest? My children beg for food, every day, and I have to disappoint them over and over again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 0))
talkEntry:addCondition(condition_quest(4, "<", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Oh, w�rdet ihr bitte ein halbes Dutzend Kaninchen im Elsbaumwald jagen gehen? Meine Kinder flehen um etwas zu essen und jeden Tag muss ich sie aufs Neue entt�uschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 7))
talkEntry:addCondition(condition_item(553, "all", "<", 6, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Did you perhaps forget the rabbit meat in the forest? Please, quick, fetch it. My children will thank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 7))
talkEntry:addCondition(condition_item(553, "all", "<", 6, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Habt ihr etwa das Fleisch der Kaninchen im Wald vergessen? Bitte, lauft, und holt es! Meine Kinder werden es euch danken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 7))
talkEntry:addCondition(condition_item(553, "all", "<", 6, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Did you perhaps forget the rabbit meat in the forest? Please, quick, fetch it. My children will thank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 7))
talkEntry:addCondition(condition_item(553, "all", "<", 6, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Habt ihr etwa das Fleisch der Kaninchen im Wald vergessen? Bitte, lauft, und holt es! Meine Kinder werden es euch danken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 7))
talkEntry:addCondition(condition_item(553, "all", ">", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 250 arrows."))
talkEntry:addConsequence(consequence_deleteitem(553, 6, nil))
talkEntry:addConsequence(consequence_item(64, 250, 333, nil))
talkEntry:addConsequence(consequence_quest(4, "=", 8))
talkEntry:addResponse("Thank you very, very much for the food. The rabbit will silence the bellies of my children, at least for some days. Take this quiver of arrows, it will help you when hunting.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 7))
talkEntry:addCondition(condition_item(553, "all", ">", 5, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 250 Pfeile."))
talkEntry:addConsequence(consequence_deleteitem(553, 6, nil))
talkEntry:addConsequence(consequence_item(64, 250, 333, nil))
talkEntry:addConsequence(consequence_quest(4, "=", 8))
talkEntry:addResponse("Vielen, vielen Dank. Dieses Fleisch wird das Magenknurren meiner Kinder wenigstens f�r ein paar Tage bes�nftigen. Hier, nehmt diesen K�cher voll Pfeile, sie werden euch auf der Jagd gute Dienste erweisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher II"))
talkEntry:addConsequence(consequence_quest(4, "=", 9))
talkEntry:addResponse("Well, to survive the winter, it takes more than a rabbit. I assume the meat of a dozen deer from Elstree forest will ensure my children survive. Will you save their lives?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer II"))
talkEntry:addConsequence(consequence_quest(4, "=", 9))
talkEntry:addResponse("Um den Winter zu �berleben braucht man mehr als ein St�ck Fleisch. Ich sch�tze, dass das Fleisch von einem Dutzend Hirsch aus dem Elsbaumwald wenigstens meine Kinder am Leben halten wird. Werdet ihr ihre Leben retten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher II"))
talkEntry:addConsequence(consequence_quest(4, "=", 9))
talkEntry:addResponse("Well, to survive the winter, it takes more than a rabbit. I assume the meat of a dozen deer from Elstree forest will ensure my children survive. Will you save their lives?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer II"))
talkEntry:addConsequence(consequence_quest(4, "=", 9))
talkEntry:addResponse("Um den Winter zu �berleben braucht man mehr als ein St�ck Fleisch. Ich sch�tze, dass das Fleisch von einem Dutzend Hirsch aus dem Elsbaumwald wenigstens meine Kinder am Leben halten wird. Werdet ihr ihre Leben retten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 8))
talkEntry:addCondition(condition_quest(4, "<", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You can find deer in Elstree forest. Please, save my family from starvation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 8))
talkEntry:addCondition(condition_quest(4, "<", 21))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr k�nnt Hirsch im Elsbaumwald finden. Bitte, rettet meine Familie vor dem Verhungern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 8))
talkEntry:addCondition(condition_quest(4, "<", 21))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You can find deer in Elstree forest. Please, save my family from starvation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 8))
talkEntry:addCondition(condition_quest(4, "<", 21))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ihr k�nnt Hirsch im Elsbaumwald finden. Bitte, rettet meine Familie vor dem Verhungern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 21))
talkEntry:addCondition(condition_item(552, "all", "<", 12, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Slaying animals and leaving the meat for the carrion crows? How dare you! I beg you, on behalf of my children, every piece of meat can save a human's life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 21))
talkEntry:addCondition(condition_item(552, "all", "<", 12, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Viele Tiere get�tet, aber das Fleisch den Kr�hen �berlassen? Ist dem so! Ich flehe euch an, im Namen meiner Kinder, jeder Bissen Fleisch kann ein Menschenleben retten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 21))
talkEntry:addCondition(condition_item(552, "all", "<", 12, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Slaying animals and leaving the meat for the carrion crows? How dare you! I beg you, on behalf of my children, every piece of meat can save a human's life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 21))
talkEntry:addCondition(condition_item(552, "all", "<", 12, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Viele Tiere get�tet, aber das Fleisch den Kr�hen �berlassen? Ist dem so! Ich flehe euch an, im Namen meiner Kinder, jeder Bissen Fleisch kann ein Menschenleben retten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 21))
talkEntry:addCondition(condition_item(552, "all", ">", 11, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a golden ring, a copper goblet, an emerald amulet and 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(552, 12, nil))
talkEntry:addConsequence(consequence_item(235, 1, 666, nil))
talkEntry:addConsequence(consequence_item(1840, 1, 666, nil))
talkEntry:addConsequence(consequence_item(62, 1, 666, nil))
talkEntry:addConsequence(consequence_quest(4, "=", 22))
talkEntry:addResponse("How great! You brought enough meat for my whole family. Here, I... found a bag with precious things. You can have it as a reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 21))
talkEntry:addCondition(condition_item(552, "all", ">", 11, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen goldenen Ring, einen Kupferkelch, ein Smaragdamulet und 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(552, 12, nil))
talkEntry:addConsequence(consequence_item(235, 1, 666, nil))
talkEntry:addConsequence(consequence_item(1840, 1, 666, nil))
talkEntry:addConsequence(consequence_item(62, 1, 666, nil))
talkEntry:addConsequence(consequence_quest(4, "=", 22))
talkEntry:addResponse("Gro�artig! Ihr habt genug Fleisch f�r meine ganze Familie mitgebracht. Hier, ich habe diesen Beutel mit kostbaren Dingen... gefunden. Nehmt ihn als Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher III"))
talkEntry:addConsequence(consequence_quest(4, "=", 23))
talkEntry:addResponse("Recently, a pack of wolves entered Elstree forest. They hunt all the animals I need to feed my children. Will you stop the pack? There are at least half a dozen of them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 22))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer III"))
talkEntry:addConsequence(consequence_quest(4, "=", 23))
talkEntry:addResponse("Seit kurzem treibt ein Wolfsudel sein Unwesen im Elsbaumwald. Die W�lfe rei�en all die Tiere, die ich brauche, um meine Kinder zu ern�hren. Werdet ihr das Rudel niederstrecken? Ich habe mindestens ein halbes Dutzend von ihnen gesehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 22))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher III"))
talkEntry:addConsequence(consequence_quest(4, "=", 23))
talkEntry:addResponse("Recently, a pack of wolves entered Elstree forest. They hunt all the animals I need to feed my children. Will you stop the pack? There are at least half a dozen of them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 22))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer III"))
talkEntry:addConsequence(consequence_quest(4, "=", 23))
talkEntry:addResponse("Seit kurzem treibt ein Wolfsudel sein Unwesen im Elsbaumwald. Die W�lfe rei�en all die Tiere, die ich brauche, um meine Kinder zu ern�hren. Werdet ihr das Rudel niederstrecken? Ich habe mindestens ein halbes Dutzend von ihnen gesehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 22))
talkEntry:addCondition(condition_quest(4, "<", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The wolf pack still roams the Elstree forest. Please, slay them all to safeguard the future of my children.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 22))
talkEntry:addCondition(condition_quest(4, "<", 29))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Das Wolfsrudel treibt noch immer sein Unwesen im Elsbaumwald. Bitte streckt sie alle nieder um die Zukunft meiner Kinder zu sichern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 22))
talkEntry:addCondition(condition_quest(4, "<", 29))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("The wolf pack still roams the Elstree forest. Please, slay them all to safeguard the future of my children.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 22))
talkEntry:addCondition(condition_quest(4, "<", 29))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Das Wolfsrudel treibt noch immer sein Unwesen im Elsbaumwald. Bitte streckt sie alle nieder um die Zukunft meiner Kinder zu sichern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a long bow and 100 poisoned arrows."))
talkEntry:addConsequence(consequence_item(2708, 1, 777, nil))
talkEntry:addConsequence(consequence_item(549, 100, 333, nil))
talkEntry:addConsequence(consequence_quest(4, "=", 30))
talkEntry:addResponse("Words cannot express how grateful I am. Take my very own bow, now that the wolves are gone, I can rely on my spear again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 29))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Langbogen und 100 vergiftete Pfeile."))
talkEntry:addConsequence(consequence_item(2708, 1, 777, nil))
talkEntry:addConsequence(consequence_item(549, 100, 333, nil))
talkEntry:addConsequence(consequence_quest(4, "=", 30))
talkEntry:addResponse("Worte k�nnen nicht beschreiben, wie dankbar ich bin. Nehmt meine Bogen, nun, da die W�lfe fort sind, kann ich mich wieder auf meinen Speer verlassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 30))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher IV"))
talkEntry:addConsequence(consequence_quest(4, "=", 31))
talkEntry:addResponse("You may wonder why I didn't set out to hunt on my own. The self proclaimed guardians of the forest do not appreciate my deeds. I'd welcome if you'd make the elven guardian... disappear.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 30))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer IV"))
talkEntry:addConsequence(consequence_quest(4, "=", 31))
talkEntry:addResponse("Ihr m�gt euch fragen, warum ich noch nicht selbst zur Jagd ausgezogen bin. Die selbsternannten W�chter des Waldes hei�en nicht gut, was ich tue. Ich w�rde es begr��en, wenn ihr die Elfenwache... verschwinden lassen w�rdet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 30))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Poacher IV"))
talkEntry:addConsequence(consequence_quest(4, "=", 31))
talkEntry:addResponse("You may wonder why I didn't set out to hunt on my own. The self proclaimed guardians of the forest do not appreciate my deeds. I'd welcome if you'd make the elven guardian... disappear.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 30))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Wilderer IV"))
talkEntry:addConsequence(consequence_quest(4, "=", 31))
talkEntry:addResponse("Ihr m�gt euch fragen, warum ich noch nicht selbst zur Jagd ausgezogen bin. Die selbsternannten W�chter des Waldes hei�en nicht gut, was ich tue. Ich w�rde es begr��en, wenn ihr die Elfenwache... verschwinden lassen w�rdet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 30))
talkEntry:addCondition(condition_quest(4, "<", 32))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("There are still a pair of keen eyes in the Elstree forest that won't let me hunt what I need. Please, could you... shut those eyes?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 30))
talkEntry:addCondition(condition_quest(4, "<", 32))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Es gibt immernoch ein Paar aufmerksamer Augen im Elsbaumwald, welches mich nicht das jagen l�sst, was ich brauche. K�nntet ihr bitte diese Augen... f�r immer schlie�en?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 30))
talkEntry:addCondition(condition_quest(4, "<", 32))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("There are still a pair of keen eyes in the Elstree forest that won't let me hunt what I need. Please, could you... shut those eyes?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, ">", 30))
talkEntry:addCondition(condition_quest(4, "<", 32))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Es gibt immernoch ein Paar aufmerksamer Augen im Elsbaumwald, welches mich nicht das jagen l�sst, was ich brauche. K�nntet ihr bitte diese Augen... f�r immer schlie�en?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 32))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ruby ring and a magical ruby."))
talkEntry:addConsequence(consequence_item(68, 1, 888, nil))
talkEntry:addConsequence(consequence_item(3521, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(4, "=", 33))
talkEntry:addResponse("Hooray! No elven rapscallion will keep me from hunting anymore! Of course, just to feed my children... However, take this ring, I have had it long enough.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 32))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Rubinring und einen magischen Rubin."))
talkEntry:addConsequence(consequence_item(68, 1, 888, nil))
talkEntry:addConsequence(consequence_item(3521, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(4, "=", 33))
talkEntry:addResponse("Hurra! Kein elfischer Halunke wird sich mir nun noch in den Weg stellen, wenn ich jagen gehen... nat�rlich, um meine Kinder zu ern�hren, versteht sich. Hier, nehmt diesen Ring, er hat mir lange genug geh�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 33))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("My friend, you helped me and my family more than enough. Thank you and may Malach�n bless you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 33))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Mein Freund, ihr habt mir und meiner Familie mehr als genug geholfen. Habt dank und m�ge Malach�n euch segnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 33))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("My friend, you helped me and my family more than enough. Thank you and may Malach�n bless you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(4, "=", 33))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Mein Freund, ihr habt mir und meiner Familie mehr als genug geholfen. Habt dank und m�ge Malach�n euch segnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("People call me a poacher, because they don't like what I do. But what do I do? I take only what my family needs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Manche nennen mich einen Wilderer, denn ihnen misf�llt, was ich tue. Aber was mache ich schon - ich nehme nur so viel, wie meine Familie ben�tigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("People call me a poacher, because they don't like what I do. But what do I do? I take only what my family needs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Manche nennen mich einen Wilderer, denn ihnen misf�llt, was ich tue. Aber was mache ich schon - ich nehme nur so viel, wie meine Familie ben�tigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Sorry, I am a simple poach... poor man, I know nothing about the world across the ocean.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Entschuldigt, ich bin ein einfacher Wilder... Weidmann. Ich wei� nichts �ber die L�nder jenseits des Ozeans.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("My family is starving. Perhaps you can help me feed them?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Meine Familie ist am verhungern. Vielleicht k�nnt uns helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("poacher")
talkEntry:addTrigger("hunter")
talkEntry:addResponse("People call me a poacher, because they don't like what I do. But what do I do? I take only what my family needs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wilderer")
talkEntry:addTrigger("j�ger")
talkEntry:addTrigger("Weidmann")
talkEntry:addResponse("Manche nennen mich einen Wilderer, denn ihnen misf�llt, was ich tue. Aber was mache ich schon - ich nehme nur so viel, wie meine Familie ben�tigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("valandil")
talkEntry:addTrigger("elensar")
talkEntry:addTrigger("elf")
talkEntry:addTrigger("elfen")
talkEntry:addTrigger("elves")
talkEntry:addResponse("Wicked elves! They think that the life of an animal is worth much more than the lives of my four children. Valandil Elensar, the self proclaimed guardian of the Elstree forest, is the worst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("valandil")
talkEntry:addTrigger("elensar")
talkEntry:addTrigger("elf")
talkEntry:addTrigger("elfen")
talkEntry:addTrigger("elves")
talkEntry:addResponse("Vermaledeite Elfen! Sie sch�tzen das Leben eines Tieres mehr als das Leben meiner vier Kinder. Valandial Elensar, der selbsternannte H�ter des Elsbaumwaldes, ist der schlimmste von allen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("Legal, illegal... I don't give a damn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Legal, illegal... Schei�egal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("animal")
talkEntry:addTrigger("game")
talkEntry:addResponse("There are countless animals in the Elstree forest, waiting for me and my bow... boars, bulls and, sadly, even wolves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tier")
talkEntry:addTrigger("Beute")
talkEntry:addResponse("Es gibt im Elsbaumwald unz�hlige Tiere, die nur auf mich und meinen Bogen warten: Wildschweine, Rinder und leider auch W�lfe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("forest")
talkEntry:addTrigger("woods")
talkEntry:addTrigger("Elstree")
talkEntry:addResponse("The Elstree forest is a good place to hunt, unfortunately wolves know that too. I still wonder what an Elstree is, actually.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wald")
talkEntry:addTrigger("Elsbaum")
talkEntry:addResponse("Der Elsbaumwald ist ein gutes Jagdgebiet. Leider haben das auch schon die W�lfe begriffen. Ich frag mich allerdings schon l�nger, was eigentlich genau ein Elsbaum sein soll.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rabbit")
talkEntry:addTrigger("bunny")
talkEntry:addResponse("Catching those rabbits is more difficult than you might think. They are damn fast!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hase")
talkEntry:addTrigger("H��chen")
talkEntry:addTrigger("Kaninchen")
talkEntry:addResponse("Hasen zu fangen ist schwerer, als man denkt; sie sind verdammt schnell!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reh")
talkEntry:addTrigger("Hirsch")
talkEntry:addResponse("Es gibt immer weniger Dammhirsche im Elsbaumwald. Ich frage mich nur, warum...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stag")
talkEntry:addTrigger("Deer")
talkEntry:addResponse("Fewer and fewer deer can be found in the Elstree forest. I wonder why...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("boar")
talkEntry:addResponse("Boars can become pretty angry, especially if they have piglets.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wildschwein")
talkEntry:addResponse("Wilschweine k�nnen verdammt gef�hrlich werden, vor allem, wenn sie Frischlinge haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bull")
talkEntry:addResponse("Never confront a bull directly, sneak up from behind and then...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rind")
talkEntry:addResponse("N�hert euch Rindern nicht einfach von vorne. Schleicht euch von hinten an und dann...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wolf")
talkEntry:addResponse("Wolves! They prey on what feeds my children. Just to feed their blasted cubs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wolf")
talkEntry:addResponse("W�lfe! Sie machen Jagd auf das, was meine Kinder am Leben erh�lt. Und das nur, um ihre eigene Brut zu f�ttern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wolves")
talkEntry:addResponse("Wolves! They prey on what feeds my children. Just to feed their blasted cubs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("W�lfe")
talkEntry:addTrigger("Woelfe")
talkEntry:addResponse("W�lfe! Sie machen Jagd auf das, was meine Kinder am Leben erh�lt. Und das nur, um ihre eigene Brut zu f�ttern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Father")
talkEntry:addTrigger("children")
talkEntry:addTrigger("family")
talkEntry:addResponse("My family starves, and all I can do is to hunt. However, these insane elves prefer to see humans die, rather than animals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Vater")
talkEntry:addTrigger("Kinder")
talkEntry:addTrigger("Familie")
talkEntry:addResponse("Meine Familie ist am verhungern und alles, was ich tun kann, ist zu Jagen. Aber diese vermaledeiten Elfen haben es lieber wenn Menschen statt Tiere sterben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fur")
talkEntry:addResponse("Hush! I do not hunt to get fur... but if I end the life of an animal to feed my family, do you expect me to leave behind what yields good coin?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fell")
talkEntry:addResponse("Pah! Ich jage nicht der Felle wegen... nunja, wenn ich schon das Leben eines Tieres beenden muss, um meine Famlilie zu ern�hren, sollte ich das zur�cklassen, womit man ordentlich abkassieren kann?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The mages have always dictated what goes on in Runewick. I fear this is never going to change. They don't give a damn about the needs of the common people.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Immer schon haben die Magier in Runewick den Ton angegeben. Ich f�rchte, dies wird sich nie �ndern; die Bed�rfnisse der einfachen Leute sind denen egal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The mages have always dictated what goes on in Runewick. I fear this is never going to change. They don't give a damn about the needs of the common people.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Immer schon haben die Magier in Runewick den Ton angegeben. Ich f�rchte, dies wird sich nie �ndern; die Bed�rfnisse der einfachen Leute sind denen egal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick, ha! The self proclaimed protectors of everything. They'd better protect themselves from my arrows!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick, ha! Die selbsternannten H�ter von allem m�glichen. Die sollten sich besser vor meinen Pfeilen h�ten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don of Galmair scares me. I prefer to stay out of his sight.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don von Galmair macht mir Angst. Ich gehe im lieber aus dem Weg.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Oh, Galmair, a good place to sell fur for good coin. Uhm, to buy food... of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Oh, Galmair, das ist ein guter Ort, um ordentlich f�r Felle abzukassieren. �h, um Essen zu kaufen... meine ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("She is... hot. I swear, I love my wife, but I can't fight my dreams.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Sie ist... hei�. Ich schw�re, dass ich meine Frau liebe, aber f�r seine Tr�ume kann man nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("She is... hot. I swear, I love my wife, but I can't fight my dreams.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Sie ist... hei�. Ich schw�re, dass ich meine Frau liebe, aber f�r seine Tr�ume kann man nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is a bad place for hunters. Not much to hunt there, except sand and scorpions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist kein guter Ort f�r die Jagd. Man kann dort nicht viel jagen, au�er nach Sand und Skorpionen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I heard a lot about Albar and I await eagerly for the day I can travel there, but I doubt this day will ever come... I am too poor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich habe schon eine Menge �ber Albar geh�rt und ich warte sehns�chtig auf den Tag, an dem ich dort hinreisen kann. Aber ich glaube nicht, dass dieser Tage jemals kommt, so arm bin ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Gynk is a pool of sins, but aren't we all sinnners one day?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Gynk ist ein S�ndenpfuhl. Aber s�ndigen wir nicht alle einmal?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Noble folk are living there, but also poor people, and nobody really cares about them!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Hochwohlgeborenes Volk lebt dort; aber auch arme Leute wie ich. Und niemanden schert es, wie es denen ergeht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("The gods don't feed my family, I do, but a little blessing never hurts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Die G�tter ern�hren meine Familie nicht, das muss ich schon selbst tun. Ihr Segen schadet dabei aber sicher nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("If I don't get enough food for my family, Cherga will await them...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Wenn ich nicht bald etwas zu Essen f�r meine Familie auftreibe wird Cherga auf sie warten...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Praise Malach�n, the God of all hunters. May he guide my bow.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Lobet Malach�n, den Gott der Jagd. M�ge er meinen Bogen f�hren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra didn't do me any good. So, she is a goddess, but not my goddess if you know what I mean.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra hat mir noch nie etwas Gutes getan. Sie bleibt eine G�ttin, aber eben nicht meine G�ttin, wir verstehen uns?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("If I had something for trading, I'd sell everything to feed my family, I swear.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("H�tte ich etwas zum handeln, so w�rde ich alles ver�u�ern, um meine Familie zu ern�hren. Das schw�re ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I don't have the time to chat with you when my family is starving. Perhaps you can help me with a task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich habe nicht die Zeit, mit euch zu plaudern; meine Familie ist am Verhungern. Vielleicht k�nnt ihr mir bei einer Aufgabe helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eugene")
talkEntry:addTrigger("Burton")
talkEntry:addResponse("Us Burtons aren't rich or noble but we refuse to be poor and dishonourable.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eugene")
talkEntry:addTrigger("Burton")
talkEntry:addResponse("Wir Burtons sind weder reich noch edel. Und wir weigern uns, arm und unredlich zu sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("easter")
talkEntry:addTrigger("egg")
talkEntry:addResponse("I once found a strange egg in the Elstree forest. It was huge! But I left it where it was, who knows what hatches from such eggs?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("osterei")
talkEntry:addResponse("Einst habe ich ein merkw�rdiges Ei im Elsbaumwald gefunden. Es war riesig! Aber ich habe es zur�ckgelassen, wo es war, wer wei�, was aus solchen Eiern alles schl�pfen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me sch�rft sein Messer.", "#me sharpens his knife.")
talkingNPC:addCycleText("#me murmelt: 'Verdammte W�lfe!'", "#me mumbles, 'Damned wolves!'")
talkingNPC:addCycleText("#me hustet.", "#me coughs.")
talkingNPC:addCycleText("#me nie�t.", "#me sneezes.")
talkingNPC:addCycleText("#me sortiert einige Felle, offensichtlich bedacht, dies nicht allzu auff�llig zu tun.", "#me sorts some fur, obviously trying to hide them.")
talkingNPC:addCycleText("#me z�hlt die Pfeile in einem fein bestickten K�cher.", "#me counts arrows in a decorated quiver.")
talkingNPC:addCycleText("#me spitzt einen langen Stock mit einem Messer an.", "#me carves a long stick with a knife.")
talkingNPC:addCycleText("Psst, wollt ihr bestes Fell... oh! Ich habe nichts gesagt.", "Shh, do you want to have best fur... uh, nevermind!")
talkingNPC:addCycleText("#me steckt grinsend einen Stock in eine sofort zuschnappende Falle.", "#me sticks a stick into a snapping trap, grinning.")
talkingNPC:addCycleText("Shh!", "Shh!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Wilderer Eugene Burton.", "This NPC is the poacher Eugene Burton.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 364)
mainNPC:setEquipment(11, 55)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 2714)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2113)
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
