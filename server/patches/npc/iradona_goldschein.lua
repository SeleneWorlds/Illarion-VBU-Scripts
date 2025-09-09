local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Iradona Goldschein the informant. Keywords: Question, information, Galmair, building, game room, mission, town."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Iradona Goldschein die Auskunftgeberin. Schl�sselw�rter: Auskunft, Information, Galmair, Geb�ude, Spielraum, Auftrag, Stadt."))
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
talkEntry:addConsequence(consequence_inform("[Hint] Have you already asked her for 'information' or her 'quest'?"))
talkEntry:addResponse("Good day, my dear. Can I help you with some information?")
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
talkEntry:addConsequence(consequence_inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"))
talkEntry:addResponse("Tach die Herrschaft, darf ich behilflich sein mit einer Auskunft?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Hint] Have you already asked her for 'information' or her 'quest'?"))
talkEntry:addResponse("Good day, my dear. Can I help you with some information?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Hinweis] Hast du sie bereits nach 'Information' oder 'Quest' befragt?"))
talkEntry:addResponse("Tach die Herrschaft, darf ich behilflich sein mit einer Auskunft?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("See ya soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Und Servus, bis bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("See ya soon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Und Servus, bis bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("My head hurts, because of these thousands of questions the people of Galmair have.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mein Kopf schmerzt von den vielen Fragen der Leute von Galmair hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Iradona Goldschein, the informant of Galmair.")
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
talkEntry:addResponse("Iradona Goldschein, die Auskunftgeberin von Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Informant. I can tell you many things about Galmair. Just ask me about the buildings, locations, events, people, history or gods of Galmair. Additionally, I have a little task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Auskunftgeberin. Ich kann dir viele Dinge �ber Galmair erz�hlen. Frage mich �ber Geb�ude, Orte, Ereignisse, Leute, Geschichte oder G�tter von Galmair. Zus�tzlich h�tte ich noch eine kleine Aufgabe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Informant. I can tell you many things about Galmair. Just ask me about the buildings, locations, events, people, history or gods of Galmair. Additionally, I have a little task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Auskunftgeberin. Ich kann dir viele Dinge �ber Galmair erz�hlen. Frage mich �ber Geb�ude, Orte, Ereignisse, Leute, Geschichte oder G�tter von Galmair. Zus�tzlich h�tte ich noch eine kleine Aufgabe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("teleport")
talkEntry:addResponse("With the teleporter at the town gate you can travel safely and quickly to Runewick, Cadomyr or the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("teleport")
talkEntry:addResponse("Mit dem Teleporter am Stadttor kannst du sicher und schnell nach Runewick, Cadomyr oder zum Gasthof zur Hanfschlinge reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple Ronagan")
talkEntry:addTrigger("Ronagan Temple")
talkEntry:addResponse("The Temple of Ronagan can be found in the Scoria Mine. Just follow the signposts, but keep in mind that the temple is currently flooded.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel Ronagan")
talkEntry:addTrigger("Ronagan Tempel")
talkEntry:addResponse("Der Tempel von Ronagan kann in der Schlackengrube gefunden werden. Folge einfach den Wegweisern, aber beachte, dass der Tempel momentan �berflutet ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple Irmorom")
talkEntry:addTrigger("Irmorom Temple")
talkEntry:addResponse("The Temple of Irmorom is close to Villa Goldvein. You can pray to Irmorom there and hope that you become a rich person.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel Irmorom")
talkEntry:addTrigger("Irmorom Tempel")
talkEntry:addResponse("Der Tempel des Irmorom ist nahe der Villa Goldader. Du kannst dort zu Irmorom beten und hoffen, dass du reich wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Temple Nargun")
talkEntry:addTrigger("Nargun Temple")
talkEntry:addResponse("The Temple of Nargun in the Flicker Swale is a place for all those who follow Nargun. Obvious, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel Nargun")
talkEntry:addTrigger("Nargun Tempel")
talkEntry:addResponse("Der Tempel des Nargun in der Schimmersenke ist ein Ort f�r jene die Nargun folgen. Klar, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sport Hole")
talkEntry:addResponse("The Sport Hole is used for those people who think they can betray the Don. It is on the road to the Malachite mine close to the bridge there over the Malachite creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tollloch")
talkEntry:addResponse("Das Tolloch wird f�r jene Leute verwendet, die der Meinung sind, den Don betr�gen zu k�nnen. Es ist an der Stra�e zur Malachitmine kurz vor der Br�cke �ber den Malachit Bach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Keywords] building, location, event, people, history, god, ruler, law."))
talkEntry:addResponse("I can give you information about the buildings, locations, events, people, history, our ruler, laws and gods of Galmair. Just ask me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inform")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Geb�ude, Orte, Ereignisse, Leute, Geschichte, G�tter, Herrscher, Gesetz."))
talkEntry:addResponse("Ich kann dir Informationen �ber Geb�ude, Orte, Ereignisse, Leute, Geschichte, unseren Herrscher, Gesetze und die G�tter von Galmair geben. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[Keywords] building, location, event, people, history, god, ruler, law."))
talkEntry:addResponse("I can give you information about the buildings, locations, events, people, history, our ruler, laws and gods of Galmair. Just ask me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frage")
talkEntry:addTrigger("Auskunft")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Geb�ude, Orte, Ereignisse, Leute, Geschichte, G�tter, Herrscher, Gesetz."))
talkEntry:addResponse("Ich kann dir Informationen �ber Geb�ude, Orte, Ereignisse, Leute, Geschichte, unseren Herrscher, Gesetze und die G�tter von Galmair geben. Frag einfach!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("building")
talkEntry:addConsequence(consequence_inform("[Keywords] Market, temple, teleporter, donkey stable, library, Well of Dreams, Villa Goldvein, workshop, guardroom, Dark Alley, Galmair's Crest, Scoria Mine"))
talkEntry:addResponse("Argh, be more precise! Market, temple, teleporter, donkey stable, library, Well of Dreams, Villa Goldvein, workshop, guardroom, Dark Alley, Galmair's Crest or the Scoria Mine?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geb�ude")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Markt, Tempel, Teleporter, Eselstall, Bibliothek, Quelle der Tr�ume, Villa Goldader, Werkstatt, Wachstube, Dunkle Gasse, Galmairs Krone, Schlackengrube"))
talkEntry:addResponse("Argh, etwas genauer! Markt, Tempel, Teleporter, Eselstall, Bibliothek, Quelle der Tr�ume, Villa Goldader, Werkstatt, Wachstube, Dunkle Gasse, Galmairs Krone oder die Schlackengrube?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("location")
talkEntry:addConsequence(consequence_inform("[Keywords] Hinterland, Lotta Medborgar"))
talkEntry:addResponse("I suggest you look for Lotta Medborgar if you want to know more about surrounding country. She is a hunter and has explored several locations. Better to ask her, you can find her down at the Winged Sow Tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ort")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Hinterland, Lotta Medborgar"))
talkEntry:addResponse("Ich empfehle, dass du nach Lotta Medborgar suchst, wenn du mehr �ber das Hinterland wissen m�chtest. Sie ist eine J�gerin und hat etliche Orte erkundet. Frag sie daher besser. Du kannst sie unten in der Taverne zur Gefl�gelten Sau finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Lotta' started] Try to find Lotta Medborgar and get your reward."))
talkEntry:addResponse("She's a hunter that has explored several locations in Illarion, among these are the Swamp, Northern Woods, Nargun's Plain, Hemp Necktie Inn, Bounding Stream, Malachite creek, and many others. You can find her down at the Winged Sow Tavern.")
talkEntry:addConsequence(consequence_quest(630, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "<", 1))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Lotta' gestartet] Finde Lotta Medborgar und erhalte deine Belohnung."))
talkEntry:addResponse("Sie ist eine J�gerin und hat etliche Orte in Illarion erkundet. Unter anderem den Sumpf, N�rdliche W�lder, Nargun Ebene, Gasthof zur Hanfschlinge, Grenzstrom, Malachit Bach und so weiter. Du kannst sie unten in der Taverne zur Gefl�gelten Sau finden.")
talkEntry:addConsequence(consequence_quest(630, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("She's a hunter that has explored several locations in Illarion, among these are the Swamp, Northern Woods, Nargun's Plain, Hemp Necktie Inn, Bounding Stream, Malachite creek, and many others. You can find her down at the Winged Sow Tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lotta")
talkEntry:addTrigger("Medborgar")
talkEntry:addResponse("Sie ist eine J�gerin und hat etliche Orte in Illarion erkundet. Unter anderem den Sumpf, N�rdliche W�lder, Nargun Ebene, Gasthof zur Hanfschlinge, Grenzstrom, Malachit Bach und so weiter. Du kannst sie unten in der Taverne zur Gefl�gelten Sau finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("people")
talkEntry:addResponse("Argh, there were only dwarves here in the past. Nowadays we have all kind of folks here, even orcs, which you can find in the Flicker Swale... Or would you like to meet Lotta? *grins*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Leute")
talkEntry:addResponse("Argh, fr�her waren hier nur Zwerge, aber heutzutage haben wir alle m�glichen Leute hier. Selbst Orks, welche du unten in der Schimmersenke finden kannst... Oder willst du Lotta treffen? *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("history")
talkEntry:addResponse("The history of our town can be read about in our library. Unfortunately, we lost our actual history book, but our Don was kind enough to provide his personal notes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geschichte")
talkEntry:addResponse("Die Geschichte unserer Stadt kannst du in unserer Bibliothek nachlesen. Leider ging das eigentliche Geschichtsbuch verloren. Aber der Don war so nett und hat uns seine pers�nlichen Notizen zur Verf�gung gestellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("event")
talkEntry:addResponse("Several events regarding our town can be read about in our library. Unfortunately, we lost our actual history book, but our Don was kind enough to provide his personal notes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ereignis")
talkEntry:addTrigger("Geschehnis")
talkEntry:addResponse("S�mtliche Ereignisse betreffend unserer Stadt kannst du in unserer Bibliothek nachlesen. Leider ging das eigentliche Geschichtsbuch verloren. Aber der Don war so nett und hat uns seine pers�nlichen Notizen zur Verf�gung gestellt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("Actually, we have only one rule. You just have to know, coins and thus the Don rules, because he has most. You will find his recommendations at these statues.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Wir haben eigentlich keine Gesetze. Du musst nur wissen, dass hier M�nzen und deshalb der Don herrscht, weil er die meisten hat. Aber du kannst die Empfehlungen des Dons hier and den Statuen finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruler")
talkEntry:addResponse("We have had only two rulers so far. Our Don Valerio Guilianni and his father Tommaso Guilianni. You can find more information about the latter in the notes of the Don, our new history book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Herrscher")
talkEntry:addResponse("Wir hatten lediglich zwei Herrscher bisher. Unseren Don Valerio Guilianni und seinen Vater Tommaso Guilianni. Informationen �ber letzteren findest du in den Aufzeichnungen des Don, unserem neuem Geschichtsbuch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("temple")
talkEntry:addConsequence(consequence_inform("[Keywords] Temple of Irmorom, Temple of Ronagan, Temple of Nargun"))
talkEntry:addResponse("We have temples for each of our three gods here: Temple of Irmorom, Temple of Ronagan and Temple of Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Tempel des Irmorom, Tempel des Ronagan, Tempel des Nargun"))
talkEntry:addResponse("Wir haben je einen Tempel f�r unsere drei G�tter hier. Tempel des Irmorom, Tempel des Ronagan and Tempel des Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Well Dreams")
talkEntry:addResponse("The Well of Dreams is the other side of the town. Therefore, enter the town, head past the market and Villa Goldvein and you are there, but usually, people avoid this place. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Quelle Tr�ume")
talkEntry:addResponse("Die Quelle der Tr�ume ist am anderen Ende der Stadt. Daher rein mit dir, passiere den Markt und die Villa Goldader und du bist dort. Aber Leute meiden diesen Ort normal. *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa Goldvein")
talkEntry:addResponse("The Villa Goldvein is the other side of the town, close to the Well of Dreams. It is a place for the richer ones among us.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Villa Goldader")
talkEntry:addResponse("Die Villa Goldader ist an der anderen Seite der Stadt, nahe der Quelle der Tr�ume. Sie ist ein Ort f�r die Reicheren unter uns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Workshop")
talkEntry:addResponse("The Workshop is on the left side, behind the road to the Malachite Mine. It is a place for smiths and other craftsmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Werkstatt")
talkEntry:addResponse("Die Werkstatt ist auf der linken Seite auf dem Weg zur der Stra�e zur Malachitmine. Sie ist ein Ort f�r Schmiede und andere Handwerker.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guardroom")
talkEntry:addResponse("The Guardroom is close to the town wall, on the right side after the Dark Alley. You will also find someone inside who will help you to remember things. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wachstube")
talkEntry:addResponse("Die Wachstube ist hinter der Stadtmauer auf der rechten Seite nach der Dunklen Gasse. Du wirst dort auch jemand finden, der dir helfen wird Dinge in Erinnerung zu behalten. *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dark Alley")
talkEntry:addResponse("The Dark Alley is behind the donkey stable. Do I really have to explain to you what you can do there? *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dunkle Gasse")
talkEntry:addResponse("Die Dunkle Gasse ist hinter dem Eselstall. Muss ich dir wirklich erkl�ren was du da hinten alles machen kannst? *grinst*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair's Crest")
talkEntry:addTrigger("Galmairs Crest")
talkEntry:addConsequence(consequence_inform("[Keywords] Guilianni Residence, Council Chamber, Golden Dreams, Treasury, Library"))
talkEntry:addResponse("Galmair's Crest is at the heart of Galmair and the residence of our Don. The building is right behind me and inside you can find: the Guilianni Residence, Don's Council Chamber, Golden Dreams, Treasury and Library.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmairs Krone")
talkEntry:addTrigger("Galmair Krone")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Guilianni Residenz, Konzil Kammer, Goldtr�ume, Schatzkammer, Bibliothek"))
talkEntry:addResponse("Galmairs Krone ist das Herz von Galmair und die Residenz unseres Don. Der Eingang ist gleich hinter mir und du findest dort drinnen: Guiliannis Residenz, Dons Konzil Kammer, Goldtr�ume, Schatzkammer und Bibliothek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Library")
talkEntry:addResponse("Our library in Galmair's Crest contains all our books. Among these are our books about history, locations, gods, towns and so on. Just take a look there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bibliothek")
talkEntry:addResponse("Unsere Bibliothek in Galmairs Krone enth�lt all unsere B�cher. Unter diesen findest du unser Geschichtsbuch, B�cher �ber Orte, G�tter, St�dte und so weiter. Siehe einfach nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guilianni Residence")
talkEntry:addResponse("In this place within Galmair's Crest you will find and meet our Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guilianni Residenz")
talkEntry:addResponse("An diesem Ort in Galmairs Krone findest und triffst du unseren Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Council Chamber")
talkEntry:addResponse("This is a conference room in Galmair's Crest used to discuss how to improve our treasury, for example.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Konzil Kammer")
talkEntry:addResponse("Dies ist ein Konferenzraum in Galmairs Krone f�r Diskussionen wie man die Schatzkammer vergr��ern k�nnte zum Beispiel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Golden Dreams")
talkEntry:addResponse("The room Golden Dreams, within Galmair's Crest, is the private room of the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Goldtr�ume")
talkEntry:addResponse("Der Raum Goldtr�ume in Galmairs Krone ist der private Raum des Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Treasury")
talkEntry:addResponse("Ha, ha... of course you would like to know more about this room in Galmair's Crest. Stop dreaming! I do not think that you will ever be in this room. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schatzkammer")
talkEntry:addResponse("Ha, ha... klar w�rdest du gerne mehr �ber diesen Raum in Galmairs Krone wissen. Denkste! Ich glaub kaum, dass du den je von innen sehen wirst. *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Scoria Mine")
talkEntry:addConsequence(consequence_inform("[Keywords] The Winged Sow Tavern, Flicker Swale, Hog Dens, Cameo Pit, Sewers."))
talkEntry:addResponse("The Scoria Mine is situated right below us. You have to take the elevator to get down and you will find following shafts there: The Winged Sow Tavern, Flicker Swale, Hog Dens, Cameo Pit and Sewers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schlackengrube")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Taverne zur Gefl�gelten Sau, Schimmersenke, Schweinebaue, Gemmenschacht, Abwassersch�chte"))
talkEntry:addResponse("Die Schlackengrube befindet sich unter uns. Du musst den Aufzug verwenden um hinunter zu kommen. Du findest folgende Sch�chte dort: Taverne zur Gefl�gelten Sau, Schimmersenke, Schweinebaue, Gemmenschacht und Abwassersch�chte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("elevator")
talkEntry:addResponse("The elevator will help you to get down into the Scoria Mine. From there you have access all the shafts of the Scoria Mine. You will find the elevator west from here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Aufzug")
talkEntry:addResponse("Der Aufzug wird dir helfen hinunter in die Schlackengrube zu kommen. Von dort hast du Zugang zu allen Sch�chten in der Schlackengrube. Du kannst den Aufzug etwas weiter westlich von hier finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Winged Sow Tavern")
talkEntry:addResponse("This place is in the Scoria Mine and has two entrances. The main entrance is via the Scoria Mine elevator and the second one is down a ladder, on the right before the elevator. Follow the signposts. You will find good beer and entertainment there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Taverne Gefl�gelten Sau")
talkEntry:addResponse("Dieser Ort in der Schlackengrube hat zwei Eing�nge. Den Haupteingang �ber den Aufzug der Schlackengrube und den zweiten �ber eine Leiter knapp vor dem Aufzug. Folge den Wegweisern. Wie dem auch sei, du wirst gutes Bier und gute Unterhaltung dort finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tavern")
talkEntry:addResponse("This place is in the Scoria Mine has and two entrances. The main entrance is via the Scoria Mine elevator and the second one is down a ladder, on the right before the elevator. Follow the signposts. You will find good beer and entertainment there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tavern")
talkEntry:addResponse("Dieser Ort in der Schlackengrube hat zwei Eing�nge. Den Haupteingang �ber die Schlackengrube Aufzug und den zweiten �ber eine Leiter knapp vor dem Aufzug. Folge den Wegweisern. Wie dem auch sei, du wirst gutes Bier und Unterhaltung dort finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Flicker Swale")
talkEntry:addConsequence(consequence_inform("[Keyword] Game room, Temple of Nargun"))
talkEntry:addResponse("Flicker Swale can be found in the Scoria Mine, just follow the signposts. There you can also find the Game room and the Temple of Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schimmersenke")
talkEntry:addConsequence(consequence_inform("[Schl�sselwort] Spielraum, Tempel des Nargun"))
talkEntry:addResponse("Die Schimmersenke kann in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Dort findest du auch den Spielraum und den Tempel des Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gameroom")
talkEntry:addResponse("The Game room in the Flicker Swale offers you a great opportunity to get the money of others... or to lose your own! *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Spielraum")
talkEntry:addResponse("Der Spielraum in der Schlimmersenke erm�glicht dir anderen das Geld abzukn�pfen... oder dein eigenes zu verlieren. *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hog Dens")
talkEntry:addResponse("The Hog Dens can be found in the Scoria Mine, just follow the signposts. This place is mainly used by our green friends, the orcs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schweinebaue")
talkEntry:addResponse("Die Schweinebaue k�nnen in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Dieser Ort wird haupts�chlich von unseren gr�nen Freunden verwendet - den Orks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cameo Pit")
talkEntry:addResponse("The Cameo Pit can be found in the Scoria Mine, just follow the signposts. It contains the flats for those who do not have enough money to live at Villa Goldvein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gemmenschacht")
talkEntry:addResponse("Der Gemmenschacht kann in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Er beinhaltet die Wohnungen jener, welche nicht gen�gend Geld haben um in der Villa Goldader zu wohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sewers")
talkEntry:addResponse("The Sewers can be found in the Scoria Mine, just follow the signposts. You will find some creatures living at this place so you can try your luck there. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Abwassersch")
talkEntry:addResponse("Die Abwassersch�chte kann in der Schlackengrube gefunden werde. Folge einfach den Wegweisern. Dort findest du diverse Kreaturen. Versuch einfach dein Gl�ck dort. *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hinterland")
talkEntry:addConsequence(consequence_inform("[Keywords] Sleepy Bujhaar Inn, Census office, Sport Hole, Malachite Mine, Woodcorner, Stinky Fisherman, The Platform, Dark Hole Mine, Farmland, Copperbridge, Blackbridge"))
talkEntry:addResponse("In the so called Hinterlands you can find: Sleepy Bujhaar Inn, Census office, Sport Hole, Malachite Mine, Woodcorner, Stinky Fisherman, The Platform, Black Hole Mine, Farmland, Copperbridge and Blackbridge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hinterland")
talkEntry:addConsequence(consequence_inform("[Schl�sselw�rter] Gasthof zum schl�frigen Bujhaar, Zensusb�ro, Tollloch, Malachitmine, Waldeck, Stinkender Fischer, Plattform, Dunkellochmine, Ackerland, Kupferbr�cke, Schwarzbr�cke."))
talkEntry:addResponse("Im sogenannten Hinterland findest du: Gasthof zum schl�frigen Bujhaar, Zensusb�ro, Tollloch, Malachitmine, Waldeck, Stinkender Fischer, Plattform, Dunkellochmine, Ackerland, Kupferbr�cke and Schwarzbr�cke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sleepy Bujhaar Inn")
talkEntry:addResponse("The Sleepy Bujhaar Inn can be found on the road to the Malachite Mine, after the Census office. Just look for signposts. You can rest and eat there if you want.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof Bujhaar")
talkEntry:addResponse("Das Gasthaus zum Schlafenden Bujhaar kann an der Stra�e zur Malachitmine nach dem Zensusb�ro gefunden werden. Folge einfach den Wegschildern. Du kannst dort essen oder rasten wenn du m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Census")
talkEntry:addResponse("The Census office can be found south on the way to the Malachite Mine. It is close to the Sleepy Bujhaar Inn. There you can find information about your rank.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Zensusb�ro")
talkEntry:addResponse("Das Zensusb�ro kann s�dlich auf dem Weg zur Malachitmine gefunden werden. Es liegt nahe dem Gasthof zum schl�frigen Bujhaar. Dort kannst du Information �ber deinen Rang erhalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Census")
talkEntry:addResponse("The Census office can be found south on the way to the Malachite Mine. It is close to the Sleepy Bujhaar Inn. You can register there to increase the treasury of the Don. *smirks*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zensusb�ro")
talkEntry:addResponse("Das Zensusb�ro kann s�dlich auf dem Weg zur Malachitmine gefunden werden. Es liegt nahe dem Gasthof zum schl�frigen Bujhaar. Du kannst dich dort anmelden und somit helfen die Schatzkammer des Don zu bereichern *kichert*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachite Mine")
talkEntry:addResponse("The Malachite mine is in the south of Galmair. Just enter the town and walk south while you follow the signposts. You can get iron, copper and gold there. There is also an entrance to the Shadowland.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachitmine")
talkEntry:addResponse("Die Malachitmine ist im S�den von Galmair. Gehe in die Stadt und folge den Wegweisern in den S�den. Du wirst dort Eisen, Kupfer und Gold finden. Es hat auch einen Eingang zum Schattenland dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Woodcorner")
talkEntry:addResponse("That is a camp for lumberjacks and it is very close to the town gate. Just behind the teleporter. *points north*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Waldeck")
talkEntry:addResponse("Das ist ein Lager f�r Holzf�ller und es liegt sehr nahe am Stadttor. Gleich hinter dem Teleporter. *zeigt in den Norden")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stinky Fisherman")
talkEntry:addResponse("The Stinky Fisherman is a place for fishers and it is downstream from Galmair, on the north bank of the Malachite creek.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stinkende Fischer")
talkEntry:addResponse("Der Stinkende Fischer ist ein Ort f�r Fischer und ist stromabw�rts von Galmair am Nordufer des Malachitbaches.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Platform")
talkEntry:addResponse("The Platform is a place for fishers close to the Copperbridge *points east*. It was also used by lizards to rise and pray in the past. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Plattform")
talkEntry:addResponse("Die Plattform ist ein Ort f�r Fischer nahe der Kupferbr�cke *zeigt in den Osten*. Sie wurde fr�her auch von Echsen genutzt zum Schl�pfen und Beten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dark Hole Mine")
talkEntry:addResponse("The Dark Hole Mine is far in the north. Turn left at the town gate and use the Copperhand tunnel. Just follow the signposts. You can find coal there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dunkellochmine")
talkEntry:addResponse("Die Dunkellochmine ist weit im Norden. Du gehst am Stadtor nach links und dann durch den Copperhand-Tunnel. Folge einfach den Wegschildern. Du wirst dort Kohle finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farmland")
talkEntry:addResponse("The Farmland is just at the town gate. *points east*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ackerland")
talkEntry:addResponse("Das Ackerland ist gleich in Sichtweite des Stadttores. *zeigt in den Osten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Copperbridge")
talkEntry:addConsequence(consequence_inform("[Keyword] location"))
talkEntry:addResponse("The Copperbridge in the east leads you over the Malachite creek to Nargun's Plain fist and then on to the Hemp Necktie Inn, if you want to go to those locations.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kupferbr�cke")
talkEntry:addConsequence(consequence_inform("[Schl�sselwort] Ort"))
talkEntry:addResponse("Die Kupferbr�cke im Osten f�hrt dich zuerst �ber den Malachit Bach zu Narguns Ebene und dann zum Gasthof zur Hanfschlinge, falls du zu diesen Orten gehen m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blackbridge")
talkEntry:addConsequence(consequence_inform("[Keyword] location"))
talkEntry:addResponse("The Blackbridge in the northeast leads you over the Bounding Stream to the Swamp and Northern Woods, if you want to go to those locations.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwarzbr�cke")
talkEntry:addConsequence(consequence_inform("[Schl�sselwort] Ort"))
talkEntry:addResponse("Die Schwarzbr�cke, im Nordosten von hier, f�hrt dich �ber den Grenzstrom zum Sumpf und den N�rdlichen W�ldern, falls du zu diesen Orten gehen m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Shadowland")
talkEntry:addResponse("A dangerous place at the south end of the Malachite mine. Do not go there alone. For more information, ask someone else.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schattenland")
talkEntry:addResponse("Ein gef�hrlicher Ort am s�dlichen Ende der Malachitmine. Geh nicht alleine dort hin. F�r mehr Information frage jemand anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "<", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Lotta' started] Try to find Lotta Medborgar and get your reward."))
talkEntry:addResponse("I do not have a task for you yet, probably in two or three months. If you like you can try to find Lotta Medborgar, but if you desire a real task you would be better asking other people in Galmair. Otherwise, you are very welcome to come back in two or three months when I will have definitely some tasks for you.")
talkEntry:addConsequence(consequence_quest(630, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "<", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Lotta' gestartet] Finde Lotta Medborgar und erhalte deine Belohnung."))
talkEntry:addResponse("Ich habe momentan nichts f�r dich zu tun. Wahrscheinlich in zwei oder drei Monaten. Falls du m�chtet kannst du versuchen Lotta Medborgar zu finden. Aber wenn du einen richtigen Auftrag w�nscht dann solltest du besser die Leute in Galmair fragen. In jeden Fall bist du herzlich eingeladen in zwei oder drei Monaten zur�ck zu kommen. Da sollte ich dann einige Aufgaben f�r dich haben.")
talkEntry:addConsequence(consequence_quest(630, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "<", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest 'Find Lotta' started] Try to find Lotta Medborgar and get your reward."))
talkEntry:addResponse("I do not have a task for you yet, probably in two or three months. If you like you can try to find Lotta Medborgar, but if you desire a real task you would be better asking other people in Galmair. Otherwise, you are very welcome to come back in two or three months when I will have definitely some tasks for you.")
talkEntry:addConsequence(consequence_quest(630, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(630, "<", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest 'Finde Lotta' gestartet] Finde Lotta Medborgar und erhalte deine Belohnung."))
talkEntry:addResponse("Ich habe momentan nichts f�r dich zu tun. Wahrscheinlich in zwei oder drei Monaten. Falls du m�chtet kannst du versuchen Lotta Medborgar zu finden. Aber wenn du einen richtigen Auftrag w�nscht dann solltest du besser die Leute in Galmair fragen. In jeden Fall bist du herzlich eingeladen in zwei oder drei Monaten zur�ck zu kommen. Da sollte ich dann einige Aufgaben f�r dich haben.")
talkEntry:addConsequence(consequence_quest(630, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("As I said, you should ask other people in Galmair, or if you come back in two or three months I will have definitely some tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wie ich sagte, du solltest besser die Leute in Galmair fragen. Oder du kommst in zwei oder drei Monaten zur�ck. Dann sollte ich einige Aufgaben f�r dich haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("As I said, you should ask other people in Galmair, or if you come back in two or three months I will have definitely some tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wie ich sagte, du solltest besser die Leute in Galmair fragen. Oder du kommst in zwei oder drei Monaten zur�ck. Dann sollte ich einige Aufgaben f�r dich haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("My name sounds better! I hope your questions sound better!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Mein Name klingt besser! Ich hoffe deine Fragen klingen besser!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Iradona")
talkEntry:addTrigger("Goldschein")
talkEntry:addResponse("Yes, that is my name. What do you want information about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Iradona")
talkEntry:addTrigger("Goldschein")
talkEntry:addResponse("Ja, das ist mein Name. �ber was willst du Informationen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("town")
talkEntry:addResponse("There are three towns: Our town Galmair, ruled by our rich leader Don Valerio Guilianni. Then the two poor towns of Runewick and Cadomyr, ruled by Archmage Elvaine Morgan and Queen Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("stadt")
talkEntry:addResponse("Es gibt drei St�dte: Unsere Stadt Galmair, gef�hrt von unserem reichen Herrscher Don Valerio Guilianni. Dann diese zwei armen St�dte Runewick und Cadomyr, gef�hrt von Erzmagier Elvaine Morgan und K�nigin Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Arrgh! The ruler of Runewick. I do not care about him! Just bring his head to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Arrgh! Der Herrscher von Runewick und der interessiert mich auch nicht. Bring einfach seinen Kopf dem Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Arrgh! The ruler of Runewick. I do not care about him! Just bring his head to the Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Arrgh! Der Herrscher von Runewick und der interessiert mich auch nicht. Bring einfach seinen Kopf dem Don.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Don't waste your time there, but if you look for alchemists, candle makers, carpenters, lumberjacks, cooks, bakers, farmers, herb gatherers, or tailors, tanners and dyers, you will find some there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Verschwende deine Zeit dort nicht, aber wenn du Alchemisten, Kerzenmacher, Schreiner, Holzf�ller, K�che, B�cker, Bauern, Kr�utersammler, Schneider, Gerber oder F�rber suchst, kannst du dort welche finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Our ruler. You can find him at his residence in the Galmair's Crest. This is the entrance here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Unser Herrscher. Du findest ihn in seiner Residenz in Galmairs Krone. Hier ist der Eingang.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Here at Galmair, we are interested in blacksmiths, brick makers, masons, miners, and brewers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Hier in Galmair suchen wir immer nach einem Schmied, Ziegelmacher, Steinmetz, Bergmann oder Brauer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("#me shudders, 'This ugly face rules Cadomyr. If you bring her hair to the Don he will probably like that.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("#me schaudert 'Dieses h�ssliche Gesicht regiert Cadomyr. Wenn du ihr Haar dem Don bringst wird er das vielleicht m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("#me shudders, 'This ugly face rules Cadomyr. If you bring her hair to the Don he will probably like that.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("#me schaudert 'Dieses h�ssliche Gesicht regiert Cadomyr. Wenn du ihr Haar dem Don bringst wird er das vielleicht m�gen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Don't waste your time there, but if you look for tailors, glass blowers, diggers, finesmiths, and gem grinders, you will find some there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Verschwende deine Zeit dort nicht, aber wenn du Schneider, Glasbl�ser, Sandgr�ber, Goldschmiede oder Edelsteinschleifer suchst, kannst du dort welche finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't sell or buy anything, but we have a marketplace. You can try your luck there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe oder kaufe gar nichts. Aber wir haben einen Marktplatz. Versuch dein Gl�ck doch dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I can tell you many things about Galmair. Just ask me about the buildings, locations, events, people, history or gods of Galmair. Additionally, I have a little task.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich kann dir viele Dinge �ber Galmair erz�hlen. Frage nur nach Geb�ude, Orte, Ereignisse, Leute, Geschichte oder G�tter von Galmair. Zus�tzlich h�tte ich noch eine kleine Aufgabe.")
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
talkEntry:addTrigger("god")
talkEntry:addResponse("Primarily, we pray to three gods in Galmair. They are Ronagan, Nargun and Irmorom of course, my favourite god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Bevorzugt beten wir drei G�tter in Galmair an. Die w�ren Ronagan, Nargun und Irmorom, meine bevorzugte Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("One of the weak Younger Gods. You can find followers in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Einer der schwachen j�ngeren G�tter. Du kannst Anh�nger in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this god here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Einer der alten G�tter, aber wir k�mmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Goddess of Spirits and the Underworld. She appears as a black dressed, ageless woman with grey skin and grey hair. Her face appears as though life disgusted her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Die G�ttin der Geister und der Unterwelt. Sie erscheint als schwarz gekleidete alterlose Frau mit grauer Hautfarbe und grauen Haaren. Ihr Gesicht wirkt als w�rde das Leben sie anwidern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("One of the weak Younger Gods. You can find followers in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Eine der schwachen j�ngeren G�tter. Du kannst Anh�nger in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this god here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Einer der alten G�tter, aber wir k�mmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this god here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Eine der alten G�tter, aber wir k�mmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Most dwarves, businessmen and craftsmen, like blacksmiths, pray to Irmorom. They believe that in life, they will be rewarded for their doings with wealth, and they pray for enchantment of crafted things, for riches, and things like this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Die meisten seiner Anh�nger sind Zwerge, H�ndler, Handwerker und Schmiede. Sie glauben, wenn sie Irmoron anbeten, gelangen sie zu Wohlstand und Reichtum. Angeblich gew�hrt er auch Kr�fte, um Waffen und Gegenst�nde zu verzaubern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("One of the weak Younger Gods. You can find followers in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Einer der schwachen j�ngeren G�tter. Du kannst Anh�nger in Cadomyr finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("What do you want with the Blood God? I don't like him, we don't like him and you should also avoid him!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Was willst du mit dem Blutgott? Ich mag ihn nicht, wir m�gen ihn nicht und du solltest ihn besser auch nicht m�gen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("His followers are few, and most people simply do not mention his name so as not to attract his attention. They believe that everything happens accidentally, and to make a fortune, one must play with high risk to have fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Seine Gefolgsleute sind nur gering an der Zahl und die meisten Leute sprechen seinen Namen nicht aus, um nicht seine Aufmerksamkeit zu erregen. Sie glauben, dass alles zuf�llig geschieht, und dass das Gl�ck nur jenen winkt, die mit Risiko spielen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("One of the weak Younger Gods. You can find followers in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Eine der schwachen j�ngeren G�tter. Du kannst Anh�nger in Runewick finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan's followers are mostly poor people who grow up on the streets, and most become thieves, spies or assassins. They believe that perhaps Ronagan will help them to steal and to protect them from the authorities of the rich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan's Anh�nger sind zumeist arme Leute aus denen h�ufig Diebe, Spione oder gedungene M�rder werden. Sie glauben daran, dass Ronagan ihnen bei der Ausf�hrung ihrer Taten helfen wird oder sie vor dem Zugriff der Justiz bewahrt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("One of the weak Younger Gods. You can find followers in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Eine der schwachen j�ngeren G�tter. Du kannst Anh�nger in Cadomyr finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this god here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Eine der alten G�tter, aber wir k�mmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("One of the Elder Gods, but we do not care about this god here. Better you do not waste your time with this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Eine der alten G�tter, aber wir k�mmern uns hier nicht um diese Gottheit. Daher verschwende besser deine Zeit nicht mit dieser Gottheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("One of the weak Younger Gods. You can find followers in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Einer der schwachen j�ngeren G�tter. Du kannst Anh�nger in Cadomyr finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Arrr, what will that be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Arrr, was soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Willkommen in Galmair!", "Welcome to Galmair!")
talkingNPC:addCycleText("Ich bin die Auskunftsgeberin von Galmair. Fragt mich nach Informationen wenn ihr welche wissen wollt.", "I am the informant of Galmair. Ask me for information if you want some.")
talkingNPC:addCycleText("Wer etwas �ber die Orte hier wissen will, soll mich nach diesen Orten fragen.", "If you want to know something about the locations here, just ask me about those locations.")
talkingNPC:addCycleText("Wer etwas �ber die Geb�ude hier wissen will, soll mich nach diesen Geb�uden fragen.", "If you want to know something about the buildings here, just ask me about those buildings.")
talkingNPC:addCycleText("Wer etwas �ber die Geschichte von Galmair wissen will, soll mich nach der Geschichte fragen.", "If you want to know something about the history of Galmair, just ask me about the history.")
talkingNPC:addCycleText("Wer etwas �ber die Leute hier wissen will, soll mich nach diesen Leuten fragen.", "If you want to know something about the people here, just ask me about those people.")
talkingNPC:addCycleText("Wer etwas �ber die G�tter hier wissen will, soll mich nach diesen Gottheiten fragen.", "If you want to know something about the gods here, just ask me about those gods.")
talkingNPC:addCycleText("Wer etwas �ber die Ereignisse hier wissen will, soll mich nach diesen Ereignissen fragen.", "If you want to know something about the events here, just ask me about those events.")
talkingNPC:addCycleText("#me kratzt sich im Gesicht.", "#me scratches her face.")
talkingNPC:addCycleText("#me blickt herum mit ihren weit ge�ffneten Augen.", "#me looks around with wide opened eyes.")
talkingNPC:addCycleText("#me untersucht ihr Kleid.", "#me examines her dress.")
talkingNPC:addCycleText("#me streichelt ihren Bauch.", "#me rubs her belly.")
talkingNPC:addCycleText("#me isst eine Wurst.", "#me eats a sausage.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Iradona Goldschein die Auskunftgeberin.", "This NPC is Iradona Goldschein the informant.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 800)
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
