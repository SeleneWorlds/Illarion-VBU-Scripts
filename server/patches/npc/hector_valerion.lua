local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local condition_money = require("npc.base.condition.money")
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
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Hector Valerion the royal ambassador. Keywords: Ambassador, quest, dispatch, seal, orders."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Hector Valerion der k�nigliche Botschafter. Schl�sselw�rter: Botschafter, Quest, Depesche, Siegel, Befehle."))
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
talkEntry:addResponse("Be greeted. You interrupt me, so it has to be important.")
talkEntry:addResponse("#me closes a book and grumbles, 'What is it again?'")
talkEntry:addResponse("Speak or be quiet, the latter is preferred.")
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
talkEntry:addResponse("Seid mir gegr��t. Ihr unterbrecht mich beim Lesen, also muss es wichtig sein.")
talkEntry:addResponse("#me legt ein Buch beiseite und grummelt: 'Was ist denn jetzt schon wieder?'")
talkEntry:addResponse("Sprecht oder schweigt, letzteres w�re mir lieber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted. You interrupt me, so it has to be important.")
talkEntry:addResponse("#me closes a book and grumbles, 'What is it again?'")
talkEntry:addResponse("Speak or be quiet, the latter is preferred.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid mir gegr��t. Ihr unterbrecht mich beim Lesen, also muss es wichtig sein.")
talkEntry:addResponse("#me legt ein Buch beiseite und grummelt: 'Was ist denn jetzt schon wieder?'")
talkEntry:addResponse("Sprecht oder schweigt, letzteres w�re mir lieber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Can I continue reading now? Undisturbed? Thank you!")
talkEntry:addResponse("Go and don't come back too early.")
talkEntry:addResponse("There is the door.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Kann ich jetzt weiterlesen? Ungest�rt? Danke!")
talkEntry:addResponse("Auf wiedersehen und beehrt mich wieder. Aber nicht allzu bald.")
talkEntry:addResponse("Da ist die T�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Can I continue reading now? Undisturbed? Thank you!")
talkEntry:addResponse("Go and don't come back too early.")
talkEntry:addResponse("There is the door.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Kann ich jetzt weiterlesen? Ungest�rt? Danke!")
talkEntry:addResponse("Auf wiedersehen und beehrt mich wieder. Aber nicht allzu bald.")
talkEntry:addResponse("Da ist die T�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Just work! But what do I say, you look like somebody with loss of esteem. How about you fulfil a royal mission?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Immer diese Arbeit! Aber was sage ich, ihr seht aus, als wenn ihr voller Tatendrang w�ret. Werdet ihr auf eine k�nigliche Mission gehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Hector, Hector Valerion. I am the royal ambassador and you are...?")
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
talkEntry:addResponse("Mein Name ist Hector, Hector Valerion. Ich bin der k�nigliche Botschafter und ihr seid...?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 1))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] Go to Fludnar Yednos in Runewick and ask if he has the book about your God. You find him in the library. The key word is 'God'."))
talkEntry:addResponse("It would be a privilege to sell you that book. But you can see yourself, the space for books is limited and especially that book I do not have available. Please ask Fludnar in Runewick. The library over there is much larger.")
talkEntry:addConsequence(consequence_quest(685, "=", 4))
talkEntry:addConsequence(consequence_quest(686, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 1))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Gehe zu Fludnar Yednos in Runewick und frage ihn, ob er dir das Buch �ber deinen Gott verkaufen kann. Du findest ihn in der B�cherei. Das Stichwort ist 'Gott'."))
talkEntry:addResponse("Es w�re mir eine Ehre, dir dieses Buch zu geben. Leider habe ich nicht so viel Platz und gerade dieses Buch ist gerade vergriffen. Frag mal in Runewick bei Fludnar nach, deren B�cherei ist deutlich gr��er.")
talkEntry:addConsequence(consequence_quest(685, "=", 4))
talkEntry:addConsequence(consequence_quest(686, "=", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 3))
talkEntry:addCondition(condition_quest(686, "<", 3))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] Go to Fludnar Yednos in Runewick and ask if he has the book about your God. You find him in the library. The key word is 'God'."))
talkEntry:addResponse("It would be a privilege to sell you that book. But you can see yourself, the space for books is limited and especially that book I do not have available. Please ask Fludnar in Runewick. The library over there is much larger.")
talkEntry:addConsequence(consequence_quest(685, "=", 4))
talkEntry:addConsequence(consequence_quest(686, "+", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 3))
talkEntry:addCondition(condition_quest(686, "<", 3))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Gehe zu Fludnar Yednos in Runewick und frage ihn, ob er dir das Buch �ber deinen Gott verkaufen kann. Du findest ihn in der B�cherei. Das Stichwort ist 'Gott'."))
talkEntry:addResponse("Es w�re mir eine Ehre, dir dieses Buch zu geben. Leider habe ich nicht so viel Platz und gerade dieses Buch ist gerade vergriffen. Frag mal in Runewick bei Fludnar nach, deren B�cherei ist deutlich gr��er.")
talkEntry:addConsequence(consequence_quest(685, "=", 4))
talkEntry:addConsequence(consequence_quest(686, "+", 1))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 3))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] Tell Hector Valerion you buy the book. You need 5 gold coins. The key word is 'God'."))
talkEntry:addResponse("What a day, just as you went out of the palace somebody got me your book. It was sorted into the wrong bookshelf. I can give it to you now. Such a book is a valuable item. Therefore I have to ask for 5 gold coins in return.")
talkEntry:addConsequence(consequence_quest(685, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 3))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Sage Hector Valerion, dass du das Buch kaufst. Das Stichwort ist 'Gott'."))
talkEntry:addResponse("Ja so etwas, kaum dass du aus der T�r warst, hat mir jemand ein Exemplar gebracht, das falsch einsortiert war. Jetzt kann ich es dir geben. Ein solches Buch ist aber wertvoll. Deshalb muss ich von dir 5 Gold verlangen.")
talkEntry:addConsequence(consequence_quest(685, "=", 6))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_money("<", 50000))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You need 5 gold coins to buy the book."))
talkEntry:addResponse("No problem, books can wait until you got the money. You can trust me, I'll reserve the book for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_money("<", 50000))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du ben�tigst 5 Gold um das Buch zu kaufen"))
talkEntry:addResponse("Es ist doch kein Problem, wenn du die M�nzen noch nicht beisammen hast. Du kannst darauf vertrauen, dass ich das Buch solange aufhebe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 6))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Narg�n."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_nargun"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 6))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Narg�n."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_nargun"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 7))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Elara."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_elara"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 7))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten G�ttin Elara."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_elara"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 8))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Adron."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_adron"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 8))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Adron."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_adron"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 9))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Oldra."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_oldra"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 9))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten G�ttin Oldra."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_oldra"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 10))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Cherga."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_cherga"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 10))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten G�ttin Cherga."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_cherga"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 11))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Malachin."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_malachin"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 11))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Malachin."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_malachin"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 12))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Irmorom."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_irmorom"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 12))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Irmorom."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_irmorom"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 13))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Sirani."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_sirani"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 13))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten G�ttin Sirani."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_sirani"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 14))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Zhambra."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_zhambra"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 14))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Zhambra."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_zhambra"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 15))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Ronagan."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_ronagan"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 15))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Ronagan."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_ronagan"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 16))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("god")
talkEntry:addTrigger("book")
talkEntry:addConsequence(consequence_inform("[A book about your God] You get a book about your worshipped Moshran."))
talkEntry:addResponse("Please see this is your book. Stay honourable to your God and Queen Rosalie Edwards always.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_moshran"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(685, "=", 6))
talkEntry:addCondition(condition_quest(401, "=", 16))
talkEntry:addCondition(condition_money(">", 49999))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Buch")
talkEntry:addConsequence(consequence_inform("[Ein Buch �ber deinen Gott] Du bekommst ein Buch �ber deinen angebeteten Gott Moshran."))
talkEntry:addResponse("Hiermit �berreiche ich dir dein Buch. M�gest du immer in Ehre fest zu deinem Gott und zu K�nigin Edwards stehen.")
talkEntry:addConsequence(consequence_quest(685, "=", 8))
talkEntry:addConsequence(consequence_money("-", 50000))
talkEntry:addConsequence(consequence_item(128, 1, 999, {["book"] = "god_moshran"}))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail I"))
talkEntry:addConsequence(consequence_quest(108, "=", 1))
talkEntry:addResponse("I see you are a loyal minion of Her Majesty the Queen and want to help one of her officials. I have to write down the Queen's latest order. Could you bring me five quills?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post I"))
talkEntry:addConsequence(consequence_quest(108, "=", 1))
talkEntry:addResponse("Wunderbar, ihr wollt als treuer Diener einem Beamten der K�nigin helfen. Holt mir bitte f�nf Federkiele, ich muss noch die neuesten Befehle der K�nigin in Worte fassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("message")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail I"))
talkEntry:addConsequence(consequence_quest(108, "=", 1))
talkEntry:addResponse("I see you are a loyal minion of Her Majesty the Queen and want to help one of her officials. I have to write down the Queen's latest order. Could you bring me five quills?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post I"))
talkEntry:addConsequence(consequence_quest(108, "=", 1))
talkEntry:addResponse("Wunderbar, ihr wollt als treuer Diener einem Beamten der K�nigin helfen. Holt mir bitte f�nf Federkiele, ich muss noch die neuesten Befehle der K�nigin in Worte fassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("How am I supposed to write down the latest orders of Her Majesty without quills? Bring me at least five if you are loyal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", "<", 5, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wie soll ich ohne Federkiele die neuesten Befehle der K�nigin niederschreiben? Bring mit wenigstens f�nf, wenn ihr loyal seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", "<", 5, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("message")
talkEntry:addResponse("How am I supposed to write down the latest orders of Her Majesty without quills? Bring me at least five if you are loyal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", "<", 5, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Wie soll ich ohne Federkiele die neuesten Befehle der K�nigin niederschreiben? Bring mit wenigstens f�nf, wenn ihr loyal seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(463, 5, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Very good! With those quills, I can write down today's orders. If you wait a brief moment, you could go on a mission to issue those orders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(463, 5, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 2))
talkEntry:addResponse("Very good! With those quills, I can write down today's orders. If you wait a brief moment, you could go on a mission to issue those orders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(463, 5, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Sehr gut! Mit diesen Federkielen kann ich die Tagesbefehle niederschreiben. Wenn ihr kurz wartet, k�nnt ihr auf die Mission gehen, die Befehle auszuteilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 1))
talkEntry:addCondition(condition_item(463, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(463, 5, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 2))
talkEntry:addResponse("Sehr gut! Mit diesen Federkielen kann ich die Tagesbefehle niederschreiben. Wenn ihr kurz wartet, k�nnt ihr auf die Mission gehen, die Befehle auszuteilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail II: You received a message for Robertus."))
talkEntry:addConsequence(consequence_quest(108, "=", 3))
talkEntry:addResponse("The Queen has important orders for her royal builder, Robertus is his name. It is about his latest project. Rush to Robertus at once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post II: Du hast eine Nachricht f�r Robertus erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 3))
talkEntry:addResponse("Die K�nigin hat wichtige Befehle f�r Robertus, den k�niglichen Baumeister. Es geht um sein derzeitiges Bauprojekt. Lauft sofort zu Robertus!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 2))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail II: You received a message for Robertus."))
talkEntry:addConsequence(consequence_quest(108, "=", 3))
talkEntry:addResponse("The Queen has important orders for her royal builder, Robertus is his name. It is about his latest project. Rush to Robertus at once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post II: Du hast eine Nachricht f�r Robertus erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 3))
talkEntry:addResponse("Die K�nigin hat wichtige Befehle f�r Robertus, den k�niglichen Baumeister. Es geht um sein derzeitiges Bauprojekt. Lauft sofort zu Robertus!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Maybe you did not understand? Important orders means, 'Deliver them now!'. Run to Robertus at once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Vielleicht habt ihr nicht recht verstanden: Wichtige Befehle bedeutet: '�berbring sie sofort!'. Lauft also sofort zu Robertus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("Maybe you did not understand? Important orders means, 'Deliver them now!'. Run to Robertus at once!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Vielleicht habt ihr nicht recht verstanden: Wichtige Befehle bedeutet: '�berbring sie sofort!'. Lauft also sofort zu Robertus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and a large metal shield."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(20, 1, 599, {["descriptionEn"] = "The shield shows the coat of arms of the house of Edwards, a one-horned lion.", ["descriptionDe"] = "Das Schild tr�gt das Wappern der Edwards, den einh�rnigen L�wen."}))
talkEntry:addConsequence(consequence_quest(108, "=", 5))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Very good, now Robertus has the sketch the Queen drew. As messenger of the Queen, you deserve this shield with her crest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and a large metal shield."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(20, 1, 599, {["descriptionEn"] = "The shield shows the coat of arms of the house of Edwards, a one-horned lion.", ["descriptionDe"] = "Das Schild tr�gt das Wappern der Edwards, den einh�rnigen L�wen."}))
talkEntry:addConsequence(consequence_quest(108, "=", 5))
talkEntry:addResponse("Very good, now Robertus has the sketch the Queen drew. As messenger of the Queen, you deserve this shield with her crest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 4))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und einen gro�en Metallschild."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(20, 1, 599, {["descriptionEn"] = "The shield shows the coat of arms of the house of Edwards, a one-horned lion.", ["descriptionDe"] = "Das Schild tr�gt das Wappern der Edwards, den einh�rnigen L�wen."}))
talkEntry:addConsequence(consequence_quest(108, "=", 5))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Sehr gut, nun hat Robertus die Skizze der K�nigin. Als Bote der K�nigin verdient ihr diesen Schild mit ihrem Wappen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 4))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und einen gro�en Metallschild."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_item(20, 1, 599, {["descriptionEn"] = "The shield shows the coat of arms of the house of Edwards, a one-horned lion.", ["descriptionDe"] = "Das Schild tr�gt das Wappern der Edwards, den einh�rnigen L�wen."}))
talkEntry:addConsequence(consequence_quest(108, "=", 5))
talkEntry:addResponse("Sehr gut, nun hat Robertus die Skizze der K�nigin. Als Bote der K�nigin verdient ihr diesen Schild mit ihrem Wappen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail III: You received a message for Arenius Batavius."))
talkEntry:addConsequence(consequence_quest(108, "=", 6))
talkEntry:addResponse("Ah, I almost forgot, Arenius Batavius, a self proclaimed hero, asked for information from the library. Please, take him this scroll.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post III: Du hast eine Nachricht f�r Arenius Batavius erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 6))
talkEntry:addResponse("Ah, ich hab da noch was. Arenius Batavius, ein selbsternannter Held, fragte nach Informationen aus der Bibliothek. �berbringt ihm bitte diese Schriftrolle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 5))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail III: You received a message for Arenius Batavius."))
talkEntry:addConsequence(consequence_quest(108, "=", 6))
talkEntry:addResponse("Ah, I almost forgot, Arenius Batavius, a self proclaimed hero, asked for information from the library. Please, take him this scroll.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post III: Du hast eine Nachricht f�r Arenius Batavius erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 6))
talkEntry:addResponse("Ah, ich hab da noch was. Arenius Batavius, ein selbsternannter Held, fragte nach Informationen aus der Bibliothek. �berbringt ihm bitte diese Schriftrolle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Don't hurry so much that it hurts your heart, but I think Arenius Batavius eagerly awaits the information you have.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hetzt euch nicht zu sehr, das ist nicht gut f�r das Herz. Aber ich glaube, Arenius Batavius wartet sehns�chtig auf die Informationen, die ihr habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("Don't hurry so much that it hurts your heart, but I think Arenius Batavius eagerly awaits the information you have.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Hetzt euch nicht zu sehr, das ist nicht gut f�r das Herz. Aber ich glaube, Arenius Batavius wartet sehns�chtig auf die Informationen, die ihr habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a merinium plated dagger."))
talkEntry:addConsequence(consequence_item(444, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Thank you for delivering the information to Arenius Batavius. Whoever those Salavesh are, after rereading the books about them, I guess you might need a good dagger for self defence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a merinium plated dagger."))
talkEntry:addConsequence(consequence_item(444, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 8))
talkEntry:addResponse("Thank you for delivering the information to Arenius Batavius. Whoever those Salavesh are, after rereading the books about them, I guess you might need a good dagger for self defence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 7))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen meriniumbeschichteten Dolch."))
talkEntry:addConsequence(consequence_item(444, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 8))
talkEntry:addConsequence(consequence_rankpoints("+", 1))
talkEntry:addResponse("Ich danke f�r das �berbringen der Informationen an Arenius Batavius. Wer auch immer diese Salavesh sind; nach einem erneutem Studium denke ich, dass ihr einen guten Dolch zur Selbstverteidigung braucht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 7))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen meriniumbeschichteten Dolch."))
talkEntry:addConsequence(consequence_item(444, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 8))
talkEntry:addResponse("Ich danke f�r das �berbringen der Informationen an Arenius Batavius. Wer auch immer diese Salavesh sind; nach einem erneutem Studium denke ich, dass ihr einen guten Dolch zur Selbstverteidigung braucht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail IV: You received a message for Daerbur Wimbert."))
talkEntry:addConsequence(consequence_quest(108, "=", 9))
talkEntry:addResponse("So, the Queen once again needs your help as messenger. Venture to Daerbur Wimbert, the Queen has an order for sparkling gems from the Dark Hole Mine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post IV: Du hast eine Nachricht f�r Daerbur Wimbert erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 9))
talkEntry:addResponse("Nun, die K�nigin braucht ein weiteres mal eure Botendienste. Geht zu Daerbur Wimbert, die K�nigin hat eine Order �ber funkelnde Edelsteine aus der Dunkellochmine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 8))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail IV: You received a message for Daerbur Wimbert."))
talkEntry:addConsequence(consequence_quest(108, "=", 9))
talkEntry:addResponse("So, the Queen once again needs your help as messenger. Venture to Daerbur Wimbert, the Queen has an order for sparkling gems from the Dark Hole Mine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post IV: Du hast eine Nachricht f�r Daerbur Wimbert erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 9))
talkEntry:addResponse("Nun, die K�nigin braucht ein weiteres mal eure Botendienste. Geht zu Daerbur Wimbert, die K�nigin hat eine Order �ber funkelnde Edelsteine aus der Dunkellochmine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The Queen does not appreciate having to wait. She'll get word soon that you are responsible if her gems don't come from the Dark Hole Mine in time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Die K�nigin wartet nicht gerne. Bald wird sie erfahren, dass ihr daf�r verantwortlich seid, dass ihre Edelsteine aus der Dunkellochmine nicht ankommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 9))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("The Queen does not appreciate having to wait. She'll get word soon that you are responsible if her gems don't come from Dark Hole Mine in time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Die K�nigin wartet nicht gerne. Bald wird sie erfahren, dass ihr daf�r verantwortlich seid, dass ihre Edelsteine aus der Dunkellochmine nicht ankommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 40 silver coins."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(108, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Great! Now the treasury of Cadomyr will have more riches. Here is your reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 40 silver coins."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(108, "=", 11))
talkEntry:addResponse("Great! Now the treasury of Cadomyr will have more riches. Here is your reward.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 10))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 40 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(108, "=", 11))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Gro�artig! Nun wird noch mehr Kitsch die Schatzkammer Cadomyrs �berfluten. Hier, eure Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 10))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 40 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 4000))
talkEntry:addConsequence(consequence_quest(108, "=", 11))
talkEntry:addResponse("Gro�artig! Nun wird noch mehr Kitsch die Schatzkammer Cadomyrs �berfluten. Hier, eure Belohnung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail V: You received a message for Archmage Elvaine Morgan."))
talkEntry:addConsequence(consequence_quest(108, "=", 12))
talkEntry:addResponse("Are you ready for a secret diplomatic mission? Deliver this royal dispatch to Archmage Morgan of Runewick. Do not even think about breaking its seal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 11))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post V: Du hast eine Nachricht f�r Erzmagier Elvaine Morgan erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 12))
talkEntry:addResponse("Seid ihr bereit f�r eine geheime diplomatische Mission? Bringt diese k�nigliche Depesche zu Erzmagier Morgan von Runewick. Und denkt nichtmal dran, das Siegel zu brechen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 11))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addConsequence(consequence_inform("[New quest] Delayed Mail V: You received a message for Archmage Elvaine Morgan."))
talkEntry:addConsequence(consequence_quest(108, "=", 12))
talkEntry:addResponse("Are you ready for a secret diplomatic mission? Deliver this royal dispatch to Archmage Morgan of Runewick. Do not even think about breaking its seal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 11))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Sp�te Post V: Du hast eine Nachricht f�r Erzmagier Elvaine Morgan erhalten."))
talkEntry:addConsequence(consequence_quest(108, "=", 12))
talkEntry:addResponse("Seid ihr bereit f�r eine geheime diplomatische Mission? Bringt diese k�nigliche Depesche zu Erzmagier Morgan von Runewick. Und denkt nichtmal dran, das Siegel zu brechen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Aren't you on a secret mission to deliver a diplomatic dispatch to the Archmage of Runewick? Or did I send someone else?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 12))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Seid ihr nicht auf einer geheimen Mission und habt eine diplomatische Depesche zum Erzmagier nach Runewick zu bringen? Oder schickte ich jemand anderes...?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 12))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("Aren't you on a secret mission to deliver a diplomatic dispatch to the Archmage of Runewick? Or did I send someone else?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 12))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Seid ihr nicht auf einer geheimen Mission und habt eine diplomatische Depesche zum Erzmagier nach Runewick zu bringen? Oder schickte ich jemand anderes...?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a magical topaz and a topaz ring."))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_item(282, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("You helped Her Majesty a lot. Please maintain silence about your journey. Your silence is worth your life and for me, it is worth this ring.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 13))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a magical topaz and a topaz ring."))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_item(282, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 14))
talkEntry:addResponse("You helped Her Majesty a lot. Please maintain silence about your journey. Your silence is worth your life and for me, it is worth this ring.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 13))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen magischen Topas und einen Topasring."))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_item(282, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 14))
talkEntry:addConsequence(consequence_rankpoints("+", 3))
talkEntry:addResponse("Ihr habt ihrer Majest�t sehr geholfen. Bitte bewahrt Stillschweigen �ber eure Reise. Euer Schweigen ist euch euer Leben und mir diesen Ring wert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 13))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen magischen Topas und einen Topasring."))
talkEntry:addConsequence(consequence_item(3525, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_item(282, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(108, "=", 14))
talkEntry:addResponse("Ihr habt ihrer Majest�t sehr geholfen. Bitte bewahrt Stillschweigen �ber eure Reise. Euer Schweigen ist euch euer Leben und mir diesen Ring wert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 14))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("At this moment, you cannot help me anymore. I guess the both of us should do what we do best again... For me, that is reading my book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 14))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Mir ist nicht mehr zu helfen. Wir beide sollten tun, was wir am besten k�nnen. Bei mir ist das B�cher lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 14))
talkEntry:addTrigger("Task")
talkEntry:addTrigger("Adventure")
talkEntry:addTrigger("Message")
talkEntry:addResponse("At this moment, you cannot help me anymore. I guess the both of us should do what we do best again... For me, that is reading my book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(108, "=", 14))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Nachricht")
talkEntry:addResponse("Mir ist nicht mehr zu helfen. Wir beide sollten tun, was wir am besten k�nnen. Bei mir ist das B�cher lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am the royal ambassador, that means I issue the orders of the Queen and diplomatic dispatches.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin der k�nigliche Botschafter. Das bedeutet, dass ich die Befehle und die diplomatischen Depeschen der K�nigin kund tue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am the royal ambassador, that means I issue the orders of the Queen and diplomatic dispatches.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der k�nigliche Botschafter. Das bedeutet, dass ich die Befehle und die diplomatischen Depeschen der K�nigin kund tue.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("You aren't from Gobaith, are you? If so, my condolescences.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ihr seid nicht von Gobaith, richtig? Falls doch, mein Beileid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("You are not one of the officals, right? So, what do you require? Orders?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ihr seid keine Amtsperson, richtig? Nun, was gibt es - braucht ihr Befehle?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("seal")
talkEntry:addResponse("Never ever even think about breaking the Queen's seal. You'll regret it...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ambassador")
talkEntry:addTrigger("embassador")
talkEntry:addResponse("Did you ever wonder why an ambassador sits in an embassy and not an ambassy? Or why he isn't called embassador?")
talkEntry:addResponse("Indeed, I am the royal ambassador. That means that you receive orders from the Queen by my hand.")
talkEntry:addResponse("I used to travel a lot on diplomatic missions, but now I prefer to read a good book.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lazy")
talkEntry:addResponse("Lazy, hah. If you had travelled as much as me, you'd understand that I deserve an extended rest now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Order")
talkEntry:addResponse("The orders of the Queen all cross my desk, except for those she yells right in the faces of her lackeys. That makes me somehow... important, no?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dispatch")
talkEntry:addResponse("Whenever there is an issue with Galmair or Runewick, the Queen issues dispatches. She rarely leaves her palace to deal with our neighbours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hastings")
talkEntry:addTrigger("Baron")
talkEntry:addResponse("Let me see... yes, I have orders for the Baron, it reads, 'Drop dead!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("diplomat")
talkEntry:addResponse("The fine art of diplomacy isn't a strength of Cadomyr, but for such things, there is me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("siegel")
talkEntry:addResponse("Brecht niemals ein k�nigliches Siegel. Ihr w�rdet es bereuen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Botschafter")
talkEntry:addResponse("Habt ihr euch gefragt, was einen Botschafter von einem Boten unterscheidet? Die K�nigin h�lt mich manchmal f�r zweiteres...")
talkEntry:addResponse("F�rwahr, ich bin der Botschafter der K�nigin. Also, ihre Befehle werden durch mich kund getan.")
talkEntry:addResponse("Daf�r war ich oft und gerne in diplomatischer Mission unterwegs. Jetzt ziehe ich es vor, lieber mal ein gutes Buch zu lesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faul")
talkEntry:addResponse("Faul, hah. Wenn ihr so viel gereist w�ret wie ich, w�rdet ihr verstehen, dass ich nun eine l�ngere Rast verdient habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Die Befehle der K�nigin gehen alle �ber meinen Schreibtisch. Au�er die, die sie ihren Lakaien direkt ins Gesicht schreit. Das macht mich doch irgendwie... wichtig, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Depesche")
talkEntry:addResponse("Wenn es ein Problem mit Galmair oder Runewick gibt sendet die K�nigin Depeschen aus. Sie verl�sst nur ungerne ihren Palast, um sich mit unseren Nachbarn rumzuplagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hastings")
talkEntry:addTrigger("Baron")
talkEntry:addResponse("Lasst mich mal nachsehen... ja, ich habe hier einen Befehl f�r den Baron: 'Stirb'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Diplomat")
talkEntry:addResponse("Die hohe Kunst der Diplomatie ist eigentlich keine St�rke Cadomyrs. Aber daf�r gibt es ja mich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Daerbur")
talkEntry:addTrigger("Wimbert")
talkEntry:addResponse("You might want to search for Daerbur Wimbert in the Dark Hole Mine. That is very far to the north. Better ask in Galmair, they are familiar with... dark holes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Daerbur")
talkEntry:addTrigger("Wimbert")
talkEntry:addResponse("Ihr sucht Daerbur Wimbert am besten in der Dunkellochmine. Diese ist weit im Norden. Fragt besser mal in Galmair nach, die kennen sich mit dunklen L�chern bestens aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Robertus")
talkEntry:addResponse("Oh, if you are looking for the royal builder Robertus, just head for the market place. He usually corrects his plans there. I wonder what he is building currently?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Robertus")
talkEntry:addResponse("Oh, wenn ihr nach dem k�niglichen Baumeister Robertus sucht, dann geht einfach zu Marktplatz. Dort arbeitet er zumeist an seinen Pl�nen. Ich frag mich, was er jetzt wieder bauen will.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Arenius")
talkEntry:addTrigger("Batavius")
talkEntry:addResponse("A fallen crusader lurks in front of the gates of Cadomyr. His name is Arenius Batavius. He is rather thirsty for information I overheard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Arenius")
talkEntry:addTrigger("Batavius")
talkEntry:addResponse("Ein gescheiterter Kreuzritter lungert vor dem Tor Cadomyrs herum. Sein Name ist Arenius Batavius. Er ist sehr darauf erpicht, an Informationen zu kommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Duplo")
talkEntry:addResponse("They are pretty long, aren't they?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Duplo")
talkEntry:addResponse("Die sind verdammt lang, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage is, indeed, intelligent, but he has problems deriving the right deeds from his thoughts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier ist f�rwahr intelligent. Allerdings f�llt es ihm schwer, aus seinen Gedanken die richtigen Taten abzuleiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage is, indeed, intelligent, but he has problems deriving the right deeds from his thoughts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier ist f�rwahr intelligent. Allerdings f�llt es ihm schwer, aus seinen Gedanken die richtigen Taten abzuleiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is far to the east. There is a secret passage under the mountains but it is a dangerous path. The travel is worth it though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist weit im Osten. Es gibt eine geheime Passage unter den Bergen hindurch, aber es ist ein gef�hrlicher Weg. Die Reise ist es jedoch wert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Negotiations with the Don used to be difficult in the past, but strangely, since Queen Rosaline inherited the throne, his behaviour has changed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Verhandlungen mit dem Don waren fr�her immer recht erm�dend. Merkw�rdigerweise hat sich sein Verhalten drastisch ver�ndert, seit K�nigin Rosaline den Thron bestiegen hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair, you can find when travelling far to the north, but don't take to much money with you, you will return without it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ihr gelangt nach Galmair, wenn ihr weit in den Norden reist. Aber nehmt nicht zu viel Geld mit, ihr werdet ohne es wiederkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I obey her orders like I obeyed King Reginald's. You better do likewise or you'll be treated like Baron Hastings.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich gehorche ihren Befehlen wie ich K�nig Reginalds Befehlen gehorcht habe. Ihr macht besser das gleiche oder es ergeht euch wie Baron Hastings.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I obey her orders like I obeyed King Reginald's. You better do likewise or you'll be treated like Baron Hastings.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich gehorche ihren Befehlen wie ich K�nig Reginalds Befehlen gehorcht habe. Ihr macht besser das gleiche oder es ergeht euch wie Baron Hastings.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is my home and I do my share to make it prosper, maybe not every day, but once in a while.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist meine Heimat und ich trage meinen Teil dazu bei, es gedeihen zu lassen. Vielleicht nicht jeden Tag, aber immer mal wieder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Back in my youth, I once travelled on diplomatic mission to Albar. There was ordered... I mean, afterwards we sent an army there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("W�hrend meiner Jugend bin ich einst in diplomatischer Mission nach Albar gereist. Es ging um... Ich meine, wir haben hinterher eine Streitmacht dorthin entsandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Diplomacy is not a skill of the Gynkeesh. They have many skills, but not that one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Diplomatie ist keine St�rke der Gynkeesh. Sie m�gen einige andere haben, aber nicht diese.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I was once to Salkamar. My ears bleeded after I had to listen all their awkward points of view. Horrible realm!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich war ein einziges mal in Salkamar. Meine Ohren haben geblutet nachdem ich mir all die komischen Standpunkte dort angeh�rt habe. Ein schreckliches Land!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("You think I worship Elara because I read books? I worship books, isn't that obvious?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ihr denkt also, ich bin ein Anbete Elaras, weil ich B�cher lese? Ich bin ein Anbeter guter Literatur, ist das nicht offensichtlich?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n is the patron of Cadomyr... But I doubt I have to tell you that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n ist der Schutzgott Cadomyrs... Aber wem erz�hle ich das?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Out of my embassy!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Raus aus meiner Botschaft!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan is the God of travellers, don't you know? So, why don't you travel a bit for me with Ronagan's blessing?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan ist der Gott der Reisenden, wu�tet ihr das nicht? Nun, warum tut ihr nicht eine Reise f�r mich mit Ronagans Segen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("My faith in the Gods is strong, but I prefer not to talk about something as private as this.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Mein Glaube an die G�tter ist stark, aber ich ziehe es vor, nicht �ber solch pers�nliche Dinge zu reden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("I am loyal, for Zhambra smiled upon me. I wouldn't do anything without an explicit, written order of Her Majesty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Ich bin loyal, Zhambra meint es gut mit mir. Ich w�rde nichts ohne einen ausdr�cklichen und schriftlichen Befehl ihrer Majest�t tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("The only thing I'd buy is my peace. Sometimes, I wish I was a less important man.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Das einzige, was ich erkaufen w�rde, w�re meine Ruhe. Ich w�nschte manchmal, ich w�re nicht so ein wichtiger Mann.")
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
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Let's be honest, you disturb me and I am an important person. So, if you do a royal mission for me, both of us would be happy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Mal ehrlich, ihr st�rt mich und ich bin eine wichtige Pers�nlichkeit. Also w�rdet ihr uns beide gl�cklich machen, wenn ihr euch auf eine Mission f�r die K�nigin begeben w�rdet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hector")
talkEntry:addTrigger("Valerion")
talkEntry:addResponse("I am proud of being a Valerion. Are you proud to be a...?")
talkEntry:addResponse("Hector Valerion, at your service.")
talkEntry:addResponse("I am the royal ambassador and my name is indeed Hector Valerion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hector")
talkEntry:addTrigger("Valerion")
talkEntry:addResponse("Ich bin stolz darauf, ein Valerion zu sein. Seid ihr stolz darauf ein... was genau nochmal... zu sein?")
talkEntry:addResponse("Hector Valerion, stets zu Diensten.")
talkEntry:addResponse("Ich bin der k�nigliche Botschafter und meine Name ist in der Tat Hector Valerion.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ups, die Post ist da!", "Ups, I have mail.")
talkingNPC:addCycleText("#me g�hnt gelangweilt.", "#me yawns lazily.")
talkingNPC:addCycleText("#me bl�ttert in einem Buch.", "#me browses a book.")
talkingNPC:addCycleText("Ich hoffe nur, ich muss nicht schon wieder irgendwelche Depeschen �berbringen.", "I just hope I don't have to deliver any dispatches.")
talkingNPC:addCycleText("Wann soll ich hier eigentlich mal ungest�rt zum Lesen kommen?", "When do I get to read undisturbed?")
talkingNPC:addCycleText("Ob das Volk heute oder morgen seine Befehle bekommt, was macht das f�r einen Unterschied? Cadomyr wird es ewig geben!", "Does it make a difference whether the people get their orders today or tomorrow? Cadomyr will last forever!")
talkingNPC:addCycleText("Gut, gut, gut...", "Good, good, good...")
talkingNPC:addCycleText("Eindeutig zu viel Arbeit. Ich sollte erstmal ein wenig lesen, wahrscheinlich �berlegt sie es sich nochmal.", "Simply too much work. I should read a bit, most probably, she'll reconsider anyway.")
talkingNPC:addCycleText("Ich h�tte heiraten sollen als noch die Zeit daf�r war.", "I should have married when I still had the time.")
talkingNPC:addCycleText("Wenn das Leben nicht so l�uft, wie man will, sollte man was dagegen tun.", "If life does not turn out how you'd like it, one should do something about it.")
talkingNPC:addCycleText("Ruhe! Ich lese!", "Silence! I am reading!")
talkingNPC:addCycleText("#me betrachtet missmutig eine Schriftrolle, die das k�nigliche Siegel Cadomyrs tr�gt.", "#me stares morosely at a scroll that bears the royal seal of Cadomyr.")
talkingNPC:addCycleText("Ich versuche hier zu lesen!", "I am trying to read!")
talkingNPC:addCycleText("#me seufzt.", "#me sighs.")
talkingNPC:addCycleText("Psst!", "Shh!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der k�nigliche Botschafter Hector Valerion.", "This NPC is the royal ambassador Hector Valerion.")
mainNPC:setUseMessage("Ihr werdet die Finger von einem Mann ihrer Majest�t lassen.", "You won't lay hand on a man of the queen, will you?")
mainNPC:setConfusedMessage("Pardon?", "Pardon?")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 815)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 827)
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
