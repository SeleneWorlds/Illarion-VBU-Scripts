local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local consequence_treasure = require("npc.base.consequence.treasure")
local basic = require("npc.base.basic")
local condition_chance = require("npc.base.condition.chance")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Queen Rosaline Edwards of Cadomyr. Keywords: Hail my Queen, Cadomyr, enemies, Sir Reginald, tomb, grave."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist K�nigin Rosaline Edwards von Cadomyr. Schl�sselw�rter: Es lebe die K�nigin, Cadomyr, Feinde, Sir Reginald, Gruft, Grab."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, "=", 1))
talkEntry:addCondition(condition_item(144, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_town(1))
talkEntry:addConsequence(consequence_inform("[Quest 'Find Queen Rosaline Edwards' end]"))
talkEntry:addConsequence(consequence_deleteitem(144, 1, nil))
talkEntry:addConsequence(consequence_quest(642, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Oh, flowers! However, do not think you can win my favour, but I will accept the attempt this time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, "=", 1))
talkEntry:addCondition(condition_item(144, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_town(1))
talkEntry:addConsequence(consequence_inform("[Quest 'Finde K�nigin Rosaline Edwards' Ende]"))
talkEntry:addConsequence(consequence_deleteitem(144, 1, nil))
talkEntry:addConsequence(consequence_quest(642, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Oh, Blumen! Aber glaubt nicht, dass ihr damit meine Gunst gewinnen k�nnt, auch wenn ich euren Versuch dieses Mal durchgehen lassen werde.")
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
talkEntry:addResponse("Speak, but choose your words wisely for my time is short.")
talkEntry:addResponse("Ah, a servant of mine, good, what news do you bear from my realm?")
talkEntry:addResponse("You dare to disturb me? Fine, fortunately for you I needed a distraction.")
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
talkEntry:addResponse("Sagt, was wollt ihr von eurer K�nigin? Sprecht schnell oder ich werde euch Beine machen.")
talkEntry:addResponse("Ah, einer meiner Untertanen. Gut, was f�r Kunde bringt ihr aus meinem Reich?")
talkEntry:addResponse("Ihr wagt es, mich zu st�ren. Fein, ich kann etwas Abwechslung gut vertragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Speak, but choose your words wisely for my time is short.")
talkEntry:addResponse("Ah, a servant of mine, good, what news do you bear from my realm?")
talkEntry:addResponse("You dare to disturb me? Fine, fortunately for you I needed a distraction.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Sagt, was wollt ihr von eurer K�nigin? Sprecht schnell oder ich werde euch Beine machen.")
talkEntry:addResponse("Ah, einer meiner Untertanen. Gut, was f�r Kunde bringt ihr aus meinem Reich?")
talkEntry:addResponse("Ihr wagt es, mich zu st�ren. Fein, ich kann etwas Abwechslung gut vertragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me waves: 'Begone.'")
talkEntry:addResponse("Go with Malachin's blessings and do deeds to honour Cadomyr's name.")
talkEntry:addResponse("Very well, be off and serve me as I do Cadomyr.")
talkEntry:addResponse("Fare thee well, and be sure to speak fondly of Cadomyr on your travels.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me winkt ab: 'Hinfort.'")
talkEntry:addResponse("Geht mit Malachins Segen und vollbringt Taten zu Ehren Cadomyrs. Und meiner.")
talkEntry:addResponse("Fort, fort und dient mir in jeder Minute eures Lebens so, wie ich Cadomyr diene.")
talkEntry:addResponse("Gehabt euch wohl und verbreitet Kunde �ber das glorreiche K�nigreich Cadomyr �berall auf euren Reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("#me waves: 'Begone.'")
talkEntry:addResponse("Go with Malachin's blessings and do deeds to honour Cadomyr's name.")
talkEntry:addResponse("Very well, be off and serve me as I do Cadomyr.")
talkEntry:addResponse("Fare thee well, and be sure to speak fondly of Cadomyr on your travels.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("#me winkt ab: 'Hinfort.'")
talkEntry:addResponse("Geht mit Malachins Segen und vollbringt Taten zu Ehren Cadomyrs. Und meiner.")
talkEntry:addResponse("Fort, fort und dient mir in jeder Minute eures Lebens so, wie ich Cadomyr diene.")
talkEntry:addResponse("Gehabt euch wohl und verbreitet Kunde �ber das glorreiche K�nigreich Cadomyr �berall auf euren Reisen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("No queen could be better, I assure you, with the service of the noblest and truest of men at her side.")
talkEntry:addResponse("Glorious, truly Zhambra has blessed me with the most honourable servants.")
talkEntry:addResponse("Truth be told my skin is yearning for the soothing comfort of donkey milk, but that is neither here nor there I suppose.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ich bin die unbestrittene Monarchin eines glorreichen Reiches der edelsten Leute. Wie geht es mir wohl?")
talkEntry:addResponse("Mir w�rde es weit besser gehen, wenn ihr niederknien w�rdet. Jetzt!")
talkEntry:addResponse("Mir k�me ein Bad in Eselsmilch gerade recht. Dieser ganze Sand schadet meiner feinen Haut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Who am I? You dare address me in such a manner? Be assured if my mood were not so temperate you'd be bellowing my name from the dungeons with your cries for mercy!")
talkEntry:addResponse("Poor child you must have been born from under a rock if you don't know my name. Do not disgrace me with your daft shortcomings, ask any of my humble servants who I am.")
talkEntry:addResponse("You must be some distant traveller to have the nerve to ask the Queen of Cadomyr her name. Be gone from me I haven't the time for you.")
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
talkEntry:addResponse("Wer ich bin? Ihr habt die K�hnheit zuzugeben, dass ihr nicht wisst, wer ich bin? Aus meinen Augen!")
talkEntry:addResponse("Wenn ihr wirklich nicht wisst, wer ich bin, dann fragt einen meiner Diener.")
talkEntry:addResponse("Sch�mt ihr euch nicht, eine K�nigin albarischen Gebl�ts nach ihrem Namen zu fragen?")
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
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addTrigger("message")
talkEntry:addTrigger("news")
talkEntry:addTrigger("letter")
talkEntry:addTrigger("scroll")
talkEntry:addTrigger("parchment")
talkEntry:addConsequence(consequence_inform("[Quest status] The Reminder V: You deliver the message from Groktan Flintsplit to Queen Rosaline Edwards."))
talkEntry:addConsequence(consequence_quest(107, "=", 13))
talkEntry:addResponse("#me shouts in fury and crumples the letter in her firm grasp, 'Tell that filthy bastard he'll get my throne over my dead body!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addTrigger("nachricht")
talkEntry:addTrigger("brief")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Schriftrolle")
talkEntry:addTrigger("Pergament")
talkEntry:addConsequence(consequence_inform("[Queststatus] Die Erinnerung V: Du �berbringst K�nigin Rosaline Edwards die Nachricht von Groktan Flintsplit."))
talkEntry:addConsequence(consequence_quest(107, "=", 13))
talkEntry:addResponse("#me schnaubt wutentbrannt und zerkn�llt den Brief: 'Sag diesem dreckigen Bastard, dass er so nie an meinen Thron kommen wird. Nur �ber meine Leiche!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addConsequence(consequence_inform("[Quest status] The Reminder V: You deliver the message from Groktan Flintsplit to Queen Rosaline Edwards."))
talkEntry:addConsequence(consequence_quest(107, "=", 13))
talkEntry:addResponse("#me shouts in fury and crumples the letter in her firm grasp, 'Tell that filthy bastard he'll get my throne over my dead body!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 12))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addConsequence(consequence_inform("[Queststatus] Die Erinnerung V: Du �berbringst K�nigin Rosaline Edwards die Nachricht von Groktan Flintsplit."))
talkEntry:addConsequence(consequence_quest(107, "=", 13))
talkEntry:addResponse("#me schnaubt wutentbrannt und zerkn�llt den Brief: 'Sag diesem dreckigen Bastard, dass er so nie an meinen Thron kommen wird. Nur �ber meine Leiche!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ah, a loyal subject. Very well, ask one of my servants what you can do for me today. I cannot be bothered such details, I have to rule an entire kingdom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ah, ein loyaler Diener, wie fein. Bitte fragt einen meiner Diener, was ihr heute f�r mich tun k�nnt. Ich kann mich nicht mit Details aufhalten, ich muss ein ganzes K�nigreich regieren, nicht nur euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Ah, a loyal subject. Very well, ask one of my servants what you can do for me today. I cannot be bothered such details, I have to rule an entire kingdom.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ah, ein loyaler Diener, wie fein. Bitte fragt einen meiner Diener, was ihr heute f�r mich tun k�nnt. Ich kann mich nicht mit Details aufhalten, ich muss ein ganzes K�nigreich regieren, nicht nur euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(10.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(1))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(10.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(1))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(11.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(11.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(2))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(13.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(3))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(13.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(3))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(14.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(4))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(14.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(4))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(17.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(5))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(17.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(5))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(6))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(20.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(6))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(7))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(25.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(7))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(34.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(8))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(34.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addConsequence(consequence_treasure(8))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(51.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3525, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(51.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3525, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3519, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addResponse("#me nods and hands you an item silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(642, ">", 0))
talkEntry:addCondition(condition_quest(643, "=", 0))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(100.0))
talkEntry:addTrigger("Kharud")
talkEntry:addConsequence(consequence_item(3519, 1, 999, {["gemLevel"] = "1"}))
talkEntry:addConsequence(consequence_quest(643, "=", 1))
talkEntry:addResponse("#me nickt und reicht dir leise einen Gegenstand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 13))
talkEntry:addCondition(condition_item(225, "all", ">", 0, {["descriptionEn"] = "This crown belongs to Rosaline Edwards."}))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zassaria")
talkEntry:addTrigger("lizard")
talkEntry:addTrigger("crown")
talkEntry:addTrigger("missing")
talkEntry:addTrigger("belong")
talkEntry:addTrigger("porperty")
talkEntry:addTrigger("riverbank")
talkEntry:addTrigger("message")
talkEntry:addConsequence(consequence_deleteitem(225, 1, {["descriptionEn"] = "This crown belongs to Rosaline Edwards."}))
talkEntry:addConsequence(consequence_quest(701, "=", 14))
talkEntry:addResponse("What? Oh, thank you for returning my extra crown. I don't know how it got all the way to Runewick. You may leave now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(701, "=", 13))
talkEntry:addCondition(condition_item(225, "all", ">", 0, {["descriptionDe"] = "Diese Krone geh�rt Rosaline Edwards."}))
talkEntry:addTrigger("Zassaria")
talkEntry:addTrigger("Echsenmensch")
talkEntry:addTrigger("Krone")
talkEntry:addTrigger("verloren")
talkEntry:addTrigger("geh�ren")
talkEntry:addTrigger("Eigentum")
talkEntry:addTrigger("riverbank")
talkEntry:addTrigger("Nachricht")
talkEntry:addConsequence(consequence_deleteitem(225, 1, {["descriptionDe"] = "Diese Krone geh�rt Rosaline Edwards."}))
talkEntry:addConsequence(consequence_quest(701, "=", 14))
talkEntry:addResponse("Was? Oh, danke das Ihr meine Ersatzkrone zur�ckbringt. Ich wei� nicht wie sie bis nach Runewick gekommen ist. Ihr k�nnt jetzt gehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Profession? Foolish traveller, I am the Queen, my profession is to rule this kingdom!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Lasst mich nachdenken... ich regiere hier, so weit das Auge reicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Job? Foolish traveller, I am the Queen, my job is to rule this kingdom!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Lasst mich nachdenken... ich regiere hier, so weit das Auge reicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addResponse("Don't come to me, whining about some smut in the ocean. Behold the glory of Cadomyr instead.")
talkEntry:addResponse("Gobaith was doomed and I knew that. How did I know? I am the Queen, did you forget?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addResponse("Ihr kommt doch nicht etwa zu mir, um �ber einen Schmutzfleck im Ozean zu heulen. Betrachtet stattdessen den Glanz Cadomyrs.")
talkEntry:addResponse("Gobaith war dem Untergang geweiht. Woher ich das wei�? Ich bin die K�nigin, schon vergessen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bitch")
talkEntry:addTrigger("witch")
talkEntry:addResponse("What? Somebody said I was a witch? To the stake!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hastings")
talkEntry:addTrigger("Baron")
talkEntry:addResponse("Never utter his name again in my court. Be gone! Do not return to me unless you carry his head upon a pike.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bounty")
talkEntry:addResponse("There is no bounty on Baron Hastings' head. It is a matter of honour to slay this fiend of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Milk")
talkEntry:addTrigger("donkey")
talkEntry:addResponse("A bath in donkey's milk can do wonders for your skin. You should try it yourself, if you can afford it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("pyramid")
talkEntry:addResponse("A pyramid as a grave monument? Who would do such a stupid thing? Discuss that with Robertus, the royal builder, but expect to receive some laughter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cube")
talkEntry:addTrigger("cubus")
talkEntry:addTrigger("grave")
talkEntry:addResponse("My royal builder, Robertus, once mentioned that he wants to build a grave in the form of a cube for me. If I like it, good for me, if I don't like it, bad for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tomb")
talkEntry:addResponse("The grave of my father can be found in a magnificent tomb outside the town. I suggest you visit there and pay homage to his great service.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("enemy")
talkEntry:addTrigger("enemies")
talkEntry:addTrigger("fiend")
talkEntry:addTrigger("foe")
talkEntry:addResponse("Cadomyr has no foes. There is only that bastard Baron Hastings who contests my throne, but I doubt he will survive any attempt to grasp it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("honor")
talkEntry:addTrigger("honour")
talkEntry:addResponse("Honour is everything for a nobleman of Cadomyr. If you should lose your honour, then you shall lose your life. Whatever you do, consider your fame and reputation first.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Law")
talkEntry:addTrigger("Custom")
talkEntry:addTrigger("habit")
talkEntry:addResponse("The law of Cadomyr lies before your very eyes. I am the law, but you may bear witness to our customs at the statue of my father in front of the Palace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("builder")
talkEntry:addResponse("Robertus is my royal builder. Currently he is working on building me the most magnificent grave known to man. My legacy will last forever!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Robertus")
talkEntry:addResponse("Robertus is my royal builder. Currently he is working on building me the most magnificent grave known to man. My legacy will last forever!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Desert")
talkEntry:addResponse("Sand, sand, sand. It is everywhere! In my shoes, in my chambers, and even in my hair! I hate the sand but thank Sirani that I have a lifetime supply of donkey's milk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Economy")
talkEntry:addResponse("Cadomyr's economy prospers. You can see that at every corner of town. Go forth to the market place and behold the goods of my beloved country.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("palace")
talkEntry:addResponse("My palace is the grandeur of hard working slaves and artisans. It was not built for me alone though; it was built for the honour of Cadomyr and the glory of Malachin, Zhambra, and Sirani!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("market")
talkEntry:addResponse("Glass goods, fine jewellery, herbal remedies, and masonry are our renowned products, readily available in our market quarter. Go and see for yourself!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hassan")
talkEntry:addResponse("Ah, yes, I think Hassan is the name of my royal fan waver. Where is he again? He is so lazy I should have him flogged daily for his shortcomings.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("husband")
talkEntry:addTrigger("marriage")
talkEntry:addResponse("I am married to Cadomyr. I serve it like I would serve my husband.")
talkEntry:addResponse("I am in waiting for Sirani to deliver my true love, till then she has secured my love to the fate of Cadomyr.")
talkEntry:addResponse("The royal blood line is not meant for just anyone, but I heed you no further explanation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queendom")
talkEntry:addResponse("This term ceased to be funny when the first head fell down the scaffold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("That is me, the only rightful Queen in all of Cadomyr. Now you had better act accordingly.")
talkEntry:addResponse("Commonly, my minions address me as 'Your Highness' or 'Almighty Queen'.")
talkEntry:addResponse("I bear the name Edwards with pride, you should speak it likewise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("My father, Sir Reginald Edwards, was the King of Cadomyr. Now, his only child inherits the throne, me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("King")
talkEntry:addTrigger("father")
talkEntry:addResponse("My father, Sir Reginald Edwards, was the King of Cadomyr. Now, his only child inherits the throne, me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cape")
talkEntry:addResponse("Cape Farewell? Tis true that even the lizardmen obey my orders. If you are searching their kind, Cape Farewell is certainly the best place to start.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("lizard")
talkEntry:addResponse("The lizardmen have proven loyal subjects. Most of them call Cape Farewell home.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("orc")
talkEntry:addResponse("You might presume that a queen of Albarian origin would dislike orcs, but he who swears loyalty to me and follows the old customs is my subject, even if green.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ioannes")
talkEntry:addTrigger("Faber")
talkEntry:addResponse("Ah, you are speaking about my royal treasurer. He serves me right and just. I trust him to manage the treasury of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Anthar")
talkEntry:addTrigger("Vilicon")
talkEntry:addResponse("My loyal chancellor; you are surprised he's an elf? He's a perfect example of loyalty to the throne!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hexe")
talkEntry:addTrigger("Schlampe")
talkEntry:addResponse("Was? Jemand behauptet, ich sei eine Hexe? Auf den Scheiterhaufen mit ihm!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hastings")
talkEntry:addTrigger("Baron")
talkEntry:addResponse("Ihr wagt es, den Namen dieses Feindes in den Mund zu nehmen. Ich hoffe, ihr werdet genau jetzt aufbrechen und nicht eher zur�ckkommen, als dass ihr seinen Kopf auf einem Pfahl pr�sentieren k�nnt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kopfgeld")
talkEntry:addResponse("Es ist kein Kopfgeld auf Baron Hastings ausgesetzt. Es ist eine Ehrentat, diesen Feind Cadomyrs zur Strecke zu bringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Milch")
talkEntry:addTrigger("Esel")
talkEntry:addResponse("Ein Bad in Eselmilch kann eurer Haut ware Wunder tun. Versucht es eines Tages auch einmal, aber nat�rlich nicht in meiner Wanne.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pyramide")
talkEntry:addResponse("Eine Pyramide als Grab? Wer kommt denn auf so eine t�richte Idee? Diskutiert das mit Robertus, meinem Baumeister. Aber macht euch auf Gel�chter gefasst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kubus")
talkEntry:addTrigger("Grab")
talkEntry:addResponse("Mein k�niglicher Baumeister, Robertus, erw�hnte einst, dass er gedenkt, mir ein Grab in Form eines Kubus zu bauen. Wenn es mir gef�llt - gut f�r mich. Wenn nicht - schlecht f�r ihn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gruft")
talkEntry:addResponse("Das Grab meines Vaters kann in einer beeindruckenden Gruft au�erhalb der Stadt gefunden werden. Ich weise euch an, das Gedenken meines Vaters zu ehren. Jetzt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Feind")
talkEntry:addResponse("Cadomyr hat keine Feinde, au�er diesem Bastard Baron Hastings, der den Thron f�r sich beansprucht. Aber ich bin mir sicher, er wird es nicht �berleben, wenn er wirklich nach ihm greift.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ehre")
talkEntry:addResponse("Die Ehre bedeutet einem Edelmann Cadomyrs alles. Verliert eure Ehre, so verliert ihr euer Leben. Was auch immer ihr gedenkt zu tun, bedenkt die Auswirkungen auf euren Ruf und Reputation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addTrigger("Sitte")
talkEntry:addTrigger("Brauch")
talkEntry:addResponse("Das Gesetz Cadomyrs steht genau vor ich: Ich. Unsere Gebr�uche stehen auf der Statue meines Vaters vor dem Palast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Baumeister")
talkEntry:addResponse("Robertus ist mein Baumeister. Oh ja, er wird mir das gro�artigste Grab bauen, was je ein Mensch gesehen hat. Mein Andenken wird die Zeitalter �berdauern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Robertus")
talkEntry:addResponse("Robertus ist mein Baumeister. Oh ja, er wird mir das gro�artigste Grab bauen, was je ein Mensch gesehen hat. Mein Andenken wird die Zeitalter �berdauern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("W�ste")
talkEntry:addResponse("Sand, Sand, Sand. Er ist �berall! In meinen Schuhen, in meinen Gem�chern, sogar in meinem Haar! Wie sehr ich diesen Sand hasse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wirtschaft")
talkEntry:addResponse("Cadomyrs Wirtschaft floriert, wie man an allen Ecken der Stadt sieht. Geht hin zum Marktplatz und erfreut euch der Waren des Landes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Palast")
talkEntry:addResponse("Mein Palast wurde von flei�igen Sklaven und Handwerkern gebaut. Aber er wurde nicht f�r mich alleine errichtet; sondern auch f�r den Ruhm Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("markt")
talkEntry:addResponse("Glaswaren, feineste Juwelen und Steinmetzkunst; ihr k�nnt bewundernswerte Waren auf dem Markt erwerben. Los, geht und gebt euer Geld aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hassan")
talkEntry:addResponse("Ahja, Hassan d�rfte der Name meines k�niglichen F�chelwedlers sein. Wo ist er schon wieder, er ist so faul, ich sollte ihn den ganzen Tag auspeitschen lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ehemann")
talkEntry:addTrigger("Hochzeit")
talkEntry:addResponse("Ich bin mit Cadomyr verm�hlt. Ich diene ihm wie ich meinem Ehemann dienen w�rde, verstanden?")
talkEntry:addResponse("Ich warte auf Prinz Richtig. Oder denkt ihr, die K�nigin von Cadomyr w�rde irgendeinen dahergelaufenen H�ndler aus Galmair heiraten?")
talkEntry:addResponse("Cadomyr braucht keinen K�nig wenn es eine K�nigin wie mich hat. Oder stellt ihr das etwa in Frage?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�niginreich")
talkEntry:addResponse("Dieser Begriff verlor seinen Witz als der erste Kopf vom Schafott rollte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Das bin ich: K�nigin Rosaline Edwards von Cadomyr. Jetzt verhaltet euch entsprechend.")
talkEntry:addResponse("Normalerweise sprechen mich meine Untertanen so an: 'Eure Hoheit' oder 'Allm�chtige K�nigin'.")
talkEntry:addResponse("Ich trage den Namen Edwards mit Stolz. Genauso solltet ihr ihn auch aussprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nig")
talkEntry:addTrigger("Vater")
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("Mein Vater, Sir Reginald Edwards, war der K�nig von Cadomyr. Und nun hat sein einziges Kind den Thron inne. Ich verstehe nicht, warum einige Leute diesen alten Brauch nicht aktzeptieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kap")
talkEntry:addTrigger("Abschied")
talkEntry:addResponse("F�rwahr, sogar die Echsenwesen gehorchen meinen Befehlen. Einige von ihnen leben am Kap des Abschiedes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Echse")
talkEntry:addResponse("F�rwahr, sogar die Echsenwesen gehorchen meinen Befehlen. Einige von ihnen leben am Kap des Abschiedes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ork")
talkEntry:addResponse("Ihr denkt vielleicht, eine K�nigin aus albarischem Geschlecht verabscheut Orks. Aber wer mir die Treue schw�rt und die alten Sitten achtet, der ist mein Untertan, sei er auch gr�n.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ioannes")
talkEntry:addTrigger("Faber")
talkEntry:addResponse("Ah, ihr redet von meinem k�niglichen K�mmerer. Er dient mir aufrichtig und treu. Ich vertraue ihm bei der Verwaltung der k�niglichen Reicht�mer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Anthar")
talkEntry:addTrigger("Vilicon")
talkEntry:addResponse("Mein mir ergebener Kanzler; ihr wundert euch, dass er ein Elf ist? Er ist ein Musterbeispiel der Loyalit�t gegen�ber dem Thron!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("A renegade mage who I have to admit, knows how to manipulate his minions into believing he is a generous leader.")
talkEntry:addResponse("I do attest, negotiations with him are far more challenging than simply thrusting a pike into his stomach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ein abtr�nniger Magier der zugegebenerweise wei�, wie man seine Untertanen dahingehend t�uscht, dass er vorgibt, ein gro�z�giger Anf�hrer zu sein.")
talkEntry:addResponse("F�rwahr, mit ihm zu verhandeln ist schwieriger als ihm einfach eine Lanze in den Bauch zu rammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("A renegade mage who I have to admit, knows how to manipulate his minions into believing he is a generous leader.")
talkEntry:addResponse("I do attest, negotiations with him are far more challenging than simply thrusting a pike into his stomach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ein abtr�nniger Magier der zugegebenerweise wei�, wie man seine Untertanen dahingehend t�uscht, dass er vorgibt, ein gro�z�giger Anf�hrer zu sein.")
talkEntry:addResponse("F�rwahr, mit ihm zu verhandeln ist schwieriger als ihm einfach eine Lanze in den Bauch zu rammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I have no problem with Runewick, as long as they stay in their place. Historically, however, they have chosen to be quite the nuisance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ich habe keine Probleme mit Runewick, solange sie ihren F��e nicht auf das Land setzen. Und das geschieht mir in letzter Zeit zu h�ufig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Do not incite my rage by mentioning his name. That illicit marriage proposal of his still agitates me greatly. Any satire or jest depicting that mockery shall result in the actor's mouth being filled with scorpions!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Wenn ihr es wagt, mich an den Heiratsantrag des Dons zu erinnern, dann lasse ich euren Mund mit Skorpionen f�llen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is like a rose with thorns; it might look appealing, but grasping for it should be done carefully.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist wie eine dornenbewehrte Rose; es mag begehrenswert aussehen, aber wenn man danach greift, dann sollte man jeden Schriff genau �berdenken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("That is me, the only rightful Queen in all of Sevenhill. Now you better act accordingly.")
talkEntry:addResponse("Commonly, my minions address me as 'Your Highness' or 'Almighty Queen'.")
talkEntry:addResponse("I bear the name Edwards with pride. You should speak it likewise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Das bin ich: K�nigin Rosaline Edwards von Cadomyr. Jetzt verhaltet euch entsprechend.")
talkEntry:addResponse("Normalerweise sprechen mich meine Untertanen so an: 'Eure Hoheit' oder 'Allm�chtige K�nigin'.")
talkEntry:addResponse("Ich trage den Namen Edwards mit Stolz. Genauso solltet ihr ihn auch aussprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("queen")
talkEntry:addResponse("That is me, the only rightful Queen in all of Sevenhill. Now you better act accordingly.")
talkEntry:addResponse("Commonly, my minions address me as 'Your Highness' or 'Almighty Queen'.")
talkEntry:addResponse("I bear the name Edwards with pride. You should speak it likewise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nigin")
talkEntry:addResponse("Das bin ich: K�nigin Rosaline Edwards von Cadomyr. Jetzt verhaltet euch entsprechend.")
talkEntry:addResponse("Normalerweise sprechen mich meine Untertanen so an: 'Eure Hoheit' oder 'Allm�chtige K�nigin'.")
talkEntry:addResponse("Ich trage den Namen Edwards mit Stolz. Genauso solltet ihr ihn auch aussprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr means everything to me; I was born to serve this land and so all else are born to serve me. Let us obey the old customs and traditions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist mein ein und alles. Ich wurde geboren, um Cadomyr zu dienen und so wurde ein jeder hier geboren, um mir zu dienen. Lasst uns diesen alten Gebr�uchen gehorchen und die Tradition wahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("My blood and soul is Albarian. To mention my heritage is to mention the people of Cadomyr for it shall be the shinning example of our customs for all to see.")
talkEntry:addResponse("I am proud of my Albarian origin, even though I was told that the old customs are more and more neglected in Albar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Mein Blut is albarisch. Mein Haar ist albarisch. Das Volk von Cadomyr hat albarische Wurzeln. Cadomyr ist das bessere Albar!")
talkEntry:addResponse("Ich bin stolz auf meine albarische Herkunft, auch wenn mir zu Ohren kam, dass man dort die alten Sitten immer h�ufiger missachtet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Someone should plunder and pillage Gynk! Such a cesspool of sin! No honour!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Man sollte Gynk verw�sten und niederbrennen! Was f�r ein S�ndenpfuhl! Zu den Waffen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("The Salkamaerians have their customs, we have ours. As long as they do not interfere with Cadomyrian issues, they may do whatever they think is right.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Die Salkamaerier haben ihre Gebr�uche, wir haben unsere. Solange sie sich nicht in cadomyrische Angelegenheiten einmischen, sollen sie machen, was sie f�r richtig halten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ah, the God of festivities and wine. His purpose is joyous but indulge too much, like those people of Runewick, and you'll risk your safety and waste your resources.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ah, der Gott der Festlichkeiten und des Weines. Sein Begehr ist simpel und von niederem Stand, wie diese Leute aus Runewick...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("How can one worship the Lord of Fire? Of course, we all honour the Five, but fire has always been a city's greatest foe. It does keeps us warm, so respect it and Br�gon, but do not worship it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Wie kann man nur den Herren des Feuers verehren? Selbstredend ehren wir die F�nf, aber Feuer kann so viel Leid verursachen. Es spendet uns aber auch W�rme; also respektiert es und Br�gon, aber verehrt es nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I hope the time when I face Cherga in the afterlife will not come anytime soon; Robertus has not even finished the plans for my grave yet. Furthermore, who would rule Cadomyr, if not me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich hoffe, dass es noch eine Weile dauert, bis ich Cherga ins Angesicht trete. Robertus hat noch nicht einmal die Baupl�ne f�r mein Grab vollendet. Und wer sollte schon Cadomyr regieren, wenn nicht ich?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara, hah, a commonly overestimated goddess. People think she knows it all, but how can a single god know more than dozens of generations of Albarians?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara, hah, eine meist �bersch�tzte G�ttin. Manche denken, sie wei� alles; aber wie kann eine einzelne Gottheit mehr wissen als Generationen von Albariern?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("I was taught that Eldan is the father of Elara and hence, as useless as her. My faith in the Five has grown over the years though, and nowadays, I would execute my teacher for what he taught me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Man lehrte mich, dass Eldan der Vater Elaras ist und somit genauso wertlos ist wie sie. Aber mein Glaube an die F�nf ist nun stark und dieser Tage w�rde ich meinen Lehrer f�r diesen Frevel hinrichten lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari's gift is the wind; it drives our sailboats and brings the clouds of rain. Wind can also blow sand storms miles long! So, the Five are never friend nor foe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findaris Geschenk ist der Wind. Er treibt unsere Segelboote an und bringt die Regenwolken. Aber der Wind bl��t auch immer wieder diesen Sand in meinen Palast! Nun, die F�nf sind niemals ein Freund, aber auch nicht ein Feind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("The God of coins, work, and rates, that is Irmorom. You won't find many followers of Irmorom in Cadomyr, better head for Galmair; there are more pigs there, too.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Der Gott der M�nzen, der Arbeit und der Zinsen, das ist Irmorom. Ihr werdet nicht viele seiner Anh�nger hier in Cadomyr finden. Also geht besser nach Galmair, dort gibt es nebenbei auch mehr Schweine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("You must be speaking about the God of battle. He is our saviour and saint, so pray to him every day and every night. That is an order!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Ihr m��t �ber den Gott der Schlachten reden. Er ist unser Erl�ser und Schutzpatron, also betet zu ihm an jedem Tag und in jeder Nacht. Das war ein Befehl!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("You must not speak this name out loud ever again in Cadomyr. Do so and my wrath will smite you. Perform your dark craft elsewhere. I'd suggest Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Ihr werdet diesen Namen niemals wieder laut in Cadomyr aussprechen. Tut ihr es doch, so wird mein Zorn euch zerschmettern. Geht dunklen K�nsten woanderns nach, wie w�re es mit Runewick?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("If there is one thing I hate more than Baron Hastings, it is disorder... so you can estimate how much I love Narg�n, the God of chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Wenn etwas gibt, was ich nochmehr hasse als Baron Hastings, dann ist das Unordnung. Somit k�nnt ihr euch selbst erkl�ren, wie sehr ich Narg�n, die Gott des Chaos, liebe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Hah! Only superstitious creatures rely on Oldra's grace to grow their crops. The educated know that irrigation makes plants grow, not prayer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Hah! Ich werde Cadomyr in bl�hende Landschaften verwandeln, auch ohne die Hilfe der verwunschenen Oldra. Bew�sserung l��t Pflanzen gedeihen, nicht ein Gebet zu dieser unbedeutenden G�ttin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("You are speaking about the God of travellers, I hope, not that of those with chopped off hands, am I right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ihr sprecht vom Gott der Reisenden, hoffe ich; nicht vom Gott derer mit abgeschlagenen H�nden, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("It is not common to worship Sirani in Cadomyr. If you want to worship something female, worship me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Es ist in Cadomyr un�blich, Sirani anzubeten. Wenn ihr etwas weibliches anbeten wollt, dann betet mich an!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("The Goddess of fish, one could say, I hear the lizardfolk call her Zelphia. My people on the whole do not pray to her so you'd do well to travel toward Cape Farewell to find like minded lizardmen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Die G�ttin der Fische, so k�nnte man meinen, das ist Tanora. Aber mein Volk betet zu ihr und Cadomyr ist nicht gerade ein fischreiches Land, das steht fest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("I still don't know who to blame for all the sand in the world. Most likely Ushara or Br�gon. I'll honour them, either way, but not worship.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ich wei� immernoch nicht so recht, wen ich f�r all den Sand der Welt verantwortlich machen soll; Ushara oder Br�gon? Ich ehre sie beiden trotzdem, mehr aber auch nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Be loyal to your Queen and Zhambra will smile upon you. Be disobedient and you will see his justice in the afterlife...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Seid loyal gegen�ber eurer K�nigin und Zhambra wird es guthei�en. Seid ungehorsam und ihr werdet schon sehen, was Zhambra f�r euch bereit h�lt, wenn ihr ins Jenseits �bergeht...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cleopatra")
talkEntry:addTrigger("Kleopatra")
talkEntry:addResponse("Who is that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Marc")
talkEntry:addTrigger("Anthony")
talkEntry:addResponse("Once, a puny prince called Marc from a far, far away land came to my Palace and proposed to me. I could not stop laughing for a whole day!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Markus")
talkEntry:addTrigger("Marcus")
talkEntry:addTrigger("Anthonius")
talkEntry:addResponse("Once, a poor prince called Marc from a far, far away land came to my Palace and proposed to me. I could not stop laughing for a whole day!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("STFU")
talkEntry:addResponse("I heard that, scum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hawt")
talkEntry:addResponse("What?!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("I love you")
talkEntry:addResponse("And I love Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cleopatra")
talkEntry:addTrigger("Kleopatra")
talkEntry:addResponse("Wer soll das denn wieder sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mark")
talkEntry:addTrigger("Anton")
talkEntry:addResponse("Einst kam ein erb�rmlicher Prinz namens Markus aus einem fernen Land an meinen Hof und wollte mich ehelichen. Wie habe ich gelacht, den ganzen Tag noch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Markus")
talkEntry:addTrigger("Marcus")
talkEntry:addTrigger("Anthonius")
talkEntry:addResponse("Einst kam ein erb�rmlicher Prinz namens Markus aus einem fernen Land an meinen Hof und wollte mich ehelichen. Wie habe ich gelacht, den ganzen Tag noch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("STFU")
talkEntry:addResponse("Ich hab das geh�rt, Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("geil")
talkEntry:addResponse("Was!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ich liebe dich")
talkEntry:addTrigger("Ich liebe euch")
talkEntry:addResponse("Und ich liebe Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Out of my sight! If you want to barter, off to the market place, off I say!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Aus meinen Augen! Wenn ihr feilschen wollt, ab zum Marktplatz. Hinfort!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I will tell you something, my realm is named Cadomyr and I will do anything to make it prosper.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Lasst euch das gesagt sein; mein Reich nennt sich Cadomyr und ich werde alles in meiner Macht liegende tun, um es gedeihen zu lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me k�mmt sich die Haare und flucht vor sich hin.", "#me combs her hair, cursing under her breath about sand.")
talkingNPC:addCycleText("Auf die Knie! Sofort!", "Kneel before the Gods and honour your Queen!")
talkingNPC:addCycleText("Vern�nftige Diener zu finden wird auch immer schwieriger.", "Finding proper servants becomes harder and harder...")
talkingNPC:addCycleText("Wo ist Hassan schon wieder! Schickt nach meinem F�cherwedler, mir ist hei�!", "Where is Hassan again? Send word to my fan waver, it is hot!")
talkingNPC:addCycleText("#me starrt auf ihre in fein gefertigte Sandalen gekleideten F��e und murmelt: 'Blau k�nnte meinen Zehenn�geln auch mal gut stehen.'", "#me stares at her feet, clad in fine sandals, murmuring, 'I should consider painting my toenails blue.'")
talkingNPC:addCycleText("Diplomatie, Urteile, regieren, Krieg f�hren - eine K�nigin hat es nicht leicht. Alles f�r Cadomyr!", "Diplomacy, sentencing, ruling, warfare - a queen has a hard day. All for Cadomyr!")
talkingNPC:addCycleText("Gehorcht!", "Obey!")
talkingNPC:addCycleText("Bringt mir Eselsmilch und bereitet mein Bad vor.", "Bring forth the donkey milk and prepare my bath.")
talkingNPC:addCycleText("Befehle, Befehle, Befehle. Warum muss ich immer jedem sagen, was er zu tun hat? Denkt denn hier niemand au�er mir?", "Orders, orders, orders. Why do I have to tell everyone what do? Can't they read my mind yet?")
talkingNPC:addCycleText("Cadomyr wurde nicht auf Sand gebaut; Cadomyr wurde auf Traditionen gebaut, die �lter sind als so manches Sandkorn.", "Cadomyr was not founded on sand; it was founded on traditions, even older than most sand grains.")
talkingNPC:addCycleText("Wer hat da ein Licht auf dem Fenstersims entz�ndet? Was geht nur wieder in diesem Palast vor sich.", "This candle in the window? Who lit that?")
talkingNPC:addCycleText("Benachrichtigt Hassan, dass er mir Trauben bringe!", "Tell Hassan to come and feed me some grapes!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist K�nigin Rosaline Edwards von Cadomyr.", "This is Queen Rosaline Edwards of Cadomyr.")
mainNPC:setUseMessage("Was f�llt euch ein!", "How dare you!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 225)
mainNPC:setEquipment(3, 833)
mainNPC:setEquipment(5, 2295)
mainNPC:setEquipment(6, 0)
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
