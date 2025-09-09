local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the crusader Arenius Batavius. Keywords: Hello, quest, profession, crusader, order, orcs, cult, Cherga."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Kreuzritter Arenius Batavius. Schl�sselw�rter: Hallo, Quest, Beruf, Kreuzritter, Orden, Orks, Kult, Cherga."))
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
talkEntry:addResponse("Hail! A noble knight I was, defeated I am. Listen to my tale of the evil cult of blood mages.")
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
talkEntry:addResponse("Seid gegr��t! Einst war ich ein edler Ritter, nun liege ich im Staub. Horcht meiner Geschichte �ber einen b�sen Kult von Blutmagiern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hail! A noble knight I was, defeated I am. Listen to my tale of the evil cult of blood mages.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegr��t! Einst war ich ein edler Ritter, nun liege ich im Staub. Horcht meiner Geschichte �ber einen b�sen Kult von Blutmagiern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go with godspeed. And spread the old customs where you can.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehet mit dem Segen der G�tter. Und verbreitet die alten Sitten �berall, wo ihr k�nnt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("God speed and spread the old customs where you can.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gehet mit dem Segen der G�tter. Und verbreitet die alten Sitten �berall, wo ihr k�nnt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I underestimated my enemy and I have paid for it, barely made it out alive. Will you continue with my glorious endeavours?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich habe meinen Feind untersch�tzt und daf�r bezahlt - ich bin froh, mit dem Leben davongekommen zu sein. Werdet ihr meine ehrbaren Taten vollenden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Arenius Batavius. I came to this land not too long ago, but only misfortune I have received. Please stranger, will you help me in my crusade?")
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
talkEntry:addResponse("Mein Name ist Arenius Batavius. Ich weile erst seit kurzem in diesen Landen, aber nur Ungl�ck ist mir widerfahren. Bitte, werdet ihr mir auf meinem Kreuzzug beiseite stehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addTrigger("message")
talkEntry:addTrigger("news")
talkEntry:addTrigger("letter")
talkEntry:addTrigger("scroll")
talkEntry:addTrigger("parchment")
talkEntry:addConsequence(consequence_inform("[Quest status] Delayed Mail III: You deliver the message from Hector Valerion to Arenius Batavius."))
talkEntry:addConsequence(consequence_quest(108, "=", 7))
talkEntry:addResponse("#me reads the scroll: 'This is even worse than I thought. The Cult of Salavesh has committed more sins than I thought. Thank you for the information.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addTrigger("nachricht")
talkEntry:addTrigger("brief")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Schriftrolle")
talkEntry:addTrigger("Pergament")
talkEntry:addConsequence(consequence_inform("[Queststatus] Sp�te Post III: Du �berbringst Arenius Batavius die Nachricht von Hector Valerion."))
talkEntry:addConsequence(consequence_quest(108, "=", 7))
talkEntry:addResponse("#me lie�t die Schriftrolle: 'Es ist schlimmer, als ich dachte. Der Kult der Salavesh hat noch mehr ges�ndigt, als ich dachte. Danke f�r die Informationen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hector")
talkEntry:addTrigger("Valerion")
talkEntry:addConsequence(consequence_inform("[Quest status] Delayed Mail III: You deliver the message from Hector Valerion to Arenius Batavius."))
talkEntry:addConsequence(consequence_quest(108, "=", 7))
talkEntry:addResponse("#me reads the scroll: 'This is even worse than I thought. The Cult of Salavesh has committed more sins than I thought. Thank you for the information.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addTrigger("Hector")
talkEntry:addTrigger("Valerion")
talkEntry:addConsequence(consequence_inform("[Queststatus] Sp�te Post III: Du �berbringst Arenius Batavius die Nachricht von Hector Valerion."))
talkEntry:addConsequence(consequence_quest(108, "=", 7))
talkEntry:addResponse("#me lie�t die Schriftrolle: 'Es ist schlimmer, als ich dachte. Der Kult der Salavesh hat noch mehr ges�ndigt, als ich dachte. Danke f�r die Informationen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade I"))
talkEntry:addConsequence(consequence_quest(104, "=", 1))
talkEntry:addResponse("Stranger, before I can tell you about the evil Cult of Salavesh, please bring me half a dozen bolts of white cloth so I can tend to the wounds I received from my recent battle with the cultists.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug I"))
talkEntry:addConsequence(consequence_quest(104, "=", 1))
talkEntry:addResponse("Fremder, bevor ich euch �ber den b�sen Kult der Salavesh berichten kann, bringt mir bitte ein halbes Dutzend wei�e Stoffbahnen, damit ich meine Wunden vom letzten Kampf mit den Kultisten versorgen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade I"))
talkEntry:addConsequence(consequence_quest(104, "=", 1))
talkEntry:addResponse("Stranger, before I can tell you about the evil Cult of Salavesh, please bring me half a dozen bolts of white cloth so I can tend to the wounds I received from my recent battle with the cultists.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug I"))
talkEntry:addConsequence(consequence_quest(104, "=", 1))
talkEntry:addResponse("Fremder, bevor ich euch �ber den b�sen Kult der Salavesh berichten kann, bringt mir bitte ein halbes Dutzend wei�e Stoffbahnen, damit ich meine Wunden vom letzten Kampf mit den Kultisten versorgen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addCondition(condition_item(178, "all", ">", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded six silver coins."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(178, 6, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 2))
talkEntry:addResponse("Thank you for the bandages. Here, this should cover your expenses. Now I can tell you about the mission that I failed in.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addCondition(condition_item(178, "all", ">", 5, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(178, 6, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 2))
talkEntry:addResponse("Danke f�r die Bandagen. Hier, nehmt dies als Aufwandsentsch�digung. Nun kann ich euch �ber die Mission berichten, auf der ich so kl�glich versagte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addCondition(condition_item(178, "all", ">", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded six silver coins."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(178, 6, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 2))
talkEntry:addResponse("Thank you for the bandages. Here, this should cover your expenses. Now I can tell you about the mission that I failed in.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addCondition(condition_item(178, "all", ">", 5, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(178, 6, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 2))
talkEntry:addResponse("Danke f�r die Bandagen. Hier, nehmt dies als Aufwandsentsch�digung. Nun kann ich euch �ber die Mission berichten, auf der ich so kl�glich versagte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("My wounds continue to bleed, please bring me half a dozen panels of white cloth to tend them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Meine Wunden haben erneut zu bluten begonnen. Bringt mir mir bitte ein halbes Dutzend wei�e Stoffbahnen, um sie zu versorgen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("My wounds continue to bleed, please bring me half a dozen bolts of white cloth to tend to them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Meine Wunden haben erneut zu bluten begonnen. Bringt mir mir bitte ein halbes Dutzend wei�e Stoffbahnen, um sie zu versorgen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade II"))
talkEntry:addConsequence(consequence_quest(104, "=", 3))
talkEntry:addResponse("In order to stop the foul deeds of the Cult of Salavesh, intelligence is needed. Set out and find the stronghold! If you find it, slay half a dozen of the undead minions there and bring back exemplary remains for investigation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug II"))
talkEntry:addConsequence(consequence_quest(104, "=", 3))
talkEntry:addResponse("Um dem Kult der Salavesh das Handwerk zu legen ist zun�chst Aufkl�rung erforderlich. Gehet hin und findet den Unterschlupf! Streckt dort wenigstens ein halbes Dutzend der untoten Diener nieder und bringt mir ihre �berreste, damit ich sie untersuchen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade II"))
talkEntry:addConsequence(consequence_quest(104, "=", 3))
talkEntry:addResponse("In order to stop the foul deeds of the Cult of Salavesh, intelligence is needed. Set out and find the stronghold! If you find it, slay half a dozen of the undead minions there and bring back exemplary remains for investigation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug II"))
talkEntry:addConsequence(consequence_quest(104, "=", 3))
talkEntry:addResponse("Um dem Kult der Salavesh das Handwerk zu legen ist zun�chst Aufkl�rung erforderlich. Gehet hin und findet den Unterschlupf! Streckt dort wenigstens ein halbes Dutzend der untoten Diener nieder und bringt mir ihre �berreste, damit ich sie untersuchen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded six silver coins and a mace."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(63, 1, nil))
talkEntry:addConsequence(consequence_item(230, 1, 588, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 10))
talkEntry:addResponse("#me inspects the entrails: 'Just what I assumed - blood magic! Here, have this mace, it will help you on the next part of the mission.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke und einen Streitkolben."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(63, 1, nil))
talkEntry:addConsequence(consequence_item(230, 1, 588, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 10))
talkEntry:addResponse("#me untersucht die Eingeweide: 'Hab ich es mir doch gedacht! Blutmagie! Hier, nehmt diesen Streitkolben, er wird euch auf der n�chsten Mission gute Dienste erweisen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded six silver coins and a mace."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(63, 1, nil))
talkEntry:addConsequence(consequence_item(230, 1, 588, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 10))
talkEntry:addResponse("#me inspects the entrails: 'Just what I assumed - blood magic! Here, have this mace, it will help you on the next part of the mission'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke und einen Streitkolben."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_deleteitem(63, 1, nil))
talkEntry:addConsequence(consequence_item(230, 1, 588, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 10))
talkEntry:addResponse("#me untersucht die Eingeweide: 'Hab ich es mir doch gedacht! Blutmagie! Hier, nehmt diesen Streitkolben, er wird euch auf der n�chsten Mission gute Dienste erweisen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 2))
talkEntry:addCondition(condition_quest(104, "<", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Please, avenge my defeat. Head for the stronghold of the Cult of Salavesh and smite half a dozen of its minions. Come back with their remains.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 2))
talkEntry:addCondition(condition_quest(104, "<", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte r�cht meine Niederlage. Gehet zum Unterschlupf des Kultes der Salavesh und streckt ein halbes Dutzend ihrer Diener nieder. Kommt zu mit mir ihren �berresten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 2))
talkEntry:addCondition(condition_quest(104, "<", 9))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Please, avenge my defeat. Head for the stronghold of the Cult of Salavesh and smite half a dozen of its minions. Come back with their remains.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 2))
talkEntry:addCondition(condition_quest(104, "<", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Bitte r�cht meine Niederlage. Gehet zum Unterschlupf des Kultes der Salavesh und streckt ein halbes Dutzend ihrer Diener nieder. Kommt zu mit mir ihren �berresten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You are back, alive! But I cannot see any remains of the undead minions; I can gather much information from their entrails.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", "<", 1, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ihr seid zur�ck und am Leben! Aber ihr habt keine �berreste der untoten Diener dabei; die meisten Informationen kann ich aus ihren Eingeweiden ablesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", "<", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("You are back, alive! But I cannot see any remains of the undead minions; I can gather much information from their entrails.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 9))
talkEntry:addCondition(condition_item(63, "all", "<", 1, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ihr seid zur�ck und am Leben! Aber ihr habt keine �berreste der untoten Diener dabei; die meisten Informationen kann ich aus ihren Eingeweiden ablesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade III"))
talkEntry:addConsequence(consequence_quest(104, "=", 11))
talkEntry:addResponse("It is about time to land a strike against the Cult of Salavesh. Head for its stronghold again and smite a dozen of the animated skeletons to teach them a lesson not to mess with the Order of the Silver Dragon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 10))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug III"))
talkEntry:addConsequence(consequence_quest(104, "=", 11))
talkEntry:addResponse("Es wird Zeit, dem Kult der Salavesh klarzumachen, dass man sich nicht mit dem Orden der Silberdrachen anlegt. Zieht aus und zerschlagt ein Dutzend ihrer wiederbelebten Skelette.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 10))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade III"))
talkEntry:addConsequence(consequence_quest(104, "=", 11))
talkEntry:addResponse("It is about time to land a strike against the Cult of Salavesh. Head for its stronghold again and smite a dozen of the animated skeletons to teach them a lesson not to mess with the Order of the Silver Dragon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 10))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug III"))
talkEntry:addConsequence(consequence_quest(104, "=", 11))
talkEntry:addResponse("Es wird Zeit, dem Kult der Salavesh klarzumachen, dass man sich nicht mit dem Orden der Silberdrachen anlegt. Zieht aus und zerschlagt ein Dutzend ihrer wiederbelebten Skelette.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 23))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 12 silver coins and a silvered longsword."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(98, 1, 688, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 25))
talkEntry:addResponse("I hope you taught the cultists a lesson they won't forget any time soon. I am glad that I can trust you and give you my sword. Use it wisely during the next mission.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 23))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 12 Silberst�cke und ein versilbertes Langschwert."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(98, 1, 688, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 25))
talkEntry:addResponse("Ich hoffe ihr habt diesen Kultisten eine Lektion erteilt, die sie so schnell nicht vergessen werden. Ich freue mich, dass ich euch vertrauen kann. Nehmt mein Schwert und nutzt es weise w�hrend der n�chsten Mission.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 23))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 12 silver coins and a silvered longsword."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(98, 1, 688, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 25))
talkEntry:addResponse("I hope you taught the cultists a lesson they won't forget any time soon. I am glad that I can trust you and give you my sword. Use it wisely during the next mission.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 23))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 12 Silberst�cke und ein versilbertes Langschwert."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_item(98, 1, 688, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 25))
talkEntry:addResponse("Ich hoffe ihr habt diesen Kultisten eine Lektion erteilt, die sie so schnell nicht vergessen werden. Ich freue mich, dass ich euch vertrauen kann. Nehmt mein Schwert und nutzt es weise w�hrend der n�chsten Mission.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 10))
talkEntry:addCondition(condition_quest(104, "<", 23))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Lo! What are you waiting for? The Cult of Salavesh continues its foul deeds, head for its stronghold and smite a dozen of its animated skeletons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 10))
talkEntry:addCondition(condition_quest(104, "<", 23))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Auf was wartet ihr! Der Kult der Salavesh treibt noch immer sein Unwesen, zieht aus zum Unterschlupf und erledigt ein Dutzend ihrer wiederbelebten Skelette.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 10))
talkEntry:addCondition(condition_quest(104, "<", 23))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Lo! What are you waiting for? The Cult of Salavesh continues its foul deeds, head for its stronghold and smite a dozen of its animated skeletons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 10))
talkEntry:addCondition(condition_quest(104, "<", 23))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Auf was wartet ihr! Der Kult der Salavesh treibt noch immer sein Unwesen, zieht aus zum Unterschlupf und erledigt ein Dutzend ihrer wiederbelebten Skelette.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 25))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade IV"))
talkEntry:addConsequence(consequence_quest(104, "=", 26))
talkEntry:addResponse("While you were slaying the undead minions, I got word from a traveller that the Cult of Salavesh is preparing a foul ritual. Stop the blood mages who prepare the ritual, commonly, these cultists work as a pair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 25))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug IV"))
talkEntry:addConsequence(consequence_quest(104, "=", 26))
talkEntry:addResponse("W�hrend ihr den Untoten Dienern den Garaus machtet, verriet mir ein Reisender, dass der Kult der Salavesh wohl ein dunkles Ritual vorbereitet. Stoppt die Blutmagier, die dieses Ritual durchf�hren wollen - meist arbeiten sie zu zweit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 25))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade IV"))
talkEntry:addConsequence(consequence_quest(104, "=", 26))
talkEntry:addResponse("While you were slaying the undead minions, I got word from a traveller that the Cult of Salavesh is preparing a foul ritual. Stop the blood mages who prepare the ritual, commonly, these cultists work as a pair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 25))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug IV"))
talkEntry:addConsequence(consequence_quest(104, "=", 26))
talkEntry:addResponse("W�hrend ihr den Untoten Dienern den Garaus machtet, verriet mir ein Reisender, dass der Kult der Salavesh wohl ein dunkles Ritual vorbereitet. Stoppt die Blutmagier, die dieses Ritual durchf�hren wollen - meist arbeiten sie zu zweit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 28))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and an Albarian soldier's helmet."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_item(2287, 1, 788, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 29))
talkEntry:addResponse("#me nods briefly while listening to the report of the events in the cave and replies: 'One good day for all of us. Here, have my helmet, you'll need it more than me during your next mission.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 28))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und einen albarischen Soldatenhelm."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_item(2287, 1, 788, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 29))
talkEntry:addResponse("#me nickt knapp w�hrend er dem Bericht �ber die Ereignisse in der H�hle lauscht und antwortet: 'Ein guter Tag f�r uns alle. Hier, nehmt meinen Helm, er wird euch mehr n�tzen als mir w�hrend eurer n�chsten Mission.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 28))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and an Albarian soldier's helmet."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_item(2287, 1, 788, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 29))
talkEntry:addResponse("#me nods briefly while listening to the report of the events in the cave and replies: 'One good day for all of us. Here, have my helmet, you'll need it more than me during your next mission.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 28))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und einen albarischen Soldatenhelm."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_item(2287, 1, 788, nil))
talkEntry:addConsequence(consequence_quest(104, "=", 29))
talkEntry:addResponse("#me nickt knapp w�hrend er dem Bericht �ber die Ereignisse in der H�hle lauscht und antwortet: 'Ein guter Tag f�r uns alle. Hier, nehmt meinen Helm, er wird euch mehr n�tzen als mir w�hrend eurer n�chsten Mission.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 25))
talkEntry:addCondition(condition_quest(104, "<", 28))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Quick! With every minute passing, the blood mages can continue preparing their foul art. Slay both of them in the stronghold of the Cult of Salavesh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 25))
talkEntry:addCondition(condition_quest(104, "<", 28))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Rasch! Mit jeder Minute, die vergeht, k�nnen die Blutmagier ihre Untaten fortsetzen. Erschlagt sie beide im Unterschlupf des Kultes der Salavesh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 25))
talkEntry:addCondition(condition_quest(104, "<", 28))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Quick! With every minute passing, the blood mages can continue preparing their foul art. Slay both of them in the stronghold of the Cult of Salavesh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 25))
talkEntry:addCondition(condition_quest(104, "<", 28))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Rasch! Mit jeder Minute, die vergeht, k�nnen die Blutmagier ihre Untaten fortsetzen. Erschlagt sie beide im Unterschlupf des Kultes der Salavesh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade V"))
talkEntry:addConsequence(consequence_quest(104, "=", 30))
talkEntry:addResponse("I sent a boy to the library; he found a shocking scroll. According to this, the Cult of Salavesh once awakened a demonic skeleton to serve them. Return to the cave and if you find this beast, end its existence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 29))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug V"))
talkEntry:addConsequence(consequence_quest(104, "=", 30))
talkEntry:addResponse("Ich habe einen Jungen in die Bibliothek geschickt; er kam mit einer schockierenden Schriftrolle zur�ck. Darin steht geschrieben, dass der Kult der Salavesh einst ein d�monisches Skelett erwecket, um ihnen zu dienen. Kehrt in in die H�hle zur�ck und wenn ihr dieses Unwesen findet, beendet sein Dasein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 29))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade V"))
talkEntry:addConsequence(consequence_quest(104, "=", 30))
talkEntry:addResponse("I sent a boy to the library; he found a shocking scroll. According to this, the Cult of Salavesh once awakened a demonic skeleton to serve them. Return to the cave and if you find this beast, end its existence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 29))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug V"))
talkEntry:addConsequence(consequence_quest(104, "=", 30))
talkEntry:addResponse("Ich habe einen Jungen in die Bibliothek geschickt; er kam mit einer schockierenden Schriftrolle zur�ck. Darin steht geschrieben, dass der Kult der Salavesh einst ein d�monisches Skelett erwecket, um ihnen zu dienen. Kehrt in in die H�hle zur�ck und wenn ihr dieses Unwesen findet, beendet sein Dasein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 50 silver coins, a magical sapphire and a steel tower shield."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_item(96, 1, 888, nil))
talkEntry:addConsequence(consequence_item(3522, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(104, "=", 32))
talkEntry:addResponse("Great! How much I love it when evil falls! I give you my shield, bear it with honour, but I give it to you for a reason... to complete my mission.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 31))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 50 Silberst�cke, einen magischen Saphir und einen Stahlturmschild."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_item(96, 1, 888, nil))
talkEntry:addConsequence(consequence_item(3522, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(104, "=", 32))
talkEntry:addResponse("Gro�artig! Ich liebe es, wenn das B�se daniederliegt. Ich gebe euch meinen Schild, tragt ihn mit W�rde. Aber ich gebe ihn euch nicht grundlos, sondern um meine Mission zu vollenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 50 silver coins, a magical sapphire and a steel tower shield."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_item(96, 1, 888, nil))
talkEntry:addConsequence(consequence_item(3522, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(104, "=", 32))
talkEntry:addResponse("Great! How much I love it when evil falls! I give you my shield, bear it with honour, but I give it to you for a reason... to complete my mission.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 31))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 50 Silberst�cke, einen magischen Saphir und einen Stahlturmschild."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_item(96, 1, 888, nil))
talkEntry:addConsequence(consequence_item(3522, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(104, "=", 32))
talkEntry:addResponse("Gro�artig! Ich liebe es, wenn das B�se daniederliegt. Ich gebe euch meinen Schild, tragt ihn mit W�rde. Aber ich gebe ihn euch nicht grundlos, sondern um meine Mission zu vollenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 29))
talkEntry:addCondition(condition_quest(104, "<", 31))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Demon skeletons are powerful beings; I understand you hesitate to face it but if the Cult of Salavesh hosts such a monster, it has to be slain!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 29))
talkEntry:addCondition(condition_quest(104, "<", 31))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("D�monenskelette sind m�chtige Feinde; ich verstehe, wenn ihr z�gert, euch ihm zu stellen. Aber wenn der Kult der Salavesh wirklich so ein Wesen beherbergt, dann muss es abgeschlachtet werden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 29))
talkEntry:addCondition(condition_quest(104, "<", 31))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Demon skeletons are powerful beings; I understand you hesitate to face it but if the Cult of Salavesh hosts such a monster, it has to be slain!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 29))
talkEntry:addCondition(condition_quest(104, "<", 31))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("D�monenskelette sind m�chtige Feinde; ich verstehe, wenn ihr z�gert, euch ihm zu stellen. Aber wenn der Kult der Salavesh wirklich so ein Wesen beherbergt, dann muss es abgeschlachtet werden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 32))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade VI"))
talkEntry:addConsequence(consequence_quest(104, "=", 33))
talkEntry:addResponse("I studied the scroll the boy found thoroughly and I came to the conclusion that the demon skeleton must have been guarding something. Might it be the source of all evil? Set out and eliminate it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 32))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug VI"))
talkEntry:addConsequence(consequence_quest(104, "=", 33))
talkEntry:addResponse("Ich habe die Schriftrolle, die der Junge gefunden hat, gr�ndlichst studiert und bin zu dem Schluss gekommen, dass das D�monenskelett etwas bewacht haben muss. Etwas die Quelle allen �bels? Zieht aus und eleminiert sie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 32))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Errant Crusade VI"))
talkEntry:addConsequence(consequence_quest(104, "=", 33))
talkEntry:addResponse("I studied the scroll the boy found thoroughly and I came to the conclusion that the demon skeleton must have been guarding something. Might it be the source of all evil? Set out and eliminate it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 32))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der fehlgeleitete Kreuzzug VI"))
talkEntry:addConsequence(consequence_quest(104, "=", 33))
talkEntry:addResponse("Ich habe die Schriftrolle, die der Junge gefunden hat, gr�ndlichst studiert und bin zu dem Schluss gekommen, dass das D�monenskelett etwas bewacht haben muss. Etwas die Quelle allen �bels? Zieht aus und eleminiert sie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded two gold coins, a magical topaz and an albarian noble's armour."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_item(2367, 1, 988, nil))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(104, "=", 35))
talkEntry:addResponse("You did what? You ended the life of one of the most noble creatures of Illarion? How dare you? How... did I dare to send you on this mission? I have to resign as knight of the Order of the Silver Dragon - I surrender my armour and my belongings to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 34))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zwei Goldst�cke, einen magischen Topas und eine albarische Adeligenr�stung."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_item(2367, 1, 988, nil))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(104, "=", 35))
talkEntry:addResponse("Ihr habt was getan? Ihr habt das Leben eines der edelsten Kreaturen von ganz Illarion beendet? Was f�llt euch ein! Was... fiel mir ein, euch auf diese Mission zu schicken. Ich werde als Ritter des Ordens der Silberdrachen abdanken m�ssen. Ich �berantworte euch meine R�stung und meinen weltlichen Besitz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded two gold coins, a magical topaz and an albarian noble's armour."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_item(2367, 1, 988, nil))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(104, "=", 35))
talkEntry:addResponse("You did what? You ended the life of one of the most noble creatures of Illarion? How dare you? How... did I dare to send you on this mission? I have to resign as knight of the Order of the Silver Dragon - I surrender my armour and my belongings to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 34))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zwei Goldst�cke, einen magischen Topas und eine albarische Adeligenr�stung."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_item(2367, 1, 988, nil))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "2"}))
talkEntry:addConsequence(consequence_quest(104, "=", 35))
talkEntry:addResponse("Ihr habt was getan? Ihr habt das Leben eines der edelsten Kreaturen von ganz Illarion beendet? Was f�llt euch ein! Was... fiel mir ein, euch auf diese Mission zu schicken. Ich werde als Ritter des Ordens der Silberdrachen abdanken m�ssen. Ich �berantworte euch meine R�stung und meinen weltlichen Besitz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 32))
talkEntry:addCondition(condition_quest(104, "<", 34))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I am convinced that the demon skeleton guarded the source of all blood magic of the Cult of Salavesh. I command you to destroy it, whatever it is!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 32))
talkEntry:addCondition(condition_quest(104, "<", 34))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich bin davon �berzeugt, dass das D�monenskelett die Quelle der Blutmagie des Kultes der Salavesh bewacht hat. Ich befehle euch, sie zu zerst�ren, was auch immer es ist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 32))
talkEntry:addCondition(condition_quest(104, "<", 34))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I am convinced that the demon skeleton guarded the source of all blood magic of the Cult of Salavesh. I command you to destroy it, whatever it is!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, ">", 32))
talkEntry:addCondition(condition_quest(104, "<", 34))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ich bin davon �berzeugt, dass das D�monenskelett die Quelle der Blutmagie des Kultes der Salavesh bewacht hat. Ich befehle euch, sie zu zerst�ren, was auch immer es ist!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 35))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Now that you stopped the foul deeds of the Cult of Salavesh, there is nothing you can do for me, for I am battered and lost in this world. So, set out to new adventures!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 35))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nun, da ihr dem niedertr�chtigen Kult der Salavesh das Handwerk gelegt habt, gibt es nichts, was ihr f�r mich tun k�nntet, denn ich bin geschlagen und fehl am Platz auf dieser Welt. Ihr, auf zu neuen Abenteuern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 35))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Now that you stopped the foul deeds of the Cult of Salavesh, there is nothing you can do for me, for I am battered and lost in this world. So, set out to new adventures!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(104, "=", 35))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Nun, da ihr dem niedertr�chtigen Kult der Salavesh das Handwerk gelegt habt, gibt es nichts, was ihr f�r mich tun k�nntet, denn ich bin geschlagen und fehl am Platz auf dieser Welt. Ihr, auf zu neuen Abenteuern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a crusader of the Order of the Silver Dragon. I came to these lands to stop the foul deeds of an evil Cult - but I failed. Will you finish my mission?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein Kreuzritter des Ordens der Silberdrachen. Ich bin in dieses Land gekommen um einem b�sen Kult das Handwerk zu legen - aber ich habe versagt. Werdet ihr meine Mission vollenden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a crusader of the Order of the Silver Dragon. I came to these lands to stop the foul deeds of an evil Cult - but I failed. Will you finish my mission?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein Kreuzritter des Ordens der Silberdrachen. Ich bin in dieses Land gekommen um einem b�sen Kult das Handwerk zu legen - aber ich habe versagt. Werdet ihr meine Mission vollenden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("crusade")
talkEntry:addTrigger("knight")
talkEntry:addResponse("Us knights of the Order of the Silver Dragon fight what is not in accordance to the old customs wherever we find it, and in these lands, there is plenty of opportunity to do so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ritter")
talkEntry:addTrigger("kreuzzug")
talkEntry:addResponse("Wir Ritter vom Orden der Silberdrachen bek�mpfen das, was nicht mit den alten Sitten vereinbar ist, wo immer es m�glich ist. Und in diesem Land bietet sich hierf�r allerlei M�glichkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I do not like to sail so I have never been to Gobaith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich mag es nicht, fern der K�ste zu segeln, also war ich noch nie auf Gobaith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("And I am Arenius Batavius of the Order of the Silver Dragon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Und ich bin Arenius Batavius, Kreuzritter des Ordens der Silberdrachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Orden")
talkEntry:addTrigger("Silberdrache")
talkEntry:addResponse("Der Orden der Silberdrachen mag in diesem Land unbekannt sein; aber im Reiche Albar f�rchtet man unseren Namen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ork")
talkEntry:addResponse("Ich habe einige Orks in der N�he der H�hle, welche ich f�r den Unterschlupf eines b�sen Kultes von Blutmagiern halte, umherstreifen gesehen. Ich frage mich, welche Verbindung sie miteinander haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kult")
talkEntry:addResponse("Ich bek�mpfe den Kult der Salavesh, ein Haufen b�ser Blutmagier. Die Diener des Kultes haben mir aufgelauert, als ich mich auf dem Weg zu ihrem Unterschlupf befand. Ger�chten zufolge ist er in einer H�hle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Salavesh")
talkEntry:addResponse("The cult I am fighting is the Cult of Salavesh. Evil blood mages, they are. Their minions ambushed me on my way to their stronghold. Rumours say it is within a cave.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Salavesh")
talkEntry:addResponse("Ich bek�mpfe den Kult der Salavesh, ein Haufen b�ser Blutmagier. Die Diener des Kultes haben mir aufgelauert, als ich mich auf dem Weg zu ihrem Unterschlupf befand. Ger�chten zufolge ist er in einer H�hle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Akaltut")
talkEntry:addResponse("Akaltut, the abomination! Eradicate its existence!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Akaltut")
talkEntry:addResponse("Akaltut, die Abscheulichkeit! L�scht dessen Existenz aus!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drache")
talkEntry:addResponse("Drachen sind majest�tische Wesen und ich bin stolz darauf, einst einen gesehen zu haben. Ger�chten zufolge macht der Kult der Salavesh Jagd auf Drachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Blutmagie")
talkEntry:addTrigger("totenbeschw�r")
talkEntry:addResponse("Blutmagie ist das B�se in Reinform. Die alten Sitten verbieten es, solche Praktiken auch nur in Erw�gung zu ziehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("H�hle")
talkEntry:addTrigger("Unterschlupf")
talkEntry:addResponse("Ich bin mir sicher, dass der Unterschlupf des Kults der Salavesh sich in einer H�hle, nord�stlich von hier und s�dlich des Gasthofes zur Hanfschlinge, befindet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wund")
talkEntry:addResponse("Diener des Kultes der Salavesh f�gten mir diese Wunden zu. Doch ich werde nicht klein bei geben; helft mir in meiner Mission f�r das die alten Sitten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sitte")
talkEntry:addResponse("Die alten Sitten zu bewahren und zu sch�tzen, das ist die Mission des Ordens der Silberdrachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Order")
talkEntry:addTrigger("silver dragon")
talkEntry:addResponse("The Order of the Silver Dragon might be unknown in these lands; but in the realm of Albar, our name is feared.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Orc")
talkEntry:addResponse("I saw some orcs prowling the vicinity of the cave which I believe must be the stronghold of an evil cult of blood mages. I wonder what business they have with orcs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cult")
talkEntry:addResponse("The cult I am fighting is the Cult of Salavesh. Evil blood mages, they are. Their minions ambushed me on my way to their stronghold. Rumours say it is within a cave.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dragon")
talkEntry:addResponse("Dragons are majestic beings and I am proud of once seeing one. Rumours say that the Cult of Salavesh hunts dragons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("blood magic")
talkEntry:addTrigger("blood mage")
talkEntry:addTrigger("necro")
talkEntry:addResponse("Blood magic is pure sin. The old customs forbid even considering such foul deeds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cave")
talkEntry:addTrigger("stronghold")
talkEntry:addResponse("I am convinced that the stronghold of the Cult of Salavesh is a cave to the north east, south of the Hemp Necktie Inn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wound")
talkEntry:addResponse("Minions of the Cult of Salavesh wounded me like this but I won't surrender; help me in my deed for the old customs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("custom")
talkEntry:addResponse("To protect and preserve the old customs, that is the mission of the Order of the Silver Dragon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Who is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wer soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Who is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wer soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Where is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Wo soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I had to pay a huge amount of money for the grant to pass the land of this Don Guilianni; is that normal in this land?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich musste einen sehr hohen Wegzoll zahlen, um das Land dieses Don Guiliannis durchqueren zu d�rfen. Ist dies �blich hier?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Money seems to be one of the favourite words of the people of Galmair. At least it was the word they used most when spoken to.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Geld scheint das Lieblingswort der Leute von Galmair zu sein. Zumindestens war es das Wort, was sie am h�ufigsten zu mir gesagt haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("queen")
talkEntry:addResponse("I do not question her authority. She is of noble birth, hence a suitable monarch. But I question the custom that brought her to power.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nigin")
talkEntry:addResponse("Ich zweifle nicht ihren Herrschaftsanspruch an. Sie ist von adeligem Blut, daher ist sie berufen zu herrschen. Aber ich zweifle den Brauch an, der ihr die Macht verlieh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I do not question her authority. She is of noble birth, hence a suitable monarch. But I question the custom that brought her to power.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich zweifle nicht ihren Herrschaftsanspruch an. Sie ist von adeligem Blut, daher ist sie berufen zu herrschen. Aber ich zweifle den Brauch an, der ihr die Macht verlieh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is a hospitable village. I am very glad that I found a place where the old customs are still honoured.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist ein gastfreundliches Dorf. Ich bin sehr froh einen Ort gefunden zu haben, wo die alten Sitten noch gewahrt sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Well, what exactly don't you know about Albar? It is my home, so refrain from any words that might dishonour it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Nun, was genau wollt ihr �ber Albar wissen? Es ist meine Heimat, daher verkneift euch unehrenhafte Worte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Travellers report evil things about Gynk. A pool of sin, it is. Time for some cleansing, I say!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Reisende berichteten mir schlimme Dinge �ber Gynk. Ein S�ndenpfuhl soll es sein. Zeit, dort aufzur�umen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Oh, please, can't we talk about the weather instead?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Oh nein, lasst uns doch lieber �ber das Wetter reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I am merely a loyal tool of the gods. My blade strikes just and fair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich bin eigentlich nur ein Werkzeug der G�tter. Ich f�hre meine Klinge f�r die gerechte Sache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Moshran is commonly underestimated, the evil thug they say. That is far from the truth, for Moshran is much more than 'evil' or 'good'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Moshran wird gemeinhin untersch�tzt; der b�se Bube soll er sein. Die entspricht nun wirklich nicht der Wahrheit, Moshran ist weit mehr als einfach nur 'gut' und 'b�se'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Many knights pray to Malachin prior to a battle but do they really have faith in his guidance? Or are they just cowards?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Vor einer Schlacht beten viele Ritter zu Malachin; aber wie fest ist ihr Glaube in seine F�hrung wirklich? Oder sind sie am Ende nur Feiglinge?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Being loyal is more important than being right; that is Zhambra's doctrine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Loyal zu sein ist wichtiger, als Recht zu haben; das ist Zhambras Doktrin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga! The goddess of death! What is dead is dead and rots, all beyond is just evil!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga! Die Toteng�ttin! Was tot ist, ist tot und verrottet; alles andere ist einfach nur b�se!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Did you know that Br�gon is the father of all dragons? No? I thought not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Wu�tet ihr, dass Br�gon der Vater aller Drachen ist? Nein? Dachte ich mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("The code of my order forbids me from pursuing mudane wealth, thus I do nothings with you.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Der Codex meines Ordens verbietet es, weltlichem Reichtum nachzustreben. Daher werde ich nicht mit euch handeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tale")
talkEntry:addTrigger("story")
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I have an interesting tale to tell. It is about an evil cult of blood mages. Seen my wounds? They tell the story.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("geschichte")
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich habe eine interessante Geschichte zu erz�hlen, sie handelt von einem b�sen Kult von Blutmagiern. Seht ihr meine Wunden? Sie erz�hlen die Geschichte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Arenius")
talkEntry:addTrigger("Batavius")
talkEntry:addResponse("I am a crusader of the Order of the Silver Dragon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Arenius")
talkEntry:addTrigger("Batavius")
talkEntry:addResponse("Ich bin ein Kreuzritter des Ordens der Silberdrachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me st�hnt vor Schmerz.", "#me moans in pain.")
talkingNPC:addCycleText("Verdammte Blutmagie! Ich werde dem ein Ende setzen.", "Blasted blood magic! I will end this, once and for all.")
talkingNPC:addCycleText("#mes prunkvolle R�stung zeigt das Wappen eines sich aufb�umenden Silberdrachen.", "#me's shining armour shows the coat of arms of a rearing silver dragon.")
talkingNPC:addCycleText("Nur durch einen gemeinen Hinterhalt konnte ich besiegt werden - denn auf den Schlachtfeldern der Ehre bin ich ungeschlagen.", "Only a sneaky ambush could defeat me - for I am unmatched on the battlefield of honour.")
talkingNPC:addCycleText("#me hebt vorsichtig einen Verband an seinem Arm mit schmerzverzerrtem Gesicht an.", "#me carefully lifts a bandage on his arm, grimacing with pain.")
talkingNPC:addCycleText("Nieder mit den Salavesh!", "Down with Salavesh!")
talkingNPC:addCycleText("Nieder mit den Akaltut!", "Down with Akaltut!")
talkingNPC:addCycleText("#me streicht sich verzweifelt durch das blutverkrustete Haar.", "#me combs his blood stained hair desperately.")
talkingNPC:addCycleText("F�r die Ehre des Ordens der Silberdragon und die alten Sitten streite ich.", "I fight for the honour of the Order of the Silver Dragon and the old customs.")
talkingNPC:addCycleText("Es ist nicht die Zeit der Worte, sondern die der Taten.", "It is not the time for speech, but for deeds.")
talkingNPC:addCycleText("#me streicht �ber sein verletztes Bein.", "#me strokes his bruised leg.")
talkingNPC:addCycleText("Fremder, h�ttet ihr einen Augenblick Zeit...", "Stranger, please, a moment of your time...")
talkingNPC:addCycleText("#me h�lt sein reich verziertes Schwert fest in der Hand und schwingt es durch die Luft.", "#me holds his ornate sword firmly with one hand, swinging it idly into the air.")
talkingNPC:addCycleText("#me schreibt einige Worte ein in Leder gebundenes Buch und versteckt es hinterher sorgf�ltig unter seiner Robe.", "#me writes some words into a leather covered book, carefully tucking it under his robe afterwards.")
talkingNPC:addCycleText("Wir leben in merkw�rdigen Zeiten...", "Strange times we live in...")
talkingNPC:addCycleText("Verdammte Kultisten! Wenn ich nur...", "Blasted cultists... if only I weren't...")
talkingNPC:addCycleText("Bei Br�gons heiligem Blut!", "By the holy blood of Br�gon!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Kreuzritter Arenius Batavius.", "This NPC is the crusader Arenius Batavius.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 101)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 231)
mainNPC:setEquipment(6, 2284)
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
