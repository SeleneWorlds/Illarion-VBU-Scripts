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
mainNPC:setAffiliation(-1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the smuggler Ehrom Goldhammer. Keywords: Hello, quest, smuggler."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Schmuggler Ehrom Goldhammer. Schl�sselw�rter: Hallo, Quest, Schmuggler."))
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
talkEntry:addResponse("Greetings! Could it be that Ronagan has sent you to help with my task?")
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
talkEntry:addResponse("Ronagan zum Gru�e! K�nnte es sein, dass Ronagan Euch zu mir geschickt hat, um mir bei meiner Aufgabe zu helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings! Could it be that Ronagan has sent you to help with my task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ronagan zum Gru�e! K�nnte es sein, dass Ronagan Euch zu mir geschickt hat, um mir bei meiner Aufgabe zu helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Ronagan's blessing and watch your back!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ronagans Segen! Und pa�t auf, was hinter euch passiert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ronagan's blessing and watch your back!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ronagan's Segen! Und Und pa�t auf, was hinter euch passiert!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Besides my poor back I'm fine, thank you! Maybe you can help me with a task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Abgesehen von meinem R�cken geht es mir gut, danke sehr! Vielleicht k�nnte Ihr mir ja bei einer Aufgabe helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("In front of you stands the smuggler Ehrom Goldhammer, aye!")
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
talkEntry:addResponse("Vor Euch steht der Schmuggler Ehrom Goldhammer, aye!")
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
talkEntry:addCondition(condition_quest(72, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler I"))
talkEntry:addConsequence(consequence_quest(72, "=", 1))
talkEntry:addResponse("So you want to help me? A client of mine needs five copper goblets for a banquet, but I cannot get to Cadomyr's finesmiths to obtain them. I'll reward you generously!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler I"))
talkEntry:addConsequence(consequence_quest(72, "=", 1))
talkEntry:addResponse("Ihr wollt mir also helfen. Einer meiner Klienten ben�tigt f�nf Kupferkelche f�r ein Bankett. Ich kann allerdings nicht nach Cadomyr gehen, um sie von den Schmieden dort zu besorgen. Ich werde euch gro�z�gig belohnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler I"))
talkEntry:addConsequence(consequence_quest(72, "=", 1))
talkEntry:addResponse("So you want to help me? A client of mine needs five copper goblets for a banquet, but I cannot get to Cadomyr's finesmiths to obtain them. I'll reward you generously!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler I"))
talkEntry:addConsequence(consequence_quest(72, "=", 1))
talkEntry:addResponse("Ihr wollt mir also helfen. Einer meiner Klienten ben�tigt f�nf Kupferkelche f�r ein Bankett. Ich kann allerdings nicht nach Cadomyr gehen, um sie von den Schmieden dort zu besorgen. Ich werde euch gro�z�gig belohnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 1))
talkEntry:addCondition(condition_item(1840, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 50 silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_deleteitem(1840, 5, nil))
talkEntry:addConsequence(consequence_quest(72, "=", 2))
talkEntry:addResponse("By Ronagan, you brought copper goblets. Take these silver coins as a small appreciation. I could use your service again for another order as well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 1))
talkEntry:addCondition(condition_item(1840, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 50 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_deleteitem(1840, 5, nil))
talkEntry:addConsequence(consequence_quest(72, "=", 2))
talkEntry:addResponse("Bei Ronagan, ihr habt tats�chlich die Kupferkelche gebracht. Nehmt diese Silberst�cke als kleine Anerkennung. Allerdings k�nnte ich nochmal Eure Dienste bei einem Auftrag brauchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I need at least five copper goblets. Return to me when you have them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauche wenigstens f�nf Kupferkelche. Kehrt zur�ck wenn ihr sie habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I need at least five copper goblets. Return to me when you have them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ich brauche wenigstens f�nf Kupferkelche. Kehrt zur�ck wenn ihr sie habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler II"))
talkEntry:addConsequence(consequence_quest(72, "=", 3))
talkEntry:addResponse("I got a new order from abroad. A dwarven sovereign has ordered two dwarven state armours but I cannot get to Galmair to get them due to... personal reasons. Please help me for a reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler II"))
talkEntry:addConsequence(consequence_quest(72, "=", 3))
talkEntry:addResponse("Ich habe eine neue Bestellung aus einem fernen Land bekommen. Ein Zwergenherrscher ben�tigt zwei Zwergenprunkr�stungen, ich kann aber aus... pers�nlichen Gr�nden nicht einfach nach Galmair spazieren, um sie zu holen. Helft mir bitte, f�r eine angemessene Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler II"))
talkEntry:addConsequence(consequence_quest(72, "=", 3))
talkEntry:addResponse("I got a new order from abroad. A dwarven sovereign has ordered two dwarven state armours but I cannot get to Galmair to get them due to... personal reasons. Please help me for a reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler II"))
talkEntry:addConsequence(consequence_quest(72, "=", 3))
talkEntry:addResponse("Ich habe eine neue Bestellung aus einem fernen Land bekommen. Ein Zwergenherrscher ben�tigt zwei Zwergenprunkr�stungen, ich kann aber aus... pers�nlichen Gr�nden nicht einfach nach Galmair spazieren, um sie zu holen. Helft mir bitte, f�r eine angemessene Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 3))
talkEntry:addCondition(condition_item(2390, "all", ">", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five gold coins."))
talkEntry:addConsequence(consequence_money("+", 50000))
talkEntry:addConsequence(consequence_deleteitem(2390, 2, nil))
talkEntry:addConsequence(consequence_quest(72, "=", 4))
talkEntry:addResponse("Aye aye, I have to say that you are getting better and better. These gold coins are yours now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 3))
talkEntry:addCondition(condition_item(2390, "all", ">", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Goldst�cke."))
talkEntry:addConsequence(consequence_money("+", 50000))
talkEntry:addConsequence(consequence_deleteitem(2390, 2, nil))
talkEntry:addConsequence(consequence_quest(72, "=", 4))
talkEntry:addResponse("Aye aye, ich mu� schon sagen, Ihr werdet immer besser. Diese Goldst�cke geh�ren nun Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("My customer needs two dwarven state armours, discrete and fast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Mein Kunde ben�tigt zwei diskret erworbene Zwergenprunkr�stungen. Bitte beeilt euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("My customer needs two dwarven state armours, discrete and fast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Mein Kunde ben�tigt zwei diskret erworbene Zwergenprunkr�stungen. Bitte beeilt euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler III"))
talkEntry:addConsequence(consequence_quest(72, "=", 5))
talkEntry:addResponse("A customer, who prefers to remain unnamed, ordered five black priest robes of Runewick origin, 'For his freshmen', he said. Will you bring me those?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler III"))
talkEntry:addConsequence(consequence_quest(72, "=", 5))
talkEntry:addResponse("Einer meiner Auftraggeber, der unerkannt bleiben m�chte, hat f�nf schwarze Priesterroben nach Runewick-Machart bestellt. 'F�r seine Frischlinge', hat er gesagt. Besorgt ihr mir die?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler III"))
talkEntry:addConsequence(consequence_quest(72, "=", 5))
talkEntry:addResponse("A customer, who prefers to remain unnamed, ordered five black priest robes of Runewick origin, 'For his freshmen', he said. Will you bring me those?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler III"))
talkEntry:addConsequence(consequence_quest(72, "=", 5))
talkEntry:addResponse("Einer meiner Auftraggeber, der unerkannt bleiben m�chte, hat f�nf schwarze Priesterroben nach Runewick-Machart bestellt. 'F�r seine Frischlinge', hat er gesagt. Besorgt ihr mir die?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 5))
talkEntry:addCondition(condition_item(2420, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded an obsidian ring and a magical obsidian."))
talkEntry:addConsequence(consequence_deleteitem(2420, 5, nil))
talkEntry:addConsequence(consequence_item(278, 1, 999, nil))
talkEntry:addConsequence(consequence_item(3524, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(72, "=", 6))
talkEntry:addResponse("It seems as though Ronagan is looking on you benevolently. My customer gave me this ring in advance, it is now yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 5))
talkEntry:addCondition(condition_item(2420, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Obsidianring und einen magischen Obsidian."))
talkEntry:addConsequence(consequence_deleteitem(2420, 5, nil))
talkEntry:addConsequence(consequence_item(278, 1, 999, nil))
talkEntry:addConsequence(consequence_item(3524, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(72, "=", 6))
talkEntry:addResponse("Es scheint, als w�re Ronagan Euch wohlgesonnen. Mein Auftraggeber gab mir diesen Ring als Anzahlung, er ist nun Euer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Just five black priest robes is all I still need for my customer... and no questions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("F�nf schwarze Priesterroben sind alles, was ich f�r meinen Kunden brauche. Und keine Fragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Just five black priest robes is all I still need for my customer... and no questions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("F�nf schwarze Priesterroben sind alles, was ich f�r meinen Kunden brauche. Und keine Fragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler IV"))
talkEntry:addConsequence(consequence_quest(72, "=", 7))
talkEntry:addResponse("Psst! I need you for a very special task. Sneak into Runewick and get me a wand of air. For what? None of your business!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler IV"))
talkEntry:addConsequence(consequence_quest(72, "=", 7))
talkEntry:addResponse("Psst! Ich brauche euch f�r eine besondere Aufgabe. Schleicht euch nach Runewick und bringt mir einen Zauberstab der Luft. Wof�r? Das geht euch nichts an!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Smuggler II"))
talkEntry:addConsequence(consequence_quest(72, "=", 7))
talkEntry:addResponse("Psst! I need you for a very special task. Sneak into Runewick and get me a wand of air. For what? None of your business!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schmuggler IV"))
talkEntry:addConsequence(consequence_quest(72, "=", 7))
talkEntry:addResponse("Psst! Ich brauche euch f�r eine besondere Aufgabe. Schleicht euch nach Runewick und bringt mir einen Zauberstab der Luft. Wof�r? Das geht euch nichts an!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 7))
talkEntry:addCondition(condition_item(2785, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a fire longsword."))
talkEntry:addConsequence(consequence_deleteitem(2785, 1, nil))
talkEntry:addConsequence(consequence_item(206, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(72, "=", 8))
talkEntry:addResponse("Ronagan's thanks... yes, this wand should be good enough. I just have this sword for your, I want to get rid of it. Do not ask why and accept it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 7))
talkEntry:addCondition(condition_item(2785, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Feuerlangschwert."))
talkEntry:addConsequence(consequence_deleteitem(2785, 1, nil))
talkEntry:addConsequence(consequence_item(206, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(72, "=", 8))
talkEntry:addResponse("Ronagans Dank... ja, dieser Zauberstab sollte gut genug sein. Ich habe nur dieses Schwert f�r euch, welches ich gerne loswerden w�rde. Fragt nicht, warum und nehmt es an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ronagan knows that I do my best. Do your best and bring me a wand of air for my customer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ronagan wei�, dass ich mich bem�he. Bem�ht euch auch und bringt mir einen Stab der Luft f�r meinen Kunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Ronagan knows that I do my best. Do your best and bring me a wand of air for my customer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ronagan wei�, dass ich mich bem�he. Bem�ht euch auch und bringt mir einen Stab der Luft f�r meinen Kunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ronagan be with you... there is nothing left that you can do for me at the moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ronagan mit Euch... es ist nichts �brig, was Ihr f�r mich momentan tun k�nntet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Ronagan be with you... there is nothing left that you can do for me at the moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(72, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ronagan mit Euch... es ist nichts �brig, was Ihr f�r mich momentan tun k�nntet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Smuggler is such a loaded word. I make goods available to those who have no access to them... at a cost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Schmuggler, das ist so ein vorbelastetes Wort. Ich mache Waren denen zug�nglich, die sie normalerweise nicht bekommen w�rden... f�r eine Geb�hr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Smuggler is such a loaded word. I make goods available to those who have no access to them... at a cost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Schmuggler, das ist so ein vorbelastetes Wort. Ich mache Waren denen zug�nglich, die sie normalerweise nicht bekommen w�rden... f�r eine Geb�hr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I used to sell Sibanac to some halfling fellow on Gobaith... Brendan Mason was his name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich hab damals Sibanac mit einem Halbling auf Gobaith gehandelt... Brendan Mason war sein Name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("You gave me your name, what do you want from me now? Money?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Danke f�r euren Namen, was wollt ihr jetzt von mir? Geld?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("smuggler")
talkEntry:addTrigger("smuggle")
talkEntry:addResponse("Smuggler is such a loaded word. I make goods available to those who have no access to them... at a cost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schmuggler")
talkEntry:addTrigger("Schmuggel")
talkEntry:addResponse("Schmuggler, das ist so ein vorbelastetes Wort. Ich mache Waren denen zug�nglich, die sie normalerweise nicht bekommen w�rden... f�r eine Geb�hr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("tunnel")
talkEntry:addResponse("As we dwarves like to say: Tunnels are absence of rock in a mountain, but you should always mind your head in the tunnels.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stollen")
talkEntry:addTrigger("Tunnel")
talkEntry:addResponse("Wie wir Zwerge immer sagen: Stollen sind Abwesenheit von Gestein in einem Berg. Aber Ihr solltet in den Stollen immer auf Euren Kopf aufpassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mountain")
talkEntry:addResponse("Yes, it is true that we dwarves prefer to live under a mountain. We enjoy the comfort and protection the sturdiness of the rocks provide... and the wealth inside.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Berg")
talkEntry:addResponse("Ja, es ist wahr, wir Zwerge bevorzugen es, unter einem Berg zu leben. Wir genie�en die beruhigende und besch�tzende Festigkeit des Gesteins... und seinen Reichtum im Inneren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wealth")
talkEntry:addResponse("Well, wealth leads to envy, envy leads to war, and war leads to suffering... So wealth is both a blessing and a curse. Ronagan knows that, aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reichtum")
talkEntry:addTrigger("Reicht�mer")
talkEntry:addResponse("Nun, Reichtum f�hrt zu Neid. Neid f�hrt zu Krieg. Krieg f�hrt zu Leid. Reichtum ist also sowohl ein Segen als auch ein Fluch. Ronagan wei� das, aye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("darkness")
talkEntry:addResponse("Darkness is part of a life under the mountain. We dwarves can live with it easily but people from the world above sometimes have a problem with it, although you can use a portable light source to fight the darkness.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dunkelheit")
talkEntry:addResponse("Dunkelheit ist Teil des Lebens unter dem Berg. Wir Zwerge k�nnen leicht damit leben, aber Leute von der Welt oben haben manchmal ein Problem damit. Aber Ihr k�nnt eine tragbare Lichtquelle verwenden, um die Dunkelheit zu bek�mpfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("light")
talkEntry:addResponse("There may not be much daylight under the mountain but we have other light sources. We use torches, candles, lanterns or lamps.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Licht")
talkEntry:addTrigger("Lichtquelle")
talkEntry:addResponse("Es mag vielleicht nicht genug Tageslicht unter dem Berg geben aber wir haben andere Lichtquellen. Wir verwenden Fackeln, Kerzen, Laternen oder Lampen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("portal")
talkEntry:addResponse("I have heard that there are portals all over the land. They seem to be linked with each other somehow. You step inside, announce where you want to go and in a blink of an eye you are there. I would never use such a magic device.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Portal")
talkEntry:addResponse("Ich habe geh�rt, dass es �berall Portale gibt. Sie scheinen irgendwie miteinander verbunden zu sein. Man betritt sie, sagt wohin man will und im n�chten Augenblick ist man dort. Ich w�rde nie ein solches magisches Ger�t benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pickaxe")
talkEntry:addResponse("The pickaxe is the best tool for mining, but don't be fooled by the simple appearance. It is difficult to master. You wouldn't be the first to end up with a pickaxe in your leg, so please be careful!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spitzhacke")
talkEntry:addResponse("Die Spitzhacke ist das beste Werkzeug f�r den Bergbau. Aber la�t Euch nicht vom einfachen �u�eren t�uschen. Es ist schwer zu meistern. Ihr w�ret nicht der Erste mit einer Spitzhacke im Bein endet, also seid bitte vorsichtig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("hammer")
talkEntry:addResponse("The hammer is the token of any smith. There are different hammers for each and every purpose. It is important to use the right hammer for each task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hammer")
talkEntry:addResponse("Der Hammer ist das Erkennungsmerkmaler aller Schmiede. Es gibt verschiedene H�mmer f�r jeden Zweck. Es ist wichtig den richtigen Hammer f�r die entsprechende Aufgabe zu benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gem")
talkEntry:addResponse("Gems are the true treasures of the mountains. There are many different gems but they all have something in common, they are all rare and you'll need a lot of luck to find suitable raw pieces, I can tell you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Edelstein")
talkEntry:addResponse("Edelsteine sind der wahre Schatz des Berges. Es gibt viele verschiedene Edelsteine, aber alle haben etwas gemeinsam. Sie sind alle sehr selten und Ihr braucht schon viel Gl�ck passende rohe St�cke zu finden, das kann ich Euch sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("archmage")
talkEntry:addResponse("If Archmage Morgan knew that his minions ordered things from me, I think he would slap them with a book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wenn Erzmagier Morgan w��te, dass seine Leute bei mir Waren bestellen, dann w�rde er sie sicher mit einem Buch verpr�geln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("If Archmage Morgan knew that his minions ordered things from me, I think he would slap them with a book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wenn Erzmagier Morgan w��te, dass seine Leute bei mir Waren bestellen, dann w�rde er sie sicher mit einem Buch verpr�geln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The people of Runewick come to me to buy metals and minerals. If you look for them you have to travel south and east.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Leute aus Runewick kommen zu mir, um Metalle und Mineralien einzutauschen. Wenn Ihr sie sucht, so m��t Ihr nach S�den und Osten reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("don")
talkEntry:addResponse("If the Don did not rule Galmair, I'd be there again. He interfered with my business too much, so I... had to leave.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("don")
talkEntry:addResponse("Wenn der Don nicht Galmair kontrollieren w�rde, w�re ich l�ngst wieder da. Er hat sich zu sehr in mein Gesch�ft eingemischt, also... musste ich das Weite suchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Oh, Galmair. You want to know about Galmair? It is much like us dwarves. It may not appear to be much on the outside, but its wealth lies within. More I won't reveal at the moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Oh, Galmair. Ihr m�chtet etwas �ber Galmair erfahren? Es ist wie wir Zwerge. Es mag von au�en als nicht viel erscheinen, aber sein Reichtum liegt innen. Mehr werde ich im Moment nicht verraten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen has placed a bounty on my head, literally, on my head... so, I had better avoid the desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Die K�nigin hat ein Kopfgeld auf mich ausgesetzt. Genauer, auf meinen Kopf, im wahrsten Sinne des Wortes. Also bleibe ich besser der W�ste fern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen has placed a bounty on my head, literally, on my head... So, I had better avoid the desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die K�nigin hat ein Kopfgeld auf mich ausgesetzt. Genauer, auf meinen Kopf, im wahrsten Sinne des Wortes. Also bleibe ich besser der W�ste fern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is wealthy, but they don't like me there anymore. I have no honour, they say, so I don't deserve to have a head anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist reich an Sch�tzen, aber sie m�gen mich nicht mehr dort. Ich h�tte keine Ehre, sagen sie, und daher sollte ich auch keinen Kopf mehr verdient haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar?! Oh please, let us talk about something more relevant.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar?! Oh, bitte, lasst uns �ber etwas wichtigeres sprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Some think, all dwarves come from Seven mountains. I am from Gynk and proud of it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Viele denken, alle Zwerge kommen aus Siebenbergen. Ich bin aus Gynk und stolz darauf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar, where is that, anyway?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar, wo soll das eigentlich sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("You may guess what god I pray to. One hint: It isn't Sirani.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ihr d�rft dreimal raten, zu welchem Gott ich bete. Ein Tipp: Es ist nicht Sirani.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Hmm? Shhh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Hmm? Shhh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("I pray to Ronagan, but it is more a matter of respect than worshipping.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ich bete zu Ronagan, aber das hat viel mehr mit Respekt als mit Ehrerbietung zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't have anything I want to sell at the moment, but I have a special task for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich gibt momentan nichts, was ich handeln m�chte. Aber ich habe einen Sonderauftrag f�r euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I don't have time to tell stories. Ronagan be my witness, I'm a dwarf of deeds not of words.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich habe keine Zeit Geschichten zu erz�hlen. Ronagan sei mein Zeug, ich bin ein Zwerg der Taten, nicht der Worte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ehrom")
talkEntry:addTrigger("Goldhammer")
talkEntry:addResponse("Ehrom Goldhammer is indeed my name. Who told you? Me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ehrom")
talkEntry:addTrigger("Goldhammer")
talkEntry:addResponse("Ehrom Goldhammer ist in der Tat mein Name. Wer hat euch den verraten? Ich etwa?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me begutachtet einen Edelstein in seiner Hand sehr sorgf�ltig.", "#me inspects a gem in his hand thoroughly.")
talkingNPC:addCycleText("#me streicht seinen dunkelgrauen Bart.", "#me strokes his dark grey beard.")
talkingNPC:addCycleText("#me murmelt etwas in seinen dunkelgrauen Bart.", "#me voices something under his breath.")
talkingNPC:addCycleText("#me betrachtet nachdenklich einen Stein in seiner Hand aus allen Winkeln bevor er ihn wegwirft.", "#me examines a stone in his hand thoughtfully from all angles before throwing it away.")
talkingNPC:addCycleText("Arr!", "Arr!")
talkingNPC:addCycleText("Arr.", "Arr.")
talkingNPC:addCycleText("Arr?", "Arr?")
talkingNPC:addCycleText("Das wird einen guten Preis erzielen.", "This will yield a good price.")
talkingNPC:addCycleText("Geheimverstecke? Pah, je offener, desto besser, dann fragt keiner.", "Secret compartment? Pah, the more visible, the better. Nobody is gonna ask then.")
talkingNPC:addCycleText("Ein gutes Gesch�ft verlangt nicht nach einem guten Gewissen.", "A good business does not require a good conscience.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Schmuggler Ehrom Goldhammer.", "This NPC is the smuggler Ehrom Goldhammer.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2390)
mainNPC:setEquipment(11, 194)
mainNPC:setEquipment(5, 88)
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
