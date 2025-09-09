local consequence_item = require("npc.base.consequence.item")
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
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Uriel Urch the retired soldier. Keywords: Beer, Serinjah, Orcs, lizardman, elf."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Uriel Urch der Veteran. Schl�sselw�rter: Bier, Serinjah, Orks, Echsenmann, Elf."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addResponse("Oh! What do you want?")
talkEntry:addResponse("Who goes there!")
talkEntry:addResponse("Leave me alone...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("Good?! Pah!")
talkEntry:addResponse("Nothing is good these days...")
talkEntry:addResponse("What is so good about it, huh?!")
talkEntry:addResponse("#me grunts and grumbles. You are not able to understand a single word.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Oh... was wollt Ihr?")
talkEntry:addResponse("Wer will mich sprechen?")
talkEntry:addResponse("Lasst mich in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addResponse("Gut?... Pah!")
talkEntry:addResponse("Heutzutage gibt es nichts Gutes mehr.")
talkEntry:addResponse("Was soll gut sein, h�h?")
talkEntry:addResponse("#me grunzt unverst�ndlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Oh! What do you want?")
talkEntry:addResponse("Who goes there!")
talkEntry:addResponse("Leave me alone...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Oh... was wollt Ihr?")
talkEntry:addResponse("Wer will mich sprechen?")
talkEntry:addResponse("Lasst mich in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Just go stranger.")
talkEntry:addResponse("#me nods. 'Be well'.")
talkEntry:addResponse("Farewell...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Geht einfach weg.")
talkEntry:addResponse("#me nickt. 'Macht's gut.'")
talkEntry:addResponse("Gehabt Euch wohl, Fremder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Just go stranger.")
talkEntry:addResponse("#me nods. 'Be well'.")
talkEntry:addResponse("Farewell...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Geht einfach weg.")
talkEntry:addResponse("#me nickt. 'Macht's gut.'")
talkEntry:addResponse("Gehabt Euch wohl, Fremder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("All the worse for having you in my face.")
talkEntry:addResponse("Better if I had a bloody drink.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("All der �rger... und dann auch noch Euer Gesicht sehn. Das ist mir zu viel.")
talkEntry:addResponse("Wei� nicht. Aber sicher besser - wenn ich was zu saufen h�tt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Uriel Urch, Why do you ask?!")
talkEntry:addResponse("An old soldier.")
talkEntry:addResponse("A man trying to have a quiet drink!")
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
talkEntry:addResponse("Mein name ist Uriel Urch, warum fragt Ihr?")
talkEntry:addResponse("Ich bin nur ein alter Soldat.")
talkEntry:addResponse("Ein Mann, der versucht in Ruhe zu trinken, damit er vergisst, was er gesehen hat. - Der bin ich.")
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
talkEntry:addCondition(condition_quest(307, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords started. - Fetch a mug filled with beer for Uriel."))
talkEntry:addConsequence(consequence_quest(307, "=", 1))
talkEntry:addResponse("I tell you what, go fetch me a beer and I will tell you my story, but don't you dare spill any.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 0))
talkEntry:addTrigger("tell something")
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords started. - Fetch a mug filled with beer for Uriel."))
talkEntry:addConsequence(consequence_quest(307, "=", 1))
talkEntry:addResponse("I tell you what, go fetch me a beer and I will tell you my story, but don't you dare spill any.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter gestartet. - Besorge einen Krug, gef�llt mit Bier f�r Uriel."))
talkEntry:addConsequence(consequence_quest(307, "=", 1))
talkEntry:addResponse("Wisst Ihr was? Bringt mir einen Krug mit Bier und ich erz�hl Euch meine Geschichte. - Aber gebt Acht dass Ihr nichts versch�ttet!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 0))
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter gestartet. - Besorge einen Krug, gef�llt mit Bier f�r Uriel."))
talkEntry:addConsequence(consequence_quest(307, "=", 1))
talkEntry:addResponse("Wisst Ihr was? Bringt mir einen Krug mit Bier und ich erz�hl Euch meine Geschichte. - Aber gebt Acht dass Ihr nichts versch�ttet!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 2))
talkEntry:addResponse("#me takes the mug. 'Thank you. Right where to start... Ah! Well I was born in Salkamar city.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 2))
talkEntry:addResponse("#me takes the mug. 'Thank you. Right where to start... Ah! Well I was born in Salkamar city.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 2))
talkEntry:addResponse("#me nimmt den Krug von dir entgegen. 'Habt Dank. Also wo soll ich beginnen? ... Ah! Nun ich ich wurde in der Stadt Salkamar geboren.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 2))
talkEntry:addResponse("#me nimmt den Krug von dir entgegen. 'Habt Dank. Also wo soll ich beginnen? ... Ah! Nun ich ich wurde in der Stadt Salkamar geboren.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch a mug filled with beer for Uriel."))
talkEntry:addResponse("You wont hear the story if you don't bring me a beer!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch a mug filled with beer for Uriel."))
talkEntry:addResponse("You wont hear the story if you don't bring me a beer!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Besorge einen Krug, gef�llt mit Bier f�r Uriel."))
talkEntry:addResponse("Ich werde die Geschichte nicht erz�hlen, wenn ich kein Bier habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Besorge einen Krug, gef�llt mit Bier f�r Uriel."))
talkEntry:addResponse("Ich werde die Geschichte nicht erz�hlen, wenn ich kein Bier habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch a second beermug for Uriel."))
talkEntry:addConsequence(consequence_quest(307, "=", 3))
talkEntry:addResponse("... At the age of twenty I joined the troops, my gods did I see the truth behind the rise of man. *He slowly shakes his head.* Those days I lost too many good friends. - Hrm, do you know what? I am in need of another beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 2))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Besorge Uriel ein zweites Bier."))
talkEntry:addConsequence(consequence_quest(307, "=", 3))
talkEntry:addResponse("... mit etwa zwanzig Wintern auf dem Buckel bin ich zur Legion. Bei den G�ttern! Am Schlachtfeld sah ich woraus M�nner gemacht sind. Noch heute habe ich den Gestank des Ged�rms und Unrats in Erinnerung. - Hrm, wisst Ihr was? Ich werde lieber noch ein Bier trinken. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 4))
talkEntry:addResponse("Thank you. Now let me carry on the story. I fought the dirty Albarians for years, until we returned back to one of the nearby villages...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 4))
talkEntry:addResponse("Thank you. Now let me carry on the story. I fought the dirty Albarians for years, until we returned back to one of the nearby villages...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 4))
talkEntry:addResponse("#me nimmt das Bier entgegen. 'Euch sei's gedankt, Fremder. Lasst mich nun fortfahren. Meine Kohorte k�mpfte mehrere Jahre gegen die dreckigen Albarianer, bis wir eines Tages zu einem Dorf an der Grenze kamen...'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 4))
talkEntry:addResponse("#me nimmt das Bier entgegen. 'Euch sei's gedankt, Fremder. Lasst mich nun fortfahren. Meine Kohorte k�mpfte mehrere Jahre gegen die dreckigen Albarianer, bis wir eines Tages zu einem Dorf an der Grenze kamen...'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch another beermug for Uriel."))
talkEntry:addResponse("I thought you were getting me a beer?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch a another beermug for Uriel."))
talkEntry:addResponse("I thought you were getting me a beer?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Bringe Uriel ein weiteres Bier."))
talkEntry:addResponse("Ich dachte Ihr wolltet mir noch ein Bier bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Bringe Uriel ein weiteres Bier."))
talkEntry:addResponse("Ich dachte Ihr wolltet mir noch ein Bier bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch one more beermug for Uriel."))
talkEntry:addConsequence(consequence_quest(307, "=", 5))
talkEntry:addResponse("My gods it was a massacre. Children dead, their mothers taken to be burnt *sob* Beer?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 4))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Bringe Uriel noch ein Bier!"))
talkEntry:addConsequence(consequence_quest(307, "=", 5))
talkEntry:addResponse("Bei Malach�n! Das ganze Dorf wurde abgeschlachtet. Kinder tot und ihre M�tter verbrannt! Ihre Schreie! Ich kann sie nicht vergessen. *er seufzt tief und blickt dich fragend an* Bier?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords solved. - Uriel reaches for his belt and takes his sword. Then he puts it into your hands."))
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_item(2701, 1, 655, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 7))
talkEntry:addResponse("#me drinks the beer, and seems much better after it. 'From then on I have not used my sword again. *pauses* I tell you what, since you have been so good as to hear me out. Take it with you. I won't need it anymore.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords solved. - Uriel reaches for his belt and takes his sword. Then he puts it into your hands."))
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_item(2701, 1, 655, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 7))
talkEntry:addResponse("#me drinks the beer, and seems much better after it. 'From then on I have not used my sword again.' He pauses. 'I tell you what, since you have been so good as to hear me out. Take it with you. I won't need it anymore.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addCondition(condition_item(1909, "all", "=>", 1, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 6))
talkEntry:addResponse("#me leert das Bier in einem Zug. 'Seit damals... habe ich mein Schwert niemals mehr gezogen.' Er h�lt einen Moment inne...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter abgeschlossen. - Uriel greift nach dem Schwert in seinem G�rtel. Er legt es in deine H�nde."))
talkEntry:addConsequence(consequence_item(2701, 1, 655, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 7))
talkEntry:addResponse("Hier - nehmt mein Schwert. Ihr habt meiner Geschichte gelauscht und ich konnte aussprechen was mich belastet. Ich danke Euch. - brauchen kann ich es ohnehin nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter abgeschlossen. - Uriel greift nach dem Schwert in seinem G�rtel. Er legt es in deine H�nde."))
talkEntry:addConsequence(consequence_item(2701, 1, 655, nil))
talkEntry:addConsequence(consequence_quest(307, "=", 7))
talkEntry:addResponse("Hier - nehmt mein Schwert. Ihr habt meiner Geschichte gelauscht und ich konnte aussprechen was mich belastet. Ich danke Euch. - brauchen kann ich es ohnehin nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch a last beermug for Uriel."))
talkEntry:addResponse("Please *sob* get me another beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addConsequence(consequence_inform("Quest: Tales and Swords - Fetch a last beermug for Uriel."))
talkEntry:addResponse("Please *sob* get me another beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Bringe dem Veteran ein letzteres Bier."))
talkEntry:addResponse("Bitte... *er seufzt* bringt mir noch ein Bier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addConsequence(consequence_inform("Quest: Geschichten und Schwerter - Bringe dem Veteran ein letzteres Bier."))
talkEntry:addResponse("Bitte... *er seufzt* bringt mir noch ein Bier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=>", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I have nothing else to give you, but I feel better about talking about that. Thank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=>", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("beer")
talkEntry:addResponse("I have nothing else to give you, but I feel better about talking about that. Thank you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=>", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe nichts was ich Euch noch geben k�nnte au�er meinen Dank. Mit Euch zu sprechen hat mir gut getan. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(307, "=>", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("bier")
talkEntry:addResponse("Ich habe nichts was ich Euch noch geben k�nnte au�er meinen Dank. Mit Euch zu sprechen hat mir gut getan. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Soldier of the Salkamarian army, or at least that's what I was.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Mein Beruf? Ich bin Soldat der Salkamarischen Legionen! Oder zumindest ist es das was ich einst war.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Soldier of the Salkamarian army, or at least that's what I was.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Mein Beruf? Ich bin Soldat der Salkamarischen Legionen! Oder zumindest ist es das was ich einst war.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith? A friend of mine fought there once mentioned it, if I remember correctly. It's just a little isle that no one needs to worry about.")
talkEntry:addResponse("As much as I know, it is... it was a little isle somwhere far away in the middle of the sea.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gobaith? Ein Freund von mir war einst dort stationiert, wenn ich mich richtig erinnere. Es ist nur ne kleine Insel, um die sich keiner zu Sorgen braucht.")
talkEntry:addResponse("So viel ich wei�, ist... war das eine kleine Insel irgendwo in der Mitte des Ozeans.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("And I.. Do not care.")
talkEntry:addResponse("Go get me a damn beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Das ist mir egal.")
talkEntry:addResponse("Gut. Und jetzt bringt mir ein Bier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Serinjah")
talkEntry:addResponse("Now dont get me started. What warrior would wear sticks as armour.")
talkEntry:addResponse("Fighting with sticks and stones? They are pitiful.")
talkEntry:addResponse("Barbarians. Easily defeated..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Orc")
talkEntry:addResponse("Bunch of greenskin, mudthrowing bone heads. No grace in them at all.")
talkEntry:addResponse("Orcs? Those are a bunch of stinking barbarians. Let me tell you I grilled pigs, much smarter then orcs are.")
talkEntry:addResponse("I heard, only the clever ones are able to speak. The rest is just grunting and hissing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("greenskin")
talkEntry:addTrigger("pignose")
talkEntry:addResponse("Bunch of greenskin, mudthrowing bone heads. No grace in them at all.")
talkEntry:addResponse("Orcs? Those are a bunch of stinking barbarians. Let me tell you I grilled pigs, much smarter then orcs are.")
talkEntry:addResponse("I heard, only the clever ones are able to speak. The rest is just grunting and hissing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("elf")
talkEntry:addResponse("Long haired women. Even the men look like girls.")
talkEntry:addResponse("Graceful and artful they say. Listen to me! They are weak and weepy.")
talkEntry:addResponse("Elves... they just sit it out. No matter wich problem they have to deal with... they always sit it out. Well they got enough time, didn't they?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("lizard")
talkEntry:addTrigger("lizardman")
talkEntry:addResponse("Ahh! Fishys, always smelling of the sea.")
talkEntry:addResponse("This dastardly fishfaces? I won't trust them at all.")
talkEntry:addResponse("Snakes with legs, we always used to say. This lizardfolk scares me, at all.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Serinjah")
talkEntry:addResponse("Serinjah? Pah. Ihre Krieger k�mpfen mit St�cken und Steinen. Nichts im Vergleich zur Salkamarischen Legion.")
talkEntry:addResponse("Bei uns in der Legion erz�hlte man sich das ihre R�stungen aus Holz und Stroh gefertigt sind. Wie bemitleidenswert!")
talkEntry:addResponse("Die Serinjah sind nichts weiter als ein undisziplinierter Haufen Barbaren. Am Schlachtfeld h�tte Salkamar leichtes Spiel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ork")
talkEntry:addTrigger("Schwein")
talkEntry:addTrigger("Gr�n")
talkEntry:addResponse("Gr�nh�utige, Dummk�pfe die mit ihrem eigenen Dreck nach einem schmei�en wenn man nicht aufpasst.")
talkEntry:addResponse("Orks? Die sind nichts weiter als Tiere! Ich hab schon Schweine gegrillt die kl�ger waren.")
talkEntry:addResponse("Ich hab geh�rt nur die Vorzeigeexemplare von denen k�nnen sprechen. Der rest grunzt und faucht einfach nur sehr melodisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("elf")
talkEntry:addTrigger("elb")
talkEntry:addResponse("Elfen... Deren M�nner sehen aus wie Weibsvolk. Sollten sich mal die Haare schneiden.")
talkEntry:addResponse("Sie gelten als sehr galant und geschickt. Aber ich sage, sie sind schw�chlich und weinerlich. Keiner von ihnen w�rde sich zum Ritter mausern.")
talkEntry:addResponse("#me zieht eine Augenbraue hoch. 'Das Sch�ne Volk! - gibt es ein Problem dann warten sie einfach ab und sitzen es aus. Schlie�lich haben sie ja ausreichend Zeit, nicht wahr?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("echse")
talkEntry:addResponse("#me macht ein angewidertes Gesicht. 'Diese Schlangenmonster m�ffeln st�ndig nach Fisch. Und das kann ich bei den drei unheiligen Plagen nicht ausstehen!'")
talkEntry:addResponse("Wer kann schon einem Fischgesicht �ber den Weg trauen? Sie sind hinterh�ltig und unzivilisiert, lasst Euch das sagen.")
talkEntry:addResponse("'Schlange auf Beinen' - haben wir die Fischfresser immer genannt. Unter uns... das Echsenvolk war mir immer schon unheimlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar? Pah! Scum of the human folk.")
talkEntry:addResponse("I have hated Albarians for as long as I have had breath. Like my father did, and his father as well.")
talkEntry:addResponse("#me examines you closely: 'You are Albarian?! Get away from me, riff-raff!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar? Pha! Der Abschaum des Menschenvolkes!")
talkEntry:addResponse("Ich hasse die Albarianer seit dem ich atme. So wie es mein Vater tat, und dessen Vater.")
talkEntry:addResponse("#me mustert dich kritisch: 'Seid Ihr Albarianer? Schwert Euch weg, Gesindel!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Bunch of dirty harlots and cut throats. Seems to me like Galmair accept only Gynkeses as citizens.")
talkEntry:addResponse("The land of Gynk has no honour.")
talkEntry:addResponse("I wouldn't spit on them if they were on fire.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ein Haufen Halsabschneider und dreckiger Huren. Man will fast meinen Galmair zieht diesen Abschaum an, nicht wahr?")
talkEntry:addResponse("Gynk ist ein ehrloser, wertloser Haufen. Die taugen nicht viel f�r den Krieg und schon gar nicht als Soldaten.")
talkEntry:addResponse("Einen Gynkesen w�rde ich nicht einmal anspucken, st�nde er in Flammen! Die meisten von denen sind sowieso Tiere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("#me smiles softly. 'Salkamarians are the proudest nation.'")
talkEntry:addResponse("The gods smiled on me when picking my nation.")
talkEntry:addResponse("You even been to Salkamar? Beautiful place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("#me l�chelt sanft. 'Salkamar is die pr�chtigste der menschlichen Nationen, ohne Frage!'")
talkEntry:addResponse("Wart ihr jemals in Salkamar? Eine wundersch�ne Stadt.")
talkEntry:addResponse("Zweifelsohne haben es die G�tter gut mit mir gemeint, in Salkamar geboren zu werden ist wohl eine besondere Ehre derer nicht viele w�rdig sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("From what I have seen, no gods can stop a force as great as war. Though if I had to pick, Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Soviel wie ich gesehen habe, kann nicht ein einziger Gott, dich vor dem Krieg bewahren. Trotzdem, Irmorom und Cherga sind die G�tter meines Hauses.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ahh! The goddess of the afterlife. I suggest you pray to her, maybe she will give you life when you need it most.")
talkEntry:addResponse("She takes care about the dead. Many of my friends died on the battlefield... So she's first choice, should I sacrifice something in memory of them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ahh! Die G�ttin der Totenreiche. Ich schlage vor, Ihr betet zu ihr dann wird sie Eurer Seele vielleicht gn�dig sein und euch eines Tages etwas mehr Zeit unter den Lebendigen schenken.")
talkEntry:addResponse("Sie k�mmert sich haupts�chlich um die Toten. Viele meiner Freunde sind einen grausamen tot gestorben - am Schlachtfeld. Also ist sie meine erste Wahl sollte ich im Andenken an jene etwas zum Altar tragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ahh! The god of smithing. Most Dwarves pray to him. Some merchants... and even a few warriors do, too.")
talkEntry:addResponse("Irmorom is the God of trade and craftsmanship. Honourable, good natured... He likes law and rarely refuses a good beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ahh! Der Gott der Schmiede. Die mei�ten Zwerge beten zu ihm. Einige H�ndler... und sogar ein paar Krieger.")
talkEntry:addResponse("Irmorom ist der Gott des Handels und der Handwerke. Ehrenhaft, von gutem Gem�t... Er mag Recht und Ordnung und schl�gt niemals ein gutes Bier aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me cringes at the mention of the name and mutters 'Do not even speak it's name. If you wish to speak you will refer the it as blood lord.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me zuckt erschrocken zusammen und zischt dich an. 'Sprecht diesen Namen nicht aus! Er zieht das B�se an... nennt ihn den Blutgott, solltet ihr unbedingt �ber ihn sprechen m�ssen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("blood lord")
talkEntry:addResponse("#me whispers. 'The god of pure evil. I suggest you never speak his name out loud.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blut")
talkEntry:addResponse("#me fl�stert. 'Der Gott des B�sen. Ich schlage vor, ihr sprecht nicht einmal seinen Namen aus.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Well I'd like to find myself a nice Sirani priestess, you know? Tiehie! *winks*. She's  the Goddess of love and pleasure, awesome! Isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("H�h� - Ich w�rde mir gern eine Sirani Priesterin zur Frau nehmen. *Er zwinkert dir viel sagend zu.* Sie ist schlie�lich die G�ttin der Liebe und des Vergn�gens. Tolle Sache, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("I only have room for two gods. As a soldier I pray to Irmorom to strengthen my blade and Cherga to take pity on my soul.")
talkEntry:addResponse("In a soldiers life there isn't much room for the gods. Anyway - I always used to pray to Irmorom and Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Als Soldat bete ich zu Irmorom f�r eine scharfe Klinge und zu Cherga f�r den Frieden meiner Seele.")
talkEntry:addResponse("Das leben in der Legion bringt nur wenige Priester hervor. Wie auch immer, meine Familie betete stets zu Irmorom und Cherga.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't sell anything. Just trying to have a quiet drink!")
talkEntry:addResponse("Does I look like a damn huckster? Get rid!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Seh ich aus wie ein verdammter Hausierer? Verpiss dich!")
talkEntry:addResponse("Ich verkauf nichts. - Will mir hier nur in Ruhe Bier rein-sch�tten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Uriel")
talkEntry:addTrigger("Urch")
talkEntry:addResponse("Hrmpf? What do you want?")
talkEntry:addResponse("That's me. What's the matter?")
talkEntry:addResponse("#me sighs and peeks into his beer mug.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Uriel")
talkEntry:addTrigger("Urch")
talkEntry:addResponse("Hrmpf? Was wollt Ihr?")
talkEntry:addResponse("Das bin ich. Was ist?")
talkEntry:addResponse("#me seufzt und wirft einen Blick in seinen Bierkrug.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me g�hnt ausgiebig.", "#me yawns.")
talkingNPC:addCycleText("#me blickt auf das Wappen an seiner Brustplatte, ein sanftes L�cheln umspielt seine Lippen f�r einen kurzen Moment.", "#me looks at the crest on his chest place, a soft smile playing across his lips.")
talkingNPC:addCycleText("#me sch�ttelt den Kopf und murmelt zu sich selbst. 'Verdammte Albarianer.'", "#me sighs, muttering to himself. 'Bloody Albarians.'")
talkingNPC:addCycleText("#me kratzt sich an der Nase.", "#me scratches his nose.")
talkingNPC:addCycleText("#me kratzt sich kurz zwischen den Beinen.", "#me has a quick scratch between his legs.")
talkingNPC:addCycleText("#me setzt sich aufrecht hin, seine R�stung quietscht leise, sie macht einen sperrigen Eindruck.", "#me repositions himself, his armour seeming quite heavy.")
talkingNPC:addCycleText("#me blickt skeptisch auf den Boden seines Kruges und verengt die Augen zu Schlitzen.", "#me looks into his empty beer mug.")
talkingNPC:addCycleText("#me starrt ins Feuer.", "#me glares in the flames.")
talkingNPC:addCycleText("#me pfeift ein altes Soldatenlied.", "#me whistles an old military tune.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Er tr�gt das alte Wappen Salkamars, eine verbeulte Legion�rsr�stung und ein Langschwert.", "He wears the old crest of Salkamar, you can see he is armed with a longsword and wears Salkamearian armour.")
mainNPC:setUseMessage("H�h!? Was soll'n das?", "There is no need for that, is there!")
mainNPC:setConfusedMessage("#me scheint dich zu ignorieren.", "#me seems to ignore you.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2389)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 528)
mainNPC:setEquipment(9, 2111)
mainNPC:setEquipment(10, 699)
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
