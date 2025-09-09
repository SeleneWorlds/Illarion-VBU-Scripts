local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Cassandra Hestan the money changer. Keywords: buy, sell, trade, Hello, money, Cadomyr, profession, Ronagan."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Cassandra Hestan die Geldwechslerin. Schl�sselw�rter: kaufe, verkaufe, Handel, Hallo, Geld, Cadomyr, Beruf, Ronagan."))
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
talkEntry:addResponse("Greetings. You came to me to change money, am I right?")
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
talkEntry:addResponse("Gr��e. Ihr seid zu mir gekommen, um Geld zu wechseln, hab ich nicht recht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings. You came to me to change money, am I right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Gr��e. Ihr seid zu mir gekommen, um Geld zu wechseln, hab ich nicht recht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell and come back with more money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Einen guten Tag w�nsche ich und kommt mir mehr Geld zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell and come back with more money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Einen guten Tag w�nsche ich und kommt mir mehr Geld zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Let's skip this and get straight to business.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("�berspringen wir die H�flichkeiten und kommen gleich zum Gesch�ft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Cassandra.")
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
talkEntry:addResponse("Cassandra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I am just a humble servant of her Majesty. I do not have orders for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich bin auch nur eine Dienerin ihrer Majest�t. Ich vermag euch keine Befehle zu erteilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I am just a humble servant of her Majesty. I do not have orders for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich bin auch nur eine Dienerin ihrer Majest�t. Ich vermag euch keine Befehle zu erteilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I change money. That is not a honourable profession, I am aware of that. However, my services are needed and my hands are not able to do more honourable deeds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich wechsle Geld. Das ist kein ehrbarer Beruf, dem bin ich mir bewu�t. Dennoch sind meine Dienste von N�ten und meine H�nde sind nicht geschickt genug f�r ehrbare T�tigkeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I change money. That is not a honourable profession, I am aware of that. However, my services are needed and my hands are not able to do more honourable deeds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich wechsle Geld. Das ist kein ehrbarer Beruf, dem bin ich mir bewu�t. Dennoch sind meine Dienste von N�ten und meine H�nde sind nicht geschickt genug f�r ehrbare T�tigkeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("money")
talkEntry:addResponse("In Cadomyr, we know three types of coins: Copper, silver and gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("silver")
talkEntry:addResponse("A silver coin equals a hundred copper coins. One hundred silver coins equal one gold coin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("copper")
talkEntry:addResponse("One hundred copper coins equal one silver coin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gold")
talkEntry:addResponse("A gold coin equals a hundred silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Geld")
talkEntry:addResponse("In Cadomyr kennt man drei Sorten M�nzen: Kupfer, Silber und Gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Silber")
talkEntry:addResponse("Ein Silberst�ck entspricht einhundert Kupferst�cken. Einhundert Silberst�cke entsprechen einem Goldst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kupfer")
talkEntry:addResponse("Einhundert Kupferst�cke entsprechen einem Silberst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gold")
talkEntry:addResponse("Ein Goldst�ck entspricht einhundert Silberst�cken.")
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
talkEntry:addResponse("I just change money. I do not offer any other services.")
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
talkEntry:addResponse("Ich wechsle einfach nur Geld. Ich biete keine anderen Dienste an.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("You don't think that Ronagan is one of the evil guys, do you? If so, you have to learn a lot about the nature of the gods.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ihr denkt doch nicht etwa auch, dass Ronagan einer der b�sen Jungs ist, oder? Falls doch, dann m��t ihr noch viel �ber das Wesen der G�tter lernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Queen Rosaline just tolerates my profession - changing money isn't very honourable.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("K�nigin Rosaline toleriert lediglich meine T�tigkeit - Geld zu wechseln ist nicht sonderlich ehrbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Queen Rosaline just tolerates my profession - changing money isn't very honourable.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("K�nigin Rosaline toleriert lediglich meine T�tigkeit - Geld zu wechseln ist nicht sonderlich ehrbar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is my home and I love it. Whether Cadomyr loves me or not... I do not know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist meine Heimat und ich liebe es. Ob nun Cadomyr mich auch liebt oder nicht - das wei� ich nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Psst! Wollt ihr etwas Geld wechseln?", "Shh! Want to change some money?")
talkingNPC:addCycleText("Hast mal 'nen Silberling?", "Got some change?")
talkingNPC:addCycleText("Wollt ihr mehr Geld? Wechselt eure Goldst�cke in Kupferst�cke ein!", "Do you want more money? Change your gold coins into copper coins!")
talkingNPC:addCycleText("Ihr da. Ja, genau ihr. Kommt doch mal n�her.", "You there. Yes, you... Come a little closer.")
talkingNPC:addCycleText("#me stellt einen kleinen Becher vor sich auf die Stra�e.", "#me places a small mug on the street.")
talkingNPC:addCycleText("#me klimpert mit ein paar M�nzen.", "#me rattles some coins.")
talkingNPC:addCycleText("#me betrachtet eine M�nze und sagt: 'K�nigin Rosalines Portr�t ist wirklich schmeichelhaft.'.", "#me beholds a coin and says: 'Queen Rosaline's potrait is charming.'.")
talkingNPC:addCycleText("Geld macht nicht gl�cklich, aber kein Geld macht ungl�cklich!", "Money doesn't make you happy, but no money makes you sad!")
talkingNPC:addCycleText("Ich wechsle Geld!", "I change money!")
talkingNPC:addCycleText("#me z�hlt emsig M�nzen.", "#me assiduously counts money.")
talkingNPC:addCycleText("#me betrachtet eine Goldm�nze.", "#me glances lovingly at a gold coin.")
tradingNPC:addNotEnoughMoneyMsg("Ganz so viel Geld habt ihr auch wieder nicht.", "You don't have that much money.")
tradingNPC:addDialogClosedMsg("Weiterhin gute Gesch�fte.", "I wish you good business.")
tradingNPC:addDialogClosedNoTradeMsg("Gehabt euch wohl.", "Godspeed.")
tradingNPC:addWrongItemMsg("Ich wechsle nur Geld.", "I just change money.")
tradingNPC:addItem(trade.tradeNPCItem(3076,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3077,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(61,"sell"))
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Cassandra Hestan die Geldwechslerin.", "This NPC is Cassandra Hestan the money changer.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 852)
mainNPC:setEquipment(11, 852)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 0)
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
