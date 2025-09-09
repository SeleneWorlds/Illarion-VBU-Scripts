local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_skill = require("npc.base.condition.skill")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_skill = require("npc.base.consequence.skill")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the tailor Lilith and may need help in a task. Keywords: Hello, Quest, Needle, Tailor."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist die Schneiderin Lilith. Sie k�nnte Hilfe bei einer Aufgabe gebrauchen. Schl�sselw�rter: Hallo, Quest, Nadel, Schneider."))
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
talkEntry:addResponse("Hiho! You must have come to help me!")
talkEntry:addResponse("Oh my, hello there! You are here to assist me, I assume?")
talkEntry:addResponse("#me gives a charming smile, 'Are you here to help me?'")
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
talkEntry:addResponse("Hiho! Du bist sicher hier, um mir zu helfen!")
talkEntry:addResponse("Oh, hallo!")
talkEntry:addResponse("#me l�chelt freundlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! You must have come to help me!")
talkEntry:addResponse("Oh my, hello there! You are here to assist me, I assume?")
talkEntry:addResponse("#me gives a charming smile, 'Are you here to help me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Du bist sicher hier, um mir zu helfen!")
talkEntry:addResponse("Oh, hallo! Du kannst mir bestimmt helfen.")
talkEntry:addResponse("#me l�chelt freundlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me waves excitedly.")
talkEntry:addResponse("Good Bye!")
talkEntry:addResponse("Come back soon and maybe we can have some cake!")
talkEntry:addResponse("#me turns back to the sheep, saying over her shoulder 'Farewell' as she pets one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me winkt freudig zum Abschied.")
talkEntry:addResponse("Auf wiedersehen!")
talkEntry:addResponse("Komm bald zur�ck und dann essen wir Kuchen!")
talkEntry:addResponse("#me wendet sich wieder den Schafen zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me waves excitedly.")
talkEntry:addResponse("Good Bye!")
talkEntry:addResponse("Come back soon and maybe we can have some cake?")
talkEntry:addResponse("#me turns back to the sheep, saying over her shoulder 'Farewell' as she pets one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me winkt freudig zum Abschied.")
talkEntry:addResponse("Auf wiedersehen!")
talkEntry:addResponse("Komm bald zur�ck und dann essen wir Kuchen!")
talkEntry:addResponse("#me wendet sich wieder den Schafen zu.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm in a hurry! The Archmage ordered a robe and I haven't finished it yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich bin in Eile. Der Erzmagier hat eine Robe bestellt und ich habe sie noch nicht fertig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Lilith Needlehand, and I am a tailor. It is a pleasure to meet you!")
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
talkEntry:addResponse("Mein Name ist Lilith Needlehand und ich bin eine Schneiderin. Es ist sch�n, deine Bekanntschaft zu machen.")
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
talkEntry:addCondition(condition_quest(73, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Tailoress I"))
talkEntry:addConsequence(consequence_quest(73, "=", 1))
talkEntry:addResponse("I could use some help tailoring a robe for the Archmage! Could you help? If so please get me twenty bundles of wool, I am short on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Das faule Schneiderlein I"))
talkEntry:addConsequence(consequence_quest(73, "=", 1))
talkEntry:addResponse("Ich k�nnte etwas Hilfe gebrauchen, um eine Robe f�r den Erzmagier zu schneidern. Bring mir doch bitte zwanzig Wollballen, ich habe keine mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Tailoress I"))
talkEntry:addConsequence(consequence_quest(73, "=", 1))
talkEntry:addResponse("I could use some help tailoring a robe for the Archmage! Could you help? If so please get me twenty bundles of wool, I am short on that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Das faule Schneiderlein I"))
talkEntry:addConsequence(consequence_quest(73, "=", 1))
talkEntry:addResponse("Ich k�nnte etwas Hilfe gebrauchen, um eine Robe f�r den Erzmagier zu schneidern. Bring mir doch bitte zwanzig Wollballen, ich habe keine mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a needle and your tailoring skill increases."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Why thank you! I don't have a real reward for you, but you can have my spare needle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a needle."))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Why thank you! I don't have a real reward for you, but you can have my spare needle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Nadel und deine Schneidereif�higkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Oh, danke! Ich habe keine Belohnung f�r dich, aber du kannst meine Ersatznadel haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Nadel."))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Oh, danke! Ich habe keine Belohnung f�r dich, aber du kannst meine Ersatznadel haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a needle and your tailoring skill increases."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Why thank you! I don't have a real reward for you, but you can have my spare needle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a needle."))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Why thank you! I don't have a real reward for you, but you can have my spare needle.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Nadel und deine Schneidereif�higkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Oh, danke! Ich habe keine Belohnung f�r dich, aber du kannst meine Ersatznadel haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_item(170, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Nadel."))
talkEntry:addConsequence(consequence_deleteitem(170, 20, nil))
talkEntry:addConsequence(consequence_item(47, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 2))
talkEntry:addResponse("Oh, danke! Ich habe keine Belohnung f�r dich, aber du kannst meine Ersatznadel haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Did you forget? I need twenty bundles of wool! Oh please, I need to finish this robe for the Archmage in time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du es schon vergessen? Ich brauche zwanzig Wollballen. Bitte, ich muss die Robe f�r den Erzmagier rechtzeitig fertig kriegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Did you forget? I need twenty bundles of wool! Oh please, I need to finish this robe for the Archmage in time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du es schon vergessen? Ich brauche zwanzig Wollballen. Bitte, ich muss die Robe f�r den Erzmagier rechtzeitig fertig kriegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Tailoress II"))
talkEntry:addConsequence(consequence_quest(73, "=", 3))
talkEntry:addResponse("Oh, you want to help me some more? Well, I certainly need some thread for the robe. Bring me fifteen bobbins of thread, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Das faule Schneiderlein II"))
talkEntry:addConsequence(consequence_quest(73, "=", 3))
talkEntry:addResponse("Oh, du willst mir noch mehr helfen? Nun, ich werde sicherlich einiges an Garn f�r die Robe brauchen. Bring mir doch bitte f�nfzehn Spulen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Tailoress II"))
talkEntry:addConsequence(consequence_quest(73, "=", 3))
talkEntry:addResponse("Oh, you want to help me some more? Well, I certainly need some thread for the robe. Bring me fifteen bobbins of thread, please.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Das faule Schneiderlein II"))
talkEntry:addConsequence(consequence_quest(73, "=", 3))
talkEntry:addResponse("Oh, du willst mir noch mehr helfen? Nun, ich werde sicherlich einiges an Garn f�r die Robe brauchen. Bring mir doch bitte f�nfzehn Spulen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a blue dress and your tailoring skill increases."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, thank you so much! I appreciate this greatly, I hope you accept this dress as compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a blue dress."))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, thank you so much! I appreciate this greatly, I hope you accept this dress as compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein blaues Kleid und deine Schneidereif�higkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, vielen lieben Dank. Ich wei� das zu sch�tzen und hoffe, du akzeptierst dieses Kleid als Zeichen meines Anerkennung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein blaues Kleid."))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, vielen lieben Dank. Ich wei� das zu sch�tzen und hoffe, du akzeptierst dieses Kleid als Zeichen meines Anerkennung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a blue dress and your tailoring skill increases."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, thank you so much! I appreciate this greatly, I hope you accept this dress as compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a blue dress."))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, thank you so much! I appreciate this greatly, I hope you accept this dress as compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein blaues Kleid und deine Schneidereif�higkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, vielen lieben Dank. Ich wei� das zu sch�tzen und hoffe, du akzeptierst dieses Kleid als Zeichen meines Anerkennung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_item(50, "all", ">", 14, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein blaues Kleid."))
talkEntry:addConsequence(consequence_deleteitem(50, 15, nil))
talkEntry:addConsequence(consequence_item(385, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 4))
talkEntry:addResponse("Ah, vielen lieben Dank. Ich wei� das zu sch�tzen und hoffe, du akzeptierst dieses Kleid als Zeichen meines Anerkennung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Thread, thread, my dear, I lack thread and you don't have enough!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Garn, Garn, ohje, mir ist das Garn ausgegangen und du hast auch nicht genug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Thread, thread, my dear, I lack thread and you don't have enough!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Garn, Garn, ohje, mir ist das Garn ausgegangen und du hast auch nicht genug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Tailoress III"))
talkEntry:addConsequence(consequence_quest(73, "=", 5))
talkEntry:addResponse("I'm short on red cloth, but I need some for the robe I'm making for Archmage Elvaine Morgan. Can you please get me five bolts?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Das faule Schneiderlein III"))
talkEntry:addConsequence(consequence_quest(73, "=", 5))
talkEntry:addResponse("Mir ist der rote Stoff ausgegangen! Den brauch ich aber f�r die Robe f�r Elvaine Morgan. Bringst du mir f�nf Bahnen, bitte?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Lazy Tailoress III"))
talkEntry:addConsequence(consequence_quest(73, "=", 5))
talkEntry:addResponse("I'm short on red cloth, but I need some for the robe I'm making for Archmage Elvaine Morgan. Can you please get me five bolts?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Das faule Schneiderlein III"))
talkEntry:addConsequence(consequence_quest(73, "=", 5))
talkEntry:addResponse("Mir ist der rote Stoff ausgegangen! Den brauch ich aber f�r die Robe f�r Elvaine Morgan. Bringst du mir f�nf Bahnen, bitte")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a master mage robe and your tailoring skill increases."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Thank you, that is exactly what I needed! Now I can finish the robe for Archmage Morgan. Here, take my last attempt, he sent it back because it was too tight for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a master mage robe."))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Thank you, that is exactly what I needed! Now I can finish the robe for Archmage Morgan. Here, take my last attempt he sent it back it was too tight for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Meistermagierrobe und deine Schneidereif�higkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Danke, genau, was ich gebraucht habe! Nun kann ich die Robe f�r den Erzmagier Morgan fertigstellen. Hier, dies war mein letzter Versuch, er hat sie zur�ckgeschickt, sie war ihm zu eng.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Meistermagierrobe."))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Danke, genau, was ich gebraucht habe! Nun kann ich die Robe f�r den Erzmagier Morgan fertigstellen. Hier, dies war mein letzter Versuch, er hat sie zur�ckgeschickt, sie war ihm zu eng.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a master mage robe and your tailoring skill increases."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Thank you, that is exactly what I needed! Now I can finish the robe for Archmage Morgan. Here, take my last attempt he sent it back it was too tight for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a master mage robe."))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Thank you, that is exactly what I needed! Now I can finish the robe for Archmage Morgan. Here, take my last attempt, he sent it back because it was too tight for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.tailoring, "<", 90))
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Meistermagierrobe und deine Schneidereif�higkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.tailoring, "+", 1))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Danke, genau, was ich gebraucht habe! Nun kann ich die Robe f�r den Erzmagier Morgan fertigstellen. Hier, dies war mein letzter Versuch, er hat sie zur�ckgeschickt, sie war ihm zu eng.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_item(174, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst eine Meistermagierrobe."))
talkEntry:addConsequence(consequence_deleteitem(174, 5, nil))
talkEntry:addConsequence(consequence_item(558, 1, 999, nil))
talkEntry:addConsequence(consequence_quest(73, "=", 6))
talkEntry:addResponse("Danke, genau, was ich gebraucht habe! Nun kann ich die Robe f�r den Erzmagier Morgan fertigstellen. Hier, dies war mein letzter Versuch, er hat sie zur�ckgeschickt, sie war ihm zu eng.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hrm... I need a little more red cloth, otherwise, I cannot finish the robe for Archmage Morgan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Uhm... ich brauche mehr roten Stoff. Anderenfalls kann ich die Robe f�r den Erzmagier Morgan nicht fertigstellen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Hrm... I need a little more red cloth. Otherwise, I cannot finish the robe for Archmage Morgan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 5))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Uhm... ich brauche mehr roten Stoff. Anderenfalls kann ich die Robe f�r den Erzmagier Morgan nicht fertigstellen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't need anything else, but thank you! You saved the day!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauche nichts weiter, aber danke nochmal! Du hast mir ganz sch�n aus der Patsche geholfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't need anything else, but thank you! You saved the day!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(73, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich brauche nichts weiter, aber danke nochmal! Du hast mir ganz sch�n aus der Patsche geholfen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("As a tailor, I use wool, thread, and dye to create clothes. Some people only wear armour, but for a fancy evening nothing beats a fine robe or dress.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Als Schneiderin mache ich Kleidung aus Wolle, Garn und F�rbemittel. Einige Leute tragen den ganzen Tag ihre R�stung, aber f�r einen sch�nen Abend gibt es nichts feineres als ein tolles Kleid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("As a tailor, I use wool, thread, and dye to create clothes. Some people only wear armour, but for a fancy evening nothing beats a fine robe or dress.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Als Schneiderin mache ich Kleidung aus Wolle, Garn und F�rbemittel. Einige Leute tragen den ganzen Tag ihre R�stung, aber f�r einen sch�nen Abend gibt es nichts feineres als ein tolles Kleid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Oh, what was that funny word? Grobi-at?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Oh, was war das denn f�r ein lustiges Wort? Grobi-at?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Hui! How exciting to meet you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Hui! Wie toll, dich kennenzulernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tailor")
talkEntry:addResponse("As a tailor, I use wool, thread, and dye to create clothes. Some people only wear armour, but for a fancy evening nothing beats a fine robe or dress.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schneider")
talkEntry:addResponse("Als Schneiderin mache ich Kleidung aus Wolle, Garn und F�rbemittel. Einige Leute tragen den ganzen Tag ihre R�stung, aber f�r einen sch�nen Abend gibt es nichts feineres als ein tolles Kleid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("order")
talkEntry:addResponse("Oh dear, the Archmage ordered a new robe and I totally forgot about working on it! Maybe you can help me with this task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bestellung")
talkEntry:addResponse("Ohje, der Erzmagier hat eine neue Robe bestellt. Ich hab vollkommen vergessen, daran zu arbeiten. Vielleicht kannst du mir mit dieser Aufgabe helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("robe")
talkEntry:addResponse("Oh dear, the Archmage ordered a new robe and I totally forgot about working on it! Maybe you can help me with this task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Robe")
talkEntry:addResponse("Ohje, der Erzmagier hat eine neue Robe bestellt. Ich hab vollkommen vergessen, daran zu arbeiten. Vielleicht kannst du mir mit dieser Aufgabe helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("needle")
talkEntry:addResponse("I use my needle to make clothes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nadel")
talkEntry:addResponse("Mit meiner Nadel n�he ich Kleidung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("scissors")
talkEntry:addResponse("To get scissors, I strongly suggest you talk to a smith, or you may purchase them from the nearby stall, I believe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schere")
talkEntry:addResponse("Wenn du eine Schere brauchst, geh doch zu einem Schmied oder frag im Laden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Archmage Morgan, yes, I think he ordered a new robe... I should work on it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Erzmagier Morgan, ja, der hat eine neue Robe bei mir bestellt. Ich sollte besser mal an ihr arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Archmage Morgan, yes, I think he ordered a new robe... I should work on it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Erzmagier Morgan, ja, der hat eine neue Robe bei mir bestellt. Ich sollte besser mal an ihr arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("This is Runewick! I personally enjoy living here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Dies hier ist Runewick. Mir gef�llt es hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ui, they have no law in Galmair, but everyone knows the Don is the boss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ui, es gibt kein Gesetz in Galmair, aber jeder wei�, dass der Don der Boss ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is funny. I used to live there, but here, it is more pleasant.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist echt komisch. Ich hab da fr�her mal gelebt, aber hier ist es sch�ner.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("A woman rules Cadomyr. That is so funny!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Eine Frau regiert Cadomyr. Das ist so lustig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("A woman rules Cadomyr. That is so funny!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Eine Frau regiert Cadomyr. Das ist so lustig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is far away, somewhere in the west, I think. They don't like women there, but are ruled by a Queen. Strange, eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist weit weg, irgendwo im Westen meine ich. Die m�gen keine Frauen da, aber trotzdem regiert da eine K�nigin. Komisch, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("They are mad, those Albarians.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Die spinnen, die Albarier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("My aunt lives near Gynk. I always write her a letter, each month.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Meine Tante lebt bei Gynk. Ich schreibe ihr jeden Monat einen Brief.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("The Archmage talks a lot about Salkamar, I know nothing about that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Der Erzmagier redet viel �ber Salkamar, ich wei� da nichts dr�ber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Irmorom is the best God to worship for a tailor, believe me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Irmorom ist der beste Gott f�r einen Schneiderin. Glaube mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom guides my needle. Sometimes, he's angry and I prick myself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom f�hrt meine Nadel. Manchmal ist er b�se auf mich und dann picks ich mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Eeek!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Lilith")
talkEntry:addTrigger("Needlehand")
talkEntry:addResponse("That's me! Lilith! Do you like my name?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Lilith")
talkEntry:addTrigger("Needlehand")
talkEntry:addResponse("Lilith, das bin ich! Magst du meinen Namen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I am not currently selling or buying anything, I need to finish an order first.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe oder verkaufe derzeit nichts. Ich muss erstmal eine Bestellung fertig bekommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Hrm? I don't know what you are talking about. Do you expect me to gossip like an old halfling woman?!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Hrm? Wor�ber sprichst du? Soll ich dir dummes Zeug erz�hlen wie ein Waschweib?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me summt ein Liedchen.", "#me hums a sweet song.")
talkingNPC:addCycleText("#me schaut zum Himmel und murmelt: 'Fast schon Zeit f�r ein St�ck Kuchen.'", "#me looks at the sky, and mumbles, 'Nearly time for pie...'")
talkingNPC:addCycleText("Oh, ist schon wieder Essenszeit?", "Oh, is it nearly time to eat again?")
talkingNPC:addCycleText("Hallo da dr�ben!", "Hello over there!")
talkingNPC:addCycleText("#me kichert freudig.", "#me giggles.")
talkingNPC:addCycleText("Ohje, ich muss fertig werden.", "Oh, I have to get things done.")
talkingNPC:addCycleText("#me g�hnt: 'So viel zu tun und so wenig S��es zu essen!'.", "#me yawns, 'So much work and so little sweets!'")
talkingNPC:addCycleText("Ich bin hungrig!", "I feel hungry!")
talkingNPC:addCycleText("Bestellungen, Bestellungen, Bestellungen. Warum kauft nicht einfach immer jemand das, was ich gerade fertig habe?", "Order, orders, orders. Why won't they buy what I complete instead?")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Schneiderin Lilith.", "This NPC is the tailor Lilith.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you clearly confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 801)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
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
