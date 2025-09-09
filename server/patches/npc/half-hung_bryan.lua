local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Half-hung Bryan the innkeeper of The Hemp Necktie Inn. Keywords: Inn, Necktie, Law, Farmer, Trade"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Half-hung Bryan der Gastwirt vom Gasthof zur Hanfschlinge. Schl�sselw�rter: Gasthof, Strick, Gesetz, Knecht, Handel"))
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
talkEntry:addTrigger("map")
talkEntry:addTrigger("treasure")
talkEntry:addResponse("Half-hung Bryan wants treasures maps. Many soldiers of fortune come to the Hemp Necktie Inn, seeking wealth and adventure. I also trade stationery for them to write down their adventures.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addTrigger("Karte")
talkEntry:addTrigger("Schatz")
talkEntry:addResponse("Half-hung Bryan will eure Schatzkarten. Viele Gl�cksritter kommen zum Gasthof zur Hanfschlinge auf der Suche nach Reichtum und Abenteuer. Ich handle auch mit Schreibwaren, mit denen sie dann ihre Abenteuer niederschreiben k�nnen.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Welcome to my inn.")
talkEntry:addResponse("Greetings, how may I help you?")
talkEntry:addResponse("#me turns his stiff neck to look at you, 'Greetings'.")
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
talkEntry:addResponse("Seid Willkommen in meinem Gasthof.")
talkEntry:addResponse("Gr��e, wie kann ich Euch helfen?")
talkEntry:addResponse("#me blickt dich mit steifem Nacken an. 'Gr��e'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greebas")
talkEntry:addTrigger("Greebs")
talkEntry:addResponse("Welcome to my inn.")
talkEntry:addResponse("Greetings, how may I help you?")
talkEntry:addResponse("#me nods 'Greetings'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greebas")
talkEntry:addTrigger("Greebs")
talkEntry:addResponse("Seid Willkommen in meinem Gasthof.")
talkEntry:addResponse("Gr��e, wie kann ich Euch helfen?")
talkEntry:addResponse("#me nickt gr��end.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Au revoir.")
talkEntry:addResponse("Farewell, and don't forget my inn!")
talkEntry:addResponse("Take care!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Au revoir. Und vergesst nicht, mein Gasthof steht Euch immer offen.")
talkEntry:addResponse("Macht's gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Au revoir.")
talkEntry:addResponse("Farewell, and don't forget my inn!")
talkEntry:addResponse("Take care!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Au revoir. Und vergesst nicht, mein Gasthof steht Euch immer offen.")
talkEntry:addResponse("Macht's gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("It's hard to breath...")
talkEntry:addResponse("#me hisses slightly. 'My neck hurts.'")
talkEntry:addResponse("#me touches his neck with a thoughtful gaze. 'Hm-hm... How's your neck?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("#me macht einen kehlig w�rgendes Ger�usch. 'Ich habe Nackenschmerzen...'")
talkEntry:addResponse("#me inhaliert mit einem rasselnden Laut die stickige Luft. 'Das Atmen f�llt mir schwer...'")
talkEntry:addResponse("#me betastet nachdenklich die dunkel verf�rbte Narbe quer �ber seinem Hals: 'Hm-hm... - Und Euch? Wie f�hlt sich Euer Hals an?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Bryan, and this my inn, The Hemp Necktie Inn. You like the name?")
talkEntry:addResponse("I am Half-hung Bryan. What do you want?")
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
talkEntry:addResponse("Ich bin Bryan. Und das ist mein Gasthof. Der Gasthof zur Hanfschlinge. Gef�llt Euch der Name?")
talkEntry:addResponse("Ich bin Half-hung Bryan. Was wollt Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addTrigger("Altar")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go back to Runewick and talk to Numila Irunnleh."))
talkEntry:addResponse("What's it to you? I removed the picture from the lounge, and it should be hung in the Hospital. I believe it is better suited in that location and I can lock the room.")
talkEntry:addConsequence(consequence_quest(674, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("Oldra")
talkEntry:addTrigger("Altar")
talkEntry:addTrigger("Alberto")
talkEntry:addTrigger("Dicker")
talkEntry:addTrigger("quest")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zur�ck nach Runewick und sprich mit Numila Irunnleh."))
talkEntry:addResponse("Was geht es dich an, dass ich das Bild aus der Gaststube genommen und in das Hospital geh�ngt hab? Ich denke, da passt es besser. Au�erdem kann der Raum abgeschlossen werden.")
talkEntry:addConsequence(consequence_quest(674, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("shrine")
talkEntry:addTrigger("picture")
talkEntry:addTrigger("painting")
talkEntry:addConsequence(consequence_inform("[The pictures Alberto Dickers] Go back to Runewick and talk to Numila Irunnleh."))
talkEntry:addResponse("What's it to you? I removed the picture from the lounge, and it should be hung in the Hospital. I believe it is better suited in that location and I can lock the room.")
talkEntry:addConsequence(consequence_quest(674, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(674, "=", 4))
talkEntry:addTrigger("Schrein")
talkEntry:addTrigger("Bild")
talkEntry:addTrigger("Gem�lde")
talkEntry:addConsequence(consequence_inform("[Die Gem�lde Alberto Dickers] Gehe zur�ck nach Runewick und sprich mit Numila Irunnleh."))
talkEntry:addResponse("Was geht es dich an, dass ich das Bild aus der Gaststube genommen und in das Hospital geh�ngt hab? Ich denke, da passt es besser. Au�erdem kann der Raum abgeschlossen werden.")
talkEntry:addConsequence(consequence_quest(674, "=", 5))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Half-hung Bryan doesn't have any work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Half-hung Bryan hat keine Arbeit f�r Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Half-hung Bryan doesn't have any work for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Half-hung Bryan hat keine Arbeit f�r Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Well, this nice, beautiful inn here in the wilderness is mine. The Hemp Necktie Inn always has a lot of customers.")
talkEntry:addResponse("I care for my inn. Do you want to rent a room?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Mir geh�rt dieser schmucke Gasthof, mitten in der Wildnis. Und doch! - Der Gasthof zur Hanfschlinge hat immer viele G�ste.")
talkEntry:addResponse("Einst hab ich einfach am Feld geschuftet. Dann wurde ich n'Galgenvogel und danach, hatt ich Gl�ck und k�nnte mir den Gasthof kaufen.")
talkEntry:addResponse("Ich k�mmere mich um meinen Gasthof. Wollt Ihr ein Zimmer mieten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Well, this nice, beautiful inn here in the wilderness is mine. The Hemp Necktie Inn always has a lot of customers.")
talkEntry:addResponse("I care for my inn. Do you want to rent a room?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Mir geh�rt dieser schmucke Gasthof, mitten in der Wildnis. Und doch! - Der Gasthof zur Hanfschlinge hat immer viele G�ste.")
talkEntry:addResponse("Einst hab ich einfach am Feld geschuftet. Dann wurde ich n'Galgenvogel und danach, hatt ich Gl�ck und k�nnte mir den Gasthof kaufen.")
talkEntry:addResponse("Ich k�mmere mich um meinen Gasthof. Wollt Ihr ein Zimmer mieten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("What did you say?")
talkEntry:addResponse("Gobaith? Never heard of it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Bitte was?")
talkEntry:addResponse("Gobaith? Hab ich noch nie davon geh�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Good. What do you want?")
talkEntry:addResponse("#me laughs a bit, 'And I am Bryan. They've tried to hang me twice and yet here I stand in front of you.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Gut. Was wollt Ihr von mir?")
talkEntry:addResponse("#me kr�chzt lachend: 'Und ich bin Bryan. Man hat mich zwei Mal geh�ngt und trotzdem steh ich vor Euch.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Borgate")
talkEntry:addTrigger("Northoff")
talkEntry:addResponse("Borgate pours the beer. A good guy. Do you want something to drink? Then ask Borgate!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("barkeeper")
talkEntry:addTrigger("innkeeper")
talkEntry:addResponse("Borgate pours the beer. A good guy. Do you want something to drink? Then ask Borgate!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("inn")
talkEntry:addTrigger("guesthouse")
talkEntry:addTrigger("tavern")
talkEntry:addTrigger("necktie")
talkEntry:addResponse("The inn is a free and independent place. City laws are of no interest here. The only law that counts is the law of Half-hung Bryan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hang")
talkEntry:addTrigger("hung")
talkEntry:addTrigger("hemp")
talkEntry:addTrigger("neck")
talkEntry:addTrigger("gibbet")
talkEntry:addResponse("The first time the rope broke, the second time the branch snapped.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gowan")
talkEntry:addTrigger("Sam")
talkEntry:addTrigger("brute")
talkEntry:addTrigger("Booze")
talkEntry:addTrigger("hook")
talkEntry:addResponse("Here in my inn, no one asks questions. That's my law - the only law that counts this far away from the cities.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("knecht")
talkEntry:addTrigger("bauer")
talkEntry:addTrigger("farmer")
talkEntry:addResponse("I once was a farmer, and during war times farmers become soldiers. Farmers live long, soldiers don't. I deserted and the punishment for that was the noose.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("Rule one, don't ask questions. Rule two, don't ask any questions. Rule three, Half-hung Bryan rents room to anyone he wants to rent rooms to. Rule four, Half-hung Bryan does what Half-hung Bryan wants to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Borgate")
talkEntry:addTrigger("Northoff")
talkEntry:addTrigger("wirt")
talkEntry:addResponse("Borgate schenkt das Bier aus. Ein anst�ndiger Kerl. Wollt ihr etwas trinken? Dann geht zu ihm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof")
talkEntry:addTrigger("Taverne")
talkEntry:addTrigger("hof")
talkEntry:addTrigger("Hanfschlinge")
talkEntry:addResponse("Mein Hof war, zuerst nicht mehr als eine Scheune. Hab sie leer gefunden und darin �bernachtet. Seit dem geh�rte sie mir.")
talkEntry:addResponse("Klar die Ersten Jahre wahren hart. Allerlei Untier l�uft hier drau�en rum, weit weg von den St�dten. Aber ich bin nur mir selbst verpflichtet.")
talkEntry:addResponse("Der Gasthof zur Hanfschlinge, ist keiner Stadt verpflichtet. Auch wenn das jemanden nicht gef�llt, hier gelten Bryans Regeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("h�ngen")
talkEntry:addTrigger("strick")
talkEntry:addTrigger("galgen")
talkEntry:addTrigger("Hanf")
talkEntry:addTrigger("Schlinge")
talkEntry:addResponse("Das erste Mal ist der Strick gerissen. Und beim zweiten Mal, der Ast abgebrochen.")
talkEntry:addResponse("Lasst Euch den Meisterbrief des Henkers zeigen, wenn man Euch einmal hinrichten sollte. Solche Leute st�mpern dann wenigstens nicht herum.")
talkEntry:addResponse("#me macht einen gurgelnden Laut. 'Fahnenflucht und schwerer Verrat am K�nig. Albarische Soldaten kn�pfen sie auch zweimal auf.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gowan")
talkEntry:addTrigger("Sam")
talkEntry:addTrigger("brute")
talkEntry:addTrigger("Booze")
talkEntry:addTrigger("hook")
talkEntry:addResponse("Hier im Gasthof zur Hanfschlinge stellt man keine Fragen. So sagt es mein Gesetz. Und das ist das Einzige das hier, so weit au�erhalb der St�dte z�hlt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("knecht")
talkEntry:addTrigger("bauer")
talkEntry:addTrigger("farmer")
talkEntry:addResponse("Ist schon lange her. Da hab ich auf einem Hof in Albar den Acker gepfl�gt. Irgendwann kam der Landsherr und befahl mich zum Soldaten. Soldaten leben nicht lang, also bin ich desertiert. Die Strafe f�r Fahnenflucht ist der Galgen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("regel")
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Regel eins, es werden keine Fragen gestellt. Regel zwei, es werden keine Fragen gestellt. Regel drei, Half-hung Bryan vermietet Zimmer an wen und wie er will. Regel vier, Half-hung Bryan tut was Half-hung Bryan tut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wer ist auf dieser Seite? wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wer ist auf dieser Seite? wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Wer ist auf dieser Seite? wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Who is on this side? Who is on the other side? Half-hung Bryan is on his own side. It's always been like this and it always will be. This is the reason the inn exists, and everybody knows that.")
talkEntry:addResponse("Here, in the middle of the wilderness, my inn is independent of all political matters. That is a blessing.")
talkEntry:addResponse("We don't ask such questions here. I don't wanna know where you are from, what you do or what you are going to do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Wer ist auf dieser Seite? Wer ist auf jener Seite? Half-hung Bryan ist auf seiner eigenen Seite. So wars schon immer und so wird es immer sein. Davon lebt der Gasthof und alle wissen woran sie mit mir sind.")
talkEntry:addResponse("Hier in mitten der Wildnis, ist mein Hof unabh�ngig von allen politischen Intrigen. Das ist fast ein Segen, aber man muss selbst sehen wo man bleibt wenn die Wilden hier einfallen.")
talkEntry:addResponse("Auf meinem Gasthof werden keine Fragen gestellt. Ich will nicht wissen wo Ihr herkommt, was ihr macht und was ihr vorhabt schon gar nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar - My homeland. Sometimes I miss the hard work in the fields... A man who has his hands deep in the dirt knows that he is doing honest work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar - Meine Heimat. Es gibt Tage an denen vermisse ich es mir den R�cken krumm zu schuften, die harte Erde des Ackers zu Pfl�gen... Wenn ein Mann seine Finger tief im Dreck hat, wei� er, dass er eine gute Arbeit tut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("What shall I tell you about Gynk? Snakes everywhere, the farmers grow sibanac instead of vegetables and the weather is bad.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Was soll man �ber Gynk schon sagen? Die Erde dort ist voller Schlangen, die Bauern ernten Sibanac anstelle von ordentlichem Gem�se und das Wetter ist schrecklich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Once my old feudal lord told Bryan to fight in the war against Salkamar. I tried to run away - that's why I got hanged, twice. Once for treason against the king, once again for desertion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Als mein alter Lehnsherr in den Krieg gegen Salkamar zog, befahl er auch den tapferen Bryan zum Soldaten. Aber ich versuchte zu fliehen, darauf hin lie� er mich h�ngen, zwei Mal. Je einmal f�r Fahnenflucht und f�r Verrat am K�nig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("#me clears his throat, 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("#me clears his throat, 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("#me clears his throat. 'There's only two people I talk about the Gods with and you aren't one of them.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("#me r�uspert sich mit schief gelegtem Kopf. '�ber die G�tter spreche ich nur mit zwei Personen dieser Welt. Und keine davon seid Ihr.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("You can rent a room, or just a bed for the night. What do you want?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ihr k�nnt Zimmer bei mir mieten. Oder auch nur n' Bett f�r die Nacht. Was darf es sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Everyone calls me Half-hung Bryan. Do you see the scar on my neck? That's from the noose.")
talkEntry:addResponse("Hm. My neck wasn't always this crooked, but well, that was a long time ago.")
talkEntry:addResponse("Years ago I was a servant in an Albarian court, I thought I had to leave and see the big world. Now my neck is snapped and people like you always want something from me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Mann nennt mich Half-hung Bryan. Seht Ihr die Narbe an meinem Hals? Das war der Strick.")
talkEntry:addResponse("Hm. Ich hatte nicht immer den schiefen Hals. Aber das war fr�her. Damals war viel anders.")
talkEntry:addResponse("Fr�her war ich Knecht auf einem albarischem Hof. Und dann dachte ich ich muss ausziehen in die gro�e Welt. Jetzt ist mein Hals schief und Leute wie Ihr wollen st�ndig etwas von mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Half-hung")
talkEntry:addTrigger("Bryan")
talkEntry:addResponse("Half-hung Bryan. That's my name.")
talkEntry:addResponse("Hrm?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Half-hung")
talkEntry:addTrigger("Bryan")
talkEntry:addResponse("Half-hung Bryan. So lautet mein Name.")
talkEntry:addResponse("#me kr�chzt kehlig. 'Hrm?'")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me dreht langsam seinen Kopf bis ein unheilvolles knackendes Ger�usch zu h�ren ist. Einmal in jede Richtung.", "#me turns his head left and right.")
talkingNPC:addCycleText("#me gibt einen kehligen Laut von sich, es klingt wie ein Keuchen.", "#me makes a strange gasping noise.")
talkingNPC:addCycleText("#me greift sich mit nachdenklicher Miene an die dunkel verf�rbte Narbe an seinem Hals.", "#me touches the scar on his neck.")
talkingNPC:addCycleText("Hr-hrm.", "Hr-hrm.")
talkingNPC:addCycleText("#me reibt sich den Nacken.", "#me rubs his neck.")
talkingNPC:addCycleText("#me legt seine Hand auf den Schwertknauf, an seinem G�rtel und mustert mit finsterem Blick die Umgebung.", "#me's right hand touches his sword pommel at his belt and he glances around with a dirty look.")
talkingNPC:addCycleText("#me leckt sich �ber die vertrockneten Lippen.", "#me licks over dried out lips.")
talkingNPC:addCycleText("#me faltet die H�nde vor seiner Brust. 'Ausgezeichnet.'", "#me folds his hands across his chest, 'Excellent!'")
talkingNPC:addCycleText("#me kratzt sich am Hals.", "#me scratches his neck.")
talkingNPC:addCycleText("#me hustet laut und w�rgend.", "#me coughs loudly, choking a little.")
talkingNPC:addCycleText("Half-hung Bryan stellt keine Fragen.", "Half-hung Bryan doesn't ask any questions.")
talkingNPC:addCycleText("Half-hung Bryan tut was auch immer Half-hung Bryan tut.", "Half-hung Bryan does what he wants.")
talkingNPC:addCycleText("Half-hung Bryan vermietet Zimmer an wen und wie er will.", "Half-hung Bryan rents rooms to anyone he likes.")
tradingNPC:addItem(trade.tradeNPCItem(2745,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(463,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1118,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2745,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(463,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1118,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(505,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(105,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(106,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(129,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2609,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2610,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(114,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(115,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2608,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2615,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(107,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(108,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(111,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(112,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2605,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2617,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(109,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(110,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(117,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(128,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(130,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2604,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(131,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2602,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2620,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(116,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2621,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2607,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(127,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2598,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2606,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2616,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2619,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4815,"buyPrimary"))
tradingNPC:addNotEnoughMoneyMsg("Pleite, wah?", "Broke, eh?")
tradingNPC:addDialogClosedMsg("Half-hung Bryan dankt.", "Half-hung Bryan thanks you.")
tradingNPC:addDialogClosedNoTradeMsg("Man sieht sich.", "See you around.")
tradingNPC:addWrongItemMsg("Half-hung Bryan braucht euren Schrott nicht.", "Half-hung Bryan does not need your junk.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein kr�ftiger Mann mit schr�g verrenktem Hals und Hakennase, der mit heiserer Stimme spricht. Eine gerippte, dunkel gef�rbte Narbe zieht sich quer �ber seinen Hals.", "A burly man with a bent neck and a hooked nose who speaks in a gruff voice has a ribbed, dark coloured scar covering his neck.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 458)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 70)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
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
