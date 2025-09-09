local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Grator Bottlebreak the alchemist. Keywords: recipes, alchemy, book"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Grator Bottlebreak der Alchemist. Schl�sselw�rter: Rezepte, Alchemie, Buch"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("handel")
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("Buch")
talkEntry:addResponse("Bei mir k�nnt Ihr das Standardwerk der Alchemie erwerben.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("buy")
talkEntry:addTrigger("sell,")
talkEntry:addTrigger("trade")
talkEntry:addTrigger("book")
talkEntry:addResponse("You can buy the standard work of alchemy from me.")
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
talkEntry:addResponse("Greetings!")
talkEntry:addResponse("Hello.")
talkEntry:addResponse("Be greeted!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Guten Morgen")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Gute Nacht")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("Mohltied")
talkEntry:addResponse("Gr��e.")
talkEntry:addResponse("Hallo.")
talkEntry:addResponse("Seid gegr��t!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings!")
talkEntry:addResponse("Hello.")
talkEntry:addResponse("Be greeted!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Gr��e.")
talkEntry:addResponse("Hallo.")
talkEntry:addResponse("Seid gegr��t!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell")
talkEntry:addResponse("Goodbye.")
talkEntry:addResponse("Have a nice day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Auf bald.")
talkEntry:addResponse("Wiedersehen.")
talkEntry:addResponse("Sch�nen Tag noch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell")
talkEntry:addResponse("Goodbye.")
talkEntry:addResponse("Have a nice day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Auf bald.")
talkEntry:addResponse("Wiedersehen.")
talkEntry:addResponse("Sch�nen Tag noch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I have done better, I have done worse.")
talkEntry:addResponse("I am fine.")
talkEntry:addResponse("Thanks for asking. I am doing well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es gut.")
talkEntry:addResponse("Danke der Nachfrage. Ich kann nicht klagen.")
talkEntry:addResponse("Es ging mir schon besser.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Grator Bottlebreak.")
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
talkEntry:addResponse("Ich bin Grator Bottlebreak.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("If you want to learn the proper creation of a certain potion, have a look at my list here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wenn Ihr ein die richtige Herstellung eines Trankes lernen wollt, schaut hier auf die Liste auf meinem Tisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("recipe")
talkEntry:addTrigger("leran")
talkEntry:addTrigger("lesson")
talkEntry:addResponse("If you want to learn the proper creation of a certain potion, have a look at my list here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Rezept")
talkEntry:addTrigger("lernen")
talkEntry:addTrigger("Unterricht")
talkEntry:addResponse("Wenn Ihr ein die richtige Herstellung eines Trankes lernen wollt, schaut hier auf die Liste auf meinem Tisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am Grator Bottlebreak and I can teach an alchemist some fancy recipes!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Grator Bottlebreak und ich kann einem Alchemisten einige tolle Rezepte lehren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am Grator Bottlebreak and I can teach an alchemist some fancy recipes!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin Grator Bottlebreak und ich kann einem Alchemisten einige tolle Rezepte lehren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("How about you tell me something?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Erzh�lt Ihr mir doch was.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("druid")
talkEntry:addResponse("Druids are actually rather strange people. Most of them are excellent alchemists, true, but well, they indeed have some crazy ideas: spirits of nature, will of nature and all those things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("druid")
talkEntry:addResponse("Druiden sind schon ein sonderbarer Schlag. Die meisten von ihnen sind zwar exellente Alchemisten, aber nun ja. Sie haben doch schon recht wirre Ideen: Naturgeister, Wille der Natur und all sowas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("alchemy")
talkEntry:addTrigger("alchemist")
talkEntry:addResponse("Alchemists are masters of potions, have profound knowledge about the herbs, and are keen observers of the world.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alchemie")
talkEntry:addTrigger("alchimi")
talkEntry:addTrigger("alchemist")
talkEntry:addResponse("Alchemisten sind Meister der Tr�nke, Kenner der Kr�uter und gute Beobachter der Welt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("heal")
talkEntry:addTrigger("medicine")
talkEntry:addTrigger("medical")
talkEntry:addResponse("Medicine... If you know the art of creating medicine very well, you can fight against all diseases.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("heil")
talkEntry:addTrigger("medizin")
talkEntry:addResponse("Medizin. Wer die Kunst der Medizinherstellung wirklich beherrscht mag alle Krankheiten zu bek�mpfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("potion")
talkEntry:addResponse("Potions are true wonders, they may cause great benefits or catastrophic disasters.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("trank")
talkEntry:addTrigger("tr�nk")
talkEntry:addResponse("Tr�nke sind wahre Wunderwerke. Sie gehen gro�e Wohltaten oder gro�es Unheil bewirken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("herb")
talkEntry:addResponse("Herbs are the foundation of alchemy, more powerful than any sword or spell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kraut")
talkEntry:addTrigger("kr�uter")
talkEntry:addResponse("Kr�uter sind die Grundlage der Alchemie. M�chtiger als jedes Schwert und jeder Zauber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dust")
talkEntry:addResponse("Oh, what would a potion be without gem dust? A stock! Right!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("staub")
talkEntry:addResponse("O, was w�re ein Trank doch ohne den Edelsteinstaub - ein Sud! Genau!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("adrazin")
talkEntry:addTrigger("echolon")
talkEntry:addTrigger("hyperborelium")
talkEntry:addTrigger("dracolin")
talkEntry:addTrigger("orcanol")
talkEntry:addTrigger("fenolin")
talkEntry:addTrigger("caprazin")
talkEntry:addTrigger("illidrium")
talkEntry:addResponse("Active ingredients! Magnificent. Fantastic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("adrazin")
talkEntry:addTrigger("echolon")
talkEntry:addTrigger("hyperborelium")
talkEntry:addTrigger("dracolin")
talkEntry:addTrigger("orcanol")
talkEntry:addTrigger("fenolin")
talkEntry:addTrigger("caprazin")
talkEntry:addTrigger("illidrium")
talkEntry:addResponse("Wirkstoffe! Herrlich. Fantastisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("active ingredient")
talkEntry:addTrigger("active agent")
talkEntry:addTrigger("active substance")
talkEntry:addResponse("Active ingredients! Magnificent. Fantastic.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wirkstoff")
talkEntry:addResponse("Wirkstoffe! Herrlich. Fantastisch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sickle")
talkEntry:addResponse("The way you treat it, is the way the sickle will treat you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sichel")
talkEntry:addResponse("So wie du sie behandelst, wird die Sichel dich behandeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("magic")
talkEntry:addTrigger("mage")
talkEntry:addResponse("Mages! Always up to no good.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("magie")
talkEntry:addResponse("Magier! Nichts als Schindluder im Kopf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Glad to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Freut mich, Eure Bekanntschaft zu machen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Grator")
talkEntry:addTrigger("Bottlebreak")
talkEntry:addResponse("That's me. Correct.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grator")
talkEntry:addTrigger("Bottlebreak")
talkEntry:addResponse("Das bin ich. Richtig erkannt.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me betrachtet eine Flasche.", "#me looks closely at a bottle.")
talkingNPC:addCycleText("Wo bleibt er nur mit meinem Trank?", "What takes him so long to bring me my potion?")
talkingNPC:addCycleText("#me hackt Kr�uter klein.", "#me chops some herbs.")
talkingNPC:addCycleText("#me sortiert einige Kr�uter.", "#me sorts some herbs.")
talkingNPC:addCycleText("#me beschriftet eine Flasche.", "#me labels a bottle.")
talkingNPC:addCycleText("#me f�llt einen Trank ab.", "#me pours a potion into a bottle.")
talkingNPC:addCycleText("#me l�sst einen Rubin fallen und hebt ihn seufzend wieder auf.", "#me drops a ruby, picking it up again with a sigh.")
talkingNPC:addCycleText("Adrazin... Adrazin... immer wieder Adrazin!", "Adrazin... Adrazin... and again, Adrazin!")
talkingNPC:addCycleText("Das n�chste mal sollte ich darauf achten, was ich in den Kessel tue.", "Next time, I should take care what I pour into the cauldron.")
talkingNPC:addCycleText("Jemand, der noch nie was zum explodieren gebracht hat, ist kein richtiger Alchemist.", "Someone who has never caused an explosion can hardly be called an alchemist.")
tradingNPC:addItem(trade.tradeNPCItem(2622,"sell","Buch der Alchemie","Book Of Alchemy",1000,1,999,nil))
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Grator Bottlebreak der Alchemist.", "This NPC is Grator Bottlebreak the alchemist.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 458)
mainNPC:setEquipment(11, 2834)
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
