local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local consequence_talkstate = require("npc.base.consequence.talkstate")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the washer woman Myrthe Mildthorn. Keywords: Hello, laundry, cave, quest."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist das Waschweib Myrthe Mildthorn. Schl�sselw�rter: Hallo, W�sche, H�hle, Quest."))
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
talkEntry:addResponse("Oh, hello, got laundry? Excuse me, I thought you were one of my customers.")
talkEntry:addResponse("#me looks up from her washing board and replies, 'Hiho! Didn't I see you yesterday at the Anthil brook?")
talkEntry:addResponse("Hiho! How can I help you?")
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
talkEntry:addResponse("Oh, hallo, habt ihr Schmutzw�sche? Entschuldigt, ich dachte, ihr seid einer meiner Kunden.")
talkEntry:addResponse("#me schaut von ihrem Waschbrett auf und erwidert: 'Hiho! Hab ich euch nicht gestern erst am Bach Anthil gesehen?")
talkEntry:addResponse("Hiho! Wie kann ich euch helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Oh, hello, got laundry? Excuse me, I thought you were one of my customers.")
talkEntry:addResponse("#me looks up from her washing board and replies, 'Hiho! Didn't I see you yesterday at the Anthil brook?")
talkEntry:addResponse("Hiho! How can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Oh, hallo, habt ihr Schmutzw�sche? Entschuldigt, ich dachte, ihr seid einer meiner Kunden.")
talkEntry:addResponse("#me schaut von ihrem Waschbrett auf und erwidert: 'Hiho! Hab ich euch nicht gestern erst am Bach Anthil gesehen?")
talkEntry:addResponse("Hiho! Wie kann ich euch helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell! If your clothes get dirty, just come back to me, will you?")
talkEntry:addResponse("Oh, you have to leave? I do not feel comfortable here, all alone.")
talkEntry:addResponse("Ah, I look forward to meeting you again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehabt euch wohl! Wenn eure Kleidung dreckig wird, kommt einfach zu mir zur�ck, ja?")
talkEntry:addResponse("Oh, ihr m��t gehen? Ich f�hl mich gar nicht wohl, so ganz alleine.")
talkEntry:addResponse("Ah, ich freu mich schon darauf, euch wiederzusehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Farewell! If your clothes get dirty, just come back to me, will you?")
talkEntry:addResponse("Oh, you have to leave? I do not feel comfortable here, all alone.")
talkEntry:addResponse("Ah, I look forward to meeting you again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Gehabt euch wohl! Wenn eure Kleidung dreckig wird, kommt einfach zu mir zur�ck, ja?")
talkEntry:addResponse("Oh, ihr m��t gehen? Ich f�hl mich gar nicht wohl, so ganz alleine.")
talkEntry:addResponse("Ah, ich freu mich schon darauf, euch wiederzusehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I feel... clean!")
talkEntry:addResponse("Oh, I am so worried, maybe you can help me?")
talkEntry:addResponse("Afraid!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir geht es... sauber!")
talkEntry:addResponse("Oh, ich bin so besorgt, vielleicht k�nnt ihr mir ja helfen.")
talkEntry:addResponse("Ich hab Angst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Myrthe. Hello!")
talkEntry:addResponse("Myrthe Mildthorn, at your service.")
talkEntry:addResponse("Washer woman Myrthe Mildthorn reports for duty!")
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
talkEntry:addResponse("Ich bin die Myrthe. Hallo!")
talkEntry:addResponse("Myrthe Mildthorn, stets zu Diensten.")
talkEntry:addResponse("Waschweib Myrthe Mildthorn meldet sich zur Stelle!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] A Cave in the Woods I"))
talkEntry:addConsequence(consequence_item(391, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 1))
talkEntry:addResponse("Since my old friend the bear is no more, wolves scare me every night. Could you go north to their cave and... tame them... for good? Have this torch, it is pretty dark inside.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eine H�hle im Wald I"))
talkEntry:addConsequence(consequence_item(391, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 1))
talkEntry:addResponse("Seitdem mein alter Freund der B�r nicht mehr ist, f�rchte ich mich jede Nacht vor den W�lfen. K�nntet ihr bitte nach Norden ziehen und sie... f�r immer... z�hmen? Nehmt diese Fackel, es ist dunkel da drinnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] A Cave in the Woods I"))
talkEntry:addConsequence(consequence_item(391, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 1))
talkEntry:addResponse("Since my old friend the bear is no more, wolves scare me every night. Could you go north to their cave and... tame them... for good? Have this torch, it is pretty dark inside.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eine H�hle im Wald I"))
talkEntry:addConsequence(consequence_item(391, 1, 399, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 1))
talkEntry:addResponse("Seitdem mein alter Freund der B�r nicht mehr ist, f�rchte ich mich jede Nacht vor den W�lfen. K�nntet ihr bitte nach Norden ziehen und sie... f�r immer... z�hmen? Nehmt diese Fackel, es ist dunkel da drinnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(79, "=", 12))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Oh, how great! Now I can sleep without the wolves scaring me. Here, take my weekly pay, please do not refuse it. Another adventure awaits you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(79, "=", 12))
talkEntry:addResponse("Oh, how great! Now I can sleep without the wolves scaring me. Here, take my weekly pay, please do not refuse it. Another adventure awaits you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 11))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(79, "=", 12))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Oh, wie fein! Jetzt kann ich die Nacht ohne Angst vor den W�lfen durchschlafen. Hier, nehmt meinen Wochenlohn, lehnt ihn bitte nicht ab. Ein weiteres Abenteuer wartet auf euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 11))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(79, "=", 12))
talkEntry:addResponse("Oh, wie fein! Jetzt kann ich die Nacht ohne Angst vor den W�lfen durchschlafen. Hier, nehmt meinen Wochenlohn, lehnt ihn bitte nicht ab. Ein weiteres Abenteuer wartet auf euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 0))
talkEntry:addCondition(condition_quest(79, "<", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("There is still a pack of wolves to the north. Can't you hear them howling?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 0))
talkEntry:addCondition(condition_quest(79, "<", 11))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Immernoch treibt ein Rudel W�lfe sein Unwesen im Norden. H�rt ihr nicht ihr Gejaule?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 0))
talkEntry:addCondition(condition_quest(79, "<", 11))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("There is still a pack of wolves to the north. Can't you hear them howling?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 0))
talkEntry:addCondition(condition_quest(79, "<", 11))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Immernoch treibt ein Rudel W�lfe sein Unwesen im Norden. H�rt ihr nicht ihr Gejaule?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] A Cave in the Woods II"))
talkEntry:addConsequence(consequence_quest(79, "=", 13))
talkEntry:addResponse("You are a true hero. Wild dogs are hunting everything, even halflings. Please, will you... tame them, too?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 12))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eine H�hle im Wald II"))
talkEntry:addConsequence(consequence_quest(79, "=", 13))
talkEntry:addResponse("Ihr seid wahrhaftig ein Held. Wilde Hunde jagen alles und jeden, sogar Halblinge. Bitte, k�nntet ihr sie auch... ruhigstellen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 12))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] A Cave in the Woods II"))
talkEntry:addConsequence(consequence_quest(79, "=", 13))
talkEntry:addResponse("You are a true hero. Wild dogs are hunting everything, even halflings. Please, will you... tame them, too?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 12))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eine H�hle im Wald II"))
talkEntry:addConsequence(consequence_quest(79, "=", 13))
talkEntry:addResponse("Ihr seid wahrhaftig ein Held. Wilde Hunde jagen alles und jeden, sogar Halblinge. Bitte, k�nntet ihr sie auch... ruhigstellen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and a yellow robe."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(195, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 19))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Wonder... wonderful! The dogs were so mean. Here, a customer forgot to pick up a robe, it is yours now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and a yellow robe."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(195, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 19))
talkEntry:addResponse("Wonder... wonderful! The dogs were so mean. Here, a customer forgot to pick up a robe, it is yours now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 18))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und eine gelbe Robe."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(195, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 19))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Wunder, wunderbar! Die Hunde waren so b�se! Hier, ein Kunde verga� eine Robe bei mir abzuholen, sie sei nun eure.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 18))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und eine gelbe Robe."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_item(195, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 19))
talkEntry:addResponse("Wunder, wunderbar! Die Hunde waren so b�se! Hier, ein Kunde verga� eine Robe bei mir abzuholen, sie sei nun eure.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 12))
talkEntry:addCondition(condition_quest(79, "<", 18))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I saw a black shadow again! Are there still mean dogs around?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 12))
talkEntry:addCondition(condition_quest(79, "<", 18))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe erneut einen schwarzen Schatten gesehen! Sind etwa noch wilde Hunde in der Gegend?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 12))
talkEntry:addCondition(condition_quest(79, "<", 18))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I saw a black shadow again! Are there still mean dogs around?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 12))
talkEntry:addCondition(condition_quest(79, "<", 18))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ich habe erneut einen schwarzen Schatten gesehen! Sind etwa noch wilde Hunde in der Gegend?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 19))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] A Cave in the Woods III"))
talkEntry:addConsequence(consequence_quest(79, "=", 20))
talkEntry:addResponse("Did you see that web? That giant web in the woods? It has to belong to a giant spider! Just imagine if such a beast came here. Can you... prevent this?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 19))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eine H�hle im Wald III"))
talkEntry:addConsequence(consequence_quest(79, "=", 20))
talkEntry:addResponse("Habt ihr dieses Netz gesehen? Dieses riesen Netz im Wald? Es muss einer riesigen Spinne geh�ren. Stellt euch nur vor, so ein Biest w�rde hierher kommen! K�nnt ihr das... verhindern?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 19))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] A Cave in the Woods III"))
talkEntry:addConsequence(consequence_quest(79, "=", 20))
talkEntry:addResponse("Did you see that web? That giant web in the woods? It has to belong to a giant spider! Just imagine if such a beast came here. Can you... prevent this?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 19))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Eine H�hle im Wald III"))
talkEntry:addConsequence(consequence_quest(79, "=", 20))
talkEntry:addResponse("Habt ihr dieses Netz gesehen? Dieses riesen Netz im Wald? Es muss einer riesigen Spinne geh�ren. Stellt euch nur vor, so ein Biest w�rde hierher kommen! K�nnt ihr das... verhindern?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a novice robe."))
talkEntry:addConsequence(consequence_item(547, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 22))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Hooray! Now the woods are peaceful again and I can continue washing the laundry in peace. An apprentice of Runewick left her robe with me; I think her name was Zaida. Have it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a novice robe."))
talkEntry:addConsequence(consequence_item(547, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 22))
talkEntry:addResponse("Hooray! Now the woods are peaceful again and I can continue washing the laundry in peace. An apprentice of Runewick left her robe with me; I think her name was Zaida. Have it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 21))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Novizenrobe."))
talkEntry:addConsequence(consequence_item(547, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 22))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Hurra! Nun, da der Wald wieder friedlich ist, kann ich ungest�rt meine W�sche waschen. Eine Novizin aus Runewick hat ihre Robe hier bei mir vergessen; ich glaube, ihr Name war Zaida. Hier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 21))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Novizenrobe."))
talkEntry:addConsequence(consequence_item(547, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(79, "=", 22))
talkEntry:addResponse("Hurra! Nun, da der Wald wieder friedlich ist, kann ich ungest�rt meine W�sche waschen. Eine Novizin aus Runewick hat ihre Robe hier bei mir vergessen; ich glaube, ihr Name war Zaida. Hier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 19))
talkEntry:addCondition(condition_quest(79, "<", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("A giant spider built a giant web in the woods! I fear for my life!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 19))
talkEntry:addCondition(condition_quest(79, "<", 21))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Eine riesige Spinne hat ein riesiges Netz im Wald gebaut! Ich f�rchte um mein Leben!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 19))
talkEntry:addCondition(condition_quest(79, "<", 21))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("A giant spider built a giant web in the woods! I fear for my life!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, ">", 19))
talkEntry:addCondition(condition_quest(79, "<", 21))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Eine riesige Spinne hat ein riesiges Netz im Wald gebaut! Ich f�rchte um mein Leben!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 22))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh, you did so much for me, the woods and the laundry. You can bring me your laundry whenever you want - I'll wash it for free!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 22))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh, ihr habt schon so viel f�r mich, den Wald und die W�sche getan. Ihr k�nnt mir eure Schmutzw�sche jederzeit bringen, ich wasche sie kostenlos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 22))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Oh, you did so much for me, the woods and the laundry. You can bring me your laundry whenever you want - I'll wash it for free!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(79, "=", 22))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Oh, ihr habt schon so viel f�r mich, den Wald und die W�sche getan. Ihr k�nnt mir eure Schmutzw�sche jederzeit bringen, ich wasche sie kostenlos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm a washer woman. I earn my money with honest labour and I feel proud of it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Waschweib. Ich verdiene mein Geld mit ehrlicher Arbeit, worauf ich stolz bin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm a washer woman. I earn my money with honest labour and I feel proud of it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Waschweib. Ich verdiene mein Geld mit ehrlicher Arbeit, worauf ich stolz bin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Huh?")
talkEntry:addResponse("Pardon?")
talkEntry:addResponse("What is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Huh?")
talkEntry:addResponse("Pardon?")
talkEntry:addResponse("Was ist das?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Oh, nice to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Oh, ich freue mich, eure Bekanntschaft zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wash")
talkEntry:addTrigger("laundry")
talkEntry:addResponse("Doing the laundry is very important. Otherwise, all the mages and nobles wouldn't have clean robes. How would that look?")
talkEntry:addResponse("As a washer-woman, I am an important member of society. I make people look noble!")
talkEntry:addResponse("Oh, you have some laundry I should wash? Wait a bit, please, I am not done with today's batch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wasch")
talkEntry:addTrigger("W�sche")
talkEntry:addResponse("W�sche waschen ist sehr wichtig. Denn ansonsten h�tten all die Magier und Edelleute keine sauberen Roben. Wir w�rde das denn aussehen!")
talkEntry:addResponse("Als Waschweib bin ich ein wichtiges Mitglied der Gesellschaft. Ich sorge erst daf�r, dass Leute so herrschaftlich aussehen k�nnen!")
talkEntry:addResponse("Oh, ihr habt etwas W�sche, die ich waschen soll? Wartet noch ein wenig, ich bin noch nicht mit dem Stapel f�r heute fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Oh, Yewdale is not far away. Just follow the road, you cannot miss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nana")
talkEntry:addTrigger("Winterbutter")
talkEntry:addResponse("Nana... she lives in Yewdale, am I not right? She cooks the finest soups, indeed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("wolf")
talkEntry:addResponse("In the night, I hear them howling! They even attacked Yewdale once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wolves")
talkEntry:addResponse("In the night, I hear them howling! They even attacked Yewdale once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("dog")
talkEntry:addResponse("Dogs are mean... predators! I don't want them to hunt me, I just want to wash my laundry in peace!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spider")
talkEntry:addResponse("Eeek! I once saw the web of a giant spider between two trees in the north. That was so scary!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cave")
talkEntry:addResponse("To the north, there is an abandoned bear cave. Now wolves, panthers and even terrible spiders dwell there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bear")
talkEntry:addResponse("A bear used to protect us from all the beasts; he guarded his cave and no wolf nor dog dared to come close to the Anthil brook.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Anthil")
talkEntry:addResponse("Anthil's water is perfect for doing laundry. It could be a bit warmer, though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("brook")
talkEntry:addTrigger("river")
talkEntry:addResponse("This brook here is the called the Anthil, didn't you know? The water is pure and clean, just like my laundry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Oh, Eibenthal ist nicht weit von hier. Geht einfach die Stra�e entlang, ihr k�nnte es nicht verfehlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nana")
talkEntry:addTrigger("Winterbutter")
talkEntry:addResponse("Nana... Sie lebt in Eibenthal, nicht wahr? Sie kocht die besten Suppen, ohja.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wolf")
talkEntry:addTrigger("W�lfe")
talkEntry:addResponse("In der Nacht h�re ich ihr Gejaule. Und sie haben sogar schon Yewdale heimgesucht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hund")
talkEntry:addResponse("Hunde sind ganz gemeine Tiere. Ich will nicht, dass sie nach mir jagen, ich will doch nur meine W�sche in Frieden waschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spinne")
talkEntry:addResponse("Eeek! Ich habe letztens ein riesiges Spinnennetz zwischen zwei B�umen im Norden gesehen. Das war so schrecklich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("H�hle")
talkEntry:addResponse("Im Norden gibt es eine alte B�renh�hle. Jetzt hausen dort W�lfe, Panther und schreckliche Spinnen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("B�r")
talkEntry:addResponse("Ein B�r hat uns fr�her vor den wilden Tieren besch�tzt; er bewachte seine H�hle und kein Wolf oder Hund wagte es, hier zum Anthil zu kommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Anthil")
talkEntry:addResponse("Das Wasser des Anthils ist perfekt, um W�sche darin zu waschen. Es k�nnte nur ein wenig w�rmer sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bach")
talkEntry:addTrigger("Fluss")
talkEntry:addTrigger("Flu�")
talkEntry:addResponse("Dieser Bach hier ist der Anthil, wu�tet ihr das nicht? Das Wasser ist sauber und klar, genauso wie meine W�sche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage trusts me, and only me, to wash his robes. I feel so honoured!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier traut nur mir die W�sche seiner Roben an. Ich f�hle mich so geehrt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage trusts me, and only me, to wash his robes. I feel so honoured!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier traut nur mir die W�sche seiner Roben an. Ich f�hle mich so geehrt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is that magnificient town to the east. I wash the laundry of the citizens! Isn't that great?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist diese gro�artige Stadt im Osten. Ich wasche die W�sche der B�rger! Ist das nicht toll?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Oh, isn't that a cook from the north who cooks pasta from durum wheat semolina?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Oh, ist das nicht ein Koch aus dem Norden, der Nudeln aus Hartweizengrie� kocht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("Once, a dwarf from Galmair called Miggs came to me. He demanded money from me, but then my old friend the bear came and the dwarf ran!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Einst kam ein Zwerg namens Miggs aus Galmair zu mir. Er verlangte Geld, doch dann kam mein alter Freund der B�r und der Zwerg rannte davon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Ui, the Queen of Cadomyr? I wish I could be a queen, too.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ui, die K�nigin von Cadomyr? Ich w�nschte, ich w�re auch eine K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ui, the Queen of Cadomyr? I wish I'd be a queen, too.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ui, die K�nigin von Cadomyr? Ich w�nschte, ich w�re auch eine K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("#me points to the west, 'There is Cadomyr! I've never been there, but I've heard it is a barren place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("#me deutet nach Westen: 'Dort liegt Cadomyr. Ich war noch nie dort, aber ich habe geh�rt, es ist ein staubtrockener Ort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar... I am a simple washer woman. How should I know about such things?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar... ich bin nur ein einfaches Waschweib. Warum sollte ich mich mit solchen Dingen auskennen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Gynk, that sounds funny, what is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Gynk, das klingt witzig, was ist denn das?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I think the Archmage of Runewick is from... Salamander?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich glaube, der Erzmagier von Runewick kommt aus... Salamander?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Oh, I just pray to Tanora. A humble washer woman should not ask for too many favours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ach, ich bete nur zu Tanora. Ein einfaches Waschweib wie ich sollte nicht um zu viele Gefallen bitten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("I pray to Tanora every morning for leaving the water of the Anthil brook as clear as it is now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Ich bete jeden Morgen zu Tanora, auf dass das Wasser der Anthils immer so klar bleibt wie jetzt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I can wash your laundry, but I do not trade with goods.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kann eure Schmutzw�sche waschen, aber ich handele nicht mit Waren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("First, you have to soak the laundry. Wait an hour, but not more. Then, wash it! And do not forget to rinse it twice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Zun�chst m��t ihr die W�sche einweichen. Wartet eine Stunde, aber nicht mehr. Dann wascht sie! Vergesst nicht, sie hinterher zweimal zu sp�len.")
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
talkEntry:addTrigger("moan")
talkEntry:addResponse("I do not moan! I just... notice things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("maulen")
talkEntry:addResponse("Ich maule nicht... Ich mache nur Anmerkungen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ariel")
talkEntry:addTrigger("Sunil")
talkEntry:addTrigger("Persil")
talkEntry:addTrigger("Tandil")
talkEntry:addTrigger("Unamat")
talkEntry:addResponse("I prefer soap.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ariel")
talkEntry:addTrigger("Sunil")
talkEntry:addTrigger("Persil")
talkEntry:addTrigger("Tandil")
talkEntry:addTrigger("Unamat")
talkEntry:addResponse("Ich nehme lieber Seife.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Myrthe")
talkEntry:addTrigger("Mildthorn")
talkEntry:addResponse("Yes, I am Myrthe. My last name is Mildthorn. Because my parents' name was also Mildthorn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Myrthe")
talkEntry:addTrigger("Mildthorn")
talkEntry:addResponse("Ja, ich bin die Myrthe. Mein Nachname ist Mildthorn. Das ist so, weil das auch der Nachname meiner Eltern war.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ohje, ohje.", "Ohje, ohje.")
talkingNPC:addCycleText("#me schrubbt emsig ihre W�sche sauber.", "#me scrubs her laundry clean.")
talkingNPC:addCycleText("#me beobachtet mit vertr�umten Gesichtsausdruck eine Forelle im Wasser.", "#me stares at a trout passing by.")
talkingNPC:addCycleText("#me summt vor sich hin.", "#me hums to herself.")
talkingNPC:addCycleText("#me w�scht W�sche.", "#me washes the laundry clean.")
talkingNPC:addCycleText("#me faltet ein Laken zusammen.", "#me folds a blanket.")
talkingNPC:addCycleText("#me inspiziert ein Loch in einem Umhang und steckt kichernd ihren Finger hindurch.", "#me inspects a hole in a coat and sticks her finger through it, giggling.")
talkingNPC:addCycleText("Ah, nicht nur sauber, sondern rein muss es sein.", "Ah, not just clean but pure as it should be.")
talkingNPC:addCycleText("Willst du viel, sp�l' im Anthil.", "Want to be a dish washer in Anthil?")
talkingNPC:addCycleText("#me reinigt ihr Waschbrett.", "#me cleans her wash board.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist das Waschweib Myrthe Mildthorn.", "This NPC is the washer-woman Myrthe Mildthorn.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 818)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 72)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 824)
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
