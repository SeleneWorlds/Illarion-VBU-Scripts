local guard = require("npc.base.guard")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
local guardNPC = guard(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Gava Northstar the bridge guardian. Keyphrases: Hello, Bridge, Galmair, Guard."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Gava Northstar, die Br�ckenw�chterin. Schl�sselw�rter: Hallo, Br�cke, Galmair, Wache."))
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
talkEntry:addResponse("Good day. You have arrived at the City of Galmair.")
talkEntry:addResponse("May your walk in justice bring you peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Guten Tag. Ihr seid in Galmair angekommen.")
talkEntry:addResponse("Betretet Galmair, doch �berschreitet nicht die Gesetze.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("If you are in peace come through these doors.")
talkEntry:addResponse("Good day. You have arrived at the City of Galmair.")
talkEntry:addResponse("May your walk in justice bring you peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Guten Tag. Ihr seid in Galmair angekommen.")
talkEntry:addResponse("Betretet Galmair, doch �berschreitet nicht die Gesetze.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Be wary of danger on your travels.")
talkEntry:addResponse("Alert me if there is any trouble in Galmair.")
talkEntry:addResponse("The Civil Watch is always watching. Walk in peace and justice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Nehm Euch auf Reise vor Gefahren in Acht.")
talkEntry:addResponse("Die Stadtwache h�lt immer wacht. Seid friedlich und achtet das Recht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Be wary of danger on your travels.")
talkEntry:addResponse("Alert me if there is any trouble in Galmair.")
talkEntry:addResponse("The Civil Watch is always watching. Walk in peace and justice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Nehm Euch auf Reise vor Gefahren in Acht.")
talkEntry:addResponse("Die Stadtwache h�lt immer wacht. Seid friedlich und achtet das Recht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I relinquished such cares in the pursuit of peace and justice.")
talkEntry:addResponse("As long as you don't cause any trouble in Galmair my day is correct")
talkEntry:addResponse("Galmair is at peace. That is my state of being.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Ich k�mmere mich nicht darum, Frieden und Gerechtigkeit sind weitauf wichtiger")
talkEntry:addResponse("Solange Ihr mir keinen �rger macht, ist alles in Ordnung.")
talkEntry:addResponse("Glamair ist friedlich und mir geht es gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Gava Northstar.")
talkEntry:addResponse("Gava Northstar. Now please move along.")
talkEntry:addResponse("Gava Northstar. I guard this bridge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie hei�t")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Gava Northstar.")
talkEntry:addResponse("Gava Northstar. Bitte geht weiter.")
talkEntry:addResponse("Gava Northstar. Ich bewache die Br�cke.")
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
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I am capable of accommodating any of my own needs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich kann meine Bed�rfnisse unterordnen, wenn es seim muss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I am capable of accommodating any of my own needs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich kann meine Bed�rfnisse unterordnen, wenn es seim muss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am guard of Galmair's bridge.")
talkEntry:addResponse("I am a Silverstone in the Civil Watch.")
talkEntry:addResponse("I serve this city by being in the Civil Watch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin die Wache der Br�cke von Galmair.")
talkEntry:addResponse("Ich bin ein Silberstein in der Stadtwache.")
talkEntry:addResponse("Ich diene in der Stadtwache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am guard of Galmair's bridge.")
talkEntry:addResponse("I am a Silverstone in the Civil Watch.")
talkEntry:addResponse("I  Serve this city by being in the Civil Watch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin die Wache der Br�cke von Galmair.")
talkEntry:addResponse("Ich bin ein Silberstein in der Stadtwache.")
talkEntry:addResponse("Ich diene in der Stadtwache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bre")
talkEntry:addResponse("Why do you want to know?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Civil Watch")
talkEntry:addResponse("They are the people dedicated to keeping people in Galmair safe from criminals, monsters and invaders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Man")
talkEntry:addTrigger("husband")
talkEntry:addTrigger("Family")
talkEntry:addResponse("Please dont ask me personal questions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sister")
talkEntry:addResponse("Bre of the east gate is my sister.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dwarf")
talkEntry:addResponse("Yes I am tall for being a dwarf. Please move on.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Woman")
talkEntry:addTrigger("Girl")
talkEntry:addTrigger("Female")
talkEntry:addResponse("Being a woman has never deterred me from reaching my goal of being in the Civil Watch because the hate of others has never overshadowed my own fire for justice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bre")
talkEntry:addResponse("Warum fragt Ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stadtwache")
talkEntry:addResponse("Das sind alles Leute die die B�rger von Galmair vor Monstern, Dieben und Angreifer sch�tzt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mann")
talkEntry:addTrigger("Ehemann")
talkEntry:addTrigger("Familie")
talkEntry:addResponse("Stellt mir keine pers�nliche Fragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwester")
talkEntry:addResponse("Bre vom Osten ist meine Schwester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwerg")
talkEntry:addResponse("Ja, ich bin gro� f�r einen Zwerg. Weiter gehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frau")
talkEntry:addTrigger("M�dchen")
talkEntry:addTrigger("weib")
talkEntry:addResponse("Eine Frau zu sein hat mich nicht aufgehalten meine Ziele in der Stadtwache zu erreichen, denn der Hass auf andere hat niemals mein eigenes Feuer der Gerechtigkeit �berschattet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bre")
talkEntry:addResponse("She is the prettiest, strongest, smartest person I know.")
talkEntry:addResponse("I rescued her from being homeless.")
talkEntry:addResponse("Bre of the other gate is my sister.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sister")
talkEntry:addResponse("She is the prettiest, strongest, smartest person I know.")
talkEntry:addResponse("I rescued her from being homeless.")
talkEntry:addResponse("Bre of the other gate is my sister.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Homeless")
talkEntry:addResponse("It is no place for a girl... I can tell you that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Peace")
talkEntry:addTrigger("Justice")
talkEntry:addResponse("One should do everything in peace and justice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("guard")
talkEntry:addTrigger("Civil Watch")
talkEntry:addTrigger("bridge")
talkEntry:addResponse("It is my job to protect the city and its citizen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drugs")
talkEntry:addResponse("#me looks at you bemused.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("men")
talkEntry:addResponse("Men are the counterpart to women.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Weapon")
talkEntry:addResponse("Weapons are the guards best friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bre")
talkEntry:addResponse("Sie ist die sch�nste, st�rkste und schlauste Person, die ich kenne.")
talkEntry:addResponse("Ich hab sie aus der Obdachlosigkeit geholt.")
talkEntry:addResponse("Bre am anderen Tor, das ist meine Schwester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwester")
talkEntry:addResponse("Sie ist die sch�nste, st�rkste und schlauste Person, die ich kenne.")
talkEntry:addResponse("Ich hab sie aus der Obdachlosigkeit geholt.")
talkEntry:addResponse("Bre am anderen Tor, das ist meine Schwester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("obdachlos")
talkEntry:addResponse("Das ist nichts f�r ein M�dchen, glaubt mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frieden")
talkEntry:addTrigger("Gerechtigkeit")
talkEntry:addResponse("Man sollte alles f�r Frieden und Gerechtigkeit tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wache")
talkEntry:addTrigger("B�rgerwehr")
talkEntry:addTrigger("Br�cke")
talkEntry:addResponse("Meine Aufgabe ist es die Stadt und ihre B�rger zu bewachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drogen")
talkEntry:addTrigger("Rauschgift")
talkEntry:addResponse("#me schaut dich irritiert an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("M�nner")
talkEntry:addResponse("M�nner sind das Gegenteil von Frauen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Waffe")
talkEntry:addResponse("Waffen sind der beste Freund einer Wache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("You have no need to know who I worship.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara the bright once said --Justice is a tree. Wisdom is its leaves, power is its trunk, and love is its roots.-- This is the saying I hold in my mind every day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ihr bracht nicht wissen, wen ich ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara die Erleuchtet sagte einmal folgends: Gerechtigkeit ist ein Baum. Weisheit sind seine Bl�tter, Macht ist seim Stamm und Liebe die Wurzeln. Diesen Spruch bewahre ich mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("There is an enormous bridge that stretches across a large sea.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Die Stadt ist mit einer riesigen Br�cke �ber das Meer mit dem Festland verbunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I hear he is a strong mage. Magic is nothing compared to a strong blow from a dwarven great axe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich h�rte, er wei�, mit der Magie umzugehen. Aber mal im Ernst: Was ist schon Magie gegen den Hieb einer Zwergenaxt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Archmage")
talkEntry:addResponse("I hear he is a strong mage. Magic is nothing compared to a strong blow from a dwarven great axe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich h�rte, er wei�, mit der Magie umzugehen. Aber mal im Ernst: Was ist schon Magie gegen den Hieb einer Zwergenaxt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I work for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich arbeite f�r ihn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The streets are cold, the men are rude, but this is where my sister is and my job.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Die Stra�en sind kalt, die Leute ungehobelt aber hier ist meine Schwester und meine Aufgabe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Bre wants to go there. I will take her on my next day off.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Bre m�chte dort hin gehen. Ich werde sie an meinem n�chsten freien Tag dort hinbringen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I don't know her personally.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich kenne sie nicht pers�nlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I don't know her personally.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich kenne sie nicht pers�nlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I have nothing to say of it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Dazu habe ich nichts zu sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Weiter gehen!", "Move on!")
talkingNPC:addCycleText("Wenn Ihr friedvoll aseid, seid ihr in Galmair willommen.", "If you bring peace. Galmair will watch over you.")
talkingNPC:addCycleText("Die, die mit dem B�sen im Bunde stehen und es wagen die Br�cke zu betreten werden sterben!", "Those who stand in evil who dare to pass this gate will die.")
talkingNPC:addCycleText("Dies ist Galmair. Kommt in Frieden.", "This is Galmair. Come in peace.")
talkingNPC:addCycleText("Ihr habe jetzt grade die Zwergische Siedlung Galmair betetren.", "You have just crossed into The Dwarvan gathering of Galmair")
talkingNPC:addCycleText("Meine Schwester geh�rt auch zur Stadtwache.", "My sister is also part of the Civil Watch.")
talkingNPC:addCycleText("Bedenkt, ich sehe was Ihr tut.", "Remember. I can see what you are doing.")
talkingNPC:addCycleText("Ich frage mich, wann der Don zum letzten Mal �ber diese Br�cke ging.", "I wonder the last time I've seen The Don pass this bridge.")
talkingNPC:addCycleText("Jeder der versucht starke Drogen nach Galmair zu schmuggeln wird bestarft!.", "Anyone who tries to sneak strong drugs into Galmair will be punished.")
talkingNPC:addCycleText("Fall nicht. Geht weiter!", "Do not fall! Move on!")
guardNPC:setWarpLocation(386,338,0)
guardNPC:setGuardRange(8,8,8,8)
guardNPC:addWarpedMonsterText("Weg mit dir, widerliche Kreatur!", "Go away, nasty creature!")
guardNPC:addWarpedPlayerText("Pass blo� auf! Wir brauchen hier kein Gesindel.", "You'd better watch out! We don't need such lowlifes here.")
guardNPC:addHitPlayerText("#me verpasst dem Eindringling einen Hieb 'Verschwinde!'", "#me hits the intruder 'Get lost!'")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("", "This NPC is Gava Daystar the gate guardian, a broad shouldered dwarf")
mainNPC:setUseMessage("Zur�ck!", "Back up!")
mainNPC:setConfusedMessage("#me schaut verwirrt umher.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2359)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 2731)
mainNPC:setEquipment(6, 95)
mainNPC:setEquipment(4, 530)
mainNPC:setEquipment(9, 367)
mainNPC:setEquipment(10, 771)
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
