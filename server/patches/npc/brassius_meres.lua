local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local guard = require("npc.base.guard")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
local guardNPC = guard(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, ">", 6))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Error] Something went wrong, please inform a developer."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Brassius Meres the Guard. Keywords: hello, quest, profession, Runewick, law, bridge, gods."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Brassius Meres der W�chter. Schl�sselw�rter: Hallo, Auftrag, Berufung, Runewick, Br�cke, Gesetze, G�tter."))
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
talkEntry:addResponse("#me bows his head politely: 'Be greeted.'")
talkEntry:addResponse("Greetings to you.")
talkEntry:addResponse("#me nods his head in greeting.")
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
talkEntry:addResponse("#me deutet eine Verbeugung an: 'Seid gegr��t.'")
talkEntry:addResponse("Seid mir gegr��t.")
talkEntry:addResponse("#me nickt gr��end mit dem Kopf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me frowns lightly, 'Yes, yes. Hello.'")
talkEntry:addResponse("#me nods once.")
talkEntry:addResponse("May I help you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me r�mpft leicht die Nase: 'Ja, ja. Hallo.'")
talkEntry:addResponse("#me nickt knapp.")
talkEntry:addResponse("Kann ich euch helfen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Be well. And stay out of trouble.")
talkEntry:addResponse("May Zhambra keep you safe from harm.")
talkEntry:addResponse("#me raises his fist to his chest in salute.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Es m�ge euch gut ergehen und all �rger fern von euch bleiben.")
talkEntry:addResponse("Zhambra m�ge euch von jedem Leid bewahren.")
talkEntry:addResponse("#me hebt seine Faust vor die Brust zum Gru�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Aye. Be off with you.")
talkEntry:addResponse("Stay out of trouble, I have enough work already.")
talkEntry:addResponse("Be gone, then.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ja, nun geht schon.")
talkEntry:addResponse("Haltet euch aus Keilereien raus, ich habe schon genug zu tun.")
talkEntry:addResponse("Dann mal los.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I am well, thank you.")
talkEntry:addResponse("Zhambra keeps me safe and in good health.")
talkEntry:addResponse("I can not complain, the Gods care for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Mir geht es gut, danke der Nachfrage.")
talkEntry:addResponse("Zhambra sch�tzt mich und erh�lt mein Leben.")
talkEntry:addResponse("Ich kann mich nicht beklagen, die G�tter sorgen f�r mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Brassius Meres. It is an honour to meet you.")
talkEntry:addResponse("I am Brassius Meres, a guard of Runewick.")
talkEntry:addResponse("Brassius Meres, faithful servant of the Lords Malach�n and Zhambra.")
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
talkEntry:addResponse("Mein Name ist Brassius Meres. Es ist mir eine Ehre, eure Bekanntschaft zu machen.")
talkEntry:addResponse("Ich bin Brassius Meres, W�chter Runewicks.")
talkEntry:addResponse("Brassius Meres, frommer Diener der Herren Malach�n und Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Eating on the Job"))
talkEntry:addConsequence(consequence_quest(109, "=", 1))
talkEntry:addResponse("Now that you mention it, I am feeling rather hungry. But I can't leave my post. Please bring me five apples and I will reimburse you for your troubles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Speisen im Dienst"))
talkEntry:addConsequence(consequence_quest(109, "=", 1))
talkEntry:addResponse("Nun da ihr es sagt, ich bin ziemlich hungrig, aber ich kann meinen Posten nicht verlassen. Bringt mir bitte f�nf �pfel und ich werde euch f�r eure M�hen entlohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Eating on the Job"))
talkEntry:addConsequence(consequence_quest(109, "=", 1))
talkEntry:addResponse("Now that you mention it, I am feeling rather hungry. But I can't leave my post. Please bring me five apples and I will reimburse you for your troubles.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Speisen im Dienst"))
talkEntry:addConsequence(consequence_quest(109, "=", 1))
talkEntry:addResponse("Nun da ihr es sagt, ich bin ziemlich hungrig, aber ich kann meinen Posten nicht verlassen. Bringt mir bitte f�nf �pfel und ich werde euch f�r eure M�hen entlohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 1))
talkEntry:addCondition(condition_item(15, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me's stomach rumbles: 'I could really do with those five apples, if you've got a few moments to spare.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 1))
talkEntry:addCondition(condition_item(15, "all", "<", 5, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me' Magen knurrt: 'Mit f�nf �pfeln im Magen w�rde es mir weit besser gehen, wenn ihr einen Moment Zeit daf�r habt.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 1))
talkEntry:addCondition(condition_item(15, "all", "<", 5, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("#me's stomach rumbles: 'I could really do with those five apples, if you've got a few moments to spare.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 1))
talkEntry:addCondition(condition_item(15, "all", "<", 5, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("#me' Magen knurrt: 'Mit f�nf �pfeln im Magen w�rde es mir weit besser gehen, wenn ihr einen Moment Zeit daf�r habt.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 1))
talkEntry:addCondition(condition_item(15, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded three silver coins."))
talkEntry:addConsequence(consequence_money("+", 300))
talkEntry:addConsequence(consequence_deleteitem(15, 5, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("#me quickly grabs the fruit, handing over a small purse of coins: 'Thank you kindly!'. He takes a large bite and stuffs the other apples into his bag as he chews.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 1))
talkEntry:addCondition(condition_item(15, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst drei Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 300))
talkEntry:addConsequence(consequence_deleteitem(15, 5, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("#me rei�t die �pfel an sich und �bergibt beil�ufig eine Geldbeutel: 'Vielen Dank!'. Er bei�t gen��lich ab und verstaut die �pfel kauend in einem Beutel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Resupply"))
talkEntry:addConsequence(consequence_quest(109, "=", 3))
talkEntry:addResponse("Those apples were delicious, thank you once again. I could use some more help. My supply of arrows is running low, if you bring me ten more, then I have something that might interest you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachschub"))
talkEntry:addConsequence(consequence_quest(109, "=", 3))
talkEntry:addResponse("Die �pfel waren k�stlich, danke nochmal. Ich brauche aber weiterhin Hilfe. Mein Vorrat an Pfeilen nimmt ab, wenn ihr mir zehn Pfeile br�chtet, w�re dies nicht zu eurem Nachteil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Resupply"))
talkEntry:addConsequence(consequence_quest(109, "=", 3))
talkEntry:addResponse("Those apples were delicious, thank you once again. I could use some more help. My supply of arrows is running low, if you bring me ten more, then I have something that might interest you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Nachschub"))
talkEntry:addConsequence(consequence_quest(109, "=", 3))
talkEntry:addResponse("Die �pfel waren k�stlich, danke nochmal. Ich brauche aber weiterhin Hilfe. Mein Vorrat an Pfeilen nimmt ab, wenn ihr mir zehn Pfeile br�chtet, w�re dies nicht zu eurem Nachteil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 3))
talkEntry:addCondition(condition_item(64, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me glances at his empty quiver, frowning lightly: 'I am in urgent need of those ten arrows, if it is not too much trouble.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 3))
talkEntry:addCondition(condition_item(64, "all", "<", 10, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me starrt naser�mpfend auf seinen leeren K�cher: 'Ich brauche dringend zehn Pfeile, wenn es euch nichts ausmacht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 3))
talkEntry:addCondition(condition_item(64, "all", "<", 10, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("#me glances at his empty quiver, frowning lightly: 'I am in urgent need of those ten arrows, if it is not too much trouble.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 3))
talkEntry:addCondition(condition_item(64, "all", "<", 10, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("#me starrt naser�mpfend auf seinen leeren K�cher: 'Ich brauche dringend zehn Pfeile, wenn es euch nichts ausmacht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 3))
talkEntry:addCondition(condition_item(64, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(64, 10, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 4))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me slides the arrows into his quiver, nodding in thanks, 'These shall do perfectly, thank you. I hope that this shall suffice as compensation.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 3))
talkEntry:addCondition(condition_item(64, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(64, 10, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 4))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me steckt die Pfeile in seinen K�cher, dankbar nickend: 'Das sollte erstmal genug sein, habt dank. Ich hoffe, dies reicht euch als Entlohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Wild Animals"))
talkEntry:addConsequence(consequence_quest(109, "=", 5))
talkEntry:addResponse("I've received reports of wild animals attacking villagers of Yewdale. If you slay the animals, and bring me ten furs as evidence, Runewick shall be in your debt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Wilde Tiere"))
talkEntry:addConsequence(consequence_quest(109, "=", 5))
talkEntry:addResponse("Mir wurde gemeldet, dass wilde Tiere die Dorfbewohner von Eibenthal angegriffen haben. Wenn ihr diese Biester erschlagt und mir zehn Felle als Beweis bringt, w�re Runewick in eurer Schuld.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Wild Animals"))
talkEntry:addConsequence(consequence_quest(109, "=", 5))
talkEntry:addResponse("I've received reports of wild animals attacking villagers of Yewdale. If you slay the animals, and bring me ten furs as evidence, the town shall be in your debt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Wilde Tiere"))
talkEntry:addConsequence(consequence_quest(109, "=", 5))
talkEntry:addResponse("Mir wurde gemeldet, dass wilde Tiere die Dorfbewohner von Eibenthal angegriffen haben. Wenn ihr diese Biester erschlagt und mir zehn Felle als Beweis bringt, w�re Runewick in eurer Schuld.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I receive new attack reports daily. You must protect the citizens of Yewdale by killing the animals. If you bring me ten of their furs, then I shall ensure that your efforts are recognised.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nahezu t�glich h�rt man von Tierangriffen. Ihr m�sst die B�rger von Eibenthal besch�tzen, indem ihr die Tiere erschlagt. Wenn ihr mir zehn Felle bringt, werde ich sicherstellen, dass man an h�chster Stelle von euren Anstrengungen h�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I receive new attack reports daily. You must protect the citizens of Yewdale by killing the animals. If you bring me ten of their furs, then I shall ensure that your efforts are recognised.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", "<", 10, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Nahezu t�glich h�rt man von Tierangriffen. Ihr m�sst die B�rger von Eibenthal besch�tzen, indem ihr die Tiere erschlagt. Wenn ihr mir zehn Felle bringt, werde ich sicherstellen, dass man an h�chster Stelle von euren Anstrengungen h�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a legionaire's tower shield."))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_item(2448, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me bows his head respectfully: 'You have done very well, thank you. Yewdale and its citizens are safe once more. Please, take this shield as thanks for the risk you took.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Legion�rsschild."))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_item(2448, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 6))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me verbeugt sich respektvoll: 'Das habt ihr gut gemacht. Eibenthal und seine B�rger sind jetzt wieder sicher. Bitte nehmt diesen Schild als Dank f�r das Risiko, welches ihr in Kauf nahmt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a legionaire's tower shield."))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_item(2448, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 6))
talkEntry:addResponse("#me bows his head respectfully: 'You have done very well, thank you. Yewdale and its citizens are safe once more. Please, take this shield as thanks for the risk you took.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 5))
talkEntry:addCondition(condition_item(2586, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Legion�rsschild."))
talkEntry:addConsequence(consequence_deleteitem(2586, 10, nil))
talkEntry:addConsequence(consequence_item(2448, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(109, "=", 6))
talkEntry:addResponse("#me verbeugt sich respektvoll: 'Das habt ihr gut gemacht. Eibenthal und seine B�rger sind jetzt wieder sicher. Bitte nehmt diesen Schild als Dank f�r das Risiko, welches ihr in Kauf nahmt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I shall not be needing your help at the moment, my friend. Go, rest. You have certainly earned it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Derzeit ben�tige ich eure Hilfe nicht. Ihr k�nnt euch ausruhen, das habt ihr euch verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I shall not be needing your help at the moment, my friend. Go, rest. You have certainly earned it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(109, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Derzeit ben�tige ich eure Hilfe nicht. Ihr k�nnt euch ausruhen, das habt ihr euch verdient.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a town guard. I take care of troublemakers.")
talkEntry:addResponse("I keep order 'round here, and make sure the citizens are safe.")
talkEntry:addResponse("I'm a soldier, serving here as a town guard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein W�chter. Ich k�mmere mich um Aufr�hrer.")
talkEntry:addResponse("Ich sorge f�r Ordnung hier und stelle sicher, dass die B�rger sicher schlafen k�nnen.")
talkEntry:addResponse("Ich bin ein Soldat, der hier Dienst als W�chter schiebt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a town guard.")
talkEntry:addResponse("I protect Runewick and its citizens.")
talkEntry:addResponse("It's my job to keep the people safe and out of trouble.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein W�chter.")
talkEntry:addResponse("Ich besch�tze Runewick und seine B�rger.")
talkEntry:addResponse("Es ist meine Aufgabe, die Leute zu besch�tzen und das B�se abzuwehren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("The people of this island were a hardy folk. Not much seemed to faze them in the past.")
talkEntry:addResponse("I liked it there. It was peaceful when it needed to be, but excitement was always just around the corner.")
talkEntry:addResponse("That island was a breeding ground for crime and sins, unfortunately.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Das Volk dieser Insel war hart im Nehmen. Nichts hat sie fr�her aus der Fassung gebracht.")
talkEntry:addResponse("Es war sch�n dort. Friedlich, aber das Abenteuer lauerte hinter jeder Hausecke.")
talkEntry:addResponse("Diese Insel war leider ein N�hrboden f�r Verbrechen und S�nden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("An honour to meet you.")
talkEntry:addResponse("A pleasure.")
talkEntry:addResponse("#me bows his head respectfully: 'Well met.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Es ist mir eine Ehre, eure Bekanntschaft zu machen.")
talkEntry:addResponse("Das Vergn�gen ist auf meiner Seite.")
talkEntry:addResponse("#me neigt respektvoll den Kopf: 'Angenehm.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addResponse("The laws are tough, but fair.")
talkEntry:addResponse("Take a look in the library, it should not be difficult to find a copy of the town's laws.")
talkEntry:addResponse("The laws are easily available. Take a look around, you'll find them eventually.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("guard")
talkEntry:addResponse("Being a guard of Runewick is a rewarding job. The money is good, and it is a fine way to help the citizens.")
talkEntry:addResponse("There is no greater way for me to serve my Gods than by guarding the people.")
talkEntry:addResponse("Becoming a guard seemed like the only sensible step for me to take. Fighting is the only thing I ever learned to do well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("criminal")
talkEntry:addTrigger("thief")
talkEntry:addTrigger("crime")
talkEntry:addTrigger("assault")
talkEntry:addTrigger("stole")
talkEntry:addResponse("It has been rather quiet today, not too much trouble around.")
talkEntry:addResponse("If you are a victim or witness of a crime, please submit a formal report to the Archmage.")
talkEntry:addResponse("The Archmage decides who investigates specific crimes. You should speak to him when you have trouble.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quiet")
talkEntry:addTrigger("bored")
talkEntry:addTrigger("peace")
talkEntry:addResponse("Trouble is always just around the corner.")
talkEntry:addResponse("Don't go thinking that you have to be the one to make some noise.")
talkEntry:addResponse("They say that it's always quiet before the storm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Yewdale")
talkEntry:addResponse("Yewdale is a small community of peasants. Just across the bridge, follow the road. You cannot miss it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bridge")
talkEntry:addResponse("I guard this bridge and with it, I guard Runewick. The teleporter over there is the only way into town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Teleport")
talkEntry:addResponse("Do you see that teleporter in the west? It takes you to Runewick, the most magnificent set of boulders in the ocean.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Die Gesetze hier sind streng, aber gerecht.")
talkEntry:addResponse("Schaut mal in der Bibliothek vorbei, es sollte nicht schwierig sein, die Gesetze dort zu finden.")
talkEntry:addResponse("Die Gesetze sind leicht zu erhalten. Schaut euch nur in der Stadt um, sie umgeben euch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wache")
talkEntry:addTrigger("W�chter")
talkEntry:addResponse("Ein W�chter Runewicks zu sein ist ein lobenswerter Beruf. Man hilft den B�rgern und die Bezahlung stimmt auch.")
talkEntry:addResponse("Es gibt keinen besseren Weg meinen G�ttern zu dienen als Leute zu besch�tzen.")
talkEntry:addResponse("Ein W�chter zu werden erschien mir als das einzig richtige. Ich habe nichts au�er zu K�mpfen in meinem Leben gelernt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kriminell")
talkEntry:addTrigger("Dieb")
talkEntry:addTrigger("Verbrech")
talkEntry:addTrigger("Angriff")
talkEntry:addTrigger("Stehlen")
talkEntry:addResponse("Es ist verd�chtig ruhig dieser Tage, kaum Aufruhr.")
talkEntry:addResponse("Wenn ihr Opfer oder Zeuge eines Verbrechens werdet, so stellt bitte eine formale Eingabe an den Erzmagier.")
talkEntry:addResponse("Der Erzmagier entscheidet dar�ber, wer einem Verbrechen nachgeht. Redet mit ihm, wenn ihr Probleme habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ruhig")
talkEntry:addTrigger("langweilig")
talkEntry:addTrigger("Frieden")
talkEntry:addResponse("�rger lauert hinter jeder Hausecke.")
talkEntry:addResponse("Nun meint aber nicht, dass es an euch ist, f�r Krach zu sorgen.")
talkEntry:addResponse("Die Ruhe kommt vor dem Sturm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eibenthal")
talkEntry:addResponse("Eibenthal ist eine kleine Gemeinde von Bauern. �berquert die Br�cke und folgt der Stra�e - ihr k�nnt es nicht verfehlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Br�cke")
talkEntry:addResponse("Ich bewache diese Br�cke und mit ihr bewache ich Runewick. Der Teleporter dort dr�ben ist der einzige Weg in die Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Teleport")
talkEntry:addResponse("Seht ihr den Teleporter im Westen? Er bringt euch nach Runewick, den gro�artigsten Felsen in der Brandung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The archmage does his best to keep Runewick safe. And I do my little share by guarding this bridge.")
talkEntry:addResponse("Elvaine Morgan is a good leader. He has a vision and if you are interested, he tells it to you. Takes a while, though.")
talkEntry:addResponse("I overheard some people make jokes about the first name of the Archmage, Elvaine. I would not make jokes about a magician, as powerful as him, if I were you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier tut alles, um Runewick zu einem sicheren Ort zu machen. Und auch ich trage meinen kleinen Teil dazu bei, indem ich diese Br�cke bewache.")
talkEntry:addResponse("Elvaine Morgan ist ein guter Anf�hrer. Er hat eine Vision und wenn es euch interessiert, wird er sie euch erz�hlen. Wird allerdings eine Weile in Anspruch nehmen.")
talkEntry:addResponse("Ich habe geh�rt, dass einige Leute Witze �ber den Vornamen des Erzmagiers, Elvaine, machen. Wenn ich ihr w�re, w�rde ich keine Witze �ber so einen m�chtigen Magier machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The archmage does his best to keep Runewick safe. And I do my little share by guarding this bridge.")
talkEntry:addResponse("Elvaine Morgan is a good leader. He has a vision and if you are interested, he tells it to you. Takes a while, though.")
talkEntry:addResponse("I overheard some people make jokes about the first name of the Archmage, Elvaine. I would not make jokes about a magician, as powerful as him, if I were you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier tut alles, um Runewick zu einem sicheren Ort zu machen. Und auch ich trage meinen kleinen Teil dazu bei, indem ich diese Br�cke bewache.")
talkEntry:addResponse("Elvaine Morgan ist ein guter Anf�hrer. Er hat eine Vision und wenn es euch interessiert, wird er sie euch erz�hlen. Wird allerdings eine Weile in Anspruch nehmen.")
talkEntry:addResponse("Ich habe geh�rt, dass einige Leute Witze �ber den Vornamen des Erzmagiers, Elvaine, machen. Wenn ich ihr w�re, w�rde ich keine Witze �ber so einen m�chtigen Magier machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is firm like a rock. No wonder, it was made of rocks.")
talkEntry:addResponse("Runewick became my new home. I was born in Salkamar and spent my youth on an island called Gobaith. But that is no more...")
talkEntry:addResponse("Runewick, well, look east and tell me what you see there. That is Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist wie ein Fels in der Brandung. Kein Wunder, denn es wurde aus Steinen gebaut.")
talkEntry:addResponse("Runewick ist meine neue Heimat. Ich wurde in Salkamar geboren und habe meine Jugend auf einer Insel namens Gobaith verbracht. Aber das war einmal...")
talkEntry:addResponse("Runewick, nun, schaut doch mal nach Osten und sagt mir, was ihr da seht. Das ist Runewick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I overheard the real name of the Don's father is John. That makes the Don a John-son, har, har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich habe geh�rt der echte Name des Vaters des Dons w�re John. Das macht aus dem Don einen Johnson, har, har!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is far away. And that's good.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist fern von hier. Und das ist auch gut so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen of Cadomyr became queen because she was born. The Archmage became our leader because he is the best!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Die K�nigin von Cadomyr wurde K�nigin, weil sie dazu geboren wurde. Der Erzmagier ist unser Anf�hrer, weil er einfach der beste Mann ist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die K�nigin von Cadomyr wurde K�nigin, weil sie dazu geboren wurde. Der Erzmagier ist unser Anf�hrer, weil er einfach der beste Mann ist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die K�nigin von Cadomyr wurde K�nigin, weil sie dazu geboren wurde. Der Erzmagier ist unser Anf�hrer, weil er einfach der beste Mann ist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr's people is inequitable, despiteous, dastard and blasphemous. But besides, the town is nice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyrs Volk ist ungerecht, unbarmherzig, niedertr�chtig und gottesl�sterlich. Aber ansonsten ist es eine sch�ne Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I've been to Albar once before. I found it to be a rather... backward place.")
talkEntry:addResponse("Albar is a very corrupt land, from what I've heard.")
talkEntry:addResponse("Albarian commoners seem pleasant enough. Their women are rather reserved though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich war fr�her einmal in Albar. Es machte auf mich einen ziemlich... r�ckst�ndigen Eindruck.")
talkEntry:addResponse("Albar ist ein sehr korruptes Land, so sagt man.")
talkEntry:addResponse("Albarisches Landvolk ist eigentlich recht gen�gsam. Ihre Frauen sind allerdings recht zugekn�pft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Ah, yes... Gynk, the 'Pool of Sin'.")
talkEntry:addResponse("I've never been to Gynk. They tell me that you will never see more criminals running 'round than there, though.")
talkEntry:addResponse("The Thieves' Guilds of Gynk have far too much influence for my liking. Power must be held by the authorities, not by criminals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ah, ja, Gynk, der S�ndenpfuhl.")
talkEntry:addResponse("Ich war noch nie in Gynk. Man sagte mir, dass man dort so viele Gauner herumstreunern sieht wie nirgends anders.")
talkEntry:addResponse("Die Diebesgilden von Gynk haben f�r meinen Geschmack viel zu viel Einfluss. Die Macht muss bei der Obrigkeit verbleiben, nicht bei Strauchdieben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ahh... Salkamar. It is my homeland, did you know?")
talkEntry:addResponse("I was born and raised in the lands of Salkamar. You will struggle to find a more honourable and loyal people than we.")
talkEntry:addResponse("You will never find a greater army than that of Salkamar. Its leaders are cunning, its men loyal, and its ranks ordered.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ah... Salkamar, meine Heimat. Wusstet ihr, dass ich von dort stamme?")
talkEntry:addResponse("Ich wurde in Salkamar geboren und erzogen. Ihr werdet niemals ehrenhaftere und loyalere Menschen als uns finden.")
talkEntry:addResponse("Ihr werdet niemals eine gro�artigere Armee finden als die Salkamars. Die Heeresf�hrer sind intelligent, die M�nner loyal und es herrscht Ordnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Zhambra and Malach�n are my patron deities.")
talkEntry:addResponse("I am protected by the Lords Malach�n and Zhambra in battle. They have kept me safe so far.")
talkEntry:addResponse("I worship Zhambra and Malach�n.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Zhambra und Malach�n sind meine Schutzg�tter.")
talkEntry:addResponse("Die Herren Malach�n und Zhambra wachen �ber mich in der Schlacht. Bis jetzt haben sie ihre Sache gut gemacht.")
talkEntry:addResponse("Ich diene Zhambra und Malach�n.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("I respect His followers, but I do not worship that God.")
talkEntry:addResponse("I confess to knowing little about Adron. I hear his followers frequent the tavern, though.")
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ich respektiere seine Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Adron. Man sagt, seine Anh�nger feiern heiligen Messen nur in Tavernen.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diesen Gott reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("I respect His followers, but I do not worship that God.")
talkEntry:addResponse("I confess to knowing little about the God of Fire.")
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Ich respektiere seine Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber den Gott des Feuers.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diesen Gott reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about Cherga or those who worship Her.")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Cherga oder ihre Anh�nger.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about Elara.")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Elara, au�er, dass sie einen guten Kleidergeschmack haben soll.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("I respect His followers, but I do not worship that God.")
talkEntry:addResponse("I confess to knowing little about Eldan.")
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Ich respektiere seine Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Eldan.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diesen Gott reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about Findari.")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Findari.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("I respect His followers, but I do not worship that God.")
talkEntry:addResponse("I confess to knowing little about Irmorom. Speak to some Dwarves, that would be your best bet.")
talkEntry:addResponse("You would be better off speaking to someone else about that God, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ich respektiere seine Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Irmorom. Redet mit den Zwergen, das ist mein Ratschlag-")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diesen Gott reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n is the God of Battle. He watches over all those who fight with honour.")
talkEntry:addResponse("#me closes his eyes and tilts his head upward, whispering a silent prayer.")
talkEntry:addResponse("The God of Battle is one of my patron Gods. It is He who ensures that my blade swings true.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n ist der Gott der Schlacht. Er wacht �ber die, die ehrenhaft k�mpfen.")
talkEntry:addResponse("#me schlie�t die Augen und legt seinen Kopf in den Nacken um leise ein Gebet zu sprechen.")
talkEntry:addResponse("Der Gott der Schlachten ist einer meiner Schutzg�tter. Er ist es, der mein Schwert f�hrt um Gerechtigkeit walten zu lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me spits on the ground, expressing his distaste.")
talkEntry:addResponse("The followers of the Blood-God deserve whatever cruel, twisted fate awaits them.")
talkEntry:addResponse("I would not mention that name so freely, if I were you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me spuckt voll Missachtung auf den Boden.")
talkEntry:addResponse("Die Gefolgschaft des Blutgottes m�ge ein grausames Schicksal haben.")
talkEntry:addResponse("Ihr solltet diesen Namen nicht so freim�tig aussprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("His followers are all fools and madmen.")
talkEntry:addResponse("I do not have time for the worshippers of Narg�n.")
talkEntry:addResponse("Order is something that I greatly value. And something that the God of Chaos does not provide.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Seine Anh�nger sind Idioten und Schwachsinnige.")
talkEntry:addResponse("Mir ist meine Zeit zu kostbar, um sie mit Anh�ngern Narg�ns zu verschwenden.")
talkEntry:addResponse("Ich liebe Ordnung. Was habe ich also f�r den Gott des Chaos �brig?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about Oldra. Perhaps a druid could inform you better.")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Oldra. Vielleicht kann euch ein Druide weiterhelfen.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("#me frowns lightly: 'His followers are thieves, petty criminals. Nothing but lowlife scum.'")
talkEntry:addResponse("Ah, the God of Thieves. Not a supporter of my work, as I understand it. He keeps me in a job though, I suppose.")
talkEntry:addResponse("I am paid to deal with Ronagan's followers. You'll find plenty of them behind bars. He causes far more harm than good, in my humble opinion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("#me r�mpft die Nase: 'Seine Anh�nger sind Diebe und gemeine Gauner. Nichts als Abschaum!")
talkEntry:addResponse("Ah, der Gott der Diebe. Er ist nicht gerade ein F�rderer meiner Arbeit, m�chte man meinen. Aber gleichzeitig sichert er mir auch meinen Posten.")
talkEntry:addResponse("Ich werde daf�r bezahlt, um mich mit Ronagans Anh�ngern rumzuplagen. Viele von ihnen landen hinter Gittern. Andere... nicht, falls ihr mich versteht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about Sirani.")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Sirani.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about that Goddess.")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber diese G�ttin.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("I respect Her followers, but I do not worship that Goddess.")
talkEntry:addResponse("I confess to knowing little about Ushara. I recommend speaking with an Elf about such matters")
talkEntry:addResponse("You would be better off speaking to someone else about that Goddess, I'm certain there are followers nearby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ich respektiere ihre Anh�nger, aber ich bin keiner von ihnen.")
talkEntry:addResponse("Ich muss zugeben, ich wei� nur wenig �ber Ushara. Ich empfehle euch mit einem Elf �ber dieserlei Dinge zu reden.")
talkEntry:addResponse("Ihr solltet lieber mit jemand anderem �ber diese G�ttin reden, ich bin mir sicher, ihr werdet jemanden finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("The God of Friendship and Loyalty is one of my patron deities. He keeps me safe, provided I stay faithful.")
talkEntry:addResponse("I worship Zhambra and eagerly await the day He leads me to the paradise.")
talkEntry:addResponse("Loyalty is vital for a man in my position. Lord Zhambra keeps me honest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Der Gott der Freundschaft und Loyalit�t ist einer meiner Schutzg�tter. Er h�lt seine sch�tzende Hand �ber mich, solange ich fromm bleibe.")
talkEntry:addResponse("Ich verehre Zhambra und kann es kaum erwarten, dass er mich eines Tages in die Ewigkeit geleiten wird.")
talkEntry:addResponse("Loyalit�t ist unerl�sslich f�r einen Mann in meiner Position. Und der Herr Zhambra leitet meine Hand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("My apologies, but I am on duty. I cannot trade with you at the moment.")
talkEntry:addResponse("I do not wish to trade with you.")
talkEntry:addResponse("#me holds his hand up, shaking his head: 'Not while I'm on duty, thank you.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Entschuldigt, ich bin im Dienst, ich kann nicht mit euch handeln.")
talkEntry:addResponse("Ich m�chte nicht mit euch handeln.")
talkEntry:addResponse("#me hebt die Hand und sch�ttelt mit dem Kopf: 'Nicht solange ich im Dienst bin.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Hm. You look like you could wield a weapon. Perhaps the  Archmage would be interested in your services.")
talkEntry:addResponse("Have you read the town's laws? It shouldn't be too hard finding a copy.")
talkEntry:addResponse("I find the tower shield from Salkamar, my homeland, to be the most effective. Not too many weapons can find their way around or through one of them, I tell you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Hm. Ihr seht aus, als wenn ihr eine Waffe tragen k�nntet. Vielleicht hat der Erzmagier ja Interesse an euren Diensten.")
talkEntry:addResponse("Habt ihr schon die Gesetze der Stadt gelesen? Es sollte nicht sonderlich schwer sein, eine Ausgabe zu finden.")
talkEntry:addResponse("Ich finde das die Turmschilde aus Salkamar, meiner Heimat, sehr effektiv sind. Um sie kommt kaum eine Waffe herum, geschweige denn hindurch.")
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
talkEntry:addTrigger("Brassius")
talkEntry:addTrigger("Meres")
talkEntry:addResponse("My apologies, I am on duty. Perhaps someone else can help you.")
talkEntry:addResponse("I should be getting back to my work.")
talkEntry:addResponse("I am quite busy at the moment, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Brassius")
talkEntry:addTrigger("Meres")
talkEntry:addResponse("Entschuldigt, aber ich bin im Dienst. Vielleicht kann euch jemand anderes helfen.")
talkEntry:addResponse("Ich sollte wieder an meinen Dienst denken.")
talkEntry:addResponse("Ich bin derzeit recht besch�ftigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me r�ckt den Kinnriemen seines Helms zurecht.", "#me adjusts the chin strap on his helm.")
talkingNPC:addCycleText("#me hustet hinter vorgehaltener Hand.", "#me coughs into a closed fist.")
talkingNPC:addCycleText("#me schaut in seinen K�cher.", "#me glances into his quiver.")
talkingNPC:addCycleText("#me zieht die Sehne seines Bogens nach.", "#me tightens the string of his bow.")
talkingNPC:addCycleText("#me legt eine Hand auf den Griff seines ungezogenen Schwertes.", "#me places a hand upon the hilt of his sheathed blade.")
talkingNPC:addCycleText("#me schaut sich die Gegend um ihn herum an.", "#me's eyes wander over the scene before him.")
talkingNPC:addCycleText("#me schaut d�ster drein.", "#me looks around suspiciously.")
talkingNPC:addCycleText("Dann geht mal weiter.", "Move along, then.")
talkingNPC:addCycleText("Macht hier keinen �rger.", "Don't go causing any trouble 'round here.")
talkingNPC:addCycleText("Wir sehen alles.", "We're watching.")
guardNPC:setWarpLocation(857,817,0)
guardNPC:setGuardRange(5,6,5,5)
guardNPC:addWarpedMonsterText("Weg mit dir, widerliche Kreatur!", "Go away, nasty creature!")
guardNPC:addWarpedMonsterText("Hinfort, du Monster!", "Begone, you monster!")
guardNPC:addWarpedPlayerText("Pass blo� auf! Wir brauchen hier kein Gesindel.", "You'd better watch out! We don't need such lowlifes here.")
guardNPC:addHitPlayerText("#me verpasst dem Eindringling einen Hieb 'Verschwinde!'", "#me hits the intruder 'Get lost!'")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Brassius Meres der W�chter.", "This NPC is Brassius Meres the Guard.")
mainNPC:setUseMessage("Nehmt augenblicklich eure H�nde von mir!", "Remove your hands from me this instant!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 362)
mainNPC:setEquipment(11, 55)
mainNPC:setEquipment(5, 2708)
mainNPC:setEquipment(6, 2708)
mainNPC:setEquipment(4, 528)
mainNPC:setEquipment(9, 2113)
mainNPC:setEquipment(10, 697)
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
