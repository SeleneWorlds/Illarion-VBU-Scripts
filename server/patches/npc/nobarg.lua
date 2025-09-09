local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the priest Nobarg. Keywords: Hello, quest, Br�gon, god, information."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Priester Nobarg. Schl�sselw�rter: Hallo, Quest, Br�gon, G�tter, information."))
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
talkEntry:addResponse("#me nods slightly and continues his prayer.")
talkEntry:addResponse("Hmm? Yes, yes.")
talkEntry:addResponse("Br�gon be with you.")
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
talkEntry:addResponse("#me nickt leicht und betet weiter.")
talkEntry:addResponse("Hmm? Ja, ja.")
talkEntry:addResponse("Br�gon mit euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me nods slightly and continues his prayer.")
talkEntry:addResponse("Hmm? Yes, yes.")
talkEntry:addResponse("Br�gon be with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me nickt leicht und betet weiter.")
talkEntry:addResponse("Hmm? Ja, ja.")
talkEntry:addResponse("Br�gon mit euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Good bye.")
talkEntry:addResponse("Br�gon be with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Lebt wohl.")
talkEntry:addResponse("Aufwiedersehen.")
talkEntry:addResponse("Br�gon sei mit euch!")
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
talkEntry:addResponse("Good bye.")
talkEntry:addResponse("Br�gon be with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Lebt wohl.")
talkEntry:addResponse("Aufwiedersehen.")
talkEntry:addResponse("Br�gon sei mit euch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("If Br�gon listens to me today, better.")
talkEntry:addResponse("Would you pray with me?")
talkEntry:addResponse("Fine, Br�gon to honour of course!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Wenn Br�gon mich heute erh�rt, besser.")
talkEntry:addResponse("M�chtet ihr mit mir beten?")
talkEntry:addResponse("Gut, Br�gon zu Ehren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Nobarg.")
talkEntry:addResponse("Nobarg, priest of Br�gon")
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
talkEntry:addResponse("Nobarg")
talkEntry:addResponse("Nobarg, Priester von Br�gon")
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
talkEntry:addCondition(condition_quest(600, "=", 11))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("age")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'Concord'."))
talkEntry:addConsequence(consequence_quest(600, "=", 21))
talkEntry:addResponse("That is not difficult, of course. It was in the Age of Concord! *sings a few lines to himself* The world is perfect. You cannot improve her. La, la,....well, I hope you are satisfied! Farewell! *lowers his head and starts praying*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 11))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Zeitalter")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Eintracht'."))
talkEntry:addConsequence(consequence_quest(600, "=", 21))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Es war im Zeitalter der Eintracht! *singt einige Zeilen vor sich her* Die Welt ist perfekt. Man kann sie nicht verbessern. La, la,...nun gut, ich hoffe ihr seid zufrieden! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 12))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("support")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'comfort'."))
talkEntry:addConsequence(consequence_quest(600, "=", 22))
talkEntry:addResponse("That is not difficult, of course. Br�gon had hoped to comfort the Blood God in his loneliness through the creation of the orcs! Well, there is your answer! Farewell! *lowers his head and starts praying*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 12))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Unterst�tzung")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'tr�sten'."))
talkEntry:addConsequence(consequence_quest(600, "=", 22))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Br�gon hatte die Hoffnung den Blutgott in seiner Einsamkeit zu tr�sten durch die Erschaffung der Orks! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 13))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Purge")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'purge'."))
talkEntry:addConsequence(consequence_quest(600, "=", 23))
talkEntry:addResponse("Of course, no problem. Br�gon is the lifegiver, and purged all impurity and weakness! Well, that is all I have to say about that. *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 13))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Vernichter")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Vernichter'."))
talkEntry:addConsequence(consequence_quest(600, "=", 23))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Br�gon ist der Lebensspender und Vernichter alles Unreinen und Schwachen! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 14))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("realized")
talkEntry:addTrigger("realised")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'Discord'."))
talkEntry:addConsequence(consequence_quest(600, "=", 24))
talkEntry:addResponse("Not a difficult inquiry. It was in the Age of Discord! *sings a few lines to himself* Deep down, where loneliness and darkness reign...well,  I hope my singing satisfied you! Farewell! *lowers his head and starts praying*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 14))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("bemerkt hat")
talkEntry:addTrigger("erkannt hat")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Zwietracht'."))
talkEntry:addConsequence(consequence_quest(600, "=", 24))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Es war im Zeitalter der Zwietracht! *singt einige Zeilen vor sich her* Tief unten, wo Einsamkeit und Dunkelheit herrschen...nun gut, ich hoffe ihr seid zufrieden! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 15))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Sun")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'sunmaker'."))
talkEntry:addConsequence(consequence_quest(600, "=", 25))
talkEntry:addResponse("Of course of course, the 'Daily sunmaker'! All you needed to know farewell! *lowers his head and starts praying*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 15))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Sonne")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Sonnenmacher'."))
talkEntry:addConsequence(consequence_quest(600, "=", 25))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. 'T�glich Sonnenmacher'! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 16))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("remedy")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'Dragon'."))
talkEntry:addConsequence(consequence_quest(600, "=", 26))
talkEntry:addResponse("Easy enough, he sent dragons into the battle. Well, I hope you are satisfied with my answer! Be well! *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 16))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Wiedergutmachung")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Drachen'."))
talkEntry:addConsequence(consequence_quest(600, "=", 26))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Drachen! Er sendete Drachen in die Schlacht...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 17))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("relationship")
talkEntry:addTrigger("relate")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'fire'."))
talkEntry:addConsequence(consequence_quest(600, "=", 27))
talkEntry:addResponse("The answer is simple, fire! There is a fire in both you must feel to understand. I hope that will suffice, be well. *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 17))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("verbindet")
talkEntry:addTrigger("verbindung")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Feuer'."))
talkEntry:addConsequence(consequence_quest(600, "=", 27))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Feuer! Da brennt ein Feuer in beiden, dass du bestimmt noch nicht gesehen hast wie ich annehme...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 18))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Summer")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'Strong'."))
talkEntry:addConsequence(consequence_quest(600, "=", 28))
talkEntry:addResponse("Not difficult, `'Strong in summer'! If that is all I will return to my prayers, be well! *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 18))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Sommer")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Stark'."))
talkEntry:addConsequence(consequence_quest(600, "=", 28))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. 'Stark im Sommer'! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 19))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("pray")
talkEntry:addTrigger("praying")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'live'."))
talkEntry:addConsequence(consequence_quest(600, "=", 29))
talkEntry:addResponse("The answer is rather simple,  orcs see Br�gon as the one who gives life! Well, I hope you are satisfied with this answer! Farewell! *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 19))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("beten")
talkEntry:addTrigger("gebet")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'leben'."))
talkEntry:addConsequence(consequence_quest(600, "=", 29))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Die Orks sehen Br�gon als denjenigen der das Leben schenkt! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Eternity")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'Flame'."))
talkEntry:addConsequence(consequence_quest(600, "=", 30))
talkEntry:addResponse("A noble inquiry, among other things Br�gon will discern whether they lived for the purpose of the Holy Flame or not! Take my words as you will, good day. *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Ewigkeit")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Flamme'."))
talkEntry:addConsequence(consequence_quest(600, "=", 30))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Unteranderem Br�gon wird feststellen, ob sie gerecht und im Sinne der heiligen Flamme gelebt haben! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tribunal")
talkEntry:addConsequence(consequence_inform("[Quest answer is imparted] Deliver the answer to Sir Fludnar Yednos. Your keyword is 'Flame'."))
talkEntry:addConsequence(consequence_quest(600, "=", 30))
talkEntry:addResponse("This is not difficult to understand really. Among other things Br�gon will discern whether they lived for the purpose of the Holy Flame or not! Well, I hope you are satisfied with this answer! Farewell! *Lowers his head and starts praying.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addCondition(condition_quest(603, "=", 8))
talkEntry:addTrigger("Tribunal")
talkEntry:addConsequence(consequence_inform("[Quest Antwort erhalten] �berbringe nun die Antwort zu Sir Fludnar Yednos. Dein Stichwort ist 'Flamme'."))
talkEntry:addConsequence(consequence_quest(600, "=", 30))
talkEntry:addResponse("Das ist nicht schwierig, gewiss. Unteranderem Br�gon wird feststellen, ob sie gerecht und im Sinne der heiligen Flamme gelebt haben! ...nun gut, ich hoffe ihr seid zufrieden mit der Antwort! Lebt wohl! *senkt seinen Kopf und beginnt zu beten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 20))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("know")
talkEntry:addTrigger("question")
talkEntry:addResponse("There is nothing more to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 20))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("wissen")
talkEntry:addTrigger("Frage")
talkEntry:addResponse("Ich habe f�r euch nichts mehr zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("info")
talkEntry:addResponse("There is nothing more to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 20))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("info")
talkEntry:addResponse("Ich habe f�r euch nichts mehr zu tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2553, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(2419, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(224, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' is solved] Ask him your question from Sir Fludnar Yednos"))
talkEntry:addConsequence(consequence_deleteitem(2553, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(2419, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(224, 1, nil))
talkEntry:addConsequence(consequence_quest(603, "=", 8))
talkEntry:addResponse("You have done everything I've asked of you. Tell me what you seek?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2553, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(2419, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(224, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gel�st] Frage ihn nun deine Frage von Sir Fludnar Yednos"))
talkEntry:addConsequence(consequence_deleteitem(2553, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(2419, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(224, 1, nil))
talkEntry:addConsequence(consequence_quest(603, "=", 8))
talkEntry:addResponse("Ihr habt alles gebracht, was ich haben wollte. Was ist eure Frage nun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2553, "all", "=", 0, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("know")
talkEntry:addTrigger("question")
talkEntry:addTrigger("fire")
talkEntry:addTrigger("thing")
talkEntry:addConsequence(consequence_inform("You do not have all three requested items."))
talkEntry:addResponse("Please, do not interrupt me until you've got the pure fire! As I said, I need a pure fire, a red priest robe and a golden goblet. Please bring them all together.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2553, "all", "=", 0, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("wissen")
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Feuer")
talkEntry:addTrigger("Ding")
talkEntry:addConsequence(consequence_inform("Du hast nicht alle drei erforderlichen Gegenst�nde."))
talkEntry:addResponse("Bitte st�rt mich nicht bis ihr das reine Feuer habt! Wie gesagt, ich brauche ein reines Feuer, eine rote Priester Robe und einen Goldkelch. Bitte bringt sie alle zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2553, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("You do not have all three requested items."))
talkEntry:addResponse("Please, do not interrupt me until you've got the pure fire! As I said, I need a pure fire, a red priest robe and a golden goblet. Please bring them all together.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2553, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Du hast nicht alle drei erforderlichen Gegenst�nde."))
talkEntry:addResponse("Bitte st�rt mich nicht bis ihr das reine Feuer habt! Wie gesagt, ich brauche ein reines Feuer, eine rote Priester Robe und einen Goldkelch. Bitte bringt sie alle zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(224, "all", "=", 0, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("know")
talkEntry:addTrigger("question")
talkEntry:addTrigger("goblet")
talkEntry:addTrigger("thing")
talkEntry:addConsequence(consequence_inform("You do not have all three requested items."))
talkEntry:addResponse("Please, do not interrupt me until there is a golden goblet in your possession! As I said, I need a pure fire, a red priest robe and a golden goblet. Please bring them all together.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(224, "all", "=", 0, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("wissen")
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Kelch")
talkEntry:addTrigger("Ding")
talkEntry:addConsequence(consequence_inform("Du hast nicht alle drei erforderlichen Gegenst�nde."))
talkEntry:addResponse("Bitte st�rt mich nicht bis ihr den Goldkelch habt! Wie gesagt, ich brauche ein reines Feuer, eine rote Priester Robe und einen Goldkelch. Bitte bringt sie alle zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(224, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("You do not have all three requested items."))
talkEntry:addResponse("Please, do not interrupt me until there is a golden goblet in your possession! As I said, I need a pure fire, a red priest robe and a golden goblet. Please bring them all together.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(224, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Du hast nicht alle drei erforderlichen Gegenst�nde."))
talkEntry:addResponse("Bitte st�rt mich nicht bis ihr den Goldkelch habt! Wie gesagt, ich brauche ein reines Feuer, eine rote Priester Robe und einen Goldkelch. Bitte bringt sie alle zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2419, "all", "=", 0, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("know")
talkEntry:addTrigger("question")
talkEntry:addTrigger("thing")
talkEntry:addConsequence(consequence_inform("You do not have all three requested items."))
talkEntry:addResponse("Please, do not interrupt me again unless you have that red priest robe. As I said, I need a pure fire, a red priest robe and a golden goblet. Please bring them all together.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2419, "all", "=", 0, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("wissen")
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Ding")
talkEntry:addConsequence(consequence_inform("Du hast nicht alle drei erforderlichen Gegenst�nde."))
talkEntry:addResponse("Bitte st�rt mich nicht bis ihr die rote Priesterrobe habt! Wie gesagt, ich brauche ein reines Feuer, eine rote Priester Robe und einen Goldkelch. Bitte bringt sie alle zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2419, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("You do not have all three requested items."))
talkEntry:addResponse("Please, do not interrupt me again unless you have that red priest robe. As I said, I need a pure fire, a red priest robe and a golden goblet. Please bring them all together..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(603, "=", 5))
talkEntry:addCondition(condition_item(2419, "all", "=", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Du hast nicht alle drei erforderlichen Gegenst�nde."))
talkEntry:addResponse("Bitte st�rt mich nicht bis ihr die rote Priesterrobe habt! Wie gesagt, ich brauche ein reines Feuer, eine rote Priester Robe und einen Goldkelch. Bitte bringt sie alle zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 10))
talkEntry:addCondition(condition_quest(600, "<", 21))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("know")
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("Ask your question from Sir Fludnar Yednos"))
talkEntry:addResponse("Hmm, you are seeking knowledge traveller? Well, what is your question?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 10))
talkEntry:addCondition(condition_quest(600, "<", 21))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("wissen")
talkEntry:addTrigger("Frage")
talkEntry:addConsequence(consequence_inform("Stelle deine Frage von Sir Fludnar Yednos"))
talkEntry:addResponse("Hmm, ihr m�chtet etwas von mir wissen? Nun, was ist eure Frage?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 10))
talkEntry:addCondition(condition_quest(600, "<", 21))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("info")
talkEntry:addConsequence(consequence_inform("Ask your question from Sir Fludnar Yednos"))
talkEntry:addResponse("Hmm, you are seeking knowledge traveller? Well, what is your question?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, ">", 10))
talkEntry:addCondition(condition_quest(600, "<", 21))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("info")
talkEntry:addConsequence(consequence_inform("Stelle deine Frage von Sir Fludnar Yednos"))
talkEntry:addResponse("Hmm, ihr m�chtet etwas von mir wissen? Nun, was ist eure Frage?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 11))
talkEntry:addTrigger("age")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 11))
talkEntry:addTrigger("Zeitalter")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 12))
talkEntry:addTrigger("support")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 12))
talkEntry:addTrigger("Unterst�tzung")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 13))
talkEntry:addTrigger("Purge")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 13))
talkEntry:addTrigger("Vernichter")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 14))
talkEntry:addTrigger("realized")
talkEntry:addTrigger("realised")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 14))
talkEntry:addTrigger("bemerkt")
talkEntry:addTrigger("erkannt")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 15))
talkEntry:addTrigger("Sun")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 15))
talkEntry:addTrigger("Sonne")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 16))
talkEntry:addTrigger("remedy")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 16))
talkEntry:addTrigger("Wiedergutmachung")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 17))
talkEntry:addTrigger("relationship")
talkEntry:addTrigger("relate")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 17))
talkEntry:addTrigger("verbindet")
talkEntry:addTrigger("Verbindung")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 18))
talkEntry:addTrigger("Summer")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 18))
talkEntry:addTrigger("Sommer")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 19))
talkEntry:addTrigger("pray")
talkEntry:addTrigger("praying")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 19))
talkEntry:addTrigger("beten")
talkEntry:addTrigger("gebet")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addTrigger("Eternity")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addTrigger("Ewigkeit")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tribunal")
talkEntry:addConsequence(consequence_inform("[Quest 'Bring requested items to Nobarg' started] Bring him a pure fire, a red priest robe and a golden goblet"))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Well, I know the answer but you have to bring me three things first: A pure element of fire in order to praise Br�gon, a red priest robe in order to replace my old one and a golden goblet for a ritual. Br�gon show you the path to righteousness!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(600, "=", 20))
talkEntry:addTrigger("Tribunal")
talkEntry:addConsequence(consequence_inform("[Quest 'Bringe Nobarg seine erw�nschten Gegenst�nde' gestartet] Bringe ihm ein reines Feuer, eine rote Priester Robe und einen Goldkelch."))
talkEntry:addConsequence(consequence_quest(603, "=", 5))
talkEntry:addResponse("Nun, ich wei� die Antwort, aber ihr m�sst mir erst drei Dinge bringen. Ein reines Feuer, um Br�gon zu w�rdigen, eine rote Priester Robe, um meine alte Robe zu ersetzen und einen Goldkelch f�r ein Ritual. So, geht und bringt mir diese Dinge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pure fire")
talkEntry:addResponse("I really don't know where you can find pure fire. Ask in Runewick, there are people there that know many things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("reines feuer")
talkEntry:addResponse("Ich habe wirklich keine Ahnung wo man reines Feuer findet. Fragt in Runewick. Die Leute dort wissen viele Dinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("robe")
talkEntry:addResponse("You should ask a tailor. Best be off to Runewick or Cadomyr to find a worthy one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("robe")
talkEntry:addResponse("Ihr solltet einen Schneider finden. Ihr solltet in der Lage sein einen in Runewick oder in Cadomyr zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("goblet")
talkEntry:addResponse("I'm sure a finesmith in Cadomyr or Galmair can help forge you a goblet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kelch")
talkEntry:addResponse("Ich bin mir sicher ein Goldschmied in Cadomyr oder in Galmair kann euch bez�glich des Kelches helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favou?r")
talkEntry:addResponse("I don't have time to tell whether gods favour you or not, I have my own duties to attend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Ich habe keine Zeit dir mitzuteilen, ob dir die G�tter gewogen sind oder nicht. Ich habe meine eigenen Verpflichtungen, denen ich nachkommen muss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addTrigger("work")
talkEntry:addResponse("Priest of Br�gon of course.")
talkEntry:addResponse("Priest, perhaps you are inflicted traveller?")
talkEntry:addResponse("Br�gon's devotee is my profession.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addTrigger("arbeit")
talkEntry:addTrigger("was mach")
talkEntry:addResponse("Priest von Br�gon nat�rlich.")
talkEntry:addResponse("Priester, seht ihr das nicht?")
talkEntry:addResponse("Br�gon ist meine Leidenschaft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Priest of Br�gon of course.")
talkEntry:addResponse("Priest, perhaps you are inflicted traveller?")
talkEntry:addResponse("Br�gon's devotee is my duty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Priest von Br�gon nat�rlich.")
talkEntry:addResponse("Priester, seht ihr das nicht?")
talkEntry:addResponse("Br�gon ist meine Leidenschaft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("I am")
talkEntry:addTrigger("my name")
talkEntry:addResponse("Do you pray to Br�gon too?")
talkEntry:addResponse("Nice name, I like it.")
talkEntry:addResponse("Well I hope you have offered you prayers to Lord Br�gon this day traveller.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ich bin")
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Betet ihr auch zu Br�gon?")
talkEntry:addResponse("Sch�ner Name, gef�llt mir.")
talkEntry:addResponse("Gut, aber nun kommt und lasst uns zu Br�gon beten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bearer")
talkEntry:addResponse("They fight for the light and protect the weak ones.")
talkEntry:addResponse("A very honourable community.")
talkEntry:addResponse("Fire is in them, that they carry the light as far as possible.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("doom")
talkEntry:addTrigger("extinction")
talkEntry:addTrigger("collapse")
talkEntry:addTrigger("fall")
talkEntry:addResponse("It was horrible!")
talkEntry:addResponse("Br�gon be praised that he saved me!")
talkEntry:addResponse("Pray that it never happens again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("horrible")
talkEntry:addResponse("The fall of Gobaith")
talkEntry:addResponse("The last days of Gobaith.")
talkEntry:addResponse("Yes, it was so...I don't have words to describe it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("died")
talkEntry:addTrigger("death")
talkEntry:addTrigger("what did happen")
talkEntry:addTrigger("what happened")
talkEntry:addResponse("Yes, many died in those days.")
talkEntry:addResponse("Yes, but some did flee, I think you can find them here somewhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dragon")
talkEntry:addResponse("These creatures are children of Br�gon and are protected by him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tr�ger")
talkEntry:addResponse("Die k�mpfen f�r das Licht und sch�tzen die Schwachen.")
talkEntry:addResponse("Eine sehr ehrenhafte Gemeinschaft.")
talkEntry:addResponse("Das Feuer brenne in ihnen, dass sie das Licht weit tragen werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Untergang")
talkEntry:addTrigger("Zerst�rung")
talkEntry:addResponse("Es war furchtbar!")
talkEntry:addResponse("Br�gon sei gepriesen, dass er mich rettete!")
talkEntry:addResponse("Bettet, dass es nie wieder passiert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("furchtbar")
talkEntry:addResponse("Der Untergang von Gobaith.")
talkEntry:addResponse("Die letzten Tage von Gobaith.")
talkEntry:addResponse("Ja, es war so...Ich habe keine W�rter um es besser zu beschreiben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tot")
talkEntry:addTrigger("gestorben")
talkEntry:addTrigger("starben")
talkEntry:addTrigger("was ist passiert")
talkEntry:addTrigger("was ist geschehen")
talkEntry:addResponse("Ja, viele sind gestorben.")
talkEntry:addResponse("Ja, aber manche konnten fliehen. Ich denke ihr k�nnt sie hier irgendwo finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drachen")
talkEntry:addResponse("Diese Kreaturen sind Kinder von Br�gon und werden gesch�tzt von ihm!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gold")
talkEntry:addResponse("Br�gon loves gold and I have given him every gold that I have ever got.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gold")
talkEntry:addResponse("Br�gon liebt Gold und ich gebe ihm alles Gold, dass ich habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("five")
talkEntry:addResponse("There are five Elder Gods and several Younger Gods. The Elder Gods are Br�gon, Ushara, Eldan, Tanora and Findari. All but one have left us for another realm, for our protection.")
talkEntry:addResponse("Br�gon, Ushara, Eldan, Tanora and Findari are their names. We have a statue of each of them here. The only exception is Eldan... so, take a look!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("f�nf")
talkEntry:addResponse("Es gibt f�nf alte G�tter und mehrere junge G�tter. Die alten sind Br�gon, Ushara, Eldan, Tanora und Findari. Sie haben uns in eine andere Ebene verlassen.")
talkEntry:addResponse("Br�gon, Ushara, Eldan, Tanora und Findari sind ihre Namen. Wir haben von jeden von ihnen eine Statue hier. Eldan ist die Ausnahme... Aber werft doch einen Blick auf sie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("level")
talkEntry:addResponse("Yes level. Other people call it world. However, Illarion is our level. For more information ask someone else.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ebene")
talkEntry:addResponse("Ja Ebene. Andere nennen sie auch Welt. Wie dem auch sei, Illarion ist unsere Ebene. F�r mehr Information fragt jemand anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel")
talkEntry:addResponse("Chapel of the Five? The name of this place. It was built after one of the many wars between the towns to praise the Five for the peace, but don't ask after which war. I don't know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle")
talkEntry:addResponse("Kapelle der F�nf? Der Name dieses Orts. Sie wurde nach einem der vielen Kriege zwischen den St�dten erbaut um die F�nf f�r den Frieden zu huldigen. Aber ich habe keine Ahung nach welchem Krieg.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("statue")
talkEntry:addResponse("If you take a look our statues here you will find representations of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("statue")
talkEntry:addResponse("Wenn ihr einen Blick auf die Statuen hier werft, werdet ihr die F�nf sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("four")
talkEntry:addResponse("Four? Statues? Of course! There is no need for Eldan. We are surrounded by Eldan anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("vier")
talkEntry:addResponse("Vier? Statuen? Nat�rlich! Es besteht kein Grund f�r Eldan. Wir sind ohnehin umgeben von Eldan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Does he believe in Br�gon? Then I do not care about him.")
talkEntry:addResponse("He rules Runewick as far as I know.")
talkEntry:addResponse("I think he knows many things about arcane magic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Glaubt er an Br�gon? Ansonsten interessiert er mich nicht.")
talkEntry:addResponse("Er regiert Runewick soweit ich wei�.")
talkEntry:addResponse("Ich denke er wei� viele Dinge �ber arkane Magie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Does he believe in Br�gon? Then I do not care about him.")
talkEntry:addResponse("He rules Runewick as far as I know.")
talkEntry:addResponse("I think he knows many things about arcane magic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Glaubt er an Br�gon? Ansonsten interessiert er mich nicht.")
talkEntry:addResponse("Er regiert Runewick soweit ich wei�.")
talkEntry:addResponse("Ich denke er wei� viele Dinge �ber arkane Magie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("They are looking for wisdom. But I don't know why they are always looking for it in the west.")
talkEntry:addResponse("They think they are wise, but I don't know if I agree.")
talkEntry:addResponse("I can remember a large bridge when you enter the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die suchen nach Weisheit. Aber warum sie sie st�ndig im Westen suchen, wei� ich nicht.")
talkEntry:addResponse("Die denken, dass sie weise sind, aber ich wei� nicht ob ich darin zustimmen soll.")
talkEntry:addResponse("Ich kann mich an eine gro�e Br�cke erinnern wenn man die Stadt betritt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Does he believe in Br�gon? Then I do not care about him.")
talkEntry:addResponse("He is the richest man in Galmair.")
talkEntry:addResponse("He is quite good with his daggers, particularly if he has your flank.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Glaubt er an Br�gon? Ansonsten interessiert er mich nicht.")
talkEntry:addResponse("Er ist der reichste Mann in Galmair.")
talkEntry:addResponse("Er kann ganz gut mit Dolchen umgehen. Vor allem wenn er von hinten kommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("They are looking for coins and are not interested in sacrificing them to Br�gon.")
talkEntry:addResponse("Take care of your belongings if you are there.")
talkEntry:addResponse("Do not trust anyone there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Die sind auf Geld aus und werden es bestimmt nicht Br�gon spenden.")
talkEntry:addResponse("Achtet auf euer Hab und Gut wenn ihr dort seid.")
talkEntry:addResponse("Vertraut niemanden dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Does she believe in Br�gon? Then I do not care about her.")
talkEntry:addResponse("She is on a quick road to ruining Cadomyr.")
talkEntry:addResponse("Lovely face, but nothing more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Glaubt sie an Br�gon? Ansonsten interessiert sie mich nicht.")
talkEntry:addResponse("Sie st�rzt Cadomyr in den Ruin.")
talkEntry:addResponse("Nettes Gesicht, aber nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Does she believe in Br�gon? Then I do not care about her.")
talkEntry:addResponse("She is on a quick road to ruining Cadomyr.")
talkEntry:addResponse("Lovely face, but nothing more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Glaubt sie an Br�gon? Ansonsten interessiert sie mich nicht.")
talkEntry:addResponse("Sie st�rzt Cadomyr in den Ruin.")
talkEntry:addResponse("Nettes Gesicht, aber nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("They live for their so called honour, and it is found to the east. Their troops often march by my temple.")
talkEntry:addResponse("A very sandy town.")
talkEntry:addResponse("I have no idea the exact route there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Die suchen nach Ehre, und anscheinend d�rfte sie im Osten liegen, da ich schon �fters Truppen dieser Stadt diesen Tempel passieren gesehen habe.")
talkEntry:addResponse("Eine sehr sandige Stadt.")
talkEntry:addResponse("Ich habe keine Ahnung wie ihr dort hinkommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("One of the big empires, but I have never been there.")
talkEntry:addResponse("Who cares about this town?")
talkEntry:addResponse("Hmm...I don't know if they pray to Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Eines der gro�en Reiche, aber ich war nie dort.")
talkEntry:addResponse("Wer interessiert sich schon f�r diese Stadt?")
talkEntry:addResponse("Ich wei� nicht, ob die zu Br�gon beten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("One of the big empires, but I have never been there.")
talkEntry:addResponse("Who cares about this town?")
talkEntry:addResponse("Hmm...I don't know if they pray to Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Eines der gro�en Reiche, aber ich war nie dort.")
talkEntry:addResponse("Wer interessiert sich schon f�r diese Stadt?")
talkEntry:addResponse("Ich wei� nicht, ob die zu Br�gon beten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("One of the big empires, but I have never been there.")
talkEntry:addResponse("Who cares about this town?")
talkEntry:addResponse("Hmm...I don't know if they pray to Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Eines der gro�en Reiche, aber ich war nie dort.")
talkEntry:addResponse("Wer interessiert sich schon f�r diese Stadt?")
talkEntry:addResponse("Ich wei� nicht, ob die zu Br�gon beten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Br�gon, Br�gon and again Br�gon.")
talkEntry:addResponse("I pray to Br�gon, join me.")
talkEntry:addResponse("I believe in Br�gon and his fire.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Br�gaon, Br�gon und nochmals Br�gon.")
talkEntry:addResponse("Ich bete zu Br�gon, bete mit mir.")
talkEntry:addResponse("Ich glaube an Br�gon und sein Feuer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Yes, this God exists but is not of interest to me.")
talkEntry:addResponse("I believe in Br�gon and his fire, that it leads me, not this one you speak of.")
talkEntry:addResponse("That's one of the Younger Gods, therefore, nothing compared to Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich glaube an Br�gon und sein Feuer, dass es mir den rechten Weg zeige.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Yes, this God exists, but he has left this world. I hope he is coming back one day.")
talkEntry:addResponse("He is the Elder God of fire and stands for a wisdom, strength, and nobility.")
talkEntry:addResponse("One of the statues in the front of me represents him. Just take a look if you want to know how he might look.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Ja, dieser Gott existiert. Aber er hat diese Ebene verlassen. Ich hoffe er kommt zur�ck eines Tages. Das ist auch der Grund warum ich bete.")
talkEntry:addResponse("Er ist einer der alten G�tter und steht f�r eine weise, starke, noble und ansehnliche  Pers�nlichkeit.")
talkEntry:addResponse("Eine der Statuen hinter mir repr�sentiert ihn. Wirf einen Blick darauf wenn du wissen m�chtest wie er aussehen k�nnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Yes, this God exists but she does not interest me.")
talkEntry:addResponse("I've heard about priests of this God, but I cannot remember their names.")
talkEntry:addResponse("That's one of the Younger Gods, therefore, nothing compared to Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Yes, this God exists but is of no interest to me.")
talkEntry:addResponse("I've heard priests of this Goddess live in Runewick .")
talkEntry:addResponse("That's one of the Younger Gods, therefore, beneath my lord, Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der alten G�tter wie Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("This is not a God I take much interest in.")
talkEntry:addResponse("I once knew a priest of Eldan, but cannot recall his name.")
talkEntry:addResponse("He is an Elder God like my Lord, Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der alten G�tter wie Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("I pay little attention to this God.")
talkEntry:addResponse("I cannot recall anyone I know worshipping her.")
talkEntry:addResponse("Like Br�gon she is an Elder God.")
talkEntry:addResponse("One of the statues behind me represents her. Just take a look if you want to know how she might look.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der alten G�tter wie Br�gon.")
talkEntry:addResponse("Eine der Statuen hinter mir repr�sentiert sie. Wirf einen Blick darauf wenn du wissen m�chtest wie sie aussehen k�nnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Best speak with someone from Galmair about such a God.")
talkEntry:addResponse("I do not know anyone personally that honours this God.")
talkEntry:addResponse("Just one of many Younger Gods that cannot compare to Lord Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("I've heard travellers from Cadomyr utter his name.")
talkEntry:addResponse("A God of war, yet cannot purge the field of battle like Lord Br�gon.")
talkEntry:addResponse("One of the Younger Gods I believe, I lose track of all of them some times.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("I don't talk about this God.")
talkEntry:addResponse("No priest should ever openly worship such a God!")
talkEntry:addResponse("Do not utter the name of such a thief. He took some of my Lord's beloved dragons!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("�ber diesen Gott spreche ich nicht.")
talkEntry:addResponse("Es gibt Ger�chte, dass der Tempel ihm folgt.")
talkEntry:addResponse("Er hat meinen G�ttern die Drachen gestohlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("The God of chaos they say, but he means little to me.")
talkEntry:addResponse("How can you even consider a person who follows such a God a priest?")
talkEntry:addResponse("Just one of the Younger Gods.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ask someone in Runewick about Oldra, not me.")
talkEntry:addResponse("#me yawns, 'Another subject perhaps?'.")
talkEntry:addResponse("A Younger God living in the shadows of my Lord Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Go to Galmair to join his shadow.")
talkEntry:addResponse("The only way to rid the world of his shadow is by the flame of Br�gon.")
talkEntry:addResponse("A mere Younger God, ha, nothing to the Lord Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Yes, this God exists but she is not of interest to me.")
talkEntry:addResponse("I heard about priests of this Goddess, but I cannot remember their names.")
talkEntry:addResponse("Oh, all this talk of Younger Gods bores me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("She is of little interest to me.")
talkEntry:addResponse("Find yourself a lizardman if you seek answers about her")
talkEntry:addResponse("That's one of the Elder Gods, like Br�gon.")
talkEntry:addResponse("One of the statues behind me represents her. Just take a look if you want to know how she might look.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der alten G�tter wie Br�gon.")
talkEntry:addResponse("Eine der Statuen hinter mir repr�sentiert sie. Wirf einen Blick darauf wenn du wissen m�chtest wie sie aussehen k�nnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She is of little concern to me.")
talkEntry:addResponse("Never heard of a priest dedicated to Ushara.")
talkEntry:addResponse("She is an Elder God but nothing compared to Br�gon.")
talkEntry:addResponse("One of the statues in front of me represents her. Just take a look if you want to know how she might look.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich.")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der alten G�tter wie Br�gon.")
talkEntry:addResponse("Eine der Statuen vor mir repr�sentiert sie. Wirf einen Blick darauf wenn du wissen m�chtest wie sie aussehen k�nnte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("#me looks disinterested, 'Perhaps another subject?'")
talkEntry:addResponse("I don't know anyone that worships Zhambra.")
talkEntry:addResponse("One of the many Younger Gods that serve Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Ja, dieser Gott existiert aber ist nicht von Interesse f�r mich .")
talkEntry:addResponse("Ich h�rte von einem Priester dieser Gottheit, aber ich kann mich nicht an den Namen des Priesters erinnern.")
talkEntry:addResponse("Das ist einer der jungen G�tter. Nichts im Vergleich zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Do I look like I sell something?")
talkEntry:addResponse("I don't sell anything.")
talkEntry:addResponse("I'm not a merchant, I am clearly a priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Sehe ich aus als w�rde ich etwas verkaufen?")
talkEntry:addResponse("Ich verkaufe nichts.")
talkEntry:addResponse("Ich bin kein H�ndler, sondern Priester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("In Br�gon, I believe.")
talkEntry:addResponse("Another time maybe? Now I have to pray.")
talkEntry:addResponse("It is not the time for stories.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("An Br�gon glaube ich.")
talkEntry:addResponse("Vielleicht ein andermal. Jetzt muss ich beten.")
talkEntry:addResponse("Nun ist nicht die Zeit um Geschichten zu erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I do not have a task for you. I recommend you pray to Br�gon instead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe derzeit keine Aufgaben zu vergeben. Bete doch zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I do not have a task for you. I recommend you pray to Br�gon instead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe derzeit keine Aufgaben zu vergeben. Bete doch zu Br�gon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nobarg")
talkEntry:addResponse("Yes? How can I help you? Do you wish to know more about gods?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nobarg")
talkEntry:addResponse("Ja? Wie kann ich euch behilflich sein? Wollt ihr etwas �ber G�tter wissen?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me kniet vor dem Altar.", "#me kneels in front of the altar.")
talkingNPC:addCycleText("#me klopft gegen den Altar und ruft 'Heil dir Br�gon!'", "#me knocks against the altar and calls, 'Hail Br�gon!'")
talkingNPC:addCycleText("#me poliert gedankenverloren seinen Goldring.", "#me seems to be lost in thought while polishing a gold ring.")
talkingNPC:addCycleText("#me murmelt vor sich hin: 'Br�gon, m�chte uns dein Feuer leuchten.'", "#me mumbles, 'Br�gon, your fire shall be a light for us.'")
talkingNPC:addCycleText("Br�gon, er ist weise, stark, nobel, einfach wunderbar.", "Br�gon, he is wise, strong, noble, and heavenly.")
talkingNPC:addCycleText("Br�gon belohnt manchmal Leute mit heilgen, wertvollen Dinge in diesem Temple.", "Br�gon blesses people sometimes who sacrifice valuable things in his temple.")
talkingNPC:addCycleText("Malachin, nicht gerade wie Br�gon!", "Br�gon, oh how your greatness exceeds Malachin's!")
talkingNPC:addCycleText("Hmm... wo kriege ich nur mehr Gold her?", "Hmm... where do I get more gold?")
talkingNPC:addCycleText("#me h�lt seinen Priesterstab gehn Himmel und ruft nach Br�gon", "#me holds his cleric's staff to heaven and calls for Br�gon.")
talkingNPC:addCycleText("#me betrachtet seinen Rubin mit wohlwollen.", "#me looks at his ruby with a satisfied smirk on his face.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:addLanguage(10)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("#me kniet vor dem Altar und betet.", "#me kneels in front of the altar praying.")
mainNPC:setUseMessage("Dein Feuer ber�hre und erleuchte mich!", "Your fire touches and enlightens me!")
mainNPC:setConfusedMessage("#me blickt verwirrt.", "#me is clearly confused.")
mainNPC:setEquipment(1, 358)
mainNPC:setEquipment(3, 182)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 40)
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
