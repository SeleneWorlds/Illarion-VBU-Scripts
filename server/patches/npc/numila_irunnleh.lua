local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local condition_chance = require("npc.base.condition.chance")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Numila Irunnleh the scholar. Keywords: Quest, Question, information, Runewick, Places."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Numila Irunnleh die Wissenschaftlerin. Schl�sselw�rter: Quest, Auskunft, Information, Runewick, Orte."))
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
talkEntry:addResponse("Hail Oldra. *Turns back to her book*")
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
talkEntry:addResponse("Heil Oldra. *Wendet sich wieder ihrem Buch zu*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hail Oldra. *Turns back to her book*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Heil Oldra. *Wendet sich wieder ihrem Buch zu*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Au revoir. *Turns back to her book*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Au revoir. *Wendet sich wieder ihrem Buch zu*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Au revoir. *Turns back to her book*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Au revoir. *Wendet sich wieder ihrem Buch zu*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Fine, fine. *Turns back to her book*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Fein, fein. *Wendet sich wieder ihrem Buch zu*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Numila Irunnleh the scholar. *Turns back to her book*")
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
talkEntry:addResponse("Numila Irunnleh die Wissenschaftlerin. *Wendet sich wieder ihrem Buch zu*")
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
talkEntry:addCondition(condition_quest(624, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Numila 2'] You receive 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(624, "=", 2))
talkEntry:addResponse("Hail Oldra. Finally you found me! I had already been informed about your visit. There, have some silver coins for finding me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(624, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_town(2))
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Find Numila 2'] Du hast 10 Silberst�cke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(155, 10, nil))
talkEntry:addConsequence(consequence_quest(624, "=", 2))
talkEntry:addResponse("Heil Oldra. Endlich hast du mich gefunden. Ich wurde bereits informiert �ber deinen Besuch. Hier hast du deine wohlverdienten M�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(620, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest End 'Find Numila'] You received 10 silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(620, "=", 2))
talkEntry:addResponse("Hail Oldra. Different constitutions? There is only one valid, all others are outdated. But we keep the old for historical studies. *Absent minding she offers some silver coins and turns back to her book*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(620, "=", 1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Ende 'Finde Numila'] Du hast 10 Silberst�cke erhalten."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(620, "=", 2))
talkEntry:addResponse("Heil Oldra. Unterschiedliche Verfassungen? Es bibt nur eine g�ltige, alle anderen sind veraltet. F�r wissenschaftliche Studien behalten wir auch die alten B�cher. *�berreicht gedankenverloren einige Silberm�nzen und wendet sich wieder ihrem Buch zu*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Tell Numila Irunnleh what's not right with the picture 'The rooster'. Take a close look at the signature."))
talkEntry:addResponse("You are interested in paintings? Look to the picture of the rooster painted by Alberto Dicker over there. Do you notice anything?")
talkEntry:addConsequence(consequence_quest(674, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Sage Numila Irunnleh was am Bild 'Der Hahn' nicht stimmen kann. Schau dir auch die Unterschrift an."))
talkEntry:addResponse("Du interessierst dich f�r Gem�lde? Schau dir mal das Bild mit dem Hahn von Alberto Dicker dort genau an. F�llt dir was auf?")
talkEntry:addConsequence(consequence_quest(674, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Tell Numila Irunnleh what's not right with the picture 'The rooster'. Take a close look at the signature."))
talkEntry:addResponse("You are interested in paintings? Look to the picture of the rooster over there. Do you notice anything?")
talkEntry:addConsequence(consequence_quest(674, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Sage Numila Irunnleh was am Bild 'Der Hahn' nicht stimmen kann. Schau dir auch die Unterschrift an."))
talkEntry:addResponse("Du interessiertst dich f�r Gem�lde? Schau dir mal das Bild mit dem Hahn dort genau an. F�llt dir was auf?")
talkEntry:addConsequence(consequence_quest(674, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 1))
talkEntry:addTrigger("false")
talkEntry:addTrigger("copy")
talkEntry:addTrigger("signature")
talkEntry:addTrigger("Logo")
talkEntry:addTrigger("fake")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to Raban in Raban's Grove and talk with him."))
talkEntry:addResponse("You have eyes like an eagle. This is not the original. The right picture you can see at Raban. And if you meet him, tell him the Archmage will fulfil his part of the agreement.")
talkEntry:addConsequence(consequence_quest(674, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 1))
talkEntry:addTrigger("falsch")
talkEntry:addTrigger("Kopie")
talkEntry:addTrigger("Unterschrift")
talkEntry:addTrigger("Logo")
talkEntry:addTrigger("F�lsch")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zu Raban in Rabans Hain und sprich mit ihm."))
talkEntry:addResponse("Du hast ein scharfes Auge. Genau, das ist gar nicht das Original. Das hat zur Zeit Raban. Du kannst es dir ja ansehen, wenn du Raban mitteilst, dass der Erzmagier zu seiner Zusage steht.")
talkEntry:addConsequence(consequence_quest(674, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Logo")
talkEntry:addTrigger("initial")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to Raban in Raban's Grove and talk with him."))
talkEntry:addResponse("You have eyes like an eagle. This is not the original. The right picture you can see at Raban's Grove. If you meet Raban, tell him the Archmage will fulfil his part of the agreement.")
talkEntry:addConsequence(consequence_quest(674, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 1))
talkEntry:addTrigger("Logo")
talkEntry:addTrigger("initial")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zu Raban in Rabans Hain und sprich mit ihm."))
talkEntry:addResponse("Du hast ein scharfes Auge. Genau, das ist gar nicht das Original. Das hat zur Zeit Raban. Du kannst es dir ja ansehen, wenn du Raban mitteilst, dass der Erzmagier zu seiner Zusage steht.")
talkEntry:addConsequence(consequence_quest(674, "=", 2))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Look carefully at the picture especially the signature. It may help reading the book about the painter."))
talkEntry:addResponse("Hey look at the picture. Sometimes it may help if you read the right book. You may find it in the library.")
talkEntry:addResponse("Please look over the picture carefully.")
talkEntry:addResponse("You can find in the library a book about the painter. It might help you to find the solution.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Was stimmt mit dem Bild 'Der Hahn' nicht? Schau dir auch die Unterschrift an und und lies im Buch �ber den Maler nach."))
talkEntry:addResponse("Na schau mal genau hin, manchmal hilft es auch ein Buch zu lesen. Du findest es in der B�cherei.")
talkEntry:addResponse("Schau dir das Bild doch mal genau an.")
talkEntry:addResponse("Lies doch mal im Buch �ber Alberto Dicker nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to Raban at Raban's Grove and talk with him."))
talkEntry:addResponse("Have you been in northern forest and delivered the message yet?")
talkEntry:addResponse("Please forward the message before we talk again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zu Raban in Rabans Hain und sprich mit ihm."))
talkEntry:addResponse("Warst du schon im Nordwald und hast die Nachricht �berbracht?")
talkEntry:addResponse("Bring erst mal die Nachricht zu Raban im Nordwald, dann reden wir weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to Raban at Raban's Grove and talk with him."))
talkEntry:addResponse("Have you been in northern forest and delivered the message yet?")
talkEntry:addResponse("Please forward the message before we talk again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zu Raban in Rabans Hain und sprich mit ihm."))
talkEntry:addResponse("Warst du schon im Nordwald und hast die Nachricht �berbracht?")
talkEntry:addResponse("Bring erst mal die Nachricht zu Raban im Nordwald, dann reden wir weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Raban")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to Raban at Raban's Grove and talk with him."))
talkEntry:addResponse("Raban's Grove you find in the centre of the northern forest. Travel to the Hemp Necktie Inn, pass the bay using the big bridge east of the inn and walk to the north.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 2))
talkEntry:addTrigger("Raban")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zu Raban in Rabans Hain und sprich mit ihm."))
talkEntry:addResponse("Rabans Hain liegt mitten im Nordwald. Reise doch zum Gasthof zur Hanfschlinge und �berquere den Fluss auf der Br�cke �stlich davon. Geh dann einfach nach Norden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to the Hemp Necktie and talk to the owner of the Inn."))
talkEntry:addResponse("Oh Raban gave you some herbs. I don't have any use for them. You can take them for yourself. But since you are here, would you please find out where the owner of Hemp Necktie Inn put 'Oldras Shrine'? I've heard the picture disappeared from the guest hall.")
talkEntry:addConsequence(consequence_quest(674, "=", 4))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zur Hanfschlinge und sprich mit dem Besitzer der Taverne."))
talkEntry:addResponse("Oh, Raban gab dir diese Kr�uter. Ich habe leider keine Verwendung. Behalte sie einfach. Und da du gerade da bist, kannst du bitte in Erfahrung bringen, wo der Besitzer der Hanfschlinge 'Oldras Altar' h�ngen hat. Man sagt es sei aus der Gaststube verschwunden.")
talkEntry:addConsequence(consequence_quest(674, "=", 4))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to the Hemp Necktie and talk to the owner of the Inn."))
talkEntry:addResponse("Please find out what happened to 'Oldras Altar'. It's a famous picture.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zur Hanfschlinge und sprich mit dem Besitzer der Taverne."))
talkEntry:addResponse("Hast du schon herausgefunden, was mit 'Oldras Altar' ist?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to the Hemp Necktie and talk to the owner of the Inn."))
talkEntry:addResponse("Please find out what happened to 'Oldras Altar'. It's a famous picture.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zur Hanfschlinge und sprich mit dem Besitzer der Taverne."))
talkEntry:addResponse("Hast du schon herausgefunden, was mit 'Oldras Altar' ist?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("Besitzer")
talkEntry:addTrigger("Eigner")
talkEntry:addTrigger("geh�rt")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zur Hanfschlinge und sprich mit dem Besitzer der Taverne Half-hung Bryan."))
talkEntry:addResponse("Die Taverne zur Hanfschlinge geh�rt meines Wissens Half-hung Bryan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("own")
talkEntry:addTrigger("belong")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go to the Hemp Necktie and talk to the owner of the Inn Half-hung Bryan."))
talkEntry:addResponse("The Hemp Necktie Inn belongs to Half-hung Bryan I think.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] You get quill, ink and parchment."))
talkEntry:addResponse("Sometimes rude fellows surprise one. A picture is handled with velvet gloves. Please take this drawing tool for your own paintings.")
talkEntry:addConsequence(consequence_item(463, 1, 333, nil))
talkEntry:addConsequence(consequence_item(1118, 1, 333, nil))
talkEntry:addConsequence(consequence_item(2745, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(674, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 5))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Die Bilder Alberto Dickers] Du bekommst Schreibfeder, Tinte und Pergament."))
talkEntry:addResponse("Manchmal staunt man �ber ungehobelte Burschen. Ein Bild fassen sie mit Samthandschuhen an. Nimm dieses Malzeug. Damit kannst du dich selber einmal versuchen.")
talkEntry:addConsequence(consequence_item(463, 1, 333, nil))
talkEntry:addConsequence(consequence_item(1118, 1, 333, nil))
talkEntry:addConsequence(consequence_item(2745, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(674, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find five more pictures Alberto Dickers."))
talkEntry:addResponse("Would you please be so kind and find out where the other pictures of Alberto Dicker are located?")
talkEntry:addConsequence(consequence_quest(674, "=", 100))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 6))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere f�nf Gem�lde Alberto Dickers."))
talkEntry:addResponse("Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkEntry:addConsequence(consequence_quest(674, "=", 100))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 100))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find five more pictures Alberto Dickers."))
talkEntry:addResponse("Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 100))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere f�nf Gem�lde Alberto Dickers."))
talkEntry:addResponse("Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 100))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find five more pictures Alberto Dickers."))
talkEntry:addResponse("Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 100))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere f�nf Gem�lde Alberto Dickers."))
talkEntry:addResponse("Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 101))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find four more pictures Alberto Dickers."))
talkEntry:addResponse("You found one? Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 101))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere vier Gem�lde Alberto Dickers."))
talkEntry:addResponse("Du hast bereits eins gefunden? Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 101))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("paint")
talkEntry:addTrigger("picture")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find four more pictures Alberto Dickers."))
talkEntry:addResponse("You found one? Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 101))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere vier Gem�lde Alberto Dickers."))
talkEntry:addResponse("Du hast bereits eins gefunden? Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 102))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find three more pictures Alberto Dickers."))
talkEntry:addResponse("There should be five pictures. Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 102))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere drei Gem�lde Alberto Dickers."))
talkEntry:addResponse("Es m�ssten insgesamt f�nf Gem�lde sein. Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 102))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("paint")
talkEntry:addTrigger("picture")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find three more pictures Alberto Dickers."))
talkEntry:addResponse("There should be five pictures. Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 102))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere drei Gem�lde Alberto Dickers."))
talkEntry:addResponse("Es m�ssten insgesamt f�nf Gem�lde sein. Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 103))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find two more pictures Alberto Dickers."))
talkEntry:addResponse("There should be five pictures. Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 103))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere zwei Gem�lde Alberto Dickers."))
talkEntry:addResponse("Es m�ssten insgesamt f�nf Gem�lde sein. Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 103))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("paint")
talkEntry:addTrigger("picture")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find two more pictures Alberto Dickers."))
talkEntry:addResponse("There should be five pictures. Would you please so kind and find out where the other pictures of Alberto Dicker are located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 103))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde weitere zwei Gem�lde Alberto Dickers."))
talkEntry:addResponse("Es m�ssten insgesamt f�nf Gem�lde sein. Kannst du bitte noch in Erfahrung bringen, wo die restlichen Gem�lde des Alberto Dicker h�ngen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 104))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find one more pictures Alberto Dickers."))
talkEntry:addResponse("One picture of Alberto Dicker is missing. Would you please so kind and find out where it is located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 104))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde noch ein Gem�lde Alberto Dickers."))
talkEntry:addResponse("Ein Gem�lde von Alberto Dicker fehlt noch. Kannst du bitte noch in Erfahrung bringen, wo es h�ngt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 104))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("paint")
talkEntry:addTrigger("picture")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Find one more pictures Alberto Dickers."))
talkEntry:addResponse("One picture of Alberto Dicker is missing. Would you please so kind and find out where it is located?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 104))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Finde noch ein Gem�lde Alberto Dickers."))
talkEntry:addResponse("Ein Gem�lde von Alberto Dicker fehlt noch. Kannst du bitte noch in Erfahrung bringen, wo es h�ngt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Ask for more reward."))
talkEntry:addResponse("Well done.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Frage Numila Irunnleh noch nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("picture")
talkEntry:addTrigger("found")
talkEntry:addTrigger("painting")
talkEntry:addTrigger("reward")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Ask for more reward."))
talkEntry:addResponse("Well done.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addTrigger("find")
talkEntry:addTrigger("Belohn")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Frage Numila Irunnleh noch nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Maybe you should tell Miggs about the copied picture? Ask Numila Irunnleh for more reward."))
talkEntry:addResponse("Well done. But don't tell in Galmair how the Archmage pays his debts.")
talkEntry:addConsequence(consequence_quest(674, "=", 201))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Vielleicht solltest du doch Miggs Bescheid geben? Frag Numila Irunnleh auch nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht. Aber erz�hl in Galmair nicht, dass der Erzmagier Schulden mit Bildern bezahlt.")
talkEntry:addConsequence(consequence_quest(674, "=", 201))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("picture")
talkEntry:addTrigger("found")
talkEntry:addTrigger("painting")
talkEntry:addTrigger("reward")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Maybe you should tell Miggs about the copied picture? Ask Numila Irunnleh for more reward."))
talkEntry:addResponse("Well done. But don't tell in Galmair how the Archmage pays his debts.")
talkEntry:addConsequence(consequence_quest(674, "=", 201))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addTrigger("find")
talkEntry:addTrigger("Belohn")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Vielleicht solltest du doch Miggs Bescheid geben? Frag Numila Irunnleh auch nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht. Aber erz�hl in Galmair nicht, dass der Erzmagier Schulden mit Bildern bezahlt.")
talkEntry:addConsequence(consequence_quest(674, "=", 201))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Maybe you should tell Anthar Vilicon about the copied picture? Ask Numila Irunnleh for more reward."))
talkEntry:addResponse("Well done. But don't tell in Cadomyr how the Archmage pays his debts.")
talkEntry:addConsequence(consequence_quest(674, "=", 202))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Vielleicht solltest du doch Anthar Vilicon Bescheid geben? Frag Numila Irunnleh auch nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht. Aber erz�hl in Cadomyr nicht, dass der Erzmagier Schulden mit Bildern bezahlt.")
talkEntry:addConsequence(consequence_quest(674, "=", 202))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("picture")
talkEntry:addTrigger("found")
talkEntry:addTrigger("painting")
talkEntry:addTrigger("reward")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Maybe you should tell Anthar Vilicon about the copied picture? Ask Numila Irunnleh for more reward."))
talkEntry:addResponse("Well done. But don't tell in Cadomyr how the Archmage pays his debts.")
talkEntry:addConsequence(consequence_quest(674, "=", 202))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addTrigger("find")
talkEntry:addTrigger("Belohn")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Vielleicht solltest du doch Anthar Vilicon Bescheid geben? Frag Numila Irunnleh auch nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht. Aber erz�hl in Cadomyr nicht, dass der Erzmagier Schulden mit Bildern bezahlt.")
talkEntry:addConsequence(consequence_quest(674, "=", 202))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Ask Numila Irunnleh for a reward."))
talkEntry:addResponse("Well done. But don't tell anybody how the Archmage pays his debts.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Frag Numila Irunnleh nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht. Aber erz�hl nicht, dass der Erzmagier Schulden mit Bildern bezahlt.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("picture")
talkEntry:addTrigger("found")
talkEntry:addTrigger("painting")
talkEntry:addTrigger("reward")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Ask Numila Irunnleh for a reward."))
talkEntry:addResponse("Well done. But don't tell anybody how the Archmage pays his debts.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 105))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addTrigger("find")
talkEntry:addTrigger("Belohn")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Frag Numila Irunnleh nach einer Belohnung."))
talkEntry:addResponse("Gut gemacht. Aber erz�hl nicht, dass der Erzmagier Schulden mit Bildern bezahlt.")
talkEntry:addConsequence(consequence_quest(674, "=", 203))
talkEntry:addConsequence(consequence_quest(675, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(6.25))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A clearly dark skinned woman walking over a plain of nothing but stone and soil. Even her long hair looks like stone. There is neither a weed nor animal to see.", ["descriptionDe"] = "Eine offensichtlich dunkelh�utige Frau mit langen schwarzen, wie erstarrt wirkenden Haaren, schreitet w�rdevoll �ber eine Ebene, welche  aus nichts als Steinen und Erde zu bestehen scheint. Keine einzige Pflanze und kein Tier sind zu sehen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(6.66666666666667))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "The head of a man with a full beard of blazing flames. The fire is drawn with a only a few lines but you might think it broadcasts heat.", ["descriptionDe"] = "Ein Kopf eines Mannes mit einem Vollbart aus einem wild lodernden Feuer. Das Feuer ist zwar nur durch wenige Striche angedeutet scheint aber trotzdem eine gl�hende Hitze auszustrahlen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(7.14285714285714))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A wise scholar holds a staff and a nearly endless script. The paper falls from the scroll and runs around the man as a frame. The inscription on the scroll is 'There is no life without mind.'", ["descriptionDe"] = "Ein weiser Gelehrter, der sich auf einen Stab st�tzt und eine ewig lange Schriftrolle studiert. Das lange Papier f�llt vor ihm auf den Boden und l�uft davon ausgehend um das ganze Bild. Die Inschrift lautet: 'Der Geist macht den K�rper lebendig.?", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(7.69230769230769))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A lizard is sitting on the shore and looking into the open sea. She seems to wait for someone. The endless shore fading into the horizon shows no sign of settlement or people.", ["descriptionDe"] = "Eine Echsenfrau am Ufer auf einem Stein sitzend und auf die Weite der See hinausschauend. Gerade so, als w�rde sie etwas suchen. Der endlos scheinende Strand zeigt keinerlei Zeichen einer Besiedlung.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(8.33333333333333))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A woman dancer levitates over windswept water. Her long flying hair turns into a cloud storming into the picture from the left side. Waves and clouds are forming the instruments lute, drum, flute, panpipe, horn and harp.", ["descriptionDe"] = "Eine T�nzerin, die schwerelos �ber von Wind aufgew�hltes Wasser gleitet. Die langen wehenden Haare gehen in eine von links heranst�rmende Wolke �ber. Wellen und Wolken formen die Instrumente Laute, Trommel, Fl�te, Panfl�te, Horn und Harfe.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(9.09090909090909))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "An incomplete card deck is distributed all over the picture. A raven turns a dice that shows a one, another dice shows a six.", ["descriptionDe"] = "Ein unvollst�ndiges �ber das ganze Bild verstreutes Kartenblatt. Ein Rabe dreht an einem W�rfel, der eine Eins zeigt. Ein weiterer W�rfel liegt mit einer Sechs nach oben.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(10.0))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A huge woman reads a scroll. She sits on a pile of 5 books. Ten artful scrolls lay to her feet.", ["descriptionDe"] = "Eine gro�e, in einer Schriftrolle lesende Frau thront auf einem Stapel aus 5 B�chern. 10 verschiedene fein herausgearbeitet Schriftrollen liegen zu ihren F��en.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(11.1111111111111))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A man sits in the center of a party. He holds in one arm a flimsy dressed woman on his legs. The other arm holds a mug full of beer. Different groups indulge their debauchery, Elven dance around a tree absent mindedly and some dwarves hold a barrel.", ["descriptionDe"] = "Ein Mann sitzt in der Mitte eines rauschenden Festes. Er h�lt eine leichtbekleidete Frau auf dem Scho� und einen Humpen in der Hand. Um ihn herum fr�nen verschieden Figurengruppen Ausschweifungen. Elfen tanzen ausgelassen, Zwerge halten ein Fass.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(12.5))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A Bradamen tree emanates dignified age as well as unbroken vitality. A sheep and a cow lay at the feet of the tree. Symbols of thanksgiving are grouped around.", ["descriptionDe"] = "Der Bradamen Baum strahlt sowohl Alter als auch ungebrochene Vitalit�t aus. Ein Schaf und ein Rind liegen zu F��en des Baumes, um den herum Symbole des Erntedankes drapiert sind.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(14.2857142857143))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "The look of the woman is serious but she doesn't mourn. In her hands she holds symbols of commemoration, a rim of pine and a flower. The hill contains 10 useless broken items, nevertheless it doesn't look like garbage.", ["descriptionDe"] = "Eine ernsthafte aber nicht trauernde Frau steht wartend auf einem H�gel. In ihren H�nden h�lt sie Symbole des Totengedenkens. Der H�gel, der keinesfalls das Flair einer M�llhalde ausstrahlt, besteht aus 10 zerbrochenen und damit nutzlosen Dingen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(16.6666666666667))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A strong warrior in a victory pose wearing a bright armor. He holds his sword with both hands and rests its pointy end onto a collection of trophies. Next to him rests a black wolf.", ["descriptionDe"] = "Ein starker Ritter in einer strahlenden R�stung hat sein Schwert mit der Spitze nach unten auf einen Haufen Troph�en gestellt, auf denen er in Siegerpose steht. Neben ihm steht ein schwarzer Wolf.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A few drawn lines show a dwarf working at the anvil. The anvil is illustrated with two lines a fat and a very short narrow one.", ["descriptionDe"] = "Ein mit wenigen Strichen angedeuteter Zwerg arbeitet am Amboss. Der Amboss ist mit nur zwei Strichen, einem dicken und einem sehr kurzen d�nnen dargestellt.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A Goddess levitates over a lover pair in an intimate hug.", ["descriptionDe"] = "Eine G�ttin schwebt �ber einem Liebespaar, welches in inniger Umarmung dargestellt ist.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(33.3333333333333))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A noble, a warrior and a master crafter are wrapped up in a chat. Their gestures send signals of understanding each other, even if they are bound with a visible belt, it seems not to constrain any of them.", ["descriptionDe"] = "Ein Edelmann, ein Krieger und ein Handwerksmeister sind in eine Unterhaltung vertieft. Gesten zeigen Einvernehmen. Obwohl um sie herum ein Band dargestellt ist, scheint es sie nicht einzuengen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A dark haired beau is explaining to a vagabond something that must be outside of the picture. The coat of the beau is a huge black area. Just a few lines indicate the drapes. The uneven pair is bathed in fog.", ["descriptionDe"] = "Ein dunkelhaariger Galan weist einen Vagabunden auf etwas hin, was sich au�erhalb des Bildes befindet. Der Mantel des Galans ist vollfl�chig schwarz mit wenigen stehengelassenen, die Falten andeutenden Stegen. Nebel umwallt das ungleiche Paar.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Belohnung - Du bekommst ein Original Kupferstich mit einem Bild Alberto Dickers."))
talkEntry:addResponse("Na wenn du so fragst. Schau ich hab hier ein Kupferstich von Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "The fangs on the skeleton's skull clearly identify it as an orc. A stream of blood flows from the ornamented heavy war axe into a sea of blood. Bones poke out of the blood. The parchment is partially damaged.", ["descriptionDe"] = "Die Hauer am Sch�del des Skeletts weisen es eindeutig als Ork aus. Ein Blutstrom ergie�t sich von der schweren verzierten Kriegsaxt ausgehend in einen Blutsee, aus dem vereinzelte Knochen ragen. Das Blatt weist einige Besch�digungen auf.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(6.25))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A clearly dark skinned woman walking over a plain of nothing but stone and soil. Even her long hair looks like stone. There is neither a weed nor animal to see.", ["descriptionDe"] = "Eine offensichtlich dunkelh�utige Frau mit langen schwarzen, wie erstarrt wirkenden Haaren, schreitet w�rdevoll �ber eine Ebene, welche  aus nichts als Steinen und Erde zu bestehen scheint. Keine einzige Pflanze und kein Tier sind zu sehen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(6.66666666666667))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "The head of a man with a full beard of blazing flames. The fire is drawn with a only a few lines but you might think it broadcasts heat.", ["descriptionDe"] = "Ein Kopf eines Mannes mit einem Vollbart aus einem wild lodernden Feuer. Das Feuer ist zwar nur durch wenige Striche angedeutet scheint aber trotzdem eine gl�hende Hitze auszustrahlen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(7.14285714285714))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A wise scholar holds a staff and a nearly endless script. The paper falls from the scroll and runs around the man as a frame. The inscription on the scroll is 'There is no life without mind.'", ["descriptionDe"] = "Ein weiser Gelehrter, der sich auf einen Stab st�tzt und eine ewig lange Schriftrolle studiert. Das lange Papier f�llt vor ihm auf den Boden und l�uft davon ausgehend um das ganze Bild. Die Inschrift lautet: 'Der Geist macht den K�rper lebendig.?", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(7.69230769230769))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A lizard is sitting on the shore and looking into the open sea. She seems to wait for someone. The endless shore fading into the horizon shows no sign of settlement or people.", ["descriptionDe"] = "Eine Echsenfrau am Ufer auf einem Stein sitzend und auf die Weite der See hinausschauend. Gerade so, als w�rde sie etwas suchen. Der endlos scheinende Strand zeigt keinerlei Zeichen einer Besiedlung.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(8.33333333333333))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A woman dancer levitates over windswept water. Her long flying hair turns into a cloud storming into the picture from the left side. Waves and clouds are forming the instruments lute, drum, flute, panpipe, horn and harp.", ["descriptionDe"] = "Eine T�nzerin, die schwerelos �ber von Wind aufgew�hltes Wasser gleitet. Die langen wehenden Haare gehen in eine von links heranst�rmende Wolke �ber. Wellen und Wolken formen die Instrumente Laute, Trommel, Fl�te, Panfl�te, Horn und Harfe.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(9.09090909090909))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "An incomplete card deck is distributed all over the picture. A raven turns a dice that shows a one, another dice shows a six.", ["descriptionDe"] = "Ein unvollst�ndiges �ber das ganze Bild verstreutes Kartenblatt. Ein Rabe dreht an einem W�rfel, der eine Eins zeigt. Ein weiterer W�rfel liegt mit einer Sechs nach oben.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(10.0))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A huge woman reads a scroll. She sits on a pile of 5 books. Ten artful scrolls lay to her feet.", ["descriptionDe"] = "Eine gro�e, in einer Schriftrolle lesende Frau thront auf einem Stapel aus 5 B�chern. 10 verschiedene fein herausgearbeitet Schriftrollen liegen zu ihren F��en.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(11.1111111111111))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A man sits in the center of a party. He holds in one arm a flimsy dressed woman on his legs. The other arm holds a mug full of beer. Different groups indulge their debauchery, Elven dance around a tree absent mindedly and some dwarves hold a barrel.", ["descriptionDe"] = "Ein Mann sitzt in der Mitte eines rauschenden Festes. Er h�lt eine leichtbekleidete Frau auf dem Scho� und einen Humpen in der Hand. Um ihn herum fr�nen verschieden Figurengruppen Ausschweifungen. Elfen tanzen ausgelassen, Zwerge halten ein Fass.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(12.5))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A Bradamen tree emanates dignified age as well as unbroken vitality. A sheep and a cow lay at the feet of the tree. Symbols of thanksgiving are grouped around.", ["descriptionDe"] = "Der Bradamen Baum strahlt sowohl Alter als auch ungebrochene Vitalit�t aus. Ein Schaf und ein Rind liegen zu F��en des Baumes, um den herum Symbole des Erntedankes drapiert sind.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(14.2857142857143))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "The look of the woman is serious but she doesn't mourn. In her hands she holds symbols of commemoration, a rim of pine and a flower. The hill contains 10 useless broken items, nevertheless it doesn't look like garbage.", ["descriptionDe"] = "Eine ernsthafte aber nicht trauernde Frau steht wartend auf einem H�gel. In ihren H�nden h�lt sie Symbole des Totengedenkens. Der H�gel, der keinesfalls das Flair einer M�llhalde ausstrahlt, besteht aus 10 zerbrochenen und damit nutzlosen Dingen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(16.6666666666667))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A strong warrior in a victory pose wearing a bright armor. He holds his sword with both hands and rests its pointy end onto a collection of trophies. Next to him rests a black wolf.", ["descriptionDe"] = "Ein starker Ritter in einer strahlenden R�stung hat sein Schwert mit der Spitze nach unten auf einen Haufen Troph�en gestellt, auf denen er in Siegerpose steht. Neben ihm steht ein schwarzer Wolf.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A few drawn lines show a dwarf working at the anvil. The anvil is illustrated with two lines a fat and a very short narrow one.", ["descriptionDe"] = "Ein mit wenigen Strichen angedeuteter Zwerg arbeitet am Amboss. Der Amboss ist mit nur zwei Strichen, einem dicken und einem sehr kurzen d�nnen dargestellt.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A Goddess levitates over a lover pair in an intimate hug.", ["descriptionDe"] = "Eine G�ttin schwebt �ber einem Liebespaar, welches in inniger Umarmung dargestellt ist.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(33.3333333333333))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A noble, a warrior and a master crafter are wrapped up in a chat. Their gestures send signals of understanding each other, even if they are bound with a visible belt, it seems not to constrain any of them.", ["descriptionDe"] = "Ein Edelmann, ein Krieger und ein Handwerksmeister sind in eine Unterhaltung vertieft. Gesten zeigen Einvernehmen. Obwohl um sie herum ein Band dargestellt ist, scheint es sie nicht einzuengen.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addCondition(condition_chance(50.0))
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "A dark haired beau is explaining to a vagabond something that must be outside of the picture. The coat of the beau is a huge black area. Just a few lines indicate the drapes. The uneven pair is bathed in fog..", ["descriptionDe"] = "Ein dunkelhaariger Galan weist einen Vagabunden auf etwas hin, was sich au�erhalb des Bildes befindet. Der Mantel des Galans ist vollfl�chig schwarz mit wenigen stehengelassenen, die Falten andeutenden Stegen. Nebel umwallt das ungleiche Paar.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(675, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Reward - You get an copper engraving with a picture Alberto Dickers."))
talkEntry:addResponse("Well, I might have something. See there is a copper engraving by Alberto Dicker.")
talkEntry:addConsequence(consequence_quest(675, "=", 2))
talkEntry:addConsequence(consequence_item(2745, 1, 666, {["descriptionEn"] = "The fangs on the skeleton's skull clearly identify it as an orc. A stream of blood flows from the ornamented heavy war axe into a sea of blood. Bones poke out of the blood. The parchment is partially damaged.", ["descriptionDe"] = "Die Hauer am Sch�del des Skeletts weisen es eindeutig als Ork aus. Ein Blutstrom ergie�t sich von der schweren verzierten Kriegsaxt ausgehend in einen Blutsee, aus dem vereinzelte Knochen ragen. Das Blatt weist einige Besch�digungen auf.", ["nameDe"] = "Kupferstich mit den Initialien A D", ["nameEn"] = "Copper engraving with the initials A D", ["rareness"] = "2"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I have information about places close to Runewick for you, if you want to know about them?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Ich habe f�r euch Informationen zu den Orten in der N�he von Runewick wenn ihr w�nscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("I have information about places close to Runewick for you, if you want to know about them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Ich habe f�r euch Informationen zu den Orten in der N�he von Runewick wenn ihr w�nscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("place")
talkEntry:addConsequence(consequence_inform("[Keywords] Illarion, northeast, northwest, southwest, southeast"))
talkEntry:addResponse("Places? Which places to you mean? These could be in the northeast, northwest, southwest or southeast of Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Orte")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Illarion, Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Orte? Welche Orte meint ihr? Diese k�nnten sein im Nordosten, Nordwesten, S�dwesten oder S�dosten von Illarion?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elesil")
talkEntry:addTrigger("Daelwon")
talkEntry:addResponse("You can find her at the entry of the town. She has a lot of information and some tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elesil")
talkEntry:addTrigger("Daelwon")
talkEntry:addResponse("Ihr findet sie am Eingang zur Stadt. Sie hat eine Menge Informationen und Auftr�ge f�r euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Keywords] northeast, northwest, southwest, southeast"))
talkEntry:addResponse("This land is called Illarion and I divide it into the northeast, northwest, southwest and southeast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Illarion")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Nordosten, Nordwesten, S�dwesten, S�dosten"))
talkEntry:addResponse("Dieses Land wird Illarion genannt und ich unterteile es in in Nordost, Nordwest, S�dwest und S�dost.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("northeast")
talkEntry:addConsequence(consequence_inform("[Keywords] Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, Insurmountable Limes, Evilrock, Three Fingertips, Wulfgorda."))
talkEntry:addResponse("I know following places: Elstree Forest, Elstree Plain, Eastland, Pauldron Isle, The Dead Marsh, Spider's Mouth, Hemp Necktie Inn, Bounding Stream, Glowing River, Plains of Silence, Northern Woods, The Insurmountable Limes, Evilrock, Three Fingertips... but for more detailed information ask Wulfgorda at the Hemp Necktie Inn.")
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
talkEntry:addResponse("I know following places: Syrita Bay, Nargun's Plain, The Swamp, Temple of the Five, Lonely Mountains, Galmair Plateau... but for more detailed information ask Lotta Medborgar in Galmair.")
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
talkEntry:addResponse("I know following places: Shadowland, Wight Canal, Sentry Forest, Great Ocean, Border Mountains, Kantabi Desert, Kantabi Delta, Western Kantabi Desert... but for more detailed information ask Ruzusss in Cadomyr.")
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
talkEntry:addConsequence(consequence_inform("[Keywords] Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Merryglade, Oldra's Tower, Coward's last stand, Northern Outpost, Anthil Brook, Bear cave, Adron's Covert, Yewdale"))
talkEntry:addResponse("I know following places: Snakehead Bay, Lonely Islands, Death's Stench, Dragon's Lair, Dewy Swamps, Merryglade, Oldra's Tower, Coward's last stand, Northern Outpost, Anthil Brook, Bear cave, Adron's Covert, Yewdale.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("S�dost")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Schlangenkopfbucht, Einsame Inseln, Todes Gestank, Drachenh�hle, Morgentausumpf, Fr�hliche Lichtung, Oldras Turm, Feiglings letztes Gefecht, N�rdlicher Au�enposten, Anthilbach, B�renh�hle, Adrons Versteck, Eibenthal"))
talkEntry:addResponse("Ich habe Informationen zu folgenden Orten: Schlangenkopfbucht, Einsame Inseln, Todesgestank, Drachenh�hle, Morgentaus�mpfe, Fr�hliche Lichtung, Oldras Turm, Feiglings letztes Gefecht, N�rdlicher Au�enposten, Anthilbach, B�renh�hle, Adrons Versteck, Eibenthal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree Forest")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda. However, fairies can be found there, who might drop some magical gems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumwald")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda. Wie dem auch sei, Feen k�nnen dort gefunden werden, welche wom�glich magische Steine fallen lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree Plain")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elsbaumebene")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eastland")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ostland")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pauldron Isle")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schulterplatte Insel")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dead Marsh")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todessumpf")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spider's Mouth")
talkEntry:addTrigger("spiders mouth")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spinnenmaul")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hemp Necktie Inn")
talkEntry:addResponse("The Hemp Necktie Inn is a neutral tavern in the Spider's Mouth and many adventurer rests there. Amongst others, Wulfgorda. You can use the teleporter to get there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof Hanfschlinge")
talkEntry:addResponse("Der Gasthof zur Hanfschlinge ist eine neutrale Taverne im Spinnen Mund und viele Abenteurer rasten dort. Unter anderem Wulfgorda. Du kannst den Teleporter verwenden um dort hinzukommen.")
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
talkEntry:addResponse("Wulfgorda is a hunter who knows almost every place in the northeast. You can find her in front of the Hemp Necktie Inn. Furthermore, you should take her these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(650, "<", 1))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Wulfgorda' gestartet] Finde Wulfgorda und bringe ihr die Sibanacbl�tter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(650, "=", 1))
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Ort im Nordosten kennt. Du findest sie vor dem Gasthof zur Hanfschlinge. Des weiteren kannst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Wulfgorda is a hunter who knows almost every place in the northeast. You can find her in front of the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wulfgorda")
talkEntry:addResponse("Wulfgorda ist eine J�gerin, welche beinahe jeden Ort im Nordosten kennt. Du findest sie vor dem Gasthof zur Hanfschlinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bounding Stream")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grenzstrom")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glowing River")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gl�hender Fluss")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plains Silence")
talkEntry:addResponse("Well, as I said, they are in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ebenen Stille")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Northern Woods")
talkEntry:addResponse("Well, as I said, they are in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("N�rdliche W�lder")
talkEntry:addTrigger("N�rdlichen W�lder")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Insurmountable Limes")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Un�berwindbarer Limes")
talkEntry:addTrigger("Un�berwindbare Limes")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Evilrock")
talkEntry:addResponse("Well, as I said, it is in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("B�se Fels")
talkEntry:addTrigger("B�ser Fels")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Three Fingertips")
talkEntry:addResponse("Well, as I said, they are in the northeast and you had better ask someone who lives there, for example, Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dreifingerspitzen")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordosten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Wulfgorda.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Snakehead Bay")
talkEntry:addResponse("The bay westwards from Runewick is called Snakehead Bay.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlangenkopfbucht")
talkEntry:addResponse("Die Bucht westlich von Runewick hei�t Schlangenkopfbucht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lonely Islands")
talkEntry:addResponse("These two islands are southwest from Runewick. You will have to take a ferry to get there, but be careful, it is said that noone has ever returned from there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Inseln")
talkEntry:addResponse("Diese zwei Inseln liegen s�dwestlich von Runewick. Ihr werdet eine F�hre nehmen m�ssen. Aber seid vorsichtig! Es wird gesagt, dass noch nie jemand von dort zur�ck kam.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Death's Stench")
talkEntry:addTrigger("deaths stench")
talkEntry:addResponse("This area north of the Dragon's Lair was turned into a swamp by the dragons years ago.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Todesgestank")
talkEntry:addResponse("Dieser Bereich n�rdlich der Drachenh�hle wurde von Drachen in einen Sumpf verwandelt vor einigen Jahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dragon's Lair")
talkEntry:addTrigger("dragons lair")
talkEntry:addResponse("The Dragon's Lair is north of the Bear Cave. Don't go there alone!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drachenh�hle")
talkEntry:addResponse("Die Drachenh�hle ist n�rdlich der B�renh�hle. Geht dort nicht alleine hin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dewy Swamps")
talkEntry:addConsequence(consequence_inform("[Keywords] Darter's Shop, Shadow Gate"))
talkEntry:addResponse("The Dewy Swamps are north of Runewick. Walk to Yewdale, then northeast, pass Merryglade and you are there. You can find there Darter's Shop and the Shadow Gate.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Morgentausumpf")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Darters Laden, Schattentor"))
talkEntry:addResponse("Der Morgentausumpf liegt n�rdlich von Runwick. Geht nach Eibenthal, von dort nord�stlich, passiert die Fr�hliche Lichtung und schon seid ihr dort. Ihr findet dort Darters Laden und das Schattentor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Darter Shop")
talkEntry:addResponse("That is a part of Dewy Swamps. The shop belongs to the Darter family, but it collapsed years ago. I think you can still find a family member there though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Darter Laden")
talkEntry:addResponse("Das ist ein Teil der Frischen S�mpfe. Dieser Laden geh�rt der Darter Familie, welcher aber vor Jahren zugrunde ging. Ich denke man findet immer noch ein Mitglieder der Familie dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadow Gate")
talkEntry:addResponse("That is a part of Dewy Swamps. It was once a place for experiments. We tried to open a large permanent portal to distant lands there. But it failed and thus it is a ruin now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schattentor")
talkEntry:addResponse("Das ist ein Teil der Frischen S�mpfe. Es war einst ein Ort f�r Experimente. Wir versuchten ein permanentes Portal zu fernen L�ndern zu �ffnen. Aber wir scheiterten und so ist dort lediglich eine Ruine nun zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Merryglade")
talkEntry:addResponse("It was once the home of a stable hand who disappeared to Galmair after he failed to protect his animals. It is northeast from Yewdale.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fr�hliche Lichtung")
talkEntry:addResponse("Es war einst das Haus eines Stalljungen, welcher nach Galmair verschwand nachdem es ihm nicht gelungen ist seine Tiere zu beh�ten. Es liegt nord�stlich von Eibenthal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra's Tower")
talkEntry:addTrigger("Oldras Tower")
talkEntry:addResponse("It is northeast from Yewdale close to Merryglade. Druids and Alchemists are often travelling there. Ask them for further information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldras Turm")
talkEntry:addResponse("Der liegt nord�stlich von Eibenthal in der N�he der Fr�hlichen Lichtung. Druiden und Alchemisten reisen oft dorthin. Fragt die wenn ihr weitere Information w�nscht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Coward last stand")
talkEntry:addResponse("It is northeast from Yewdale on the way to Merryglade. The coward was none other than Sir Edward from Cadomyr. There is a rumour that he ran faster than an arrow of Malachin when he was attacked by Galmair supporters.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Feiglings letztes Gefecht")
talkEntry:addResponse("Dieser Ort liegt nord�stlich von Eibenthal am Weg zur Fr�hlichen Lichtung. Der angesprochene Feigling war Sir Edward von Cadomyr. Es hei�t, er lief schneller als ein Pfeil von Malachin als er dort von Galmair Anh�ngern angegriffen wurde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Outpost")
talkEntry:addResponse("The outpost is northeast from Yewdale at a bridge. We used it in the past to protect ourselves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Au�enposten")
talkEntry:addResponse("Dieser Au�enposten liegt nord�stlich von Eibenthal an einer Br�cke. Wir verwendeten ihn in der Vergangenheit um uns zu sch�tzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Anthil Brook")
talkEntry:addResponse("Anthil Brook is north of Yewdale. You will find there some sign of our glorious victory during the Halfling-war against Galmair years ago.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Anthilbach")
talkEntry:addResponse("Der Anthilbach liegt n�rdlich von Eibenthal. Du findest dort Hinweise zu unserem glorreichen Sieg im Halblingkrieg �ber Glamair vor einigen Jahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bear cave")
talkEntry:addResponse("The Bear cave is north of Anthil Brook. The cave was used by bears until warriors from Galmair killed them. Nowadays you can find some wolves and other animals there. A good place to practise some combat skills for inexperienced warriors.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("B�renh�hle")
talkEntry:addResponse("Die B�renh�hle ist n�rdlich vom Anthilbach. Die H�hle wurde einst von B�ren bewohnt bis sie alle von Kriegern aus Galmair get�tet wurden. Nun leben dort W�lfe und andere Tiere. Ein guter Ort f�r unerfahrene Krieger um sich an ihre Waffe zu gew�hnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron's Covert")
talkEntry:addTrigger("Adrons Covert")
talkEntry:addResponse("This place is west of Anthil Brook. A blind and cowardly person will have trouble finding it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adrons Versteck")
talkEntry:addResponse("Dieser Ort liegt westlich vom Anthilbach. Eine blinde und feige Person wird Probleme haben ihn zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("This place west of Runewick beyond the Lurnord bridge is somewhere that offers an opportunity for farmers, and is the place to catch the ferry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Dieser Ort westlich von Runewick am anderen Ende der Lurnord-Br�cke ist ein Ort f�r unsere Bauern und bietet Zugang zu den F�hren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syrita Bay")
talkEntry:addResponse("Well, as I said, it is in the northwest and you had better ask someone who lives there, for example, Lotta Medborgar in Galmair.")
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
talkEntry:addResponse("Well, as I said, it is in the northwest and you had better ask someone who lives there, for example, Lotta Medborgar in Galmair.")
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
talkEntry:addResponse("Well, as I said, it is in the northwest and you had better ask someone who lives there, for example, Lotta Medborgar in Galmair.")
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
talkEntry:addResponse("Well, as I said, it is in the northwest and you had better ask someone who lives there, for example, Lotta Medborgar in Galmair.")
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
talkEntry:addResponse("Well, as I said, it is in the northwest and you had better ask someone who lives there, for example, Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Einsame Berge")
talkEntry:addResponse("Nun, wie ich schon sagte, dieser Ort ist im Nordwesten zu finden. Bez�glich mehr Details bietet es sich an jemanden dort wohnhaften zu fragen. Zum Beispiel Lotta Medborgar in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair Plateau")
talkEntry:addResponse("Well, as I said, it is in the northwest and you had better ask someone who lives there, for example, Lotta Medborgar in Galmair.")
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
talkEntry:addCondition(condition_quest(634, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Lotta 2' started] Try to find Lotta and take her the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(634, "=", 1))
talkEntry:addResponse("You can find her in Galmair and she knows several places in the northwest, thus around Galmair. Furthermore, you should take her these leaves here. *hands over some sibanac leaves*")
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
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, sprich um Galmair. Des weiteren kannst du ihr auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("You can find her in Galmair and she knows several places in the northwest, thus around Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("Die findet man in Galmair und die kennt s�mtliche Orte im Nordwesten, sprich um Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadowland")
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addTrigger("Border Mountains")
talkEntry:addResponse("Well, as I said, they are in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addResponse("Well, as I said, it is in the southwest and you had better ask someone who lives there, for example, Ruzussss in Cadomyr.")
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
talkEntry:addCondition(condition_quest(644, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzus")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Ruzussss 2' started] Try to find Ruzussss and take him the sibanac leaves to get your reward."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(644, "=", 1))
talkEntry:addResponse("You can find him in Cadomyr and he knows several places in the southwest, thus around Cadomyr. Furthermore, you should take him these leaves here. *hands over some sibanac leaves*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(644, "<", 1))
talkEntry:addTrigger("Ruzus")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Ruzussss 2' gestartet] Finde Ruzussss und bringe ihm die Sibanacbl�tter um deine Belohnung zur erhalten."))
talkEntry:addConsequence(consequence_item(155, 10, 333, nil))
talkEntry:addConsequence(consequence_quest(644, "=", 1))
talkEntry:addResponse("Den findet man in Cadomyr und der kennt s�mtliche Orte im S�dwesten, sprich um Cadomyr. Des weiteren kannst du ihm auch gleich diese Bl�tter hier bringen. *�berreicht Sibanac Bl�tter*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ruzus")
talkEntry:addResponse("You can find him in Cadomyr and he knows several places in the southwest, thus around Cadomyr.")
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
talkEntry:addResponse("The Chapel of the Five is at the southern end of the Border Mountains, on the eastern border of Kantabi Desert. Ask Ruzusss in Cadomyr if you cannot find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle F�nf")
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Kantabiw�ste. Frage Ruzusss in Cadomyr falls du sie nicht finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Chapel")
talkEntry:addResponse("The Chapel of the Five is at the southern end of the Border Mountains, on the eastern border of Kantabi Desert. Ask Ruzusss in Cadomyr if you cannot find it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kapelle")
talkEntry:addResponse("Die Kapelle der F�nf ist am s�dlichen Ende der Grenzberge und an der �stlichen Grenze der Kantabiw�ste. Frage Ruzusss in Cadomyr falls du sie nicht finden kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(622, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Archmage Elvaine Morgan' started] Find Archmage Elvaine Morgan and take him your gift."))
talkEntry:addConsequence(consequence_item(3110, 1, 777, nil))
talkEntry:addConsequence(consequence_quest(622, "=", 1))
talkEntry:addResponse("Have you already met our Archmage? If not, you could introduce yourself with a gift to him. He will appreciate this gift here, since he needs them for his publications. *hands over a pell*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(622, "<", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Erzmagier Elvaine Morgan' gestartet] Finde Archmage Elvaine Morgan und bringe ihm dein Geschenk."))
talkEntry:addConsequence(consequence_item(3110, 1, 777, nil))
talkEntry:addConsequence(consequence_quest(622, "=", 1))
talkEntry:addResponse("Habt ihr den Erzmagier bereits kennengelernt? Falls nicht, dann solltet ihr euch bei ihm mit einem Geschenk vorstellen. Er wird dieses Geschenk hier bestimmt m�gen, da er es f�r seine Ver�ffentlichungen ben�tigt. *�berreicht eine Schriftrolle*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(622, "<", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Archmage Elvaine Morgan' started] Find Archmage Elvaine Morgan and take him your gift."))
talkEntry:addConsequence(consequence_item(3110, 1, 777, nil))
talkEntry:addConsequence(consequence_quest(622, "=", 1))
talkEntry:addResponse("Have you already met our Archmage? If not, you could introduce yourself with a gift to him. He will appreciate this gift here, since he needs them for his publications. *hands over a pell*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(622, "<", 1))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Erzmagier Elvaine Morgan' gestartet] Finde Archmage Elvaine Morgan und bringe ihm dein Geschenk."))
talkEntry:addConsequence(consequence_item(3110, 1, 777, nil))
talkEntry:addConsequence(consequence_quest(622, "=", 1))
talkEntry:addResponse("Habt ihr den Erzmagier bereits kennengelernt? Falls nicht, dann solltet ihr euch bei ihm mit einem Geschenk vorstellen. Er wird dieses Geschenk hier bestimmt m�gen, da er es f�r seine Ver�ffentlichungen ben�tigt. *�berreicht eine Schriftrolle*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nothing to do for you yet, but soon I will have plenty of tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe momentan nichts f�r euch zu tun aber bald habe ich einige Aufgaben f�r euch.")
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
talkEntry:addResponse("Ich habe momentannichts f�r euch zu tun aber bald habe ich einige Aufgaben f�r euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("lost")
talkEntry:addResponse("A lot of knowledge get lost. But here, in the encyclopaedia of ruin towns just a single page is missing. It would be complete if the page 23 was not needed due to an emergency once. For years I have tried to find a copy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("verloren")
talkEntry:addResponse("Wissen geht immer mal wieder verloren. Aber schau doch, in dieser Enzyklop�die der Ruinenst�dte fehlt Seite 23. Die ist vor Jahren durch einen Notfall verloren gegangen. Ich suche schon ewig, kann aber keine Kopie auftreiben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage owns two stones of power, an emerald and a ruby. They protect us against Galmair and Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die besch�tzen uns vor Galmair und Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage owns two stones of power, an emerald and a ruby. They protect us against Galmair and Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier besitzt zwei Steine der Macht. Einen Smaragd und einen Rubin. Die besch�tzen uns vor Galmair und Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("That is here and if you want to know more about it ask Elesil Daelwon at the entry to the town for further information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Das ist hier und wenn du mehr dar�ber wissen m�chtest, dann frag Elesil Daelwon am Eingang zur Stadt nach weiterer Information.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don owns two stones of power, a aspphire and an obsidian. They protect Galmair against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don besitzt zwei Steine der Macht. Einen Saphir und einen Obsidian. Die besch�tzen Galmair vor der �bernahme durch unsere Streitkr�fte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is in the northwest. If you are stupid enough and want to walk there, look for signposts at least. Smart people use the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist im Nordwesten zu finden. Wenn ihr dumm genug seid, werdet ihr dort hin zu Fu� gehen. Aber orientiert euch wenigstens nach den Wegweisern. Schlaue Leute werden ohnehin den Teleporter benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen owns two stones of power, a Topaz and an Amethyst. They protect Cadomyr against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen Cadomyr vor der �bernahme durch unsere Streitkr�fte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Queen owns two stones of power, a Topaz and an Amethyst. They protect Cadomyr against being beaten by our forces.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Der K�nigin besitzt zwei Steine der Macht. Einen Topas und einen Amethyst. Die besch�tzen Cadomyr vor der �bernahme durch unsere Streitkr�fte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is in the west. If you are stupid enough and want to walk there, look for signposts at least. Smart people use the teleporter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist im Westen zu finden. Wenn ihr dumm genug seid, werdet ihr dorthin zu Fu� gehen. Aber orientiert euch wenigstens nach den Wegweisern. Schlaue Leute werden ohnehin den Teleporter benutzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Primarly, we pray to three gods in Runewick. They are Adron, Elara and Oldra of course, my favourite god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Bevorzugt beten wir drei G�tter in Runewick an. Die w�ren Adron, Elara und nat�rlich Oldra, meine bevorzugte Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("You may find a temple dedicated to him in our tavern and another one the North, behind the Hemp Necktie Inn. You can either use the teleporter or you walk following the signposts, but you will need companions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ihr m�get einen Tempel in unserer Taverne und einen weiteren von ihm im Norden hinter dem Gasthof zur Hanfschlinge finden. Um dahin zu gelangen k�nnt ihr entweder einen Teleporter verwenden oder entlang der Wegweiser wandern. Ohne Begleitung werdet ihr ihn aber kaum unveschadet ankommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("You may find a Temple dedicated to her in the library next to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ihr m�get den Tempel von ihr in der B�cherei finden. Gleich hier neben mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("You may find a Temple dedicated to her on the other side of the Snakehead Bay in the Northeast of the Sentry Forest. This place is also known as Oldra's Corner. Follow the signposts, but keep in mind a dangerous journey is awaiting you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ihr m�get den Tempel von ihr auf der anderen Seite der Schlagenkopfbucht im Nordosten des Wachtwaldes finden. Der Ort ist auch als Oldras Eck bekannt. Folgt den Wegweisern, aber beachtet, dass Gefahren auf euch warten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("If you would like to know more about this god ask someone else, for example, Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("If you would like to know more about this God ask someone else, for example Elesil Daelwon at the entry to the town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Wenn ihr verlangt mehr �ber diese Gottheit zu wissen, dann fragt jemand anderen. Zum Beispiel Elesil Daelwon am Eingang zur Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Hmm...you want some information... but about what?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Hmm...und ihr w�nscht Informationen? Aber welche?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("Yes, that is my name. Which places do you want information about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Numila")
talkEntry:addTrigger("Irunnleh")
talkEntry:addResponse("Ja, das ist mein Name. �ber welche Orte wollt ihr Informationen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addResponse("Oh yes, the painter. You can find two pictures from him in the library.")
talkEntry:addResponse("Dicker was a famous painter. His paintings are quite nice.")
talkEntry:addResponse("In the first floor we have a book about the artist Alberto Dicker.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addResponse("Ach der Maler. Wir haben zwei Bilder von ihm in der B�cherei.")
talkEntry:addResponse("Dicker war ein bekannter Maler. Seine Gem�lde sind ganz h�bsch.")
talkEntry:addResponse("Im Erdgeschoss haben wir ein Buch �ber den K�nstler Alberto Dicker.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wer etwas �ber die Orte hier in der Umgebung wissen will, soll mich nur nach diesen Orten fragen.", "If someone wants to know something about the places around here, just ask me about these places.")
talkingNPC:addCycleText("#me g�hnt.", "#me yawns.")
talkingNPC:addCycleText("#me blickt herum mit ihren geschlossenen Augen.", "#me seemingly looks around, but with closed eyes.")
talkingNPC:addCycleText("#me untersucht ihr Kleid.", "#me examines her dress.")
talkingNPC:addCycleText("#me k�mmt ihr Haar.", "#me combs her hair.")
talkingNPC:addCycleText("#me isst einen Apfel.", "#me eats an apple.")
talkingNPC:addCycleText("#me schreibt einen Brief.", "#me writes a letter.")
talkingNPC:addCycleText("#me summt etwas vor sich hin.", "#me hums to herself.")
talkingNPC:addCycleText("#me schaut sich gereizt um.", "#me looks about crankily.")
talkingNPC:addCycleText("#me verstaut eine Flasche in ihrem Beutel.", "#me stores a bottle in her bag.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Numila Irunnleh die Wissenschaftlerin.", "This NPC is Numila Irunnleh the scholar.")
mainNPC:setUseMessage("Ihr seid gut damit beraten mich nicht anzufassen.", "I recommend you do not touch me.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 846)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 826)
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
