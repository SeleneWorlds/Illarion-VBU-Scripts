local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Ruzusss the hunter. Keywords: Question, information, Cadomyr, places."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Ruzusss der J�ger. Schl�sselw�rter: Auskunft, Information, Cadomyr, Orte."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(644, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End  'Find Ruzusss 2'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(644, "=", 2))
talkEntry:addResponse("Greetingsss. You finally found me! I have already been informed about your visit. Here, have sssome well-earned coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(644, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Find Ruzusss 2'] Du hast 10 Silberst�cke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(644, "=", 2))
talkEntry:addResponse("Gr�sssse. Endlich hassst du mich gefunden. Ich wurde bereits informiert �ber deinen Besssuch. Hier hassst du deine wohlverdienten M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Ruzusss'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(640, "=", 2))
talkEntry:addResponse("Greetingsss. You finally found me! Frizza hasss already informed me about your visit. Here, have sssome well-earned coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Finde Ruzusss'] Du hast 10 Silberst�cke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(640, "=", 2))
talkEntry:addResponse("Gr�sssse. Endlich habssst du mich gefunden. Frizza hat mich bereitsss informiert �ber deinen Besssuch. Hier hassst du deine wohlverdienten M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Ruzusss'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(640, "=", 2))
talkEntry:addResponse("Greetingsss. You finally found me! Frizza hasss already informed me about your visit. Here, have sssome well-earned coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(640, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Finde Ruzusss'] Du hast 10 Silberst�cke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(640, "=", 2))
talkEntry:addResponse("Gr�sssse. Endlich habssst du mich gefunden. Frizza hat mich bereitsss informiert �ber deinen Besssuch. Hier hassst du deine wohlverdienten M�nzen.")
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
talkEntry:addResponse("Greetingsss, can I help you?")
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
talkEntry:addResponse("Gr�sssse, kann ich helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetingsss, can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Gr�sssse, kann ich helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Sssee you again if you need more information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Wir sssehen unsss wenn mehr Information ben�tigt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Very good, jussst won another game.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Sssehr gut, gerade wieder ein Ssspiel gewonnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Ruzusss the hunter.")
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
talkEntry:addResponse("Ruzusss der J�ger.")
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
talkEntry:addTrigger("profession")
talkEntry:addResponse("Hunter. I can tell you many thingsss about the landsss around Cadomyr. Just asssk me about the locationsss around Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("J�ger. Ich kann viele Dinge �ber Cadomyr erz�hlen. Frag nur nach Orten in der N�he von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Hunter. I can tell you many thingsss about the landsss around Cadomyr. Just asssk me about the locationsss around Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("J�ger. Ich kann viele Dinge �ber Cadomyr erz�hlen. Frag nur nach Orten in der N�he von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Game")
talkEntry:addResponse("Dice. You can play with othersss in the tavern. Try not to gamble away all of your sssilver.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spiel")
talkEntry:addResponse("W�feln. Du kannst mit anderen in der Taverne ssspielen. Verssuche nich all dein Ssilber zu verzocken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I have information about placesss clossse to Cadomyr. Just asssk me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Ich habe Informationen zu den Orten in der N�he von Cadomyr geben. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I have information about placesss clossse to Cadomyr. Just asssk me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Ich habe Informationen zu den Orten in der N�he von Cadomyr geben. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Frizza")
talkEntry:addResponse("You can find her in the town's market place. Sssshe hasss a lot of information and sssome tasksss for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frizza")
talkEntry:addResponse("Du findest sssie drau�en auf dem Marktplatz der Stadt. Sssie hat eine Menge Informationen und Auftr�ge f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Keywords] northeast, northwest, southwest, southeast"))
talkEntry:addResponse("Thisss land is called Illarion and I divide it into the northeast, the northwest, the southwest, and the southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Diessssesss Land wird Illarion genannt und ich unterteile es in in Nordost, Nordwest, S�dwest und S�dost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips, Wulfgorda."))
talkEntry:addResponse("I know of the following placesss: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips. For more detailed information, asssk Wulfgorda at the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nordost")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Elsbaumwald, Elsbaumebene, Ostland, Schulterplatte Insel, Todessumpf, Spinnenmaul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen, Wulfgorda."))
talkEntry:addResponse("Dort gibt es: Elsbaumwald, Elsbaumebene, Ostland, Schulterplatte Insel, Todessumpf, Spinnenmaul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen. Aber f�r ausf�hrlichere Informationen frage Wulfgorda beim Gasthof zur Hanfschlinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northwest")
talkEntry:addConsequence(consequence_inform("[Keywords] Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Lotta Medborgar."))
talkEntry:addResponse("I know of the following placesss: Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau. For more detailed information, asssk Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nordwest")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Syritabucht, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene, Lotta Medborgar."))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Syritabucht, Narguns Ebene, Der Sumpf, Tempel der F�nf, Einsame Berge, Galmair Hochebene. Aber f�r ausf�hrlichere Informationen frage Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("southwest")
talkEntry:addConsequence(consequence_inform("[Keywords] Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert"))
talkEntry:addResponse("I know of the following placesss: Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("S�dwest")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Schattenland, Wichtkanal, Wachtwald, Gro�er Ozean, Grenzberge, Kantabiw�ste, Kantabidelta, Westliche Kantabiw�ste"))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schattenland, Wichtkanal, Wachtwald, Gro�er Ozean, Grenzberge, Kantabiw�ste, Kantabidelta, Westliche Kantabiw�ste")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("southeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps Yewdale, Numila Irunnleh."))
talkEntry:addResponse("I know of the following placesss: Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale. For more detailed information, asssk Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("S�dost")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Morgentausumpf, Eibenthal, Numila Irunnleh."))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Morgentausumpf, Eibenthal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Forest")
talkEntry:addResponse("The Elstree Forest isss in the northeast and you ssshould ask someone who livesss there about it. Wulfgorda ssshould know more. I can tell you that fairies can be found there. Who might drop sssome magical gemsss if you are lucky.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumwald")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda. Wie dem auch sei, Feen k�nnen dort gefunden werden, welche wom�glich magische Steine fallen lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plain")
talkEntry:addResponse("The Elstree Plain isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumebene")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree")
talkEntry:addResponse("There isss Elstree Forest and Elstree Plain. They are located in the northeast. You ssshould ask sssomeone who livesss there. Wulfgorda ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eastland")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ostland")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pauldron")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schulterplatte")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dead Marsh")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todessumpf")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spider Mouth")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spinnenmaul")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hemp Necktie Inn")
talkEntry:addResponse("The Hemp Necktie Inn is a neutral tavern in the Spider's Mouth and many adventurer restsss there. Amongst othersss, is Wulfgorda. You can ussse the teleporter to get there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof Hanfschlinge")
talkEntry:addResponse("Der Gasthof zur Hanfschlinge ist eine neutrale Taverne im Spinnen Mund und viele Abenteuerer rasten dort. Unteranderem Wulfgorda. Du kannst den Teleporter verwenden um dort hinzukommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Wulfgorda' started] Try to find Wulfgorda and take her the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 1))
talkEntry:addResponse("Wulfgorda is a hunter who knowsss almossst every place in the northeast. You can find her in front of the Hemp Necktie Inn. You ssshould take her thessse leavesss here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "<", 1))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Wulfgorda' gestartet] Finde Wulfgorda und bringe ihr die Sibanacbl�tter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 1))
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthof zur Hanfschlinge. Des weiteren kannssst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Wulfgorda is a hunter who knowsss almossst every place in the northeast. You can find her in front of the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Platz im Nordosten kennt. Du findest sie vor dem Gasthof zur Hanfschlinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bounding Stream")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzstrom")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glowing River")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gl�hender Fluss")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda..")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plains Silence")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ebenen Stille")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Northern Woods")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("N�rdliche W�lder")
talkEntry:addTrigger("N�rdlichen W�lder")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insurmountable Limes")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Un�berwindbarer Limes")
talkEntry:addTrigger("Un�berwindbare Limes")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Evilrock")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("B�se Fels")
talkEntry:addTrigger("B�ser Fels")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Three Fingertips")
talkEntry:addResponse("It isss in the northeast. You ssshould ask someone who livesss there about it. Wulfgorda ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dreifingerspitzen")
talkEntry:addResponse("Dieser Ort ist im Nordosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Snakehead Bay")
talkEntry:addResponse("It isss in the southeast. You ssshould ask someone who livesss there aboout it. Numila Irunnleh in Runewick ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlangenkopfbucht")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im S�dosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Islands")
talkEntry:addResponse("It isss in the southeast. You ssshould ask someone who livesss there aboout it. Numila Irunnleh in Runewick ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Inseln")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Death's Stench")
talkEntry:addTrigger("deaths stench")
talkEntry:addResponse("It isss in the southeast. You ssshould ask someone who livesss there aboout it. Numila Irunnleh in Runewick ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todes Gestank")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im S�dosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dragon's Lair")
talkEntry:addTrigger("dragons lair")
talkEntry:addResponse("It isss in the southeast. You ssshould ask someone who livesss there aboout it. Numila Irunnleh in Runewick ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drachenh�hle")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im S�dosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dewy Swamps")
talkEntry:addResponse("It isss in the southeast. You ssshould ask someone who livesss there aboout it. Numila Irunnleh in Runewick ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Morgentausumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im S�dosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("It isss in the southeast. You ssshould ask someone who livesss there aboout it. Numila Irunnleh in Runewick ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im S�dosten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(624, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Numila 2' started] Try to find Numila and take her the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(624, "=", 1))
talkEntry:addResponse("You can find her in Runewick. Ssshe knowsss ssseveral placesss in the southeast, thus around Runewick. You sssshould take her these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(624, "<", 1))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Numila 2' gestartet] Finde Numila und bringe ihr die Sibanacbl�tter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(624, "=", 1))
talkEntry:addResponse("Die findet man in Runewick und die kennt s�mtliche Orte im S�dwesten, sprich um Runewick. Des weiteren kannssst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("You can find her in Runewick. Ssshe knowsss ssseveral placesss in the southeast around Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("Die findet man in Runewick und die kennt s�mtliche Orte im S�dosten, sssprich um Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syrita Bay")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syritabucht")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun's Plain")
talkEntry:addTrigger("narguns plain")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Narguns Ebene")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Swamp")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple five")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel F�nf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Mountains")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Berge")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair Plateau")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair Hochebene")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fortress Hammerfall")
talkEntry:addResponse("It isss in the northwest. You ssshould ask someone who livesss there about it. Lotta Medborgar in Galmair ssshould know more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Festung Hammerfall")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort issst im Nordwesten zu finden. Willst du mehr wissssen, bietet es sich an jemanden zu fragen, der dort wohnt. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(634, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Lotta 2' started] Try to find Lotta and take her the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(634, "=", 1))
talkEntry:addResponse("You can find her in Galmair. Ssshe knowsss ssseveral placesss in the northwest around Galmair. You sssshould take her these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(634, "<", 1))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Lotta 2' gestartet] Finde Lotta und bringe ihr die Sibanacbl�tter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(634, "=", 1))
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, ssssprich um Galmair. Des weiteren kannssst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("You can find her in Galmair. Ssshe knowsss ssseveral placesss in the northwest around Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, sssprich um Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadowland")
talkEntry:addResponse("It hasss two entrances. One in the Malachite Mine and one to the southwest of the Border Mountains. No one has ever crossssed it. It is very dangerous! The gatesss are locked and only the three rulersss know how to enter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schattenland")
talkEntry:addResponse("Essss hat zwei Eing�nge. Einen bei der Malachitmine und einen s�dwestlich der Grenzberge. Niemand hat esss je durchquert. Viel zu gef�hrlich! Die Tore sind daher verschlossen und nur die drei Herrscher wissen wie man sie �ffnet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wight Canal")
talkEntry:addResponse("The Wight Canal can be found at the east ssside of the Border Mountains, where it connectsss these Mountains with Snakehead Bay. You can find Sssumroz's Home, the Firelimes, the Lighthouse Ruins, the Fisherhouse, and the Cemetery very close to it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wichtkanal")
talkEntry:addResponse("Der Wichtkanal kann an der Ostseite der Grenzberge gefunden werden, wo er dieses Gebierge mit der Schlangenkopf Bucht verbindet. Du findes dort Sssumrozs Heim, den Feuerlimes, die Leuchthaus Ruinen, die Fischerh�tte und den Friedhof in der N�he.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sentry Forest")
talkEntry:addResponse("The Sentry Forest can be found to the southeast of the Border Mountains. You ssshall find Ushara's Spire, Sentry Outpost, Oldra's Corner, Gnuremground and Harrowed Mount near there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wachtwald")
talkEntry:addResponse("Der Wachtwald kann im S�dosten der Grenzberge gefunden werden. Du wird dort und herum den Ushara Schrein, den Wachau�enposten, Oldras Ecke, Gnuremgrund und den Gequ�lten Berg finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Great Ocean")
talkEntry:addResponse("The Great Ocean is the water in the sssouth, which is ruled by our ships. The Kantabi River flowsss into this ocean.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gro�er Ozean")
talkEntry:addResponse("Der Gro�e Ozean ist das Gew�sser im S�den, welches von unseren Schiffen beherrscht wird. Der Kantabifluss m�ndet in diesen Ozean.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Border Mountains")
talkEntry:addResponse("The Border Mountain form the eastern border of the Kantabi Desert and are the sssoutheast part of the Lonely Mountains.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzberge")
talkEntry:addResponse("Die Grenzberge sind die �stliche Grenze der Kantabiw�ste und der ssss�d�stliche Teil der Einsamen Berge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Western Kantabi Desert")
talkEntry:addConsequence(consequence_inform("[Keywords] Mount Siba, Milkhouse, Cornerstone Candour, Rosaline Cube, Cube Camp, Faber's Guardhouse, Remote Dwelling, Pirate cove, Cape Farewell, Kantabi River, Liberty Quarry, Grugmutz's cave, Creek Settlement"))
talkEntry:addResponse("Which place there do you mean? I know about: Mount Siba, Milkhouse, Cornerstone of Candour, Rosaline Cube, Cube Camp, Faber's Guardhouse, Remote Dwelling, Pirate cove, Cape Farewell, Kantabi River, Liberty Quarry, Grugmutz's cave, Creek Settlement.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Westliche Kantabiw�ste")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Berg Siba, Milchhaus, Grundstein Aufrichtigkeit, Rosaline W�rfel, W�rfel Lager, Fabers Wachhaus, Entfernte Wohnst�tte, Piratenbucht, Kap Abschied, Kantabifluss, Freiheitsbruch, Grugmutz H�hle, Bach Siedlung."))
talkEntry:addResponse("Welchen Platz meinst du? Berg Siba, Milchhaus, Grundstein der Aufrichtigkeit, Rosaline W�rfel, W�rfel Lager, Fabers Wachhaus, Entfernte Wohnst�tte, Piratenbucht, Kap des Abschieds, Kantabifluss, Freiheitsbruch, Grugmutz H�hle, Bach Siedlung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mount Siba")
talkEntry:addResponse("A mountain in the sssouth of Cadomyr. It is very clossse to the town. It is more or less next to the Cornerstone of Candour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Berg Siba")
talkEntry:addResponse("Ein Berg im S�den von Cadomyr. Er isssst ssssehr nahe an der Stadt. Er liegt mehr oder weniger neben dem Grundstein der Aufrichtigkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Milkhouse")
talkEntry:addResponse("That is the name of a ssshop for foreigners. It is in the east from here, before you cross the Kantabi Bridge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Milchhaus")
talkEntry:addResponse("Das ist der Name einesss Marktes der von fremden H�ndlern verwendet wird. Er kann im Osten von hier bevor man die Kantabi Br�cke �berquert gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cornerstone")
talkEntry:addTrigger("Candour")
talkEntry:addResponse("This coal mine is sssouth of us. Just walk south, crosssss the street which leads to either east or west, and you will find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grundstein")
talkEntry:addTrigger("Aufrichtigkeit")
talkEntry:addResponse("Diese Kohlemine ist s�dlich von uns. Geh einfach in den Sss�den, �berquere die Stra�e welche dich entweder in den Westen oder Osten f�hrt, und schon bist du dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rosaline Cube")
talkEntry:addResponse("The Rosaline Cube will become our Queen'sss grave in the future. We are building it right now and Robertus is responsible for it. The cube is sssouth of Mount Siba.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rosaline W�rfel")
talkEntry:addResponse("Der Rosaline W�rfel wird das Grab unserer K�nigin irgendwann mal werden. Wir bauen es gerade und Robertusss issst veranwortlich daf�r. Der W�rfel issst sss�dlich von Berg Siba.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cube Camp")
talkEntry:addResponse("The Cube Camp is a place to rest for those who are working on the Rosaline Cube. It isss around there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("W�rfel Lager")
talkEntry:addResponse("Das W�rfel Lager issst ein Rastplatz f�r jene die am Rosaline W�rfel arbeiten und ist daher nahe diesssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Faber's Guardhouse")
talkEntry:addTrigger("Fabers Guardhouse")
talkEntry:addResponse("Faber's Guardhouse is on the west coast and wasss destroyed when piratessss attacked us in the year 23, after the sssorcerer and Faber were able to stop them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fabers Wachhaus")
talkEntry:addResponse("Fabers Wachhaus ist an der Westk�ste und wurde zerst�rt alsss Piraten uns im Jahre 23 nach dem Hexenmeister attackieren. Faber war es m�glich sssie aufzuhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Remote Dwelling")
talkEntry:addResponse("This building is the last before you enter the pirate cove in the northwest. It contains some riddlesss to solve.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Entfernte Wohnst�tte")
talkEntry:addResponse("Diesssses Geb�ude issst das letzte bevor du die Piraten Bucht im Nordwesten betreten wirst und beinhaltet einige R�tseln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pirate cove")
talkEntry:addResponse("The Pirate cove in the northwest is a place of potential threat. We have had ssseveral conflicts with them so far.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Piratenbucht")
talkEntry:addResponse("Die Piratenbucht im Nordwesten issst ein wirklich gef�hrlicher Platz. Wir hatten immer wieder �rger mit denen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cape Farewell")
talkEntry:addResponse("Cape Farewell can be found on the west coast, clossse to Faber's Guardhouse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kap Abschied")
talkEntry:addResponse("Das Kap des Abschiedes kann an der Wesssstk�ste gefunden werden nahe Fabers Wachhaus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabi River")
talkEntry:addResponse("The Kantabi River, east of here, originatesss from the Lonely Mountains and separatessss the Western Kantabi Desert from the Kantabi Desert; it makes itsss way to the Great Ocean at the Kantabi Delta.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabifluss")
talkEntry:addResponse("Der Kantabifluss im Osten von hier hat seinen Ursprung in den Einsamen Bergen, trennt die Westliche Kantabiw�ste von der Kantabiw�ste und findet ssseinen Weg in den Gro�en Ozean am Kantabidelta.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Liberty Quarry")
talkEntry:addResponse("The Liberty Quarry isss in the northeast on the west shore of the Kantabi River. There you can find iron, gold, and copper.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Freiheitsbruch")
talkEntry:addResponse("Der Freiheitsbruch ist im Nordosten am westlichen Ufer des Kantabiflusses. Du kannst dort Eisen, Gold oder Kupfer finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grugmutz's cave")
talkEntry:addTrigger("Grugmutzs cave")
talkEntry:addResponse("Grugmutz's cave isss north of the Liberty Quarry. Grugmutz and hisss Ettin clan have tried to raid usss ssseveral times. Be careful!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grugmutz H�hle")
talkEntry:addResponse("Grugmutzs H�hle ist n�rdlich des Freiheitsbruch. Grugmutz und sein Ettin Klan haben immer wieder versucht unsss zu pl�ndern. Ssssei vorsicht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Creek Settlement")
talkEntry:addResponse("The Creek Settlement was once one of our richest placessss. It was at the northern end of the Kantabi River. It wasss destroyed by either dwarves from Fortress Hammerfall, buccaneers or Grugmutz's Ettin. We don't know yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bach Siedlung")
talkEntry:addResponse("Die Bach Siedlung war einst einer unserer reichsten Orte. Es war am n�rdlichen Ende des Kantabiflusses. Es wurde zerst�rt entweder von den Zwergen der Festung Hammerfall, von Seer�ubern oder von Grugmutzs Ettins zerst�rt. Wir wissssen es nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabi Desert")
talkEntry:addConsequence(consequence_inform("[Keywords] Prison, Druid's Tear, Royal places, Desert Hole, Pyramid Discord, Pearl Sirani, Frontus Farm, Queen's Corner, Irundar, Zumbrass Tomb, Mount Zotmore, Buccaneer's Lurk, Envy Creek, Weary Inn, eastern parts"))
talkEntry:addResponse("Which place there do you mean? I can tell you about: Prison, Druid's Tear, Royal places, Desert Hole, Pyramid of Discord, Pearl of Sirani, Frontus Farm, Queen's Corner, Irundar, Zumbrass Tomb, Mount Zotmore, Buccaneers Lurk, Envy Creek, Weary Inn or the eastern partsss of the Kantabi desert?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabiw�ste")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Gef�ngnis, Druiden Tr�ne, K�nigliche Orte, W�stenloch, Pyramide Zwietracht, Perle Sirani, Frontus Hof, K�nigins Eck, Irundar, Zumbrass Grab, Berg Zotmore, Seer�uber Lauer, Neidbach, Matter Gasthof, �stlichen Teile"))
talkEntry:addResponse("Welchen Platz? Gef�ngnis, Druidentr�ne, K�nigliche Orte, W�stenloch, Pyramide der Zwietracht, Perle der Sirani, Frontus Hof, K�nigins Eck, Irundar, Zumbrass Grab, Berg Zotmore, Seer�uberlauer, Neidbach, Matter Gasthof oder die �stlichen Teile der Kantabiw�ste?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Prison")
talkEntry:addResponse("The Prison can be found sssouth of the Royal Academy of Gladiators. You do not want to end up there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gef�ngnis")
talkEntry:addResponse("Das Gef�ngnis kann s�dlich der K�niglichen Akademie der Gladiatioren gefunden werden. Du m�chtesssst dort nicht enden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Druid's Tear")
talkEntry:addTrigger("Druids Tear")
talkEntry:addResponse("The Druid's Tear can be found ssssoutheast of the Royal Academy of Gladiators. Ask a druid for further information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Druidentr�ne")
talkEntry:addResponse("Die Druidentr�ne kann s�d�stlich der K�niglichen Akademie der Gladiatioren gefunden werden. Frage einen Druiden f�r weitere Information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Royal places")
talkEntry:addConsequence(consequence_inform("[Keywords] Royal Academy, Academy Gladiators, Blood Circle Arena, Royal Slave Market"))
talkEntry:addResponse("There is the Royal Academy of Gladiators, the Blood Circle Arena and the Royal Slave Market.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigliche Orte")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] K�nigliche Akademie, Akademie Gladiatoren, Blutkreisarena, K�niglicher Sklavenmarkt"))
talkEntry:addResponse("Da w�ren die K�nigliche Akademie der Gladiatoren, die Blurtkreisarena und der K�nigliche Sklavenmarkt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Royal Academy")
talkEntry:addTrigger("Academy Gladiators")
talkEntry:addResponse("Our Royal Academy of Gladiators is to the sssouth on the road heading east. It isss a place where participants in the Blood Circle Arena can train.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigliche Akademie")
talkEntry:addTrigger("Akademie Gladiatoren")
talkEntry:addResponse("Unsere K�nigliche Akademie der Gladiatoren ist s�dlich an der Stra�e in den Osten. Sie dient als Trainingsst�tte f�r jene die sich in der Blurtkreisarena beweisen wollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blood Circle Arena")
talkEntry:addResponse("The Blood Circle Arena was built by Ssssir Reginald in the year 6. It isss a place for warriors and issss to the north on the road heading east")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blutkreisarena")
talkEntry:addResponse("Die Blutkreisarena wurde von Ssssir Reginald im Jahre 6 erbaut. Sssie dient als Platz f�r Krieger und kann n�rdlich an der Stra�e in den Osten gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Royal Slave Market")
talkEntry:addResponse("The Royal Slave Market can be found northeast of the Blood Circle Arena. For sssome coins you will find some productive slavesss there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�niglicher Sklavenmarkt")
talkEntry:addResponse("Der K�nigliche Sklavenmarkt kann nord�stlich der Blutkreisarena gefunden werden. F�r wenige M�nzen findest du dort produktive Ssssklaven.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Desert Hole")
talkEntry:addResponse("The Desert Hole southeast of the Blood Circle Arena isss a former mine but isss now used by creatures like worms.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("W�stenloch")
talkEntry:addResponse("Das W�stenloch s�d�stlich der Blutkreisarena war einsssst eine Mine und wird nun von Kreaturen wie W�rmern behaust.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pyramid Discord")
talkEntry:addResponse("The Pyramid of Discord, north of the Blood Circle Arena, wasss probably a temple of a former civilisation, but we are not ssssure about that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pyramide Zwietracht")
talkEntry:addResponse("Die Pyramide der Zwietracht n�rdlich der Blutkreisarena war wahrscheinlich ein Templer einer alten Zivilisssssation. Wir ssssind uns dar�ber aber nicht sicher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pearl Sirani")
talkEntry:addResponse("This place north of the Pyramid of Discord was usssed for royal weddings, but also by other membersss of the aristocracy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Perle Sirani")
talkEntry:addResponse("Dieser Platz n�rdlich der Pyramide der Zwietracht wurde f�r K�nigliche Hochzeiten, aber auch von den Aristokraten verwendet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frontus Farm")
talkEntry:addResponse("A Farmer called Frontus had a farm north of the Royal Slave Market until it was destroyed by wormsss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frontus Hof")
talkEntry:addResponse("Ein Bauer mit den Namen Frontus hatte n�rdlich vom K�niglichen Sklaven Markt einen Hof bis dieser zerst�rt wurde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen's Corner")
talkEntry:addTrigger("Queens Corner")
talkEntry:addResponse("There are ssssome rumours about this place that I do not want discussss with you, but you can find this place close to the Weary Inn in the north.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigins Eck")
talkEntry:addResponse("Es gibt dazu einige Ger�chte, die ich nicht mit dir teilen m�chte. Aber du kannst diesen Platz beim Matter Gasthof im Norden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zumbrass Tomb")
talkEntry:addResponse("Poor Zumbrass! Ssshe died there but I have no idea who killed her. However, you can find her tomb north of Mount Zotmore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zumbrass Grab")
talkEntry:addResponse("Arme Zumbrass! Sssie wurde dort get�tet aber ich habe keine Ahnung von wem. Wie dem auch sei, du findest ihr Grab n�rdlich von Berg Zotmore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mount Zotmore")
talkEntry:addResponse("Mount Zotmore is probably the most dangerous place in the desert. Don't even think of going there! If you ssstill want to know where it is, it isss in the very north.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Berg Zotmore")
talkEntry:addResponse("Berg Zotmore ist wahrscheinlich der gef�hrlichste Platz in der W�ste. Denk gar nicht daran dort hinzugehen. Wenn du aber denoch willst, du findest ihn ganz im Norden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Envy Creek")
talkEntry:addResponse("You will find the Envy Creek if you follow the eastern ssshore of the Kantabi River.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Neidbach")
talkEntry:addResponse("Du wirst den Neidbach finden in dem du dem �ssssstlichen Ufer des Kantabiflusses folgst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Buccaneer")
talkEntry:addTrigger("Lurk")
talkEntry:addResponse("The Buccaneer's Lurk is a dangeroussss place, located between the Kantabi River and Envy Creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Seer�uber")
talkEntry:addTrigger("Lauer")
talkEntry:addResponse("Die Seer�uberlauer ist ein gef�hrlicher Platz zwischen Kantabifluss und Neidbach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Weary Inn")
talkEntry:addResponse("The Weary Inn was once a place for travellers until it got destroyed. You can find it eassst of the Envy Creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Matter Gasthof")
talkEntry:addResponse("Der Matter Gasthof war einst ein Platz f�r Reisende bis er zerst�rt wurde. Du findest ihn �stlich des Neidbaches.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irundar")
talkEntry:addResponse("Irundar? Ssssomewhere in the desert, but where?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irundar")
talkEntry:addResponse("Irundar? Irgendwo in der W�ste, aber wo?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("eastern part")
talkEntry:addConsequence(consequence_inform("[Keywords] Chapel Five, Lumpskrump's Band, Moshran's Brood, Oasis Star, Raptor Hole, Sarakas' Home, Khesra, Akaltut's Chamber, Cursed Place, Wizard Bane."))
talkEntry:addResponse("The eastern part of the Kantabi Desert contains: Chapel of the Five, Lumpskrump's Band, Moshran's Brood, Oasis of Stars, Raptor Hole, Sarakas' Home, Khesra, Akaltut's Chamber, Cursed Place, Wizard Bane.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("�stlichen teile")
talkEntry:addTrigger("�stliche teile")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Kapelle F�nf, Lumpskrump Band, Moshran Brut, Oasis Stern, Raptoren Loch, Sarakas Heim, Khesra, Akaltut Kammer, Verfluchte Platz, Hexer Fluch."))
talkEntry:addResponse("Der �stliche Teil der Kantabiw�ste beinhaltet: Kapelle der F�nf, Lumpskrumps Bande, Moshrans Brut, Oasis der Sterne, Raptoren Loch, Sarakas Heim, Khesra, Akaltuts Kammer, Verfluchte Platz, Hexer Fluch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel Five")
talkEntry:addResponse("The Chapel of the Five is to the southern end of the Border Mountains and at the eastern border of the Kantabi Desert. Just follow the street to the southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle F�nf")
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Kantabiw�ste. Folge einfach der Stra�e in den Sss�dosten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel")
talkEntry:addResponse("The Chapel of the Five is on the ssssouthern end of the Border Mountains and at the eastern border of Kantabi Desert. Just follow the street to the southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle")
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Kantabiw�ste. Folge einfach der Stra�e in den Sss�dosten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lumpskrump's Band")
talkEntry:addResponse("This bandit camp isss on the road to the east, after the Desert Hole.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lumpskrumps Band")
talkEntry:addTrigger("Lumpskrump")
talkEntry:addResponse("This bandit isss camp on the road to the east after the Desert Hole.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lumpskrumps Band")
talkEntry:addTrigger("Lumpskrump")
talkEntry:addResponse("Diesssess Banditenlager befindet sssich an der Stra�e in den Osssten kurz nach dem W�stenloch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran's Brood")
talkEntry:addResponse("Moshran's Brood, an orc clan, can be found east of Lumpskrump's Band.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshrans Brut")
talkEntry:addResponse("Die Moshran Brut, ein Orkklan, kann �stlich von Lumpskrump Bande gefunden werden")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oasis Star")
talkEntry:addResponse("The Oasis of Stars is a place east of the Blood Circle Arena. You can dig for sssand there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oasis Stern")
talkEntry:addResponse("Die Oasis der Sterne ist ein Platz �stlich der Blutzirkelarena. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raptor Hole")
talkEntry:addResponse("The Raptor Hole isss a cave in the sssouth of the Border Mountains, north of Akaltut's Chamber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raptoren Loch")
talkEntry:addResponse("Das Raptoren Loch ist eine H�hle im S�den der Grenzberge n�rdlich von Akaltuts Kammer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sarakas Home")
talkEntry:addResponse("The home of this old murderer can be found in the Border Mountains, between the entrance to the Shadowland and the Raptor Hole.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sarakas Heim")
talkEntry:addResponse("Dasss Heim dieses alten M�rdersss kann in den Grenzbergen zwischen den Eing�ngen zum Schattenland und des Raptoren Loches gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Khesra")
talkEntry:addResponse("Khesra's Dungeon can be found close to the cursed place. You will not find anything other than hate there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Khesra")
talkEntry:addResponse("Keshras Verlies kann in der N�he des Verfluchten Platz gefunden werden. Du wirst dort nichtsss anderes finden als Hasssss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cursed Place")
talkEntry:addResponse("The Cursed Place is eassst of Frontus Farm. Be careful that you don't get poisoned.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Verfluchte Platz")
talkEntry:addResponse("Der Verfluchte Platz ist �stlich von Frontus Hof. Ssssei vorsichtig, dass du dort nicht vergiftet wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Akaltut's Chamber")
talkEntry:addTrigger("Akaltuts Chamber")
talkEntry:addResponse("Akaltut's Chamber can be found at the very south end of the Border Mountains. I hope you can run fast if you dare to show up there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Akaltut Kammer")
talkEntry:addResponse("Akaltuts Kammer kann ganz am s�dlichen Ende der Grenzberge gefunden werden. Ich hoffe du kannst schnell laufen fallsss du tats�chlich dort hingehen m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wizard Bane")
talkEntry:addResponse("This place can be found in the very northeasssst of the dessssert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hexer Fluch")
talkEntry:addResponse("Dieser Platz kann ganz im Nordosten der W�ste gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabidelta")
talkEntry:addConsequence(consequence_inform("[Keywords] Merchants Folly, Cadomyr Harbour, Harp Pain, Lost Harbour, Tear Sirani, Kata Island, Mount Letma"))
talkEntry:addResponse("Which place there do you mean? I can tell you about: Merchants' Folly, Cadomyr Harbour, Harp of Pain, Lost Harbour, Tear of Sirani, Kata Island, Mount Letma")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabidelta")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] H�ndlers Unsinn, Cadomyr, Hafen, Schmerzvolle Harfe, Verlorener Hafen, Tr�ne Sirani, Kata Insel, Berg Letma"))
talkEntry:addResponse("Welchen Platz dort meinst du? H�ndlers Unsinn, Cadomyr, Hafen, Schmerzvolle Harfe, Verlorener Hafen, Tr�ne der Sirani, Kata Insel, Berg Letma?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Merchants Folly")
talkEntry:addTrigger("Merchants' Folly")
talkEntry:addResponse("It can be found clossse to Cadomyr Harbour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("H�ndlers Unsinn")
talkEntry:addResponse("Es kann nahe desss Cadomyr Hafen gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr Harbour")
talkEntry:addTrigger("Cadomyr Harbor")
talkEntry:addResponse("Our harbour is to the very south at the Great Ocean, after you have passsssed through the Western Kantabi Desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr Hafen")
talkEntry:addResponse("Unser Hafen ist ganz im S�den am Gro�en Ozean nachdem du die Westliche Kantabiw�ste durchquerrt hast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Harp Pain")
talkEntry:addResponse("The Harp of Pain can be found on one of the islandsss in the Kantabi Delta. You'd better not play it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schmerzvolle Harfe")
talkEntry:addResponse("Die Schmerzvolle Harfe kann auf einer der Inseln im Kantabidelta gefunden werden. Du spielst sssie besssser nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lost Harbour")
talkEntry:addResponse("The Lost Harbour was destroyed in an attack by Runewick's forces in the year 10 after the sorcerer. Sssome ruins are left at the southern point of the Kantabi Delta.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Verlorener Hafen")
talkEntry:addTrigger("Verlorene Hafen")
talkEntry:addResponse("Der Verlorene Hafen wurde durch einen Angriff von Runewick Streitkr�ften im Jahre 10 nach dem Hexenmeister zerst�rt. Einige Ruinen k�nnen am s�dlichsssten Punkt im Kantabidelta gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tear Sirani")
talkEntry:addResponse("This place is used for the weddingssss of common or lower ranked people. It is in the northern part of the Kantabi Delta and accessible from the eastern sssshore of the Kantabi River.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tr�ne Sirani")
talkEntry:addResponse("Diesssser Platz wird von gew�hnlichen und ehrlosssen Leute verwendet f�r Hochzeiten verwendet. Er issssst am n�rdlichen Teil im Kantabidelta zu finden und �ber das Ostufer des Kantabifluss erreichbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kata Island")
talkEntry:addResponse("This island isss in the southern part of the Kantabi Delta and is used by piratesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kata Insel")
talkEntry:addResponse("Diessse Insel im sss�dlichen Teil vom Kantabidelta und wird von Piraten genutzt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mount Letma")
talkEntry:addResponse("This place in the east of the Kantabi Delta can be accessssed over the eastern sssshore of the Kantabi River, but be careful, it is crowded with golemsss. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Berg Letma")
talkEntry:addResponse("Dieser Platz im Osssten vom Kantabidelta kann �ber das �stliche Ufer des Kantabifluss erreicht werden. Aber ssssei vorsichtig, er ist �berf�llt mit Golemsss!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, "<", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(642, "=", 1))
talkEntry:addConsequence(consequence_item(144, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Queen Rosaline Edwards' started] Find Queen Rosaline Edwards and take her your gift."))
talkEntry:addResponse("Have you already met our Queen? If not, you sssould introduce yourself. Take this gift for her. She will appreciate thisss since she loves beautiful things. *hands over a flower*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, "<", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(642, "=", 1))
talkEntry:addConsequence(consequence_item(144, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde K�nigin Rosaline Edwards' gestartet] Finde K�nigin Rosaline Edwards und bringe ihr dein Geschenk."))
talkEntry:addResponse("Hassst du bereitsss die K�nigin kennengelernt? Fallssss nicht, dann sssolltest du dich bei ihr mit einem Geschenk vorstellen. Sssie wird diesesss Geschenk hier bestimmt m�gen, da sssie ein Auge f�r dasss Sch�ne hat. *�berreicht eine Blume*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, "<", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_quest(642, "=", 1))
talkEntry:addConsequence(consequence_item(144, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Queen Rosaline Edwards' started] Find Queen Rosaline Edwards and take her your gift."))
talkEntry:addResponse("Have you already met our Queen? If not, you sssould introduce yourself. Take this gift for her. She will appreciate thisss since she loves beautiful things. *hands over a flower*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, "<", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_quest(642, "=", 1))
talkEntry:addConsequence(consequence_item(144, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde K�nigin Rosaline Edwards' gestartet] Finde K�nigin Rosaline Edwards und bringe ihr dein Geschenk."))
talkEntry:addResponse("Hassst du bereitsss die K�nigin kennengelernt? Fallssss nicht, dann sssolltest du dich bei ihr mit einem Geschenk vorstellen. Sssie wird diesesss Geschenk hier bestimmt m�gen, da sssie ein Auge f�r dasss Sch�ne hat. *�berreicht eine Blume*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nothing for you to do yet, but sssoon I will have plenty of tasksss for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe nichts f�r dich zu tun  aber bald habe ich einige Aufgaben f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Nothing for you to do yet, but sssoon I will have plenty of tasksss for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe nichts f�r dich zu tun aber bald habe ich einige Aufgaben f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage ownsss two Ssstonesss of Power, thessse are an emerald and a ruby. They protect Runewick against being beaten by our forcesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier besssitzt zwei Sssteine der Macht. Einen Smaragd und einen Rubin. Die besssch�tzen Runewick vor der �bernahme durch unsssere Streitkr�fte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage ownsss two Ssstonesss of Power, thessse are an emerald and a ruby. They protect them against being beaten by our forcesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier besssitzt zwei Sssteine der Macht. Einen Smaragd und einen Rubin. Die besssch�tzen Runewick vor der �bernahme durch unsssere Streitkr�fte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick? It isss in the east. Crosss the Kantabi Desert, go beyond the Border Mountains to the other ssside of the Snakehead Bay. Look for signposts. Be careful, it's a dangerousss route. You would be better off using the teleporter outside of town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick? Dasss issst im Osssten. Durchqu�re die Kantabiw�ste, gehe hinter dasss Grenzberge zu der anderen Ssseite der Ssschlangenkopf Bucht. Ssschau nach Wegssschildern. Issst aber ein gef�hrlicher Weg. Verwende bessser den Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don ownsss two ssstonesss of power, thessse are a sssapphire and an obsssidian. They protect Galmair against being beaten by our forcesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don besssitzt zwei Sssteine der Macht. Einen Saphir und einen Obsidian. Die besssch�tzen Galmair vor der �bernahme durch unsere Ssstreitkr�fte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair? It isss in the north. Crosss the Kantabi Desert, go beyond Border Mountainsss, and then walk to the north. Look for sssignposts, but be careful. It's a dangerousss route. You would be better off usssing the teleporter outssside of town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair? Dasss issst im Norden. Durchqu�re die Kantabiw�ste, gehe hinter dasss Grenzberge und dann in den Norden. Ssschau nach Wegssschildern. Issst aber ein gef�hrlicher Weg. Verwende bessser den Teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen ownsss two Ssstonesss of Power, thessse are a topazzz and an amethyssst. They protect usss againssst Runewick and Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Der K�nigin besitzt zwei Sssteine der Macht. Einen Topas und einen Amethyst. Die besch�tzen unsss vor Runewick und Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen ownsss two Ssstonesss of Power, thessse are a topazzz and an amethyssst. They protect usss againssst Runewick and Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen uns vor Runewick und Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("That isss here. If you want to know more asssk Frizza. She is in the town's marketplace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Das issst hier. Wenn du mehr dar�ber wisssen m�chtest, dann frag Frizza. Sssie ist auf dem Marktplatz der Ssstadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Primarily, we pray to three godsss in Cadomyr. They are Sirani, Zhambra and Malachin. I pray to Zelphia, though, mother of my race")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Bevorzugt betten wir drei G�tter in Cadomyr an. Die w�ren Sirani, Zhambra und Malachin. Aber ich bette zu Zelphia, der Mutter meiner Rassse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshoulde know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshoulde know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("You can find a temple dedicated to him in the sssouth. Go to the mine 'Cornerstone of Candour', and you will find the temple above it. Jussst follow the sssignpostsss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Du kannst den Tempel im S�den. Gehe einfach zur Mine 'Grundstein der Aufrichtigkeit', und du wirst den Tempel dar�ber finden. Folge einfach den Wegschildern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshoulde know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshoulder know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("You can find a temple dedicated to her in the sssoutheassst. Go eassst firssst, and then sssouth after you crosss the Kantabi River. Jussst follow the sssignpostsss, but be careful!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Du kannst den Tempel von ihr im Sss�dosten finden. Gehe einfach in den Osssten, und dann in den Sss�den nachdem du den Kantabi-Fluss �berquert hast. Folge einfach den Wegschildern, aber sei vorsichtig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshoulde know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("If you would like to know more about thisss god asssk sssomone elssse. Frizza in the marketplace ssshould know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Wenn du mehr �ber diessse Gottheit zu wissen m�chtessst, fragt jemand anderen. Frizza sollte esss wissen, sssie ist auf dem Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("You can find a temple dedicated to him in our town. Jussst go through into the town, passs through the marketplace and then you will find it on the right after the workssshop.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Du kannst den Tempel von in unserer Ssstadt finden. Gehe einfach durch die Ssstadtmauer, �berquere den Marktplatz und dann findest du ihn auch schon an der rechten Ssseite hinter der Werkstatt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you. How can I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Sssch�n dich zu kennenzulernen. Wie kann ich dir helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzusss")
talkEntry:addResponse("Yes, that isss my name. What placesss do you want information about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ruzusss")
talkEntry:addResponse("Ja, dasss ist mein Name. �ber welche Orte wollt ihr Information?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Sssee you again if you need more information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Wir sssehen unsss wenn mehr Information ben�tigt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("place")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("Placesss? Which placesss so you mean? These could be in the northeast, northwest, southwest or southeast of Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Orte")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Orte? Welche Orte meinst du? Diese k�nnten sein im Nordosten, Nordwesten, S�dwesten oder S�dosten von Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wer etwas �ber die Orte hier in der Umgebung wissen will, soll mich nur nach diesen Orten fragen.", "If sssomeone wants to know sssomething about the placesss near here, jussst ask me.")
talkingNPC:addCycleText("#me wedelt mit seinem Schwanz.", "#me wags his tail.")
talkingNPC:addCycleText("#me blickt herum mit seinen weit ge�ffneten Augen.", "#me looks around with wide opened eyes.")
talkingNPC:addCycleText("#me untersucht seinen Dolch.", "#me examines his dagger.")
talkingNPC:addCycleText("#me streichelt seinen Schwanz.", "#me pets his tail.")
talkingNPC:addCycleText("#me isst einen Fisch.", "#me eats a fish.")
talkingNPC:addCycleText("Tsss...", "Tsss...")
talkingNPC:addCycleText("Zsss?", "Zsss?")
talkingNPC:addCycleText("#me zischelt.", "#me hisses.")
talkingNPC:addCycleText("Ssss...", "Ssss...")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Ruzusss der J�ger.", "This NPC is Ruzusss the hunter.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 2287)
mainNPC:setEquipment(3, 364)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 366)
mainNPC:setEquipment(10, 369)
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
