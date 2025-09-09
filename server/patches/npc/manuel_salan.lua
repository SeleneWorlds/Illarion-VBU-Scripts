local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local consequence_arena = require("npc.base.consequence.arena")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the arena master Manuel Salan Keywords: Hello, monster, fight, ranklist, points."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Arenameister Manuel Salan. Schl�sselw�rter: Hallo, Monster, K�mpfen, Rangliste, Punkte."))
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
talkEntry:addResponse("Greetings! Time to prove yourself in the Arena of Runewick!")
talkEntry:addResponse("Greetings! Just get your sword and prove your strength against my beasts!")
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
talkEntry:addResponse("Gr��e! Es ist Zeit das du dich in der Arena von Runewick beweist!")
talkEntry:addResponse("Gr��e! Nimm einfach dein Schwert und beweis dich gegen meine Biester!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings! Time to prove yourself in the arena of Runewick!")
talkEntry:addResponse("Greetings! Just get your sword and prove your strength against my beasts!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Gr��e Es ist Zeit das ihr euch in der Arena von Cadoymr beweist!")
talkEntry:addResponse("Gr��e! Nimm einfach dein Schwert und beweis dich gegen meine Biester!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Auf bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Auf bald.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Thanks for asking, I am doing well.")
talkEntry:addResponse("I have done better, I have done worse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Danke der Nachfrage. Ich kann nicht klagen.")
talkEntry:addResponse("Es ging mir schon besser.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Manuel. I'm the arena master here. Are you strong enough to beat my beasts?")
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
talkEntry:addResponse("Mein Name ist Manuel. Ich bin der Arenameister hier. Bist du stark genug, um gegen meine Biester zu gewinnen?")
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
talkEntry:addTrigger("archmage")
talkEntry:addResponse("If he wasn't here... I just wouldn't know what would happen with Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wenn es ihn nicht g�be... Ich kann mir gar nicht ausmalen, was dann aus Runewick werden w�rde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("If he wasn't here... I just wouldn't know what would happen with Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wenn es ihn nicht g�be... Ich kann mir gar nicht ausmalen, was dann aus Runewick werden w�rde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("The finest city in the land, that's for sure.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die beste Stadt weit und weit, so viel steht fest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Who is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Wer soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("queen")
talkEntry:addResponse("Who is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nigin")
talkEntry:addResponse("Wer soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Who is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Wer soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Where is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Wo soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Where is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Wo soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I only sell my beasts to fighters that are worthy and want to prove themselves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verkaufe nur meine Biester an K�mpfer, die es Wert sind und sich beweisen sollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tale")
talkEntry:addTrigger("story")
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Start to write your own story by fighting in my arena.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("geschichte")
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Schreib deine eigene Geschichte, indem du in meiner Arena k�mpft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fight")
talkEntry:addResponse("What beast would you like to fight against today?")
talkEntry:addConsequence(consequence_arena("request"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�mpfen")
talkEntry:addResponse("Gegen welches Biest willst du heute k�mpfen?")
talkEntry:addConsequence(consequence_arena("request"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("points")
talkEntry:addResponse("#me looks at his list.")
talkEntry:addConsequence(consequence_arena("points"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("punkte")
talkEntry:addResponse("#me schaut auf seine Liste.")
talkEntry:addConsequence(consequence_arena("points"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ranklist")
talkEntry:addResponse("#me shows you a piece of parchment, 'Look for yourself who the best ones are here.'")
talkEntry:addConsequence(consequence_arena("list"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rangliste")
talkEntry:addResponse("#me zeigt dir ein St�ck Pergament: 'Schau selbst, wer die Besten hier sind.'")
talkEntry:addConsequence(consequence_arena("list"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("beast")
talkEntry:addTrigger("monster")
talkEntry:addResponse("There are several beasts roaming the lands as you might now. I found and captured a few for you to fight against.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("biest")
talkEntry:addTrigger("monster")
talkEntry:addResponse("Es gibt viele Biester, die das Land durchstreifen, wie du sicher wei�t. Ich habe ein paar gefunden und gefangen, damit du gegen sie k�mpfen kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("dog")
talkEntry:addTrigger("wolves")
talkEntry:addTrigger("wolf")
talkEntry:addResponse("Those four legged, furry creatures are quite easy to defeat with a sharp sword.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hund")
talkEntry:addTrigger("wolf")
talkEntry:addTrigger("w�lfe")
talkEntry:addResponse("Diese vierbeinigen, pelzigen Kreaturen sind mit einem scharfen Schwert. recht einfach zu besiegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dragon")
talkEntry:addResponse("Beware of the dragons! They are mean and strong and only a very skilled swordsman can defeat it. There are fire dragons, ice dragons, undead ones, and each one is meaner than the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("drache")
talkEntry:addResponse("Nimm dich vor Drachen in Acht! Sie sind gemein und stark und nur ein sehr guter K�mpfer kann ihn schlagen. Es gibt Feuerdrachen, Eisdrachen und untote und jeder ist gemeiner als der andere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("imp")
talkEntry:addResponse("Mean and tricky little creatures, but not too hard to defeat for a skilled fighter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wichtel")
talkEntry:addTrigger("kobold")
talkEntry:addResponse("Gemeine und trickreiche kleine Kreaturen, aber nicht zu schwer zu besiegen f�r ge�bte K�mpfer.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#mes prunkvolle R�stung zeigt das Wappen von Runewick.", "#me's shining armour shows the coat of arms of Runewick.")
talkingNPC:addCycleText("#me h�lt sein reich verziehrtes Schwert fest in der Hand und schwingt es durch die Luft.", "#me holds his ornate sword firmly with one hand, swinging it idly through the air.")
talkingNPC:addCycleText("#me schreibt einige Worte in ein in Leder gebundenes Buch.", "#me writes some words into a leather covered book.")
talkingNPC:addCycleText("Wir leben in merkw�rdigen Zeiten...", "Strange times we live in...")
talkingNPC:addCycleText("Es ist nicht die Zeit der Worte, sondern die der Taten. Beweist Euch gegen meine Biester!", "It is not the time for talk, but for deeds. Prove yourself against my beasts!")
talkingNPC:addCycleText("Nieder mit den Feiglingen aus Cadomyr und Galmair!", "Down with the cowards of Cadomyr and Galmair!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Arenameister Manuel Salan.", "This NPC is the arena master Manuel Salan.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2390)
mainNPC:setEquipment(11, 2384)
mainNPC:setEquipment(5, 2627)
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
