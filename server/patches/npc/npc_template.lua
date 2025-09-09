local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is <Name> the <profession/function>. Keywords: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist <Name> der <Beruf/Funktion>. Schl�sselw�rter: TRIGGER1, TRIGGER2, TRIGGER3, TRIGGER4, TRIGGER5."))
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
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
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
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
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
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
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
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
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
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("YOURTRIGGER1")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("YOURTRIGGER2")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("YOURTRIGGER3")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("YOURTRIGGER4")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("YOURTRIGGER5")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("DEINTRIGGER1")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("DEINTRIGGER2")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("DEINTRIGGER3")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("DEINTRIGGER4")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("DEINTRIGGER5")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("religion")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("religion")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faith")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glaube")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("<NPC first name>")
talkEntry:addTrigger("<NPC last name>")
talkEntry:addResponse("ENGLISH1.")
talkEntry:addResponse("ENGLISH2.")
talkEntry:addResponse("ENGLISH3.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("<NPC-Vorname>")
talkEntry:addTrigger("<NPC-Nachname>")
talkEntry:addResponse("GERMAN1.")
talkEntry:addResponse("GERMAN2.")
talkEntry:addResponse("GERMAN3.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
talkingNPC:addCycleText("GERMAN.", "ENGLISH.")
tradingNPC:addItem(trade.tradeNPCItem(1,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3,"buySecondary"))
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist <Name> der <Beruf/Funktion>.", "This NPC is <Name> the <profession/function>.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 181)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
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
