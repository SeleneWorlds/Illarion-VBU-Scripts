local consequence_item = require("npc.base.consequence.item")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Wulfgorda the hunter. Keywords: Question, information, Places."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Wulfgorda die J�gerin. Schl�sselw�rter: Auskunft, Information, Orte."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Wulfgorda'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 2))
talkEntry:addResponse("#me tips her helmet. 'Finally you found me! I had already been informed about your visit. Here, have some well-earned silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Find Wulfgorda'] Du hast 10 Silberst�cke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 2))
talkEntry:addResponse("Tach. Endlich hast du mich gefunden. Ich wurde bereits informiert �ber deinen Besuch. Hier hast du deine wohlverdienten M�nzen.")
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
talkEntry:addResponse("#me tips her helmet.")
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
talkEntry:addResponse("#me tippt auf ihren Helm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me tips her helmet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me tippt auf ihren Helm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me tips her helmet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me tippt auf ihren Helm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me tips her helmet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me tippt auf ihren Helm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I have nothing to complain about.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Ich kann mich nicht beschweren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Wulfgorda the hunter, and I have some information about the places northeast of here.")
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
talkEntry:addResponse("Wulfgorda die J�gerin und ich habe einige Informationen �ber die Orte hier im Nordosten.")
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
talkEntry:addResponse("I am not some market woman.")
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
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I have information about the places northeast of here for you if you wish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Ich habe Informationen zu den Orten hier im Nordosten f�r dich wenn du w�nschst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I have information about the places northeast of here for you if you wish.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Ich habe Informationen zu den Orten hier im Nordosten f�r dich wenn du w�nschst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("place")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("Places? Which places do you mean? These could be to the northeast, the northwest, the southwest, or the southeast of Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Orte")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Orte? Welche Orte meinst du? Diese k�nnten sein im Nordosten, Nordwesten, S�dwesten oder S�dosten von Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Keywords] Northeast, northwest, southwest, southeast"))
talkEntry:addResponse("This land is called Illarion and I divide it into the northeast, the northwest, the southwest, and the southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Dieses Land wird Illarion genannt und ich unterteile es in Nordost, Nordwest, S�dwest und S�dost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips."))
talkEntry:addResponse("I have information on the following places: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nordost")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Elsbaumwald, Elsbaumebene, Ostland, Schulterplatte Insel, Todessumpf, Spinnenmaul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen."))
talkEntry:addResponse("Dort gibt es: Elsbaumwald, Elsbaumebene, Ostland, Schulterplatte Insel, Todessumpf, Spinnenmaul, Gasthof zur Hanfschlinge, Grenzstrom, Gl�hender Fluss, Ebenen der Stille, N�rdliche W�lder, Un�berwindbarer Limes, B�ser Fels, Dreifingerspitzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northwest")
talkEntry:addConsequence(consequence_inform("[Keywords] Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau, Lotta Medborgar."))
talkEntry:addResponse("I have information on the following places: Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau. For more detailed information, however, ask Lotta Medborgar in Galmair.")
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
talkEntry:addConsequence(consequence_inform("[Keywords] Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert, Ruzusss."))
talkEntry:addResponse("I have information on the following places: Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert. For more detailed information, however, ask Ruzusss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("S�dwest")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Schattenland, Wichtkanal, Wachtwald, Gro�er Ozean, Grenzberge, Kantabiw�ste, Kantabidelta, Westliche Kantabiw�ste, Ruzusss."))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schattenland, Wichtkanal, Wachtwald, Gro�er Ozean, Grenzberge, Kantabiw�ste, Kantabidelta, Westliche Kantabiw�ste. Aber f�r ausf�hrlichere Informationen frage Ruzusss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("southeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps Yewdale, Numila Irunnleh."))
talkEntry:addResponse("I have information on the following places: Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Yewdale. For more detailed information however, ask Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("S�dost")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Morgentaus�mpfe, Eibenthal, Numila Irunnleh."))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schlangenkopfbucht, Einsame Inseln, Todesgestank, Drachenh�hle, Morgentaus�mpfe, Eibenthal. Aber f�r ausf�hrlichere Informationen frage Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Forest")
talkEntry:addResponse("The Elstree Forest is a huge and wonderful forest south of the Dead Marsh. There, you will also find Elstree Lake, Fairy's Dance, the Sunken Tower of Mar'ku, Mount Liferoot, and to the south the Den of Thieves. If you are lucky, fairies might drop magical stones for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumwald")
talkEntry:addResponse("Der Elsbaumwald ist ein riesiger und wunderbarer Wald s�dlich vom Todessumpf. Dort findest du auch den Elstree See, den Feen Tanz, den Versunkenen Turm von Mar'ku, Berg Lebenswurzel, und im S�den die Diebesh�hle. Wenn du Gl�ck hast, dann lassen die Feen dort den einen oder anderen magischen Stein f�r dich fallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plain")
talkEntry:addResponse("The Elstree Plain is between Igruk's cave and the Elstree Forest. You'll find Jarl's Longhouse and the Golden Hole there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumebene")
talkEntry:addResponse("Die ist zwischen Igruk's H�hle und dem Elsbaumwald. Du findest dort auch des Jarls Langhaus und das Goldene Loch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree")
talkEntry:addResponse("I know of two, Elstree Forest and Elstree Plain. Which one would you like to know more about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eastland")
talkEntry:addResponse("You will find it east of the Elstree Forest and from there you can find Eastport, Twin Mountains, Paddock Farm, the Wonderland with the Wishing Fountain and the Naganorium.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ostland")
talkEntry:addResponse("Du findest es �stlich vom Elsbaumwald und dort wiederum kannst du den Osthafen, die Zwillingsberge, den Paddock Hof, das Wunderland mit dem Wunschbrunnen und das Naganorium finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pauldron")
talkEntry:addResponse("The Pauldron Isle is east of Eastland. You can find the Tanora Ruins, Epphurd's Houses, the Graveyard, Skewer Drift and the former Pauldron Settlement there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schulterplatte")
talkEntry:addResponse("Die Schulterplatte Insel ist �stlich vom Ostland. Du findest die Tanora Ruinen, Epphurds H�user, den Friedhof, den Spie�stollen und die ehemalige Schulterplattesiedlung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dead Marsh")
talkEntry:addResponse("The Dead Marsh is just south from here, over the right branch of the Glowing River. You find the Altar of Hatred, Witch's Cottage, and Bramus Rest there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todessumpf")
talkEntry:addResponse("Der Todessumpf ist gleich s�dlich von hier auf der anderen Seite des rechten Arms des Gl�henden Fluss. Du findest dort den Altar der Geha�ten, die Hexenh�te und Bramus Ruhe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spider's Mouth")
talkEntry:addTrigger("Spiders Mouth")
talkEntry:addResponse("This island here is the so called Spider's Mouth. It is very famous for the Hemp Necktie Inn, which is also known as the neutral tavern. On the east side you can find a temple to Adron, and on the west side, the Tears of Lost Love.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spinnenmund")
talkEntry:addResponse("Diese Insel hier wird das Spinnenmaul genannt. Sie ist ber�hmt f�r ihr Gasthof zur Hanfschlinge oder auch bekannt als die neutrale Taverne. Am �stlichen Ende findest du einen Tempel f�r Adron, am westlichen Ende die Tr�nen der Verlorenen Liebe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hemp Necktie Inn")
talkEntry:addResponse("The Hemp Necktie Inn *points backwards* is a neutral tavern where travellers can take a rest, meet, and have a drink with Borgate, or spread news and rumours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof Hanfschlinge")
talkEntry:addResponse("Der Gasthof zur Hanfschlinge *zeigt nach hinten* ist eine neutrale Taverne wo Reisende sich ausrasten, sich auf ein Bier von Borgate treffen oder um Neuigkeiten oder Ger�chte auszutauschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bounding Stream")
talkEntry:addResponse("The Bounding Stream is the river that seperates the northeast from the rest of Illarion; it is where the Glowing River ends.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzstrom")
talkEntry:addResponse("Der Grenzstrom ist jeder Fluss, der den Nordosten vom Rest von Illarion trennt und wo der Gl�hende Fluss sein Ende findet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glowing River")
talkEntry:addResponse("The Glowing River comes from the Border Mountains. You can find the Glowing Forest and Gate, Death Swath, Fisherman's Hut, Glittering Cave, Elven Ruins, Cherass' Citadel, Gate and Outpost, and Imman's Last Breath on both sides of the river.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gl�hend Fluss")
talkEntry:addResponse("Der Gl�hende Fluss kommt aus den Grenzbergen. Du findest die Gl�henden W�lder und Tor, die Todesschneise, Fischermanns H�tte, Funkelh�hle, Elfenruinen, Cherass Zitadelle, Tor und Au�enposten sowie Immans Letzter Atemzug an beiden Seiten des Flusses.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plains Silence")
talkEntry:addResponse("The Plains of Silence are north from here, and south of the Northern Woods. In the southeast of the plains you can find the Sunken Temple and Carnivore's House.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ebenen Stille")
talkEntry:addResponse("Die Ebene der Stille sind n�rdlich von hier und s�dlich der N�rdlichen W�lder. Im S�dosten kannst du den Versunkenen Tempel und das Fleischfresser Haus finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Northern Wood")
talkEntry:addResponse("The Northern Woods are north of here as the name suggests and in the middle of them you can find Raban's Grove.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("N�rdliche W�lder")
talkEntry:addTrigger("N�rdlichen W�lder")
talkEntry:addResponse("Die N�rdlichen W�lder sind wie der Name vermuten l�sst n�rdlich von hier und in der Mitte kann Rabans Hain gefunden werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insurmountable Limes")
talkEntry:addResponse("The Insurmountable Limes is a huge wall north of the Northern Woods. Nobody has ever crossed them. It is said that if you try, you fall down into nowhere on the other side.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Un�berwindbarer Limes")
talkEntry:addTrigger("Un�berwindbare Limes")
talkEntry:addResponse("Der Un�berwindbare Limes ist eine riesige Mauer n�rdlich von den N�rdlichen W�ldern. Niemand hat sie je �berwunden. Es wird gesagt, dass man ins Nirgendwo f�llt wenn man sie �berwindet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Evilrock")
talkEntry:addResponse("Evilrock is an island north of the Pauldron Isle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("B�se Fels")
talkEntry:addTrigger("B�ser Fels")
talkEntry:addResponse("Der B�se Fels ist eine Insel n�rdlich der Schulterplatten Insel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Three Fingertips")
talkEntry:addResponse("The Three Fingertips are little islands in Snakehead Bay, west of Death's Stench. You will find the Unconstructed Lighthouse there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dreifingerspitzen")
talkEntry:addResponse("Die Dreifingerspitzen sind kleine Inseln in der Schlangenkopfbucht westlich des Todes Gestank. Du findest den Unvollendeten Leuchtturm dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Snakehead Coast")
talkEntry:addResponse("It is to the north of Snakehead Bay and you will find Wilder Island, Demonspring, Cherga's Mouth, Mount Snakehead, and a Shrine to Zelphia there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlangenkopfk�ste")
talkEntry:addResponse("Sie ist im Norden der Schlangenkopfbucht und du findest die Wilde Inseln, D�monenquelle, Chergas Maul, den Schlangenkopfberg und Zelphias Schrein dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Snakehead Bay")
talkEntry:addResponse("Well, as I said, it is to the southeast. For more details you should ask someone who lives there. Numila Irunnleh in Runewick for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlangenkopfbucht")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Islands")
talkEntry:addResponse("Well, as I said, it is to the southeast. For more details you should ask someone who lives there. Numila Irunnleh in Runewick for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Inseln")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Death's Stench")
talkEntry:addTrigger("deaths stench")
talkEntry:addResponse("Well, as I said, it is to the southeast. For more details you should ask someone who lives there. Numila Irunnleh in Runewick for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todesgestank")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dragon's Lair")
talkEntry:addTrigger("dragons lair")
talkEntry:addResponse("Well, as I said, it is to the southeast. For more details you should ask someone who lives there. Numila Irunnleh in Runewick for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drachenh�hle")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dewy Swamps")
talkEntry:addResponse("Well, as I said, it is to the southeast. For more details you should ask someone who lives there. Numila Irunnleh in Runewick for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Morgentausumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Well, as I said, it is to the southeast. For more details you should ask someone who lives there. Numila Irunnleh in Runewick for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Numila Irunnleh in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("You can find her in Runewick. She knows all about the places in the southeast around Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("Die findet man in Runewick und die kennt s�mtliche Orte im S�dosten, sprich um Runewick herum.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syrita Bay")
talkEntry:addResponse("Well, as I said, it is in the northwest. For more details you should ask someone who lives there. Lotta Medborgar in Galmair for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syritabucht")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun's Plain")
talkEntry:addTrigger("narguns plain")
talkEntry:addResponse("Well, as I said, it is in the northwest. For more details you should ask someone who lives there. Lotta Medborgar in Galmair for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Narguns Ebene")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Swamp")
talkEntry:addResponse("Well, as I said, it is in the northwest. For more details you should ask someone who lives there. Lotta Medborgar in Galmair for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple five")
talkEntry:addResponse("Well, as I said, it is in the northwest. For more details you should ask someone who lives there. Lotta Medborgar in Galmair for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel F�nf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Mountains")
talkEntry:addResponse("Well, as I said, it is in the northwest. For more details you should ask someone who lives there. Lotta Medborgar in Galmair for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Berge")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair Plateau")
talkEntry:addResponse("Well, as I said, it is in the northwest. For more details you should ask someone who lives there. Lotta Medborgar in Galmair for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair Hochebene")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("You can find her in Galmair. She knows all about the places in the northwest around Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, sprich um Galmair herum.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadowland")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schattenland")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wight Canal")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wichtkanal")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sentry Forest")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wachtwald")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Great Ocean")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gro�er Ozean")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mountains")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzberge")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Western Kantabi Desert")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Westliche Kantabiw�ste")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabi Desert")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabiw�ste")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kantabi Delta")
talkEntry:addResponse("Well, as I said, it is in the southwest. For more details, you ask someone who lives there. Ruzussss in Cadomyr for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabidelta")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im S�dwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Ruzussss in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzus")
talkEntry:addResponse("You can find him in Cadomyr. He knows all about the places in the southwest around Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ruzus")
talkEntry:addResponse("Den findet man in Cadomyr und der kennt s�mtliche Orte im S�dwesten, sprich um Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel Five")
talkEntry:addResponse("The Chapel of the Five is on the southern end of the Border Mountains and at the eastern border of the Kantabi Desert. Ask Ruzussss in Cadomyr if you cannot find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle F�nf")
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Kantabiw�ste. Frage Ruzussss in Cadomyr falls du sie nicht finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel")
talkEntry:addResponse("The Chapel of the Five is on the southern end of the Border Mountains and at the eastern border of the Kantabi Desert. Ask Ruzussss in Cadomyr if you cannot find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle")
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Kantabiw�ste. Frage Ruzussss in Cadomyr falls du sie nicht finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(652, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(652, "=", 1))
talkEntry:addConsequence(consequence_item(1908, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Borgate Northoff' started] Find Borgate Northoff and take his mug back to him."))
talkEntry:addResponse("Have you already met Borgate Northoff, the barkeeper of the Hemp Necktie Inn? If not, you can do this whilst you take this mug back for me. *smiles and hands over a mug.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(652, "<", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_quest(652, "=", 1))
talkEntry:addConsequence(consequence_item(1908, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Borgate Northoff' gestartet] Finde Borgate Northoff und bringe ihm seinen Krug zur�ck."))
talkEntry:addResponse("Hast du bereits Borgate Northoff den Gastwirt des Gasthof Hanfschlinge kennengelernt? Falls nicht, dann dann kannst du das gleich dabei erledigen wenn du mir diesen Krug zur�ck bringst. *l�chelt und �berreicht einen Bierkrug*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(652, "<", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_quest(652, "=", 1))
talkEntry:addConsequence(consequence_item(1908, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Borgate Northoff' started] Find Borgate Northoff and take his mug back to him."))
talkEntry:addResponse("Have you already met Borgate Northoff, the barkeeper of the Hemp Necktie Inn? If not, you can do this whilst you take this mug back for me. *smiles and hands over a mug.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(652, "<", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_quest(652, "=", 1))
talkEntry:addConsequence(consequence_item(1908, 1, 777, nil))
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Borgate Northoff' gestartet] Finde Borgate Northoff und bringe ihm seinen Krug zur�ck."))
talkEntry:addResponse("Hast du bereits Borgate Northoff den Gastwirt des Gasthof Hanfschlinge kennengelernt? Falls nicht, dann dann kannst du das gleich dabei erledigen wenn du mir diesen Krug zur�ck bringst. *l�chelt und �berreicht einen Bierkrug*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nothing for you to do yet, but soon I will have plenty of tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe nichts momentan f�r dich zu tun, aber bald habe ich einige Aufgaben f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Nothing to do for you yet, but soon I will have plenty of tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe momentan nichts f�r dich zu tun, aber bald habe ich einige Aufgaben f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage owns two Stones of Power, an emerald and a ruby. They protect Runewick against Galmair and Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Diese besch�tzen Runewick vor Galmair und Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage owns two Stones of Power, an Emerald and a Ruby. They protect Runewick against Galmair and Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Diese besch�tzen Runewick vor Galmair und Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is to the southeast. If you are stupid enough to try and walk there, look for the signposts at least. Intelligent people use the teleporter anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist im S�dosten zu finden. Wenn du dumm genug bist, wirst du dorthin zu Fu� gehen. Aber orientiere dich wenigstens nach den Wegschildern. Schlaue Leute werden ohnehin den Teleporter benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don owns two Stones of Power, a sapphire and an obsidian. They protect Galmair against Runewick and Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don besitzt zwei Steine der Macht. Einen Saphir und einen Obsidian. Diese besch�tzen Galmair vor Runewick und Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is to the northwest. If you are stupid enough to try and walk there, look for the signposts at least. Intelligent people use the teleporter anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist im Nordwesten zu finden. Wenn du dumm genug bist, wirst du dorthin zu Fu� gehen. Aber orientiere dich wenigstens nach den Wegschildern. Schlaue Leute werden ohnehin den Teleporter benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen owns two Stones of Power, a topaz and an amethyst. They protect Cadomyr against Galmair and Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Diese besch�tzen Cadomyr vor Galmair und Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen owns two Stones of Power, a topaz and an amethyst. They protect Cadomyr against Galmair and Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Diese besch�tzen Cadomyr vor Galmair und Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is to the southwest. If you are stupid enough to try and walk there, look for the signposts at least. Intelligent people use the teleporter anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist im S�dwesten zu finden. Wenn du dumm genug bist, wirst du dorthin zu Fu� gehen. Aber orientiere dich wenigstens nach den Wegschildern. Schlaue Leute werden ohnehin den Teleporter benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("If you want to know something about the gods, then look for a priests or ask someone in one of the towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Wenn du etwas �ber die G�tter wissen m�chtest, dann suche einen Priester oder frage jemanden in den St�dten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Hmm... you want some information? But about what?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Hmm... und du w�nschst nach Information? Aber welche?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Yes, that is my name. Which places do you want information about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Ja, das ist mein Name. �ber welche Orte wollst du Information?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wer etwas �ber die Orte hier in der Umgebung wissen will, soll mich nur nach diesen Orten fragen.", "If someone wants to know something about the places around here, they should just ask me.")
talkingNPC:addCycleText("#me kratzt sich im Gesicht.", "#me rubs her face.")
talkingNPC:addCycleText("#me blickt herum mit ihren weit ge�ffneten Augen.", "#me looks around with wide opened eyes.")
talkingNPC:addCycleText("#me untersucht ihre R�stung.", "#me examines her armour.")
talkingNPC:addCycleText("#me untersucht ihren Bogen.", "#me examines her bow.")
talkingNPC:addCycleText("#me isst einen Apfel.", "#me eats an apple.")
talkingNPC:addCycleText("Im Adras rutschen einem die Getr�nke nur so die Kehle herunter.", "In Adras the drinks flow freely.")
talkingNPC:addCycleText("#me verstaut eine Flasche in ihrem Beutel.", "#me stores a bottle in her bag.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Wulfgorda die J�gerin.", "This NPC is Wulfgorda the hunter.")
mainNPC:setUseMessage("Du greifst mich besser nicht an.", "You had better not touch me.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 324)
mainNPC:setEquipment(3, 362)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 2708)
mainNPC:setEquipment(6, 322)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2113)
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
