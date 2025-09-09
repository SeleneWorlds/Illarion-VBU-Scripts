local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local consequence_talkstate = require("npc.base.consequence.talkstate")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Madoquar the millenian. Keywords: Hello, quest, harbour, humans, lizardmen, halflings."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Madoquar die Uralte. Schl�sselw�rter: Hallo, Quest, Hafen, Menschen, Echsen, Halblinge."))
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
talkEntry:addResponse("Speak your mind child.")
talkEntry:addResponse("Blessed day it is today. Like the last 800 years of my life, every day has been as fresh as a mountain stream, as relaxing as a field of lilies, and as enjoyable as a ripe peach.")
talkEntry:addResponse("Mighty nice of you to come visit an old lady like me.")
talkEntry:addResponse("I have no other business to attend to, when one reaches my age there is no business that hasn't already been attended to, so speak.")
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
talkEntry:addResponse("Lasst euren Gedanken freien Lauf, mein Kind.")
talkEntry:addResponse("Einen gesegneten Tag. Wie in den letzten 800 Jahren meines Lebens ist jeder Tag so frisch wie ein Gebirgsbach, entspannedn wie ein Lilienbeet und erquickend wie ein reifer Pfirsich.")
talkEntry:addResponse("�u�erst nett von euch, eine alte Dame wie mich zu besuchen.")
talkEntry:addResponse("Ich habe sonst nichts weiter vor, wenn jemand erstmal so alt geworden ist wie ich, dann f�llt es schwer, etwas zu tun, was noch aussteht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Speak your mind child.")
talkEntry:addResponse("Blessed day it is today. Like the last 800 years of my life, every day has been as fresh as a mountain stream, as relaxing as a field of lilies, and as enjoyable as a ripe peach.")
talkEntry:addResponse("Mighty nice of you to come visit an old lady like me.")
talkEntry:addResponse("I have no other business to attend to, when one reaches my age there is no business that hasn't already been attended to, so speak.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Lasst euren Gedanken freien Lauf, mein Kind.")
talkEntry:addResponse("Einen gesegneten Tag. Wie in den letzten 800 Jahren meines Lebens ist jeder Tag so frisch wie ein Gebirgsbach, entspannedn wie ein Lilienbeet und erquickend wie ein reifer Pfirsich.")
talkEntry:addResponse("�u�erst nett von euch, eine alte Dame wie mich zu besuchen.")
talkEntry:addResponse("Ich habe sonst nichts weiter vor, wenn jemand erstmal so alt geworden ist wie ich, dann f�llt es schwer, etwas zu tun, was noch aussteht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Leaving so soon? Please be careful. The roads can be dangerous at this time of year.")
talkEntry:addResponse("Thank goodness. Not to be rude, but even an elf if old enough needs her rest.")
talkEntry:addResponse("Leaving already? An old woman like me is too used to the quiet. Won't you stay a little more and have a spot of tea?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ihr geht schon? Seid bitte vorsichtig, die Stra�en sind unsicher dieser Tage.")
talkEntry:addResponse("Du meine G�te, ich will ja nicht unh�flich sein, aber eine Elfe meines Alters braucht ihre Ruhe.")
talkEntry:addResponse("Ihr m��t schon gehen? Eine alte Frau wie ich ist die Stille gewohnt. Wollt ihr nicht noch etwas bleiben, vielleicht auf eine Tasse Tee?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Leaving so soon? Please be careful, the roads can be dangerous at this time of year.")
talkEntry:addResponse("Thank goodness. Not to be rude, but even an elf if old enough needs her rest.")
talkEntry:addResponse("Leaving already? An old woman like me is too used to the quiet. Won't you stay a little longer and have a spot of tea?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ihr geht schon? Seid bitte vorsichtig, die Stra�en sind unsicher dieser Tage.")
talkEntry:addResponse("Du meine G�te, ich will ja nicht unh�flich sein, aber eine Elfe meines Alters braucht ihre Ruhe.")
talkEntry:addResponse("Ihr m��t schon gehen? Eine alte Frau wie ich ist die Stille gewohnt. Wollt ihr nicht noch etwas bleiben, vielleicht auf eine Tasse Tee?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addResponse("Yesterday I gazed upon a sunset that took my breath away. I've seen that sun set behind that mountain more than a thousand, ten thousand, one hundred thousand times maybe, but never like that.")
talkEntry:addResponse("Every time I see the last light of the morning star fall between the fingers of the earth, I learn something new about Illarion, and myself.")
talkEntry:addResponse("I feel great, wonderful.")
talkEntry:addResponse("I feel normal. I feel like I've felt for how many years? I would call it normal by now. We elves learn to live with a balance, so I would say that I feel balanced.")
talkEntry:addResponse("Something's been irking me. Not many things burden my soul at my old age, but there are just some things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("Gestern habe ich einen Sonnenuntergang gesehen, der mir die Sprache verschlagen hat. Ich habe die Sonne schon tauszehntausvielleicht einhundertausend mal schon versinken gesehen, aber noch nie so.")
talkEntry:addResponse("Jedesmal, wenn ich das letzte Licht des Morgensterns zwischen die Finger der Welt verblassen sehe, lerne ich etwas neues �ber Illarion und mich selbst.")
talkEntry:addResponse("Ich f�hle mich gro�artig, danke.")
talkEntry:addResponse("Mir geht es wie immer. Mir geht nun schon seit wie vielen Jahren so? Ich denke, es ist ganz normal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Madoquar, it's a bit old fashioned, I know.")
talkEntry:addResponse("Madoquar, a pleasure to meet you.")
talkEntry:addResponse("Madoquar, the Ageless.")
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
talkEntry:addResponse("Madoquar, ich wei�, ein altmodischer Name.")
talkEntry:addResponse("Madoquar, sch�n euch zu treffen.")
talkEntry:addResponse("Madoquar, die Alterslose.")
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
talkEntry:addCondition(condition_quest(112, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak I"))
talkEntry:addConsequence(consequence_quest(112, "=", 1))
talkEntry:addResponse("I can't tell you what is wrong with the world, but I feel a dark presence not far to the east. Be a dear and go explore for me please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche I"))
talkEntry:addConsequence(consequence_quest(112, "=", 1))
talkEntry:addResponse("Ich kann euch nicht sagen, was mit der Welt nicht stimmt, aber ich sp�re eine dunkle Pr�senz nicht weit von hier im Osten. Seid so nett und erkundet den Ursprung f�r mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak I"))
talkEntry:addConsequence(consequence_quest(112, "=", 1))
talkEntry:addResponse("I can't tell you what is wrong with the world, but I feel a dark presence not far to the east. Be a dear and go explore for me please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche I"))
talkEntry:addConsequence(consequence_quest(112, "=", 1))
talkEntry:addResponse("Ich kann euch nicht sagen, was mit der Welt nicht stimmt, aber ich sp�re eine dunkle Pr�senz nicht weit von hier im Osten. Seid so nett und erkundet den Ursprung f�r mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh, you have not found anything yet? Do you need to know where to search? To the east!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Oh, ihr habt noch nichts gefunden? Ihr wisst nicht wo ihr suchen sollt? Im Osten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Oh, you have not found anything yet? Do you need to know where to search? To the east!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Oh, ihr habt noch nichts gefunden? Ihr wisst nicht wo ihr suchen sollt? Im Osten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded six silver coins."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_quest(112, "=", 3))
talkEntry:addResponse("So, the origin of the evil presence is an oak? Let me think about this for a minute or a year and come back to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 600))
talkEntry:addConsequence(consequence_quest(112, "=", 3))
talkEntry:addResponse("Also der Ursprung der dunklen Pr�senz ist eine Eiche? Lasst mich eine Minute oder auch ein Jahr dar�ber nachdenken und kommt dann zu mir zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak II"))
talkEntry:addConsequence(consequence_quest(112, "=", 4))
talkEntry:addResponse("The oak cannot simply be cut down... I should have expected that much. The spirit of the tree is too strong. There is a way to solve this; Bring me a battle axe, a bar of silver and one more thing. I will tell you the last thing after you bring me the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche II"))
talkEntry:addConsequence(consequence_quest(112, "=", 4))
talkEntry:addResponse("Diese Eiche kann man nicht einfach f�llen... Ich h�tte es wissen m�ssen. Der Geist in ihr ist zu stark. Aber es gibt einen Weg; bringt mir eine Streitaxt, einen Silberbarren und etwas anderes - ich werde euch sagen, was, wenn ihr die anderen Dinge gebracht habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak II"))
talkEntry:addConsequence(consequence_quest(112, "=", 4))
talkEntry:addResponse("The oak cannot simply be cut down... I should have expected that much. The spirit of the tree is too strong. There is a way to solve this; Bring me a battle axe, a bar of silver and one more thing. I will tell you the last thing after you bring me the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche II"))
talkEntry:addConsequence(consequence_quest(112, "=", 4))
talkEntry:addResponse("Diese Eiche kann man nicht einfach f�llen... Ich h�tte es wissen m�ssen. Der Geist in ihr ist zu stark. Aber es gibt einen Weg; bringt mir eine Streitaxt, einen Silberbarren und etwas anderes - ich werde euch sagen, was, wenn ihr die anderen Dinge gebracht habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 4))
talkEntry:addCondition(condition_item(2946, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(104, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 12 silver coins and a ruby amulet."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_deleteitem(2946, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(104, 1, nil))
talkEntry:addConsequence(consequence_item(67, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 5))
talkEntry:addResponse("You warriors are a gift. That's all the items except for one. Let me meditate for a moment and then come back to me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 4))
talkEntry:addCondition(condition_item(2946, "all", ">", 0, nil))
talkEntry:addCondition(condition_item(104, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 12 Silberst�cke und ein Rubinamulett."))
talkEntry:addConsequence(consequence_money("+", 1200))
talkEntry:addConsequence(consequence_deleteitem(2946, 1, nil))
talkEntry:addConsequence(consequence_deleteitem(104, 1, nil))
talkEntry:addConsequence(consequence_item(67, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 5))
talkEntry:addResponse("Ihr Krieger seid eine Segen. Das sind alle Dinge, die ich brauche, au�er eines. Lasst mich kurz meditieren und kommt dann zur�ck zu mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bring me a battle axe, a bar of silver and one more thing. I will tell you the last thing after you bring me the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bringt mir eine Streitaxt, einen Silberbarren und etwas anderes - ich werde euch sagen, was, wenn ihr die anderen Dinge gebracht habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Bring me a battle axe, a bar of silver and one more thing. I will tell you the last thing after you bring me the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Bringt mir eine Streitaxt, einen Silberbarren und etwas anderes - ich werde euch sagen, was, wenn ihr die anderen Dinge gebracht habt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak III"))
talkEntry:addConsequence(consequence_quest(112, "=", 6))
talkEntry:addResponse("Before you make any judgements, please listen. This next part is not onerous, yet it will take an open mind. South of the oak is the remnants of a house. I need you to search in that house for a piece of a dead body and bring it back here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche III"))
talkEntry:addConsequence(consequence_quest(112, "=", 6))
talkEntry:addResponse("H�rt bitte erstmal zu. Worum ich euch bitten werde ist nicht sonderlich schwierig, aber eventuell absto�end. S�dlich der Eiche sind die �berreste eines Hauses. Sucht bitte in dem Haus nach Leichenteilen und bringt sie her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak III"))
talkEntry:addConsequence(consequence_quest(112, "=", 6))
talkEntry:addResponse("Before you make any judgments, please listen. This next part is not onerous, yet it will take an open mind. South of the oak is the remnants of a house. I need you to search in that house for a piece of a dead body and bring it back here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche III"))
talkEntry:addConsequence(consequence_quest(112, "=", 6))
talkEntry:addResponse("H�rt bitte erstmal zu. Worum ich euch bitten werde ist nicht sonderlich schwierig, aber eventuell absto�end. S�dlich der Eiche sind die �berreste eines Hauses. Sucht bitte in dem Haus nach Leichenteilen und bringt sie her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I need you to search in the ruined house south of the oak for a piece of a dead body and bring it back here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte sucht in der Hausruine s�dlich der Eiche nach Leichenteilen und bringt sie her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("I need you to search in the ruined house south of the oak for a piece of a dead body and bring it back here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Bitte sucht in der Hausruine s�dlich der Eiche nach Leichenteilen und bringt sie her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a bottle of elven wine."))
talkEntry:addConsequence(consequence_item(1318, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 8))
talkEntry:addResponse("Very well, thank you for the bone. Now we have all we need to banish that ghost of the oak. Have this bottle of wine, it might help you recover from that horrible deed. Come back to me when sober again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 7))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Flasche Elfenwein."))
talkEntry:addConsequence(consequence_item(1318, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 8))
talkEntry:addResponse("Wunderbar, danke f�r den Knochen. Jetzt haben wir alles beisammen, um den Geist der Eiche auszutreiben. Nehmt diese Flasche Wein, sie mag euch helfen, �ber die Dinge hinwegzukommen, die ihr gerade getan habt. Kommt zu mir zur�ck, wenn ihr wieder n�chtern seid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak IV"))
talkEntry:addConsequence(consequence_item(229, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 9))
talkEntry:addResponse("Here is an axe, it's silver so it can hurt the undead. The spirit of the oak is special. Nothing short of a specific weapon can kill it. Please fix this disturbance for me, so that I can live the rest of my life in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche IV"))
talkEntry:addConsequence(consequence_item(229, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 9))
talkEntry:addResponse("Hier, nehmt diese Axt. Sie ist aus Silber, also kann sie Untote verletzen. Der Geist der Eiche ist etwas Besonderes, nur eine spezielle Waffe kann ihn t�ten. Bitte erledigt diese Unannehmlichkeit so dass ich den Rest meines Lebens in Frieden leben kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] The Ghost Oak IV"))
talkEntry:addConsequence(consequence_item(229, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 9))
talkEntry:addResponse("Here is an axe, it's silver so it can hurt the undead. The spirit of the tree is special. Nothing short of a specific weapon can kill it. Please fix this disturbance for me, so that I can live the rest of my life in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche IV"))
talkEntry:addConsequence(consequence_item(229, 1, 599, nil))
talkEntry:addConsequence(consequence_quest(112, "=", 9))
talkEntry:addResponse("Hier, nehmt diese Axt. Sie ist aus Silber, also kann sie Untote verletzen. Der Geist der Eiche ist etwas Besonderes, nur eine spezielle Waffe kann ihn t�ten. Bitte erledigt diese Unannehmlichkeit so dass ich den Rest meines Lebens in Frieden leben kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 9))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Banish that wraith now! Now, please!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 9))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Treibt diesen Geist aus! Jetzt, bitte!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 9))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Banish that wraith now! Now, please!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 9))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Treibt diesen Geist aus! Jetzt, bitte!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded an amethyst ring and a magical amethyst."))
talkEntry:addConsequence(consequence_item(277, 1, 799, nil))
talkEntry:addConsequence(consequence_item(3519, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(112, "=", 11))
talkEntry:addResponse("I'll give you a ring and a secret... I killed that wraith while it was alive. Don't tell a soul, but my real name is Quantisha and that wraith was once the real Madoquar. Don't look at me with such condescending eyes, this happened 400 years ago and I have already learnt my lesson.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 10))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst einen Amethystring und einen magischen Amethysten."))
talkEntry:addConsequence(consequence_item(277, 1, 799, nil))
talkEntry:addConsequence(consequence_item(3519, 1, 333, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(112, "=", 11))
talkEntry:addResponse("Ich gebe euch diesen Ring und ein Geheimnis. Ich t�tete einst diesen Geist, als sie noch unter den Lebenden war. Sagt es niemanden, aber mein echter Name ist Quantisha und dieser Geist war einst die echte Madoquar. Schaut mich nicht so vorwurfsvoll an, all dies geschah vor vierhundert Jahren und ich habe bereits genug geb��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 11))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("It's a nice day today, isn't it? It's thanks to you that I can enjoy these days for hundreds if not thousands more years as Madoquar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 11))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ein sch�ner Tag, nicht wahr? Dank euch kann ich diese Tage f�r hunderte, wenn nicht tausende Jahre als Madoquar genie�en.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 11))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse(" It's a nice day today, isn't it? It's thanks to you that I can enjoy these days for hundreds if not thousands more years as Madoquar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(112, "=", 11))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Ein sch�ner Tag, nicht wahr? Dank euch kann ich diese Tage f�r hunderte, wenn nicht tausende Jahre als Madoquar genie�en.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I had a job a long long time ago. What was it again?")
talkEntry:addResponse("Sitting on my porch eating oranges and sipping tea. Does that count?")
talkEntry:addResponse("I'm a part time traveller, once every three hundred years or so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich �bte einst einen Beruf aus. Was war es noch gleich?")
talkEntry:addResponse("Auf meinem Hintern sitzen, Orangen essen und Tee schl�rfen - z�hlt das als Beruf?")
talkEntry:addResponse("Ich bin Teilzeitreisende, alle dreihundert Jahre in etwa.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I had a job a long long time ago. What was it again?")
talkEntry:addResponse("Sitting on my porch eating oranges and sipping tea. Does that count?")
talkEntry:addResponse("I'm a part time traveller, once every three hundred years or so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich �bte einst einen Beruf aus. Was war es noch gleich?")
talkEntry:addResponse("Auf meinem Hintern sitzen, Orangen essen und Tee schl�rfen - z�hlt das als Beruf?")
talkEntry:addResponse("Ich bin Teilzeitreisende, alle dreihundert Jahre in etwa.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I wish I remembered how I escaped from there.")
talkEntry:addResponse("It was no Emerald forest, but one could stay there for a while.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich w��te gerne, wie es mir gelungen ist, von dort zu entkommen.")
talkEntry:addResponse("Es war kein Smaragdwald, aber man konnte es dort aushalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("They call me Madoquar.")
talkEntry:addResponse("I am Madoquar, my pleasure to meet you.")
talkEntry:addResponse("Hello, I am Madoquar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Man nennt mich Madoquar.")
talkEntry:addResponse("Ich bin Madoquar, sch�n euch zu treffen.")
talkEntry:addResponse("Hallo, ich bin Madoquar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nameless")
talkEntry:addResponse("Come back in one thousand years and I will tell you all about it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Namenlos")
talkEntry:addResponse("Kommt in tausend Jahren nochmal und ich erz�hle ich dann alles dar�ber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Burden")
talkEntry:addTrigger("urk")
talkEntry:addTrigger("bother")
talkEntry:addResponse("#me sighs, 'I feel a dark presence, maybe you can help me by fulfilling a certain task?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Last")
talkEntry:addTrigger("Sorge")
talkEntry:addTrigger("�rger")
talkEntry:addResponse("#me seufzt: 'Ich sp�re eine dunkle Pr�senz, vielleicht k�nnt ihr mir helfen, indem ihr eine Aufgabe erledigt.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("human")
talkEntry:addResponse("I met the fifth human ever born.")
talkEntry:addResponse("What is a man, but a miserable pile of secrets.")
talkEntry:addResponse("I hate humans, like I love dwarves, like I love elves, like I love halflings, like I love orcs, like I love lizardmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mensch")
talkEntry:addResponse("Ich habe den f�nften Menschen getroffen, der je geboren wurde.")
talkEntry:addResponse("Was ist ein Mensch au�er ein erb�rmlicher Haufen Unverst�ndnis.")
talkEntry:addResponse("Ich hasse Menschen genauso wie ich Zwerge liebe, wie ich Elfen liebe, Halblinge, Orks und ganz besonders Echsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dwarv")
talkEntry:addTrigger("dwarf")
talkEntry:addResponse("They make good weapons, that is always my first thought of them. I spent a great deal of my life forging weapons. Not for battle, but for the art of things. I am skilled at making a blade, but master dwarf, I fear in all my years I will never reach.")
talkEntry:addResponse("I envy those little craftsmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwerg")
talkEntry:addResponse("Sie machen gute Waffen, das ist das erste, was mir zu ihnen einf�llt. Auch ich habe viel Zeit damit verbracht, Waffen zu schmieden, nicht des Krieges, sondern der Kunst wegen. Ich bin nicht schlecht darin, aber einen Zwergenmeister werde ich in all meinen Jahren nicht in den Schatten stellen k�nnen.")
talkEntry:addResponse("Ich mag diese kleinen Handwerker.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizard")
talkEntry:addResponse("Lizardmen are very interesting. My first and only love, Servont, was a lizardman.")
talkEntry:addResponse("That thing on their heads. I like playing with it.")
talkEntry:addResponse("My husband Servont was a lizardman. The hardest part of being an elf is watching those you love disappear.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Echse")
talkEntry:addResponse("Echsenm�nner sind sehr interessant. Meine erste und einzige Liebe, Servont, war ein Echsenmann.")
talkEntry:addResponse("Dieses Ding auf ihrem Hinterkopf, ich mag es, damit zu spielen.")
talkEntry:addResponse("Mein Ehemann Servont war ein Echsenmann. Das schwerste am Dasein einer Elfe ist zuzusehen, wie die, die man liebt, dahinscheiden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("orc")
talkEntry:addResponse("I love them, but I cannot say that I really like them.")
talkEntry:addResponse("I of course have had some unfriendly communications with them, today is a new day though, everyone gets along. It's for the better this way.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ork")
talkEntry:addResponse("Ich liebe sie, aber ich mag sie nicht.")
talkEntry:addResponse("Nat�rlich hatte ich schon meine Zusammenst��e mit ihnen, aber heute ist wieder ein neuer Tag. Irgendwie kommt man mit jedem zurecht, das ist besser so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("halfling")
talkEntry:addResponse("They are like little people. I once thought they were people that were short. Halflings though are much more peaceful than men.")
talkEntry:addResponse("Half a man should be twice the time the man, a man should be half the time - Gerald Tealuv, an old halfling friend of mine.")
talkEntry:addResponse("Halflings make the best bread.")
talkEntry:addResponse("I still remember the first time I stayed with a halfling and bit into my first biscuit. There are two things in my life that I have ever truly loved and biscuits are one of them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("halbling")
talkEntry:addResponse("Sie sind ein kleines Volk, einst dachte ich, sie w�ren einfach nur kleine Menschen. Aber sie sind weit friedlicher als Menschen.")
talkEntry:addResponse("Ein halber Mann sollte doppelt so oft ein ganzer Mann sein wie ein ganzer Mann es manchmal ist - Gerald Tealuv, einer meiner Halblingsfreunde.")
talkEntry:addResponse("Halblinge backen das beste Brot.")
talkEntry:addResponse("Ich erinnere mich noch sehr gut daran als ich das erste mal bei einem Halbling eingeladen war und einen Kuchen gegessen habe. Seitdem gibt es zwei Dinge auf der Welt, die ich liebe, und Kuchen ist das eine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hobbit")
talkEntry:addResponse("They are like little people. I once thought they were people that were short. Halflings though are much more peaceful than men.")
talkEntry:addResponse("Half a man should be twice the man, a man should be half the time - Gerald Tealuv, an old halfling friend of mine.")
talkEntry:addResponse("Halflings make the best bread.")
talkEntry:addResponse("I still remember the first time I stayed with a halfling and bit into my first biscuit. There are two things in my life that I have ever truly loved and biscuits are one of them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hobbit")
talkEntry:addResponse("Sie sind ein kleines Volk, einst dachte ich, sie w�ren einfach nur kleine Menschen. Aber sie sind weit friedlicher als Menschen.")
talkEntry:addResponse("Ein halber Mann sollte doppelt so oft ein ganzer Mann sein wie ein ganzer Mann es manchmal ist - Gerald Tealuv, einer meiner Halblingsfreunde.")
talkEntry:addResponse("Halblinge backen das beste Brot.")
talkEntry:addResponse("Ich erinnere mich noch sehr gut daran als ich das erste mal bei einem Halbling eingeladen war und einen Kuchen gegessen habe. Seitdem gibt es zwei Dinge auf der Welt, die ich liebe, und Kuchen ist das eine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Servont")
talkEntry:addResponse("Servont was my husband for almost 1000 years, back then I was a house wife. I would wait at home for him. He would kill beasts for the goods we needed. He loved travelling. He's the reason I take my pilgrimages every few hundred years.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Servont")
talkEntry:addResponse("Servont war vor fast eintausend Jahren mein Ehemann, als ich noch eine brave Hausfrau war. Ich habe zu hause auf ihn gewartet, w�hrend er die Tiere erlegte, die wir zum �berleben brauchten. Er mochte auch auf Reisen gehen. Seinetwegen reise ich alle paar hundert Jahre umher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Harbo")
talkEntry:addResponse("This harbour wasn't here last century. Anyway, it will be gone again one day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hafen")
talkEntry:addResponse("Dieser Hafen hier war vorheriges Jahrhundert noch nicht hier. Was soll's, er verschwindet auch wieder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Elvaine is such a young elf, he has a lot to learn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Elvaine ist noch so jung, er hat noch viel zu lernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Elvaine is such a young elf, he has a lot to learn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Elvaine ist noch so jung, er hat noch viel zu lernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("It is a place known for their mages. Human mages are very direct in their magic, they lack the gracefulness of an elf's touch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist bekannt f�r seine Magier. Menschliche Magier sind recht plump mit ihrere Magie. Es fehlt ihnen an der Anmut der Elfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Pardon me, how am I supposed to keep track who is currently leading that inane town?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Entschuldigt, aber wie soll ich mir merken, wer jetzt wieder irgendeine unbedeutende Stadt anf�hrt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("It's a town. I have been there.")
talkEntry:addResponse("On my next trip around the world that will be my first stop. Not because of any specific importance. It's just the closest city.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Das ist eine Stadt, ich war schonmal dort.")
talkEntry:addResponse("Auf meiner n�chsten Reise werde ich dort rasten. Nicht, weil Galmair wichtig w�re, aber es ist nunmal die n�chstgelegene Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I really have no opinion of her. I was here before her, I will be here after her.")
talkEntry:addResponse("She was cute when she was a child but humans age so quickly. In the blink of an elven eye she has grown from a cute little girl to a bland looking human.")
talkEntry:addResponse("She usually has tasks for other people to do. She is known to pay well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich konnte mir noch keine Meinung �ber sie bilden. Ich war vor ihr hier und ich werde nach ihr immernoch hier sein.")
talkEntry:addResponse("Sie war ein s��es Kind. Menschen altern so schnell, von einem Augenblick zum anderen ist aus dem s��en M�dchen eine aufrechte Frau geworden.")
talkEntry:addResponse("Sie hat stets etwas f�r ihre Leute zu tun und sie soll recht gut daf�r bezahlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I really have no opinion of her. I was here before her, I will be here after her.")
talkEntry:addResponse("She was cute when she was a child but humans age so quickly. In the blink of an elven eye she has grown from a cute little girl to a bland looking human.")
talkEntry:addResponse("She usually has tasks for other people to do. She is known to pay well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich konnte mir noch keine Meinung �ber sie bilden. Ich war vor ihr hier und ich werde nach ihr immernoch hier sein.")
talkEntry:addResponse("Sie war ein s��es Kind. Menschen altern so schnell, von einem Augenblick zum anderen ist aus dem s��en M�dchen eine aufrechte Frau geworden.")
talkEntry:addResponse("Sie hat stets etwas f�r ihre Leute zu tun und sie soll recht gut daf�r bezahlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("To other eyes the earth seems dead, but to an an elf, we see the life.")
talkEntry:addResponse("I don't know if I will spend the end of my days there, but I do know that I could bring myself to move to that place, at least for another 400 years.")
talkEntry:addResponse("This city was once regarded a colony of Albar. The land of man changes like the birth and death of flowers on the field.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("In den Augen der Unwissenden scheint das Land dort tot zu sein, aber wir Elfen sehen das Leben in allem.")
talkEntry:addResponse("Ich wei� nicht, ob ich dort meinen Lebensabend verbringen w�rde, aber ich k�nnte es sicherlich rund vierhundert Jahre dort aushalten.")
talkEntry:addResponse("Einst hat man Cadomyr als eine Kolonie Albars angesehen. Die Welt der Menschen �ndert sich wie die Blumen, die auf einer Wiese wachsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I do not care. I bother myself not with the fickle ways of man.")
talkEntry:addResponse("What is war? What is it good for? Absolutely nothing.")
talkEntry:addResponse("Men create factions and are never whole. Men lust, and have not. Men kill, and desire to have, and cannot obtain. Men fight and war, yet they have not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Mir egal, was gehen mich die Angelegenheiten der Menschen an?")
talkEntry:addResponse("Krieg, was ist das eigentlich? Wof�r ist er gut? Nichts!")
talkEntry:addResponse("Menschen verb�nden sich, doch sind nie eins. Sie gel�sten, kriegen aber nicht. T�ten um zu erlangen, aber k�nnen nichts behalten. Menschen k�mpfen und streiten, doch haben sie nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I do not care. I bother myself not with the fickle ways of man.")
talkEntry:addResponse("What is war? What is it good for? Absolutely nothing.")
talkEntry:addResponse("Men create factions and are never whole. Men lust, and have not. Men kill, and desire to have, and cannot obtain. Men fight and war, yet they have not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Mir egal, was gehen mich die Angelegenheiten der Menschen an?")
talkEntry:addResponse("Krieg, was ist das eigentlich? Wof�r ist er gut? Nichts!")
talkEntry:addResponse("Menschen verb�nden sich, doch sind nie eins. Sie gel�sten, kriegen aber nicht. T�ten um zu erlangen, aber k�nnen nichts behalten. Menschen k�mpfen und streiten, doch haben sie nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I do not care. I bother myself not with the fickle ways of man.")
talkEntry:addResponse("What is war? What is it good for? Absolutely nothing.")
talkEntry:addResponse("Men create factions and are never whole. Men lust, and have not. Men kill, and desire to have, and cannot obtain. Men fight and war, yet they have not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Mir egal, was gehen mich die Angelegenheiten der Menschen an?")
talkEntry:addResponse("Krieg, was ist das eigentlich? Wof�r ist er gut? Nichts!")
talkEntry:addResponse("Menschen verb�nden sich, doch sind nie eins. Sie gel�sten, kriegen aber nicht. T�ten um zu erlangen, aber k�nnen nichts behalten. Menschen k�mpfen und streiten, doch haben sie nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("The Five be with you.")
talkEntry:addResponse("Haha, Cadomyr really worships this God.")
talkEntry:addResponse("#me wipes sweat from her brow.")
talkEntry:addResponse("He may be my favourite God. He may not be yours, but you don't remember a time before cooked food.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("M�gen die F�nf mit euch sein.")
talkEntry:addResponse("Haha, in Cadomyr liebt man diesen Gott.")
talkEntry:addResponse("#me wischt sich Schwei� von der Stirn.")
talkEntry:addResponse("Er ist mein Lieblingsgott. Er mag nicht der eurige sein, aber ihr erinnert euch auch nicht an den Geschmack ungekochter Nahrunng.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("The Five be with you.")
talkEntry:addResponse("I have nothing to say about him.")
talkEntry:addResponse("#me smiles warmly to herself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("M�gen die F�nf mit euch sein.")
talkEntry:addResponse("�ber ihn habe ich nichts zu erz�hlen.")
talkEntry:addResponse("#me l�chelt warmherzig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("The Five be with you.")
talkEntry:addResponse("Findari is strong in these parts. Humans think she's angry with them. They are just too young to see a woman at work.")
talkEntry:addResponse("Today she is calm. Even Gods need rest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("M�gen die F�nf mit euch sein.")
talkEntry:addResponse("Findari ist stark in dieser Gegend. Die Menschen denken, sie sei sauer auf sie. Sie sind einfach nur zu jung, um ihr Werk zu begreifen.")
talkEntry:addResponse("Heute ist sie wohlgesonnen, auch ein Gott braucht mal einen Tag frei.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("The Five be with you.")
talkEntry:addResponse("I do wish she would visit here more often, but her absence does keep this place from being overcrowded.")
talkEntry:addResponse("It is my duty to worship the Five Gods, but it would be a lie if I did not say I resented her for taking my eye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("M�gen die F�nf mit euch sein.")
talkEntry:addResponse("Ich w�nschte, sie k�nnte �fter hierher kommen, aber ohne sie ist es hier deutlich ruhiger.")
talkEntry:addResponse("Es ist meine Pflicht, den f�nf G�ttern zu huldigen, aber ich w�rde l�gen, wenn ich sagte, dass ich keinen Groll gegen sie hege, nahm sie mir doch ein Auge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("The Five be with you.")
talkEntry:addResponse("Most see her as a rock, but most don't see how fluid the sand is. They fail to see her lively side.")
talkEntry:addResponse("Hahaha, she is my God now. People often mistake her for me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("M�gen die F�nf mit euch sein.")
talkEntry:addResponse("Den meisten erscheint sie wie ein Fels, aber niemand begreift, wie der Sand flie�en kann. Ihre lebendige Seite wird meist missachtet.")
talkEntry:addResponse("Haha, sie ist meine G�ttin, denn viele verwechseln mich mit ihr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("There are no Younger Gods, there are five Gods, ten old and holy ancestors, and an uncalled one.")
talkEntry:addResponse("Who is that?")
talkEntry:addResponse("Why do you talk to me about such rubbish. Let an elf enjoy her day in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Es gibt keine 'jungen G�tter'. Es gibt f�nf G�tter, zehn altehrw�rdige Vorfahren und den Ungenannten.")
talkEntry:addResponse("Wer soll das sein?")
talkEntry:addResponse("Warum redet ihr mir mir �ber solch einen Bl�dsinn? Verderbt einer Elfe bitte nicht den Tag.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I sell fresh air and wisdom.")
talkEntry:addResponse("I'm sorry, I have nothing of value.")
talkEntry:addResponse("Shoo away with you. Go to a store if you want to sell something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe frische Luft und Weisheit.")
talkEntry:addResponse("Es tut mir leid, ich habe nichts von Wert.")
talkEntry:addResponse("Husch, weg mich euch! Geht in einen Laden, wenn ihr etwas kaufen wollt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I could tell you about my husband, Servont, but only if you are really interested in stories of an old lady.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich k�nnte euch von meinem Ehemann Servont erz�hlen, aber nur, wenn euch die Geschichten einer alten Dame interessieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Meaning of life")
talkEntry:addResponse("42.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sinn des Lebens")
talkEntry:addResponse("42.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("dik")
talkEntry:addResponse("Dik-Diks are cute, aren't they?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dik")
talkEntry:addResponse("Dik-Diks sind s��, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Madoquar")
talkEntry:addResponse("Good day, how are you?")
talkEntry:addResponse("The weather is fine today is it not?")
talkEntry:addResponse("I think you might have dropped something, haha, I was kidding.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Madoquar")
talkEntry:addResponse("Guten Tag, wie geht es euch?")
talkEntry:addResponse("Das Wetter ist ganz nett, oder?")
talkEntry:addResponse("Ich glaube, ihr habt da was verloren, haha.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Was f�r ein netter Tag. Ich sollte eine kleine Bergwanderung machen.", "What a nice day it is today. I am prone to walk in the mountains methinks.")
talkingNPC:addCycleText("�pfel hinterlassen immer so einen angenehmen Geschmack im Mund. Ich frage mich, ob es eine Frucht gibt, die meinem Gaumen noch mehr erquicken kann als ein frischer Apfel.", "Apples leave such a pleasant after taste in my mouth. I wonder if there will ever be a fruit more pleasing to the tongue than a fresh apple.")
talkingNPC:addCycleText("Ich m�chte nicht gest�rt werden. An manchen Tagen m�chte ich mich einfach ausruhen und meine Mahlzeiten genie�en.", "I do not wish to be bothered today. Some days I just want to rest and nibble on my lunch in peace.")
talkingNPC:addCycleText("Diese dunkle Vorahnung ist eine Last auf meiner Seele.", "That eerie feeling, it's a burden on my soul.")
talkingNPC:addCycleText("Es wird Regen geben. M�ge Tanora dieses Land nicht allzu sehr peinigen.", "It seems as though it's about to rain today. Please Tanora do not be cruel to this land.")
talkingNPC:addCycleText("Tanora, m�gest du uns nur sanft und so selten wie m�glich behelligen.", "Tanora, you only touched us lightly, please visit us as sparingly as possible.")
talkingNPC:addCycleText("Das ist schon mehr als unangenehm. Ich werde nicht eher meine Frieden finden, bevor diese Last von mir genommen wurde.", "This is beyond irksome. I will not feel at peace until this burden is lifted from me.")
talkingNPC:addCycleText("Ich war schon �berall in Illarion. Es gibt wohlm�glich nicht einen Fluss, aus dem ich nicht schon getrunken h�tte oder einen Berg, auf dessen Spitze ich nicht schon gespeist habe.", "I have been all over Illarion. There may not be a river I have not drunk from, or a mountain peak that I have not dined on top of.")
talkingNPC:addCycleText("Habt ihr diesen Echsenmann gesehen? Seine Beine waren so... Ich sollte ihn mal zu mir einladen.", "Did you see that lizardman? His legs were... hehe. I may have to get him to visit me.")
talkingNPC:addCycleText("Etwas b�ses liegt in der Natur der Menschen.", "I see something dangerous in humans.")
talkingNPC:addCycleText("Die Echsen leben in Frieden mit dem Meer, die Elfen mit dem Wald, die Halblinge mit den H�geln, die Zwerge mit den Bergen und die Orks mit ihrer Jagdbeute. Aber Menschen zerst�ren des Zerst�rens wegen.", "The lizard makes peace with the sea, the elf with the forest, the halflings with the hills, the dwarf with his mountain and the orc with his prey. But humans destroy to destroy.")
talkingNPC:addCycleText("Menschen stehlen, um zu schaffen und das, was sie schaffen, wird von anderen ihrer Art zerst�rt.", "Humans, they steal to create and those creations end up being destroyed.")
talkingNPC:addCycleText("#me r�ckt eine Augenklappe zurecht, die einen Teil ihrer rechten Gesichtsh�lfte abdeckt.", "#me readjusts a patch that covers her right eye.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(3)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Madoquar die Alterslose.", "This NPC is Madoquar the Ageless.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 803)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 323)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
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
