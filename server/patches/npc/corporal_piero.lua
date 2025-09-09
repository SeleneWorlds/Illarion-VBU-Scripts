local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_state = require("npc.base.consequence.state")
local consequence_treasure = require("npc.base.consequence.treasure")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 6))
talkEntry:addTrigger("hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Corporal Piero der W�chter. Schl�sselw�rter: Galmair, Runewick, Queen Rosaline."))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Ich bin die Wache. Ich be-Wache Leute. Lang lebe die K�nigin. Danke f�r deine Hilfe mit den Piraten, Zhambra soll dich sch�tzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 6))
talkEntry:addTrigger("help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Corporal Piero the guard. Keywords: Galmair, Runewick, Queen Rosaline."))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("I'm a guard. I guard people. Long live the Queen. Thanks for your help with the pirates. Zhambra will guard you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Corporal Piero the guard. Keywords: Adventure, Queen Rosaline."))
talkEntry:addResponse("Help? I don't know how to help you. But you should be able to help me, as long as you are looking for an little 'adventure'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Corporal Piero der W�chter. Schl�sselw�rter: Abenteuer, K�nigin Rosaline."))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Helfen? Ich wei� nicht wie ich Euch helfen soll. Aber Ihr k�nntet mir helfen, insofern ihr nach einem 'Abenteuer' sucht.")
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
talkEntry:addResponse("Hello.")
talkEntry:addResponse("Zhambras greets.")
talkEntry:addResponse("Be greeted.")
talkEntry:addResponse("Zhambra may bless the Queen.")
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
talkEntry:addResponse("Hallo.")
talkEntry:addResponse("Seid gegr��t.")
talkEntry:addResponse("Zhambra zum Gru�e.")
talkEntry:addResponse("Lang lebe K�nigin Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hello.")
talkEntry:addResponse("Zhambras greets.")
talkEntry:addResponse("Be greeted.")
talkEntry:addResponse("Zhambra may bless the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hallo.")
talkEntry:addResponse("Seid gegr��t.")
talkEntry:addResponse("Zhambra zum Gru�e.")
talkEntry:addResponse("Lang lebe K�nigin Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Have a good day.")
talkEntry:addResponse("Good bye.")
talkEntry:addResponse("Zhambra shall be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehabt Euch wohl.")
talkEntry:addResponse("Einen Sch�nen Tag noch.")
talkEntry:addResponse("Zhambra sei mit Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Have a good day.")
talkEntry:addResponse("Good bye.")
talkEntry:addResponse("Zhambra shall be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gehabt Euch wohl.")
talkEntry:addResponse("Einen Sch�nen Tag noch.")
talkEntry:addResponse("Zhambra sei mit Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm mostly fine. The pirates are quiet. Should I take this as good or bad? I don't know.")
talkEntry:addResponse("As long as Queen Rosaline rules our land, everything is going well.")
talkEntry:addResponse("Hail Zhambra, hail Queen Rosaline! I'm good.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Gr��tenteils gut. Die Piraten verhalten sich ruhig. Ist das ein gutes Zeichen oder ein Schlechtes? Ich wei� es nicht.")
talkEntry:addResponse("So lange K�nigin Rosaline unser Land regiert, geht alles seinen rechten Weges.")
talkEntry:addResponse("Heil Zhambra, Heil K�nigin Rosaline! Mir geht's gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Corporal Piero. Servant of the Queen in Cadomyr.")
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
talkEntry:addResponse("Ich bin Corporal Piero. Diener der K�nigin von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 6))
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addResponse("Nochmals... Habt Dank. Ihr habt Cadomyr sehr geholfen. Zhambra soll Euch sch�tzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tobis")
talkEntry:addTrigger("Vunu")
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thanks, again. You helped Cadomyr very much. Zhambra will bless you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 6))
talkEntry:addTrigger("Tobis")
talkEntry:addTrigger("Vunu")
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nochmals... Habt Dank. Ihr habt Cadomyr sehr geholfen. Zhambra soll Euch sch�tzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 6))
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addResponse("Thanks, again. You helped Cadomyr very much. Zhambra will bless you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addConsequence(consequence_item(356, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 6))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("Gut gut! Ihr bringt gute Nachricht. Im Namen Cadomyrs will ich Euch danken und diese Karte �berreichen. Sie stammt aus der Piraten Hand... oh und Tobis meinte ich soll Euch diesen Hut geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tobis")
talkEntry:addTrigger("Vunu")
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_item(356, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 6))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("Well well! You deliver good news. In name of the great Cadomyr I would like to thank you and present you this map I was able to capture from the pirate's hands...oh and Tobis told me to hand you this hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addTrigger("Tobis")
talkEntry:addTrigger("Vunu")
talkEntry:addTrigger("corporal")
talkEntry:addTrigger("Piero")
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addConsequence(consequence_item(356, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 6))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("Gut gut! Ihr bringt gute Nachricht. Im Namen Cadomyrs will ich Euch danken und diese Karte �berreichen. Sie stammt aus der Piratenhand... oh und Tobis meinte ich soll Euch diesen Hut geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 5))
talkEntry:addTrigger("Message")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addConsequence(consequence_item(356, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(305, "=", 6))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("Well well! You deliver good news. In name of the great Cadomyr I would like to thank you and present you this map I was able to capture from the pirate's hands... oh and Tobis told me to hand you this hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addConsequence(consequence_inform("'Gro�artig. Also auf in die Piratenbucht! Arrr, Landratte!'"))
talkEntry:addResponse("Irgendwo in der Piratenbucht treibt sich mein Freund Tobis Vunu herum. Sage ihm das ich Euch sende und er wird sich Euch anvertrauen. Seine Informationen sind ausgesprochen wichtig f�r die Wache Cadomyrs. Viel Gl�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("'Awesome! Let's find a way to Pirate Bay! Arr, lubber!'"))
talkEntry:addResponse("My friend Tobis Vunu roams the caves of Pirate Bay. Tell him, I send you and he will talk to you. His information is very important for the guard of Cadomyr. Good luck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addTrigger("info")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("'Gro�artig. Also auf in die Piratenbucht! Arrr, Landratte!'"))
talkEntry:addResponse("Irgendwo in der Piratenbucht treibt sich mein Freund Tobis Vunu herum. Sage ihm das ich Euch sende und er wird sich Euch anvertrauen. Seine Informationen sind ausgesprochen wichtig f�r die Wache Cadomyrs. Viel Gl�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addConsequence(consequence_inform("'Awesome! Let's find a way to Pirate Bay! Arr, lubber!'"))
talkEntry:addResponse("My friend Tobis Vunu roams the caves of Pirate Bay. Tell him, I send you and he will talk to you. His information is very important for the guard of Cadomyr. Good luck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 0))
talkEntry:addTrigger("verdienen")
talkEntry:addTrigger("aufgabe")
talkEntry:addTrigger("abenteuer")
talkEntry:addConsequence(consequence_inform("'Soll das ein Auftrag sein? Besser, ich frage nach mehr Informationen...'"))
talkEntry:addConsequence(consequence_quest(305, "=", 1))
talkEntry:addResponse("In der Tat. Ja, ja. Im Namen der W�chter Cadomyrs bin ich erm�chtigt Euch einen Auftrag zu erteilen. Sucht Euren Weg in die Bucht der Piraten. Tobis Vunu hat Informationen f�r mich die ausgesprochen wichtig sind. �bergebt mir diese Botschaft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("'Is that a task or not? I should ask for more information..."))
talkEntry:addConsequence(consequence_quest(305, "=", 1))
talkEntry:addResponse("Indeed. Yes, yes. In name of the guard Cadomyr, I am to issue you a task. Find a way to Pirate Bay. Tobis Vunu holds information which is very important for me, deliver this message to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("job")
talkEntry:addTrigger("problem")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("'Soll das ein Auftrag sein? Besser, ich frage nach mehr Informationen...'"))
talkEntry:addConsequence(consequence_quest(305, "=", 1))
talkEntry:addResponse("In der Tat. Ja, ja. Im Namen der W�chter Cadomyrs bin ich erm�chtigt Euch einen Auftrag zu erteilen. Sucht Euren Weg in die Bucht der Piraten. Tobis Vunu hat Informationen f�r mich die ausgesprochen wichtig sind. �bergebt mir diese Botschaft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(305, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("money")
talkEntry:addTrigger("earn")
talkEntry:addConsequence(consequence_inform("'Is that a task or not? I should ask for more information..."))
talkEntry:addConsequence(consequence_quest(305, "=", 1))
talkEntry:addResponse("Indeed. Yes, yes. In name of the guard Cadomyr, I am to issue you a task. Find a way to Pirate Bay. Tobis Vunu holds information which is very important for me, deliver this message to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't have any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich vergebe keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't have any tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich vergebe keine Aufgaben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm a guard. I guard people. Long live the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Wache. Ich be-Wache Leute. Lang lebe die K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm a guard. I guard people. Long live the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Wache. Ich be-Wache Leute. Lang lebe die K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Never heard of that. Is it far away?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Davon hab ich nie geh�rt. Ist das weit weg?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("I feel honoured to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ich f�hle mich geehrt Euch zu treffen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("murgo")
talkEntry:addResponse("Murgo. Sure I heard about him, he's quite famous in these lands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("murgo")
talkEntry:addResponse("Murgo. Sicher hab ich von ihm geh�rt. Er is richtig ber�hmt in diesen Landen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Corporal Piero, servant of the Queen in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wie hei[s�]+t du")
talkEntry:addTrigger("wie hei[s�]+t ihr")
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer seid")
talkEntry:addTrigger("wer bist")
talkEntry:addResponse("Ich bin Corporal Piero. Diener der K�nigin von Cadomyr")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Archmage Elvaine Morgan is the ruler of Runewick. They say nobody dares to disagree with him, not because one is afraid of him, but nobody knows it better than him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Erzmagier Elvaine Morgan ist der Herrscher �ber Runewick. Es hei�t niemand wagt es ihm zu widersprechen. Aber nicht aus Angst, sondern weil es niemanden gibt der es besser w��te.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Archmage Elvaine Morgan is the ruler of Runewick. They say nobody dares to disagree with him, not because one is afraid of him, but nobody knows it better than him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Erzmagier Elvaine Morgan ist der Herrscher �ber Runewick. Es hei�t niemand wagt es ihm zu widersprechen. Aber nicht aus Angst, sondern weil es niemanden gibt der es besser w��te.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Urgh. Runewick. Sounds to me like a place I never want to go. It's filled with arrogant bookworms who claim to know it all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Erzmagier Elvaine Morgan ist der Herrscher �ber Runewick. Es hei�t niemand wagt es ihm zu widersprechen. Aber nicht aus Angst, sondern weil es niemanden gibt der es besser w��te.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio Guilianni is the richest man in the whole of Galmair. So I will say... he holds the politics in hand there like no other.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Valerio Guilianni ist der reichste Mann in ganz Galmair. Also w�rde ich sagen, er h�lt die Politik der Stadt in H�nden wie kein anderer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("A chaotic mess, filled with scum. Their wealth is the only thing to count. Most of the people haven't got any sense of honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ein chaotisches Moloch. �berf�llt mit Abschaum. Reichtum ist dort alles was z�hlt. Dort kennt man keine Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("king")
talkEntry:addResponse("The King is dead. Long live the Queen. When King Reginald Edwards died, Queen Rosaline was able to inherit the crown, aginst the plans of some nobles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nig")
talkEntry:addResponse("Der K�nig ist tot. Lang lebe die K�nigin. Als K�nig Reginald Edwards verstarb, war es K�nigin Rosaline m�glich den Tron zu besteigen. Wider den Pl�nen von so manchen Adeligen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("The King is dead. Long live the Queen. When King Reginald Edwards died, Queen Rosaline was able to inherit the crown, aginst the plans of some nobles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("Der K�nig ist tot. Lang lebe die K�nigin. Als K�nig Reginald Edwards verstarb, war es K�nigin Rosaline m�glich den Tron zu besteigen. Wider den Pl�nen von so manchen Adeligen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("God bless Queen Rosaline Edwards. She is the absolute ruler of our awesome land. The King's blood is strong and clean in her veins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Gott sch�tze K�nigin Rosaline Edwards. Sie ist die absolute Herrscherin unseres gro�artigen Landes. Das Blut der K�nige flie�t stark und rein in ihren Adern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("God bless Queen Rosaline Edwards. She is the absolute ruler of our awesome land. The King's blood is strong and clean in her veins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Gott sch�tze K�nigin Rosaline Edwards. Sie ist die absolute Herrscherin unseres gro�artigen Landes. Das Blut der K�nige flie�t stark und rein in ihren Adern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Hail our crest. Hail our flags! Long live Cadomyr and the code of honour. I'm proud to call myself a servant of Queen Rosaline.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Heil unserem Wappen. Heil unserer Fahne! Lang lebe Cadomyr und der Codex der Ehre. Ich bin stolz mich einen Diener, K�nigin Rosalines zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("This is Cadomyr's Land. Albar is far away and I have no use in knowledge about such countries.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Wir sind hier in Cadomyr. Albar ist weit weg - was n�tzt es mir �ber solche L�nder bescheid zu wissen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("This is Cadomyr's Land. Gynk is far away and I have no use in knowledge about such countries.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Wir sind hier in Cadomyr. Gynk ist weit weg - was n�tzt es mir �ber solche L�nder bescheid zu wissen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("This is Cadomyr's Land. Salkamar is far away and I have no use in knowledge about such countries.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Wir sind hier in Cadomyr. Salkamar ist weit weg - was n�tzt es mir �ber solche L�nder bescheid zu wissen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("God save the Queen. I count on Zhambra for that!")
talkEntry:addResponse("In Cadomyr, many praise Zhambra or Malach�n!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Gott sch�tze die K�nigin. Ich pers�nlich vertraue diese Aufgabe Zhambra an.")
talkEntry:addResponse("In Cadomyr betet Mann zu Zhambra oder Malach�n!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n! The god of knights and hunters! He's a strong fella, each honest man should praise him! Do you praise him?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n! Der Gott der Ritter und J�ger! Ein starker Gef�hrte, jeder ehrenhafte Mann sollte ihm Treu ergeben sein! Sprecht! Wem haltet ihr die Treue?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("On the battlefield I count on a sharp blade and my closest friend to watch my back! That's what Zhambra stands for! Friendship.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Auf dem Schlachtfeld verlasse ich mich auf eine scharfe Klinge und meine engsten Freunde die mir den R�cken decken! Dies ist wof�r Zhambra steht. Freundschaft - die �ber den Tod hinaus geht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm a guard. Not a merchant. For sure you are able to trade inside the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin W�chter. Kein H�ndler. Sicherlich k�nnt Ihr hinter den Toren der Stadt handeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Nowhere are the codes of honour followed like here in Cadomyr. For the colours of our town! Zhambra bless it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Nirgendwo hat man so viel Gesp�r f�r wahre Ehre wie wir, in Cadomyr. Bei den Farben unserer Stadt! Zhambra m�ge sie bewaren.")
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
talkingNPC:addCycleText("Lang lebe K�nigin Rosaline Edwards.", "Long live Queen Rosaline Edwards.")
talkingNPC:addCycleText("#me kratzt sich am Nasenr�cken.", "#me scratches his nose.")
talkingNPC:addCycleText("#me holt ein St�ck Brot aus der Tasche und steckt es sich in den Mund.", "#me takes a piece bread out of his bag and eats it.")
talkingNPC:addCycleText("#me nimmt einen kr�ftigen Schluck aus seinen Trinkschlauch.", "#me takes a nip out of his water bottle.")
talkingNPC:addCycleText("#me blickt zur Seite. 'Halt! Wer da? War wohl doch nur der Wind.'", "#me turns to his side. 'Stop! Someone there? Seems the wind tricked me again.'")
talkingNPC:addCycleText("#me kratzt sich unauff�llig am Hinterteil.", "#me has a inconspicuous quick scratch of his butt.")
talkingNPC:addCycleText("#me blickt leicht vertr�umt in den Himmel.", "#me glances up at the sky in slightly dreamy way.")
talkingNPC:addCycleText("#me kaut nachdenklich an den Fingern�geln.", "#me gnaws at his fingernails, a thoughtful gaze on his face.")
talkingNPC:addCycleText("#me fasst sich mit der Hand an die Seite: 'Ghn! Meine alte Verletzung schmerzt...'", "#me grabs his side and moans: 'Ghn! My old wound hurts again...'")
talkingNPC:addCycleText("Ich bin eine Wache. Ich bewache Leute.", "I'm a guard. I guard people.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein W�chter Cadomyrs. Er ist gut rasiert und blickt stolz in die Ferne.", "A guard of Cadomyr. He's well shaved and glances proudly over the area.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 2287)
mainNPC:setEquipment(3, 2369)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2731)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2114)
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
