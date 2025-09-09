local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Jeremiah Horanfeld, the vermin monitor. Keywords: Hello, rats, quest, pride, task, adventure, order, mission."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Jeremiah Horanfeld, der Rattenf�nger. Schl�sselw�rter: Hallo, Ratten, Quest, Stolz, Auftrag, Aufgabe, Abenteuer, mission."))
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
talkEntry:addResponse("Greetings, it is a lovely day.")
talkEntry:addResponse("Greetings in the name of the Queen. Have you come to serve the kingdom?")
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
talkEntry:addResponse("Gr��e, es ist ein sch�ner Tag.")
talkEntry:addResponse("Sei gegr��t im Namen der K�nigin. Bist du gekommen um ihrem Reich zu dienen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addTrigger("Hi")
talkEntry:addResponse("Greetings, it is a lovely day.")
talkEntry:addResponse("Greetings in the name of the Queen. Have you come to serve the kingdom?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Gr��e, es ist ein sch�ner Tag.")
talkEntry:addResponse("Sei gegr��t im Namen der K�nigin. Bist du gekommen um ihrem Reich zu dienen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell, until we meet again.")
talkEntry:addResponse("May the sun of the desert keep you warm til we meet again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Mach's gut bis wir uns wiedersehen.")
talkEntry:addResponse("M�gen die Sonne der W�ste die w�rmen bis wir uns wieder treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Farewell, until we meet again.")
talkEntry:addResponse("May the sun of the desert keep you warm til we meet again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Mach's gut bis wir uns wiedersehen.")
talkEntry:addResponse("M�gen die Sonne der W�ste die w�rmen bis wir uns wieder treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am quite well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir geht es gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Jeremiah Horanfeld, I am the Queen's own Vermin Monitor.")
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
talkEntry:addResponse("Mein Name ist Jeremiah Horanfeld. Ich bin der Rattenf�nger der K�nigin.")
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
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Arbeit f�r dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit f�r dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Arbeit f�r dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit f�r dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe keine Arbeit f�r dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have work for you outsider.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe keine Arbeit f�r dich Vogelfreier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor I. Double click the rope to use it in front of the well."))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 1))
talkEntry:addResponse("Rats! Recently one came out of the cistern. Can you imagin what happened if such a dirty beast came into the eyes of our queen? Go down and kill five rats. Take this rope and descend into the well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor I. Double click the rope to use it in front of the well."))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 1))
talkEntry:addResponse("Rats! Recently one came out of the cistern. Can you imagin what happened if such a dirty beast came into the eyes of our queen? Go down and kill five rats. Take this rope and descend into the well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenf�nger I. Doppelklicke auf das Seil um es zu benutzen wenn du vor dem Brunnen stehst."))
talkEntry:addConsequence(consequence_item(2760, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 1))
talkEntry:addResponse("Ratten! Kam doch k�rzlich wieder eine aus der Zisterne. Kannst du dir vorstellen, wenn so ein dreckiges Vieh die Augen unsere K�nigin beleidigt h�tte? Steig hinab und t�te f�nf Ratten. Nimm dieses Seil und begib dich hinab in den Schacht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Very well, you have done good work for this town. There is more to do yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 7))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Sehr gut, du hast gute Dinge f�r die Stadt getan, aber es ist noch mehr zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("No matter if you don't know what rats are or you couldn't find any. Take the rope and climb down in the well. There you find five rats you have to kill.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("No matter if you don't know what rats are or you couldn't find any. Take the rope and climb down in the well. There you find five rats you have to kill.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wei�t du nicht, wie Ratten aussehen oder findest du keine? Egal. Nimm dein Seil und steig in den Brunnen. Dort wirst du die f�nf Ratten finden, die du t�ten sollst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 0))
talkEntry:addCondition(condition_quest(187, "<", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have to kill five rats. You arn't ready yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 0))
talkEntry:addCondition(condition_quest(187, "<", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You have to kill five rats. You arn't ready yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 0))
talkEntry:addCondition(condition_quest(187, "<", 6))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du solltest f�nf Ratten t�ten. Du bist noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor II"))
talkEntry:addConsequence(consequence_quest(187, "=", 8))
talkEntry:addResponse("Only just I've seen another rat. I need further proof the numbers have went down. Please bring me ten pieces of fur from these rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor II"))
talkEntry:addConsequence(consequence_quest(187, "=", 8))
talkEntry:addResponse("Only just I've seen another rat. I need further proof the numbers have went down. Please bring me ten pieces of fur from these rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenf�nger II"))
talkEntry:addConsequence(consequence_quest(187, "=", 8))
talkEntry:addResponse("Gerade eben habe ich wieder eine Ratte gesehen. Ich ben�tige Beweise, dass die Zahl der Ratten gesunken ist. Bringe mir bitte zehn Rattenfelle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("The Chancellor will be most pleased when he can tell the Queen of our success.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_quest(187, "=", 9))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Die Kanzler wird sehr erfreut sein, wenn er der K�nigin von unseren Erfolgen berichten kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The Queen has given the command to me, reduce the numbers of rates. She wants proof. So go bring me ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("The Queen has given the command to me, reduce the numbers of rates. She wants proof. So go bring me ten rat furs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 8))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Dir K�nigin hat mir den Befehl erteilt, die Anzahl der Ratten zu reduzieren. Sie verlangt Beweise. Geh und bring mir zehn Rattenfelle als Beweis.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor III"))
talkEntry:addConsequence(consequence_quest(187, "=", 10))
talkEntry:addResponse("Despite all the heroic effort you take, the number of rats seem to increase. For the honour and glory of Cadomyr, please kill ten rats in the cistern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor III"))
talkEntry:addConsequence(consequence_quest(187, "=", 10))
talkEntry:addResponse("Despite all the heroic effort you take, the number of rats seem to increase. For the honour and glory of Cadomyr, please kill ten rats in the cistern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 9))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenf�nger III"))
talkEntry:addConsequence(consequence_quest(187, "=", 10))
talkEntry:addResponse("Trotz all deiner heroischen Anstrengungen, es scheinen immer mehr Ratten zu werden. T�te zehn Ratten in der Zisterne f�r den Ruhm und die Ehre Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("I think we are done already. Due to our efforts the glory of the Queen is not harmed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 21))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ich glaub wir haben es fast geschafft. Es ist unseren Bem�hungen zu verdanken, dass die Pracht der K�nigin nicht durch Ratten beeintr�chtigt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 9))
talkEntry:addCondition(condition_quest(187, "<", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("We have the very important task to control the rat population. Kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 9))
talkEntry:addCondition(condition_quest(187, "<", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("e have the very important task to control the rat population. Kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 9))
talkEntry:addCondition(condition_quest(187, "<", 20))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wir haben die ungemein wichtige Aufgabe die Ratten zu dezimieren. T�te zehn Ratten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor IV - Find and 'use' 5 poisoned rat baits in the cistern. Use the bait to verify."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(187, "=", 22))
talkEntry:addResponse("Recently I placed some poisoned carrots. Please verify if the rats touched them, but wear gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 21))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor IV - Find and verify 5 poisoned rat baits in the cistern. Use the bait to verify."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(187, "=", 22))
talkEntry:addResponse("Recently I placed some poisoned carrots. Please verify if the rats touched them, but wear gloves if you touch the baits.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 21))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenf�nger IV - Finde und pr�fe 5 K�der in der Zisterne. Benutze den K�der, um ihn zu pr�fen."))
talkEntry:addConsequence(consequence_quest(253, "=", 0))
talkEntry:addConsequence(consequence_quest(187, "=", 22))
talkEntry:addResponse("Ich habe vor kurzem einige vergiftete M�hren ausgelegt. Pr�fe bitte mindestens 5 der K�der, ob sie angenommen werden. Aber zieh irgendwelche Handschuhe an, wenn du sie anfasst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Find and 'use' 5 poisoned rat baits in the cistern. You must touch (use) the carrots."))
talkEntry:addResponse("Wear gloves and check the baits. This is my chance to solve the rat issue without getting my hands dirty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_quest(253, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("Finde und pr�fe 5 K�der in der Zisterne. Benutze den K�der, um ihn zu pr�fen."))
talkEntry:addResponse("Zieh Handschuhe an und pr�f die K�der. Das ist meine Chance den Ratten beizukommen, ohne mir die H�nde schmutzig zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Are you sure the rats didn't touch the baits? Please verify some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addResponse("Are you sure the rats don't touch the baits? Please verify some more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 22))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("M�hre")
talkEntry:addResponse("Bist du dir sicher, die Ratten versch�hen die K�der? Bitte pr�fe noch einige mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Vermin Monitor V"))
talkEntry:addConsequence(consequence_quest(187, "=", 24))
talkEntry:addResponse("A disaster! We must do something immediately. I can not think of anything better than to kill another ten rats to save our honor.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("poison")
talkEntry:addTrigger("carrot")
talkEntry:addConsequence(consequence_inform("[Solved and new quest] Vermin Monitor V"))
talkEntry:addConsequence(consequence_quest(187, "=", 24))
talkEntry:addResponse("A disaster! We must do something immediately. I can not think of anything better than to kill another ten rats to save our honor.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Gift")
talkEntry:addTrigger("M�hre")
talkEntry:addConsequence(consequence_inform("[Gel�stes und neues Quest] Rattenf�nger V"))
talkEntry:addConsequence(consequence_quest(187, "=", 24))
talkEntry:addResponse("Eine Katastophe! Wir m�ssen unbedingt was tun. Mir f�llt jetzt auch nichts Besseres ein, als weitere zehn Ratten zu t�ten, um unsere Ehre zu retten.")
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("It's said the Queen mentioned the reduced number of vermin. All due to your efforts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(187, "=", 35))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Man sagt die K�nigin hat lobend erw�hnt, dass das Ungeziefer abnimmt. Auch dank deiner Bem�hungen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 23))
talkEntry:addCondition(condition_quest(187, "<", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Saving our honour, you still need to kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 23))
talkEntry:addCondition(condition_quest(187, "<", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Saving our honor, you still need to kill ten rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, ">", 23))
talkEntry:addCondition(condition_quest(187, "<", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Um unsere Ehre zu retten, musst du noch zehn Ratten t�ten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor VI"))
talkEntry:addConsequence(consequence_quest(187, "=", 36))
talkEntry:addResponse("It is said the rats have a king. There must be a single Queen in Cadomyr only. Kill the ratman in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 35))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Vermin Monitor VI"))
talkEntry:addConsequence(consequence_quest(187, "=", 36))
talkEntry:addResponse("It is said the rats have a king. There must be a single Queen in Cadomyr only. Kill the ratman in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 35))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Rattenf�nger VI"))
talkEntry:addConsequence(consequence_quest(187, "=", 36))
talkEntry:addResponse("Man sagt die Ratten haben einen K�nig. In Cadomyr kann es nur eine K�nigin geben. T�te den Rattenmenschen in der Zisterne. Er soll den Namen 'Schn�ffler' tragen. Sicher werden die Ratten sich dann zur�ckziehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 37))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 30 silver coins."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(187, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("You have proven your valour and honour. You will make a good subject for the Queen. And I may get my decoration to become First Vermin Monitor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 37))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 30 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 3000))
talkEntry:addConsequence(consequence_quest(187, "=", 38))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Du hast deinen Mut und deine Ehre bewiesen. Du wirst ein guter Diener der K�nigin sein. Und ich werde sicher zum Oberrattenf�nger bef�rdert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 36))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 36))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Kill the ratman boss in the Cistern, he goes by the Snuffler. I'm sure then the rats will leave!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 36))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("T�te den Rattenmenschen in der Zisterne, er tr�gt den Namen 'Schn�ffler'. Sicher werden die Ratten sich dann zur�ckziehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have done your duty. I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You have done your duty. I have no more work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast deine Arbeit getan. Ich habe nichts mehr f�r dich zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addTrigger("ober")
talkEntry:addTrigger("f�nger")
talkEntry:addTrigger("ratte")
talkEntry:addResponse("Eines Tages werde ich Oberrattenf�nger. Sobald ich die Ratten unter Kontrolle habe.")
talkEntry:addResponse("Sowohl Vater als auch Gro�vater waren Oberrattenf�nger. Bald werde ich esauch sein.")
talkEntry:addResponse("Ich habe geh�rt, dass ich n�chste Woche in den Palast gefufen werde um meine Bef�rderung zum Oberrattenf�nger zu erfahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(187, "=", 38))
talkEntry:addTrigger("first")
talkEntry:addTrigger("vermin")
talkEntry:addTrigger("rat")
talkEntry:addResponse("One day I'll become First Vermin Monitor. Once the rats are under control.")
talkEntry:addResponse("My father and grandffather were decorated as First Vermin Monitor. It is time for me now!")
talkEntry:addResponse("I have heard next week I'll be called to the palace to receive my decoration as First Vermin Monitor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a Vermin Monitor, like my father, and his father before him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Rattenf�nger, wie mein Vater und Gro�vater vor mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a Vermin Monitor, like my father, and his father before him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Rattenf�nger, wie mein Vater und Gro�vater vor mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratte")
talkEntry:addResponse("Mein Vater war auch Rattenf�nger!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rat")
talkEntry:addResponse("My father was a vermin monitor too!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pride")
talkEntry:addResponse("One must exhibit pride in all they do!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stolz")
talkEntry:addResponse("Man muss Stolz zeigen, bei allem was man tut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("name")
talkEntry:addResponse("My name is Jeremiah Horanfeld, I am the Queen's own Vermin Monitor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("name")
talkEntry:addResponse("Mein Name ist Jeremiah Horanfeld. Ich bin der Rattenf�nger der K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("honour")
talkEntry:addResponse("There is no greater honour than serving my Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ehre")
talkEntry:addResponse("Es gibt keine gr��ere Ehre als meiner K�nigin zu dienen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ratman")
talkEntry:addResponse("The ratman in the well claimed himself as king of rats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rattenmenschen")
talkEntry:addResponse("Der Rattenmann in der Zisterne hat sich zum K�nig der Ratten erkl�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I don't know much about the Archmage, but who would follow a man who spends his time reading?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich wei� nicht viel �ber den Erzmagier. Aber wer folgt jemanden der immer nur liest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I don't know much about the Archmage, but who would follow a man who spends his time reading?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich wei� nicht viel �ber den Erzmagier. Aber wer folgt jemanden der immer nur liest?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The residents of Runewick spend all their time in the library.  How can they defend their ruler like that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Bewohner Runewick�s verbringen ihre gesamte Zeit in der Bibliothek. Wie k�nnen sie so ihren Herrscher besch�tzen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("There is no honour in having vast sums of money gained from cheating and stealing like the Don does.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Es ist keine Ehre solche Unmengen von Geld durch Bestehlen und Betr�gen zu ergaunern wie es der Don tut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is the town of greed. They are only concerned where their next coin comes from.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist die Stadt der Habgier. Sie sind nur daran interessiert wo ihre n�chste M�nze herkommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("All Hail the Queen. I serve Her Majesty with my life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Alle bejubeln die K�nigin. Ich diene ihrer Majest�t mit meinem Leben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("All Hail the Queen. I serve Her Majesty with my life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Alle bejubeln die K�nigin. Ich diene ihrer Majest�t mit meinem Leben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is the vast and great desert town. It is an honour to be allowed to live here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist die gewaltige W�stenstadt. Es ist eine Ehre in ihr leben zu d�rfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Necktie")
talkEntry:addTrigger("Hemp")
talkEntry:addTrigger("Inn")
talkEntry:addResponse("The rubbish outlaws at the Necktie Inn have no honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof")
talkEntry:addTrigger("Hanfs")
talkEntry:addTrigger("schlinge")
talkEntry:addTrigger("Necktie")
talkEntry:addResponse("Die Ausgesto�enen des Necktie Inn�s haben keine Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin, god of the hunt, will guide you if you let him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Malachin, der Gott der Jagd wird dich leiten, wenn DU ihm vertraust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("By the mercy of Zhambra, our subjects are loyal to our Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Bei der Gnade Zhambras, unsere Diener stehen loyal zur K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("One day the Goddess Sirani will find me my true love.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Eines Tages wird mich die G�ttin Sirani finden, meine wahre Liebe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm not a trader.")
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
talkingNPC:addCycleText("Ein sch�ner Tag um Ratten zu t�ten.", "Lovely day for killing rats!")
talkingNPC:addCycleText("Die Sonne scheint hier, aber nicht auf die Ratten.", "The sun is shining up here, but not down with the rats!")
talkingNPC:addCycleText("Es ist ein pr�chtiger Tag f�r Cadomyr.", "It's a glorious day in Cadomyr.")
talkingNPC:addCycleText("Jubelt alle der K�nigin zu.", "All hail the Queen!")
talkingNPC:addCycleText("Erwirb Ehre f�r Cadomyr mit allem was du tust.", "Bring honour to Cadomyr with everything you do!")
talkingNPC:addCycleText("Es lohnt sich f�r die K�nigin zu arbeiten.", "It is rewarding, working for the Queen.")
talkingNPC:addCycleText("#me looks around with pride.", "#me looks around with pride.")
talkingNPC:addCycleText("Dies ist die W�ste. Selbst das Rattenjagen ist eine ehrbare T�tigkeit.", "Here in the desert, even rat hunting is an honourable profession.")
talkingNPC:addCycleText("#me reckt seinen Brustkorb so vor, das die R�stung im Sonnenlicht gl�nzt", "#me puffs out his chest, making his armour glint in the sun as you arrive.")
talkingNPC:addCycleText("Ich bin ein loyaler Diener der K�nigin. Das solltest du auch sein!", "I am the Queen's loyal subject. You should be too!")
talkingNPC:addCycleText("Ich habe es mit vergifteten Karotten im Schacht versucht, aber sie haben keine Wirkung auf diese Ratten.", "I have tried poisoned carrots in the well, but they had no effect on those rats!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Jeremiah Horanfeld, der Rattenf�nger.", "This NPC is Jeremiah Horanfeld, the vermin monitor.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 2287)
mainNPC:setEquipment(3, 2369)
mainNPC:setEquipment(11, 2377)
mainNPC:setEquipment(5, 207)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 2111)
mainNPC:setEquipment(10, 771)
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
