local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("help")
talkEntry:addConsequence(consequence_inform("[Game help] This NPC is Zaida the Apprentice. Keywords: Be greeted, Profession, Tavern."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist die Anw�rterin Zaida. Schl�sselw�rter: Seid gegr��t, Beruf, Taverne."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addConsequence(consequence_inform("[New quest] Runewick's Gossiper"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me nods her head respectfully: 'Be greeted, traveler. Should you wish to join my company, you must first bring me a glass filled with wine. Then, if it still pleases you, we may discuss.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("#me nods respectfully: 'Greetings. Now that you have fulfilled my request, you may disturb me with your presence and bother me with your questions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[New quest] Runewick's Gossiper"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me's lips form a somewhat condescending smile. 'Greetings, traveler. Should you wish to ask me something, you must first bring me a glass full of wine.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me nods once. 'Very well, now that you have done your part, I presume that I must do mine as well...'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addConsequence(consequence_inform("[New quest] Runewick's Gossiper"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me frowns and brushes over the front of her apprentice's robe. 'I feel thirsty. Until I have a glas full of wine, I will not be much of assistance for you.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I feel reinvigorated, thank you for asking.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Until next time, traveller!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Farewell, traveller!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schw�tzerin von Runewick"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me nickt respektvoll mit dem Kopf: 'Seid gegr��t, Reisender. Wenn ihr meine Gesellschaft genie�en wollt, so bringt mir doch ein Glas Wein zun�chst. Dann, wenn ihr es noch w�nscht, k�nnen wir diskutieren.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("#me nickt respektvoll: 'Seid gegr��t. Nun, da ihr meiner Bitte entsprochen habt, k�nnt ihr mich mit eurer Anwesenheit bel�stigen und mich mit euren Fragen nerven.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schw�tzerin von Runewick"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me l�chelt herablassend. 'Seid gegr��t, Reisender. Solltet ihr mich etwas fragen wollen, so m�sst ihr mir zun�chst ein Glas Wein bringen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me nickt knapp. 'Nun denn, da ihr euren Teil der Abmachung eingehalten habt, ist es nun an mir, meinen Teil zu leisten.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schw�tzerin von Runewick"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me blickt missbilligend drein und streicht �ber ihre Anw�rterinnenrobe. 'Ich bin durstig. Solange ich kein Glas voll Wein habe, kann ich euch nicht wirklich beistehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich f�hle mich wie neu geboren, danke der Nachfrage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Bis zum n�chsten mal, Reisender.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Gehabt euch wohl, Reisender.")
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
talkEntry:addResponse("My name is Zaida. One day, I'll be a honourable magician, right now, I am just thirsty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Mein Name ist Zaida. Eines Tages werde ich eine ehrenhafte Magierin sein, jetzt bin ich aber erstmal durstig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Runewick's Gossiper"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me smiles in a slightly condescending way. 'A task? I give you a most demanding one; Fetch me a glass of wine and as a reward for your quest, I shall answer your questions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Now it is your turn to ask what you wish to know, traveller. I know all about the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[New quest] Runewick's Gossiper"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me smiles in a slightly condescending way. 'A task? I give you a most demanding one; Fetch me a glass of wine and as a reward for your quest, I shall answer your questions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addResponse("Now it is your turn to ask what you wish to know, traveller. I know all about the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schw�tzerin von Runewick"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me l�chelt etwas herablassend. 'Eine Aufgabe? Ich gebe euch die schwerste von allen; Bringt mir ein Glas Wein und als Belohnung f�r eure M�hen werde ich eure Fragen beantworten.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nun ist es an euch, die Dinge zu erfragen, die ihr wissen wollt. Denn ich kenne mich wahrhaftig gut in der Stadt aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 0))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schw�tzerin von Runewick"))
talkEntry:addConsequence(consequence_quest(76, "=", 1))
talkEntry:addResponse("#me l�chelt etwas herablassend. 'Eine Aufgabe? Ich gebe euch die schwerste von allen; Bringt mir ein Glas Wein und als Belohnung f�r eure M�hen werde ich eure Fragen beantworten.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addResponse("Nun ist es an euch, die Dinge zu erfragen, die ihr wissen wollt. Denn ich kenne mich wahrhaftig gut in der Stadt aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me takes the glass and smiles: 'Thank you very much. Now that you have given me the wine, I can answer your questions... be they about the town, our archmage, Runewick or our neighbours - whom the gods should bless with pox.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addResponse("#me takes the glass and smiles: 'Thank you very much. Now that you have given me the wine, I can answer your questions.. be they about the town, our lady, runewick or our neighbours - whom the gods should bless with pox.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me nimmt das Glas und l�chelt: 'Vielen, vielen Dank. Nun da ihr mir Wein gebracht habt, kann ich eure Fragen beantworten, sei es �ber die Stadt, den Erzmagier, Runewick oder unsere Nachbarn - denen die G�tter die Pest schicken m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addResponse("#me nimmt das Glas und l�chelt: 'Vielen, vielen Dank. Nun da ihr mir Wein gebracht habt, kann ich eure Fragen beantworten, sei es �ber die Stadt, den Erzmagier, Runewick oder unsere Nachbarn - denen die G�tter die Pest schicken m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(4346, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(4346, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me takes the glass and smiles: 'Thank you very much. Now that you have given me the wine, I can answer your questions... be they about the town, our archmage, Runewick or our neighbours - whom the gods should bless with pox.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(4346, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(4346, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addResponse("#me takes the glass and smiles: 'Thank you very much. Now that you have given me the wine, I can answer your questions.. be they about the town, our lady, runewick or our neighbours - whom the gods should bless with pox.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(4346, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(4346, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me nimmt das Glas und l�chelt: 'Vielen, vielen Dank. Nun da ihr mir Wein gebracht habt, kann ich eure Fragen beantworten, sei es �ber die Stadt, den Erzmagier, Runewick oder unsere Nachbarn - denen die G�tter die Pest schicken m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(4346, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(4346, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addResponse("#me nimmt das Glas und l�chelt: 'Vielen, vielen Dank. Nun da ihr mir Wein gebracht habt, kann ich eure Fragen beantworten, sei es �ber die Stadt, den Erzmagier, Runewick oder unsere Nachbarn - denen die G�tter die Pest schicken m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2187, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(2187, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me takes the glass and smiles: 'Thank you very much. Now that you have given me the wine, I can answer your questions... be they about the town, our archmage, Runewick or our neighbours - whom the gods should bless with pox.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2187, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(2187, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addResponse("#me takes the glass and smiles: 'Thank you very much. Now that you have given me the wine, I can answer your questions.. be they about the town, our lady, runewick or our neighbours - whom the gods should bless with pox.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2187, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(2187, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me nimmt das Glas und l�chelt: 'Vielen, vielen Dank. Nun da ihr mir Wein gebracht habt, kann ich eure Fragen beantworten, sei es �ber die Stadt, den Erzmagier, Runewick oder unsere Nachbarn - denen die G�tter die Pest schicken m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2187, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Zaida wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(2187, 1, nil))
talkEntry:addConsequence(consequence_quest(76, "=", 2))
talkEntry:addResponse("#me nimmt das Glas und l�chelt: 'Vielen, vielen Dank. Nun da ihr mir Wein gebracht habt, kann ich eure Fragen beantworten, sei es �ber die Stadt, den Erzmagier, Runewick oder unsere Nachbarn - denen die G�tter die Pest schicken m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Where is my wine?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Wo bleibt mein Wein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("town")
talkEntry:addResponse("#me smiles: 'This town is one where the clear minds may learn and become wise amongst their peers. We are the pinnacle of knowledge, a beacon of civilization in the land. All thanks to the wisdom of Archmage Morgan.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("knowledge")
talkEntry:addTrigger("wisdom")
talkEntry:addResponse("Knowledge and wisdom are the two most important qualities of a person. The sharpness of one's mind and the judgement to use the mind well are the true makers of a great man... or a woman.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("like[s]")
talkEntry:addResponse("Our Archmage likes order... so behave yourself and he will bless you with his kindness. Altough, I must admit that he has a weakness for magical trinkets and books.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("gift")
talkEntry:addResponse("A Gift? For the Archmage? Well, if you manage to find a rare book or a magical artifact, then I think such extraordinary items are what please him the most.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("wine")
talkEntry:addResponse("#me smiles lightly: 'My thanks for the wine, traveller. Do you have some questions you wish that I answer?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("neighbo")
talkEntry:addResponse("#me frowns displeased: 'May the gods damn Cadomyr and Galmair, those treacherous, land-stealing fools!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("apprentice")
talkEntry:addResponse("I am indeed an apprentice-mage, but I can speak no more about that without upsetting my master.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Stadt")
talkEntry:addResponse("#me l�chelt: 'Diese Stadt ist Ort, an dem erleuchtete Seelen lernen und weise werden k�nnen. Wir sind die Zinne des Wissens, der Leuchtturm der Zivilisation in diesen Landen. All das verdanken wir Erzmagier Morgan.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("wissen")
talkEntry:addTrigger("weisheit")
talkEntry:addResponse("Wissen und Weisheit sind die beiden wichtigstens Eigenschaften einer Person. Die Sch�rfe des Verstandes und das K�nnen, den Verstand auch einzusetzen sind die wahren Adelszeichen eines Mannes... oder einer Frau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Vorliebe")
talkEntry:addResponse("Unser Erzmagier mag die Ordnung. Also behnehmt euch und er wird euch mit Wohlwollen segnen. Allerdings muss ich eingestehen, dass er eine Vorliebe f�r magische Dinge und B�cher hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("geschenk")
talkEntry:addTrigger("pr�sent")
talkEntry:addResponse("Ein Geschenk? F�r den Erzmagier? Nun, wenn ihr ein seltenes Buch oder ein magisches Artefakt findet, dann denke ich, dass so ein seltenes Etwas ihm sehe gefallen w�rde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Wein")
talkEntry:addResponse("#me l�chelt sanft: 'Vielen Dank f�r den Wein, Reisender. Habt ihr Fragen, die ich euch beantworten kann?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Nachbar")
talkEntry:addResponse("#me zischt missbilligend: 'M�gen die G�tter Cadomyr und Galmair, diese verr�terischen Landdiebe, verdammen!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("anw�rter")
talkEntry:addResponse("Ich bin in der Tat eine Anw�rterin der Magierschaft, aber ich sollte dar�ber nicht mehr sprechen, als meinem Meister lieb ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I spend my days studying, so that one day I may claim the title of a mage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I spend my days studying, so that one day I may claim the title of a mage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("tavern")
talkEntry:addResponse("Good wine, lousy service... as you may have noticed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich verbringe meine Tage damit, zu studieren, damit ich einst den Titel eines Magiers f�hren darf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich verbringe meine Tage damit, zu studieren, damit ich einst den Titel eines Magiers f�hren darf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tavern")
talkEntry:addResponse("Guter Wein, aber schlechter Service. Aber das habt ihr wohl selbst auch schon festgestellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I read about Gobaith in the library. A terrible fate for a beautiful island. But I also read they deserved it...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich habe �ber Gobaith in der Bibliothek gelesen. Ein schreckliches Schicksal f�r eine wundersch�ne Insel. Aber ich habe ebenso gelesen, dass sie es nicht anders verdient haben...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Oh, hello. Please take a seat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Oh, hallo. Setzt euch doch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Archmage")
talkEntry:addResponse("Elvaine Morgan, the Archmage of Runewick is our wise and glorious leader. He is of both high birth and intellect, which is hardly what can be said of the so-called 'leaders' of the other towns!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("#me casts a light smile at you. 'I see that you have been keeping your ears open, very good. He is indeed the guiding hand and protecting lion of our orderly community.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Elvaine Morgan, Erzmagier von Runewick, ist unser weiser und glorreicher Anf�hrer. Hochgeboren und mit Weisheit ausgestatten, dies kann man kaum von den anderen so genannten 'Anf�hrern' der anderen St�dte behaupten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("#me wirft dir ein L�cheln zu: 'Ich sehe, ihr habt eure Ohren offen gehalten, sehr gut. Er ist wirklich die f�hrende Hand und der sch�tzende L�we unserer wohlgeordneten Gemeinschaft.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick, our shining pearl of the land! We are the thinkers, the rightful lords and owners of this land. One day we will show those filthy squatters their rightful place!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick, die strahlende Perle des Landes! Wir sind die Denker und rechtm��igen Herren der L�ndereien. Eines Tages werden wir diesen dreckigen Tunichtguten ihren rechtm��igen Platz zuweisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Don")
talkEntry:addTrigger("Lord")
talkEntry:addResponse("I love my life, so I prefer not to talk about Don Valerio in public.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addResponse("I love my life, so I prefer not to talk about Don Valerio in public.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Don")
talkEntry:addTrigger("Lord")
talkEntry:addResponse("Mir ist mein Leben lieb, also rede ich nicht so gerne �ber Don Valerio in aller �ffentlichkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addResponse("Mir ist mein Leben lieb, also rede ich nicht so gerne �ber Don Valerio in aller �ffentlichkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me appears disgusted at the name. 'A den of sin and vice, where a wise person will always keep his back against a wall. Those scoundrels will either rob or sell their grandmother for two coppers if they have the chance!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me blickt angewidert drein. 'Ein Hort der S�nde und des Lasters, wo eine weise Person stets ihren R�cken von einer Mauer gedeckt wei�. Diese Hunde werden einen entweder ausrauben or ihre Gro�mutter f�r zwei Kupferst�cke verkaufen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Queen")
talkEntry:addResponse("For your ears only: I think the queen of Cadomyr is pretty. Pretty stupid!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("So unter uns: Ich denke, die K�nigin von Cadomyr ist sch�n. Sch�n bl�d!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("For your ears only: I think the queen of Cadomyr is pretty. Pretty stupid!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("So unter uns: Ich denke, die K�nigin von Cadomyr ist sch�n. Sch�n bl�d!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Simple-minded fools, who have spent so much time in the desert that the scorching sun has fried their brains. They can only grasp... very rudimentary ideas and concepts, and thus you see the halfwits only dribble about honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("T�rrichte Tore, die so lange in der W�ste rumgestanden haben, bis die sengende Sonne ihnen das Hirn verbrannt hat. Sie verstehen nur sehr einfache Konzepte und Ideen, daher brabbeln sie nur halbherzig von ihrer Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Please bore somebody else with stories of the oh-so-noble Albarian kingdom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Bitte langweilt jemanden anderes mit Geschichten aus dem ach-so-edlen albarischen K�nigreich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I have a big book about Gynk in my shelf. Because I do not care!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich habe ein riesiges Buch �ber Gynk in meinem Schrank. Weil es mir egal ist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Do not laugh - I will make it to Salkamar one day. And from there to Lor Angur and from there...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Lacht nicht, ich werde es nach Salkamar schaffen. Und von dort nach Lor Angur und von dort...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("god")
talkEntry:addResponse("We are faithful servants of the gods here in Runewick. Of course, we avoid the foolish fanaticism of Cadomyr. We should be free to pursuit knowledge, not stagnation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("gott")
talkEntry:addTrigger("g�tter")
talkEntry:addResponse("Wir sind fromme Diener der G�tter hier in Runewick. Selbstredend vermeiden wir den blinden Fanatismus derer aus Cadomyr. Wir sollten alle frei sein, der Weisheit nachzutrachten, nicht aber in Stagnation verfallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Some say Elara is Eldan's daughter. They mean it metaphorically, of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Manche sagen, Elara sei Eldans Tochter. Aber das meinen sie metaphorisch, nicht w�rtlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Some say Eldan is Elara's father. They mean it metaphorically, of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(76, "=", 2))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Manche sagen, Eldan sei Elaras Vater. Aber das meinen sie metaphorisch, nicht w�rtlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I do not trade, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein H�ndler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("The wine is marvellous, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Der Wein hier ist wunderbar, nicht wahr?")
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
talkEntry:addTrigger("Zaida")
talkEntry:addResponse("Zaida is my name. Zaida the Apprentice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zaida")
talkEntry:addResponse("Zaida ist mein Name. Zaida, die Anw�rterin.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Nur in Runewick kann man einer intelligenten Diskussion fr�hnen. In Galmair wird man eher ausgeraubt und in Cadomyr haben sie nur Sand im Kopf.", "Only in Runewick it is possible to enjoy the delights of an intelligent discussion. In Galmair they are trying to rob you, and Cadomyrians have... sand for brains.")
talkingNPC:addCycleText("#me bl�ttert gedankenverloren in einem alten Buch. Sie starrt dabei auf ein Weinglas, das leer erscheint.", "#me absently turns the page of an old journal, while glancing at a glass of wine that seems to be empty.")
talkingNPC:addCycleText("#me r�uspert sich: 'Wirt, etwas mehr Wein, bitte... Wirt? Bei den G�ttern!", "#me clears her throat: 'Innkeeper, more wine, please... Innkeeper? Gods.'")
talkingNPC:addCycleText("#me ist eine junge Dame, gekleidet in der Tracht einer angehenden Magierin. Ihre Kleidung tr�gt das Wappen Runewicks. 'Ich wei� alles �ber Runewick.' murmelt sie vor sich hin.", "#me is a young woman, wearing the attire of an aspiring mage. Her clothes bear the colours of Runewick. 'I know everything about Runewick', she mutters.")
talkingNPC:addCycleText("#me tippt mit ihren langen Fingern�geln gegen ihr leeres Glas, ein hohles, klirrendes Ger�usch ist zu vernehmen.", "#me absently taps on the side of her empty glass with her long fingernail, causing a faint, hollow sound to be heard.")
talkingNPC:addCycleText("#me murmelt genervt: 'Wenn ich es nicht besser w��te, k�nnte man meinen, der Wirt w�re noch so ein Halunke aus Galmair mit Dung in den Ohren.", "#me mutters with an irritated voice: 'I swear that if I did not already know better, I would be certain that the innkeeper is another Galmairian crook with her ears full of manure.'")
talkingNPC:addCycleText("#me l�sst ihre Augen hochm�tig durch die Taverne wandern. Jedem, der ihr fremd erscheint, wirft sie einen Blick mit einer Mischung aus Neugierde und Misstrauen zu.", "#me glances around the tavern with an air of haught surrounding her, eyeing all those who appear foreign with a gaze that is mixed with both curiosity and suspicion.")
talkingNPC:addCycleText("Einf�ltige Ignoranten, �berall! Wie soll man so lernen?", "Stupid idiots, everywhere. How is one supposed to become educated this way?")
talkingNPC:addCycleText("Jemand hat mal im Unterricht des Erzmagiers 'Bingo!' gerufen. Ich habe bis heute nicht verstanden, was er damit sagen wollte.", "Someone just yelled 'Bingo!' during the Archmage's class. I don't understand what he meant by that.")
talkingNPC:addCycleText("Alles, was ich wei�, ist, dass ich wei�, dass ich noch nicht alles wei�.", "All I know is that I know that I don't know it all.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Anw�rterin Zaida.", "This NPC is the apprentice Zaida.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 465)
mainNPC:setEquipment(3, 846)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 57)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 0)
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
