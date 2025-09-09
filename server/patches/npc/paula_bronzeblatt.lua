local consequence_item = require("npc.base.consequence.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_treasure = require("npc.base.consequence.treasure")
local basic = require("npc.base.basic")
local condition_money = require("npc.base.condition.money")
local condition_chance = require("npc.base.condition.chance")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Paula Bronzeblatt the Map trader. Keywords: treasure, map."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Paula Bronzeblatt die Kartenverk�uferin. Schl�sselw�rter: Schatz, Karte."))
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
talkEntry:addResponse("Hello, hello. Would you like to buy a treasure map? I sell them for just five gold coins. Say 'deal' and it belongs to you.")
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
talkEntry:addResponse("Hallo, hallo. Willst du eine Schatzkarte kaufen? Ich verkaufe die f�r f�nf Goldm�nzen. Sage 'Deal' und eine geh�rt dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hello, hello. Would you like to buy a treasure map? I sell them for just five gold coins. Say 'deal' and it belongs to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hallo, hallo. Willst du eine Schatzkarte kaufen? Ich verkaufe die f�r f�nf Goldm�nzen. Sage 'Deal' und eine geh�rt dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("See you soon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Bis bald!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("See you soon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bis bald!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Fine, and you? Interested in buying a treasure map? I sell them for just five gold coins. Say 'deal' and it belongs to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Gut, und dir? Interessiert in den Erwerb einer Schatzkarte? Ich verkaufe die f�r f�nf Goldm�nzen. Sage 'Deal' und eine geh�rt dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Paula and I sell treasure maps. I sell them for just five gold coins. Say 'deal' and it belongs to you.")
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
talkEntry:addResponse("Ich bin Paula und verkaufe Schatzkarten. Ich verkaufe die f�r f�nf Goldm�nzen. Sage 'Deal' und eine geh�rt dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(613, "~=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_inform("[Treasure map-trader] Currently, there is no map for available. You will be informed as soon as there is one available for you."))
talkEntry:addResponse("Arrr, I do not have any for you today. Please come back another day. I will send you a dove when I have one for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(613, "~=", 0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_inform("[Schatzkarten-H�ndler] Es gibt f�r dich vorerst keine weitere Karte zu erwerben. Du wirst �ber eine Nachricht informiert, wenn es f�r dich wieder m�glich ist."))
talkEntry:addResponse("Arrr, ich habe heute keine f�r dich. Bitte komm an einen anderen Tag wieder. Ich werde dir eine Taube zukommen lassen, wenn ich wieder welche f�r dich habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_money("<", 50000))
talkEntry:addTrigger("deal")
talkEntry:addResponse("Get enough coins first. You need five gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_money("<", 50000))
talkEntry:addTrigger("deal")
talkEntry:addResponse("Du ben�tigst ausreichend M�nzen. F�nf Goldst�cke, um genau zu sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(1.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Treasure map trader] Bad luck, you received a fake map. Maybe you will have more luck next time."))
talkEntry:addConsequence(consequence_item(505, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(613, "=", 200))
talkEntry:addResponse("#me hands over a treasure map and gloats. 'Welcome to the black market.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(1.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Pech, du hast eine F�lschung erhalten. Vielleicht hast du mehr Gl�ck beim n�chsten Mal."))
talkEntry:addConsequence(consequence_item(505, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(613, "=", 200))
talkEntry:addResponse("#me �berreicht eine Schatzkarte und freut sich h�misch. 'Willkommen am Schwarzmarkt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(21.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Treasure map trader] You received a map for a big treasure."))
talkEntry:addConsequence(consequence_treasure(5))
talkEntry:addConsequence(consequence_quest(613, "=", 320))
talkEntry:addResponse("#me hands over a treasure map and looks neutral. 'Oi, oi, oi'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(21.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Du hast eine Karte f�r einen gro�en Schatz erhalten."))
talkEntry:addConsequence(consequence_treasure(5))
talkEntry:addConsequence(consequence_quest(613, "=", 320))
talkEntry:addResponse("#me �berreicht eine Schatzkarte und blickt neutral. 'Oi, oi, oi'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(26.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Treasure map trader] You received a map for a big treasure."))
talkEntry:addConsequence(consequence_treasure(6))
talkEntry:addConsequence(consequence_quest(613, "=", 350))
talkEntry:addResponse("#me hands over a treasure map and looks neutral. 'I hope, you and your friends are insured.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(26.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Du hast eine Karte f�r einen gro�en Schatz erhalten."))
talkEntry:addConsequence(consequence_treasure(6))
talkEntry:addConsequence(consequence_quest(613, "=", 350))
talkEntry:addResponse("#me �berreicht eine Schatzkarte und blickt neutral. 'Ich hoffe, du und deine Freunde seid versichert.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(34.3))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Treasure map trader] You received a map for a big treasure."))
talkEntry:addConsequence(consequence_treasure(7))
talkEntry:addConsequence(consequence_quest(613, "=", 380))
talkEntry:addResponse("#me hands over a treasure map and looks neutral. 'Our gods shall be with you.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(34.3))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Du hast eine Karte f�r einen gro�en Schatz erhalten."))
talkEntry:addConsequence(consequence_treasure(7))
talkEntry:addConsequence(consequence_quest(613, "=", 380))
talkEntry:addResponse("#me �berreicht eine Schatzkarte und blickt neutral. 'Die G�tter m�gen mit euch sein.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(51.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Treasure map trader] You received a map for a giant treasure."))
talkEntry:addConsequence(consequence_treasure(8))
talkEntry:addConsequence(consequence_quest(613, "=", 410))
talkEntry:addResponse("#me hands over a treasure map and looks scared. 'Maybe the last time we see each other.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(51.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Du hast eine Karte f�r einen riesigen Schatz erhalten."))
talkEntry:addConsequence(consequence_treasure(8))
talkEntry:addConsequence(consequence_quest(613, "=", 410))
talkEntry:addResponse("#me �berreicht eine Schatzkarte und blickt ver�ngstigt. 'Vielleicht das letzte mal, dass wir uns sehen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Treasure map trader] You received a map for a giant treasure."))
talkEntry:addConsequence(consequence_treasure(9))
talkEntry:addConsequence(consequence_quest(613, "=", 410))
talkEntry:addResponse("#me hands over a treasure map and looks scared. 'You'd better sell it to an enemy of yours.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Du hast eine Karte f�r einen riesigen Schatz erhalten."))
talkEntry:addConsequence(consequence_treasure(9))
talkEntry:addConsequence(consequence_quest(613, "=", 410))
talkEntry:addResponse("#me �berreicht eine Schatzkarte und blickt ver�ngstigt. 'Du verkaufst sie besser an einen Feind von dir.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_inform("[Treasure map trader] Something went wrong. Please try again."))
talkEntry:addResponse("What did you say? Can you repeat it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("deal")
talkEntry:addConsequence(consequence_inform("[Schatzkartenh�ndler] Irgendetwas ist schief gelaufen. Bitte versuche es nochmals."))
talkEntry:addResponse("Was hast du gesagt? Kannst du es wiederholen?")
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
talkEntry:addTrigger("sell")
talkEntry:addTrigger("wares")
talkEntry:addTrigger("price")
talkEntry:addTrigger("trade")
talkEntry:addResponse("I sell treasure maps for five gold coins. Interested? Say 'deal' and a treasure map is yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("verkauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("preis")
talkEntry:addTrigger("Handel")
talkEntry:addResponse("Ich verkaufe Schatzkarten f�r f�nf Goldm�nzen. Interessiert? Sage 'Deal' und eine Schatzkarte ist dein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("buy")
talkEntry:addTrigger("purchase")
talkEntry:addResponse("I do not buy anything but just sell treasure maps for five gold coins. Interested? Say 'deal' and a treasure map is yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("erwerb")
talkEntry:addResponse("Ich kaufe gar nichts, sondern lediglich verkaufe Schatzkarten f�r f�nf Goldm�nzen. Interessiert? Sage 'Deal' und eine Schatzkarte ist dein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a treasure map seller. Don't ask me where I get them from. It is my secret and I would not tell you anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Schatzkarten-Verk�ufer. Frage mich nicht, woher ich die bekomme. Es ist mein Geheimnis und ich w�rde es dir ohnehin nicht sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a treasure map seller. Don't ask me where I get them from. It is my secret and I would not tell you anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Schatzkarten-Verk�ufer. Frage mich nicht, woher ich die bekomme. Es ist mein Geheimnis und ich w�rde es dir ohnehin nicht sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I sell treasure maps for five gold coins. Interested? Say 'deal' and a treasure map is yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich verkaufe Schatzkarten f�r f�nf Goldm�nzen. Interessiert? Sage 'Deal' und eine Schatzkarte ist dein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("map")
talkEntry:addTrigger("treasure")
talkEntry:addResponse("I sell my maps for five gold coins. Say 'deal' and a treasure map is yours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schatz")
talkEntry:addTrigger("Karte")
talkEntry:addResponse("Ich verkaufe Schatzkarten f�r f�nf Goldm�nzen. Sage 'Deal' und eine Schatzkarte ist dein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("For some of my treasure maps, you will need the help of our gods. If you want to know more about gods then you should ask others, in particular priests.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("F�r manche meiner Schatzkarten wirst du die Hilfe unserer G�tter ben�tigen. Falls du mehr �ber G�tter wissen m�chtest, dann frage andere. Insbesondere Priester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("According to rumours I have heard, he only insists that he can read.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Mir wurde gesagt, er kann gar nicht lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("According to rumours I have heard, he only insists that he can read.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Mir wurde gesagt, er kann gar nicht lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I do not think you will find any treasure there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ich glaube nicht, dass du dort irgend einen Schatz finden wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("#w Just between us, he might have killed his own father. So be careful!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("#w Unter uns, er soll seinen eigenen Vater get�tet haben. Also sei vorsichtig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("A treasure itself!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ein wahrer Schatz!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I was told, she wears a mask because she is not as beautiful as she pretends.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Mir wurde gesagt, sie tr�gt st�ndig eine Maske und das sie gar nicht so sch�n ist, wie sie alle glauben l�sst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I was told, she wears a mask because she is not as beautiful as she pretends.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Mir wurde gesagt, sie tr�gt st�ndig eine Maske und das sie gar nicht so sch�n ist, wie sie alle glauben l�sst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I do not think you will find any treasure there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich glaube nicht, dass du dort irgend einen Schatz finden wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Do you want to buy one of my treasure maps for just five gold coins. Say 'deal' and it is yours!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ich verkaufe Schatzkarten f�r f�nf Goldm�nzen. Interessiert? Sage 'Deal' und eine Schatzkarte ist dein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Paula")
talkEntry:addTrigger("Bronzeblatt")
talkEntry:addResponse("Yes, this is my name, but do you want to buy my treasure map for just five gold coins? Say 'deal' and it is yours!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Paula")
talkEntry:addTrigger("Bronzeblatt")
talkEntry:addResponse("Ja, das ist mein Name. Aber willst du meine Schatzkarte f�r nur f�nf Goldst�cke kaufen. Sage 'Deal' und sie geh�rt dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me kratzt sich am Kopf.", "#me scratches her head.")
talkingNPC:addCycleText("#me z�hlt ihre Schatzkarten.", "#me counts her treasure maps.")
talkingNPC:addCycleText("Wo der Schatz nur liegen wird? Irgendwo im S�dwesten.", "Where might this treasure be hidden?. Somewhere in the south west.")
talkingNPC:addCycleText("Schatzkarten zu verkaufen! Schatzkarten zu verkaufen!", "Treasure maps for sale! Treasure maps for sale!")
talkingNPC:addCycleText("Nur f�nf Goldst�cke f�r eine Schatzkarte!", "Only five gold coins for one treasure map!")
talkingNPC:addCycleText("#me untersucht ihre Schatzkarten", "#me examines her treasure maps.")
talkingNPC:addCycleText("Wer hat noch nicht? Wer will noch einmal? Schatzkarten zu verkaufen!", "Who has not yet? Who wants again? Treasure maps for sale!")
talkingNPC:addCycleText("#me nickt leicht ein.", "#me falls asleep.")
talkingNPC:addCycleText("#me spielt gelangweilt mit einer M�nze.", "#me plays with a coin, bored.")
talkingNPC:addCycleText("#me l�sst ihre Finger knacken.", "#me cracks her fingers.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Paula Bronzeblatt die Kartenverk�uferin.", "This NPC is Paula Bronzeblatt the map trader.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 365)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 526)
mainNPC:setEquipment(9, 839)
mainNPC:setEquipment(10, 326)
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
