local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the spider Gorgophone. Keywords: Hello, quest, spider, exit."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist die Spinne Gorgophone. Schl�sselw�rter: Hallo, Quest, Spinne, Ausgang."))
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
talkEntry:addResponse("#me clicks her jaws and looks at you appraisingly.")
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
talkEntry:addResponse("#me klickt ihren Kiefer und schaut dich absch�tzend an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me clicks her jaws and looks at you appraisingly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("#me klickt ihr Kiefer und schaut dich absch�tzend an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("#me turns away from you and returns to her web.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("#me dreht sich weg und kehrt in ihr Netz zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me turns away from you and returns to her web.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("#me dreht sich weg und kehrt in ihr Netz zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("#me looks up at you and mutters 'I am as I always am. Working on my web and tending to my egg sac.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("#me schaut dich an und murmelt 'Mir geht es wie immer. Ich arbeite an meinem Netz und Pflege meinen Kokon.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("#me cleans her gnashing fangs before responding 'I am Gorgophone, the grim slayer. Mother of thousands of Gynkese Widows throughout the land. Maybe you know my children?'")
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
talkEntry:addResponse("#me reinigt ihre knirschenden F�nge bevor sie antwortet 'Ich bin Gorgophone, die grimmige Schl�chterin. Mutter von Tausenden von Gynk Witwen in diesem Reich. Vielleicht kennt ihr meine Kinder.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a mother.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin eine Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a mother.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin eine Mutter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I know nothing of that land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich wei� nichts von diesem Land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("I am Gorgophone, the grim slayer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ich bin Gorgophone, die grimmige Schl�chterin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("exit")
talkEntry:addTrigger("way out")
talkEntry:addTrigger("escape")
talkEntry:addResponse("There is an exit somewhere. Maybe you will find it before you die.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ausgang")
talkEntry:addResponse("Es gibt einen Ausgang irgendwo. Vielleicht findet ihr ihn, bevor ihr hier zugrunde geht.")
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
talkEntry:addTrigger("mother")
talkEntry:addTrigger("spider")
talkEntry:addResponse("I am mother of many... hundreds... maybe thousands?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mutter")
talkEntry:addTrigger("Spinne")
talkEntry:addResponse("Ich bin Mutter von vielen ... Hunderten ... vielleicht Tausenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("egg")
talkEntry:addResponse("My egg sac is like a cocoon and is suspended from my large web, containing hundreds of eggs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ei")
talkEntry:addResponse("Mein Eierb�ndel ist wie ein Kokon und h�ngt an meinem Netz, mit Hunderten von Eiern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("eat")
talkEntry:addResponse(" I puncture my prey with my fangs and administer digestive enzymes into the corpses. By using these enzymes, and my gnashing fangs, the prey's body liquefies, letting me suck up the resulting fluid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("essen")
talkEntry:addResponse("Ich durchsteche meine Beute mit meinen F�ngen und spritze Verdauungsenzyme in den Leichen. Durch die Verwendung dieser Enzyme und durch meine scharfen Z�hne verfl�ssigt sich der K�rper der Beute, so dass ich die resultierende Fl�ssigkeit aufsaugen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("mating")
talkEntry:addResponse("In a violent act, I try to kill my mate after mating as he will eat my offspring. His only hope is to run away as quickly as possible.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Begattung")
talkEntry:addResponse("In einem Akt der Gewalt versuche ich, meine Partner nach der Paarung zu t�ten damit er meine Nachkommen nicht auffressen kann. Seine einzige Hoffnung ist es so schnell wie m�glich wegzulaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("poison")
talkEntry:addResponse("My bite, while painful, is only seriously poisonous to children and the elderly.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gift")
talkEntry:addResponse("Mein giftiger Biss, wenn auch schmerzhaft, ist nur f�r Kinder und �ltere Menschen gef�hrlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 1))
talkEntry:addResponse("#me looks up at you through her pitch black eyes, obviously trying to determine what to do with you. In a very raspy voice that is soft, muffled, and difficult to understand, she speaks to you, 'You will help me. My offspring will not thrive in this area as too many arachnids, like me, have moved into my territory. I will allow you to live in return for your help. Kill twenty five small spiders and come back to tell me of your victory.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 1))
talkEntry:addResponse("#me betrachtet dich mit ihren pechschwarzen Augen und scheint zu �berlegen was sie mit dir anstellen soll. Mit rauher, leiser Stimme spricht sie in schwer verst�ndlicher Sprache zu dir: 'Du wirst mir helfen. Meine Nachkommen k�nnen in dieser Gegend nicht wohl gedeihen, da zu viele andere Spinnen in dieses Gebiet gezogen sind. Ich werde dich am Leben lassen als Lohn f�r deine Hilfe. T�te 25 Kleine Spinnen und berichte mir, wenn du erfolgreich warst.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 1))
talkEntry:addResponse("#me looks up at you through her pitch black eyes, obviously trying to determine what to do with you. In a very raspy voice that is soft, muffled, and difficult to understand, she speaks to you, 'You will help me. My offspring will not thrive in this area as too many arachnids, like me, have moved into my territory. I will allow you to live in return for your help. Kill twenty five small spiders and come back to tell me of your victory.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 1))
talkEntry:addResponse("#me betrachtet dich mit ihren pechschwarzen Augen und scheit zu �berlegen was sie mit dir anstellen soll. Mir rauher, leiser Stimme spricht sie in schwer verst�ndlicher Sprache zu dir: 'Du wirst mir helfen. Meine Nachkommen k�nnen in dieser Gegend nicht wohl gedeihen, da zu viele andere Spinnen in dieses Gebiet gezogen sind. Ich werde dich am Leben lassen als Lohn f�r deine Hilfe. T�te 25 Kleine Spinnen und berichte mir, wenn du erfolgreich warst.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 0))
talkEntry:addCondition(condition_quest(520, "<", 26))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You haven't killed the small spiders yet? Don't disappoint me or I will have to feed you to my brood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 0))
talkEntry:addCondition(condition_quest(520, "<", 26))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast die Kleinen Spinnen noch nicht beseitigt? Entt�usche mich nicht oder ich werde dich an meine Brut verf�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 0))
talkEntry:addCondition(condition_quest(520, "<", 26))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You haven't killed the small spiders yet? Don't disappoint me or I will have to feed you to my brood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 0))
talkEntry:addCondition(condition_quest(520, "<", 26))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast die Kleinen Spinnen noch nicht beseitigt? Entt�usche mich nicht oder ich werde dich an meine Brut verf�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 26))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded twenty five silver coins."))
talkEntry:addConsequence(consequence_money("+", 2500))
talkEntry:addConsequence(consequence_quest(520, "=", 27))
talkEntry:addResponse("That was an easy test. *She flings a pouch with some coins at you* The rest will be much more difficult.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 26))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 25 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2500))
talkEntry:addConsequence(consequence_quest(520, "=", 27))
talkEntry:addResponse("Das war eine einfache Pr�fung. *Sie wirft dir einen Beutel mit M�nzen zu* Der Rest wird schwieriger sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 27))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 28))
talkEntry:addResponse("You seem to work quickly. Bring me some bottled water to store for my offspring. I'll need five bottles as I'll have hundreds born soon and it must be from a natural spring. No well or salt water will do. *Turns and skitters away without waiting for a response*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 27))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 28))
talkEntry:addResponse("Du scheinst f�hig zu arbeiten. Bring mir abgef�lltes Wasser das ich f�r meine Nachkommen einlagern kann. Ich brauche f�nf volle Flaschen, da ich bald hunderte von Nachkommen haben werde, und es muss von einer nat�rlichen Quelle kommen. Kein Brunnenwasser oder Salzwasser darf es sein. *dreht sich um und krabbelt davon ohne auf eine Antwort zu warten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 27))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 28))
talkEntry:addResponse("You seem to work quickly. Bring me some bottled water to store for my offspring. I'll need five bottles as I'll have hundreds born soon and it must be from a natural spring. No well or salt water will do. *Turns and skitters away without waiting for a response*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 27))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 28))
talkEntry:addResponse("Du scheinst f�hig zu arbeiten. Bring mir abgef�lltes Wasser das ich f�r meine Nachkommen einlagern kann. Ich brauche f�nf volle Flaschen, da ich bald hunderte von Nachkommen haben werde, und es muss von einer nat�rlichen Quelle kommen. Kein Brunnenwasser oder Salzwasser darf es sein. *dreht sich um und krabbelt davon ohne auf eine Antwort zu warten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 28))
talkEntry:addCondition(condition_item(2496, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You need to work faster. Five brimful bottles of water to store for my offspring, I said! Now bring them. *Turns and skitters away without waiting for a response*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 28))
talkEntry:addCondition(condition_item(2496, "all", "<", 5, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du musst schneller arbeiten. F�nf randvolle Flaschen mit Wasser das ich f�r meine Nachkommen einlagern kann, sagte ich! Bring sie mir. *dreht sich um und krabbelt davon ohne auf eine Antwort zu warten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 28))
talkEntry:addCondition(condition_item(2496, "all", "<", 5, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You need to work faster. Five brimful bottles of water to store for my offspring, I said! Now bring them. *Turns and skitters away without waiting for a response*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 28))
talkEntry:addCondition(condition_item(2496, "all", "<", 5, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du musst schneller arbeiten. F�nf randvolle Flaschen mit Wasser das ich f�r meine Nachkommen einlagern kann, sagte ich! Bring sie mir. *dreht sich um und krabbelt davon ohne auf eine Antwort zu warten*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 28))
talkEntry:addCondition(condition_item(2496, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded twenty five silver coins."))
talkEntry:addConsequence(consequence_money("+", 2500))
talkEntry:addConsequence(consequence_deleteitem(2496, 5, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 29))
talkEntry:addResponse("#me takes one bottle per leg and moves away on only three legs. She shuffles her loot off somewhere into her web before returning to give you a small bag of silver.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 28))
talkEntry:addCondition(condition_item(2496, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 25 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2500))
talkEntry:addConsequence(consequence_deleteitem(2496, 5, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 29))
talkEntry:addResponse("#me nimmt je eine Flasche pro Bein und bewegt sich auf nur drei freien Beinen davon. Sie lagert die Beute irgenwo in ihrem Netz ein bevor sie mit einem Beutel voll Silberm�nzen zur�ckkommt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 29))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 30))
talkEntry:addResponse("You have done very well, for such a weak species. Perhaps my decision wasn't as foolhardy as I had feared. Kill twenty of the larger and more fearsome spiders that inhabit this region. They are called Dread Spiders, Pit Servants and Fire Spiders. I cannot have them eating my offspring. *Her soft raspy voice dies down and is nearly impossible to hear at the end*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 29))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 30))
talkEntry:addResponse("Du schl�gst dich gut bisher, f�r solch eine schwache Spezies. Vielleicht ist meine Entscheidung doch nicht so t�richt wie ich dachte. T�te nun 20 der gr��eren und furchteinfl��enden Spinnen hier. Sie genannt werden Schreckensspinne, Grubendiener, und Feuerspinne. Ich kann nicht erlauben, dass sie meine Brut fressen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 29))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 30))
talkEntry:addResponse("You have done very well, for such a weak species. Perhaps my decision wasn't as foolhardy as I had feared. Kill twenty of the larger and more fearsome spiders that inhabit this region. They are called Dread Spiders, Pit Servants and Fire Spiders. I cannot have them eating my offspring. *Her soft raspy voice dies down and is nearly impossible to hear at the end*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 29))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 30))
talkEntry:addResponse("Du schl�gst dich gut bisher, f�r solch eine schwache Spezies. Vielleicht ist meine Entscheidung doch nicht so t�richt wie ich dachte. T�te nun 20 der gr��eren und furchteinfl��enden Spinnen hier. Sie genannt werden Schreckensspinne, Grubendiener, und Feuerspinne. Ich kann nicht erlauben, dass sie meine Brut fressen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 29))
talkEntry:addCondition(condition_quest(520, "<", 50))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You haven't killed the spiders yet? Don't disappoint me or I will have to feed you to my brood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 29))
talkEntry:addCondition(condition_quest(520, "<", 50))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast die Spinnen noch nicht beseitigt? Entt�usche mich nicht oder ich werde dich an meine Brut verf�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 29))
talkEntry:addCondition(condition_quest(520, "<", 50))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You haven't killed the spiders yet? Don't disappoint me or I will have to feed you to my brood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 29))
talkEntry:addCondition(condition_quest(520, "<", 50))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast die Spinnen noch nicht beseitigt? Entt�usche mich nicht oder ich werde dich an meine Brut verf�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 50))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(520, "=", 51))
talkEntry:addResponse("#me looks exasperatedly at you and says in an irritated tone, 'It took you long enough. My egg sac is nearly ready to burst and my offspring will come forth soon!' She thrusts a small reward into your hands before quickly saying, 'I do hope you are ready for my next request.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 50))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 50 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(520, "=", 51))
talkEntry:addResponse("#me schaut dich genervt an und spricht �rgerlich 'Hast ja lange genug gebraucht. Mein Brutsack platzt schon fast auf und meine Nachkommen sind bald da!' Sie wirft eine Belohnung in deine H�nde und f�gt schnell hinzu 'Ich hoffe du bist bereit f�r eine weitere Aufgabe.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 51))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 52))
talkEntry:addResponse("Go and kill fifteen tarantulas and do not tarry this time!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 51))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 52))
talkEntry:addResponse("Los und t�te 15 Tarantulas. Keine Verz�gerungen diesmal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 51))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 52))
talkEntry:addResponse("Go and kill fifteen tarantulas and do not tarry this time!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 51))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 52))
talkEntry:addResponse("Los und t�te 15 Tarantulas. Keine Verz�gerungen diesmal!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 51))
talkEntry:addCondition(condition_quest(520, "<", 67))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You haven't killed the spiders yet? Don't disappoint me or I will have to feed you to my brood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 51))
talkEntry:addCondition(condition_quest(520, "<", 67))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast die Spinnen noch nicht beseitigt? Entt�usche mich nicht oder ich werde dich an meine Brut verf�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 51))
talkEntry:addCondition(condition_quest(520, "<", 67))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You haven't killed the spiders yet? Don't disappoint me or I will have to feed you to my brood.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 51))
talkEntry:addCondition(condition_quest(520, "<", 67))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast die Spinnen noch nicht beseitigt? Entt�usche mich nicht oder ich werde dich an meine Brut verf�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 67))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred and twenty five silver coins."))
talkEntry:addConsequence(consequence_money("+", 12500))
talkEntry:addConsequence(consequence_quest(520, "=", 68))
talkEntry:addResponse("You have done well. This was difficult, thank you for completing the task. Please take this and prepare for the battles to come.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 67))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 125 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 12500))
talkEntry:addConsequence(consequence_quest(520, "=", 68))
talkEntry:addResponse("Du hast dich wacker geschlagen. Es war schwierig und ich danke dir dass du die Aufgabe erledigt hast. Nimm diese Belohnung und bereite dich auf weitere K�mpfe vor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 68))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 69))
talkEntry:addResponse("#me skitters towards you and looks around. 'It seems to be getting colder. I need bundles of grain to spread around on the floor. Please bring me sixty grain bundles.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 68))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 69))
talkEntry:addResponse("#me krabbelt auf dich zu und mustert die Gegend. 'Es scheint k�lter zu werden. Ich brauche Getreideb�ndel um den Boden auszulegen. Bring mir bitte 60 Getreideb�ndel.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 68))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 69))
talkEntry:addResponse("#me skitters towards you and looks around. 'It seems to be getting colder. I need bundles of grain to spread around on the floor. Please bring me sixty grain bundles.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 68))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 69))
talkEntry:addResponse("#me krabbelt auf dich zu und mustert die Gegend. 'Es scheint k�lter zu werden. Ich brauche Getreideb�ndel um den Boden auszulegen. Bring mir bitte 60 Getreideb�ndel.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 69))
talkEntry:addCondition(condition_item(249, "all", "<", 60, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("My offspring will be in trouble without a warm place. I still need sixty grain bundles to cover the cold rocks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 69))
talkEntry:addCondition(condition_item(249, "all", "<", 60, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Meine Nachkommen werden Schwierigkeiten haben ohne einen warmen Platz. Ich brauche immer noch 60 Getreideb�ndel um die kalten Steine zu bedecken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 69))
talkEntry:addCondition(condition_item(249, "all", "<", 60, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("My offspring will be in trouble without a warm place. I still need sixty grain bundles to cover the cold rocks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 69))
talkEntry:addCondition(condition_item(249, "all", "<", 60, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Meine Nachkommen werden Schwierigkeiten haben ohne einen warmen Platz. Ich brauche immer noch 60 Getreideb�ndel um die kalten Steine zu bedecken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 69))
talkEntry:addCondition(condition_item(249, "all", ">", 59, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(249, 60, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 70))
talkEntry:addResponse("#me gives you a blank look through her black eyes as she takes the bundles and tucks them away for later use, 'Thank you and here is a small reward. Alas, I noticed I need more help if you are willing?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 69))
talkEntry:addCondition(condition_item(249, "all", ">", 59, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 100 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(249, 60, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 70))
talkEntry:addResponse("#me starrt dich mit ihren pechschwarzen Augen lange an, bevor sie die B�ndel wegpackt. 'Danke und hier eine kleine Belohnung. Ach, ich stellte fest, dass noch mehr Hilfe von N�ten sein wird, wenn es dir beliebt.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 70))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 71))
talkEntry:addResponse("I need to make immediate repairs to my web and hope thread will help. Bring me 75 spools of thread.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 70))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 71))
talkEntry:addResponse("Ich muss dringend Reparaturen am Netz ausf�hren und Garn wird helfen. Bring mir 75 Rollen Garn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 70))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 71))
talkEntry:addResponse("I need to make immediate repairs to my web and hope thread will help. Bring me 75 spools of thread.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 70))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 71))
talkEntry:addResponse("Ich muss dringend Reparaturen am Netz ausf�hren und Garn wird helfen. Bring mir 75 Rollen Garn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 71))
talkEntry:addCondition(condition_item(50, "all", "<", 75, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("My offspring will be in trouble without a protective web. I still need 75 spools of thread for repairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 71))
talkEntry:addCondition(condition_item(50, "all", "<", 75, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Meine Nachkommen werden Schwierigkeiten haben ohne ein sch�tzendes Netz. Ich brauche immer noch 75 Rollen Garn f�r Reparaturen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 71))
talkEntry:addCondition(condition_item(50, "all", "<", 75, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("My offspring will be in trouble without a protective web. I still need 75 spools of thread for repairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 71))
talkEntry:addCondition(condition_item(50, "all", "<", 75, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Meine Nachkommen werden Schwierigkeiten haben ohne ein sch�tzendes Netz. Ich brauche immer noch 75 Rollen Garn f�r Reparaturen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 71))
talkEntry:addCondition(condition_item(50, "all", ">", 74, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred silver coins."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(50, 75, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 72))
talkEntry:addResponse("Ah, thank you! *She says in a rather quiet and raspy voice as she takes the thread and partially unravels one spool, testing the strength of the line* Perhaps you would help me again when you have time?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 71))
talkEntry:addCondition(condition_item(50, "all", ">", 74, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 100 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_deleteitem(50, 75, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 72))
talkEntry:addResponse("Ich danke dir! *sie murmelt leise vor sich hin w�hrend sie eine Spule Garn abrollt und die deren St�rke testet.* Vielleicht w�rdest du mir abermals helfen, wenn die Zeit es erlaubt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 72))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 73))
talkEntry:addResponse("My web grows too large, please bring me a divine voulge spear, which can be placed in the ground as a support. Don't be cheap, make sure it isn't weak.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 72))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 73))
talkEntry:addResponse("Mein Netz wird immer gr��er, bring mir doch eine Heilige Voulge, die ich als Mast verwenden kann. Kein einfacher Stock oder Stab kann das leisten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 72))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 73))
talkEntry:addResponse("My web grows too large, please bring me a divine voulge spear, which can be placed in the ground as a support. Don't be cheap, make sure it isn't weak.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 72))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 73))
talkEntry:addResponse("Mein Netz wird immer gr��er, bring mir doch eine Heilige Voulge, die ich als Mast verwenden kann. Kein einfacher Stock oder Stab kann das leisten!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 73))
talkEntry:addCondition(condition_item(1053, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("My offspring will be in trouble without a protective web. I still need a divine voulge to support my large web.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 73))
talkEntry:addCondition(condition_item(1053, "all", "<", 1, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Meine Nachkommen werden Schwierigkeiten haben ohne ein sch�tzendes Netz. Ich brauche immer noch eine Heilige Voulge um mein gro�es Netz abzust�tzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 73))
talkEntry:addCondition(condition_item(1053, "all", "<", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("My offspring will be in trouble without a protective web. I still need a divine voulge to support my large web.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 73))
talkEntry:addCondition(condition_item(1053, "all", "<", 1, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Meine Nachkommen werden Schwierigkeiten haben ohne ein sch�tzendes Netz. Ich brauche immer noch eine Heilige Voulge um mein gro�es Netz abzust�tzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 73))
talkEntry:addCondition(condition_item(1053, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred and fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_deleteitem(1053, 1, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 74))
talkEntry:addResponse("#me takes the spear and looks it over through her pitch black eyes.  She tests it by pushing one end into the ground and nods. 'This will do. Ready to proceed?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 73))
talkEntry:addCondition(condition_item(1053, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 150 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 15000))
talkEntry:addConsequence(consequence_deleteitem(1053, 1, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 74))
talkEntry:addResponse("#me nimmt den Speer und begutachtet ihn mit ihren pechschwarzen Augen. Sie rammt die Spitze in den Boden un nickt dann zufrieden 'Der wird taugen. Bereit f�r weitere Taten?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 74))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 75))
talkEntry:addResponse("Before my offspring come forth into the world, you must kill five spider queens. They hunt my young as a delicacy and to ensure there is more food for themselves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 74))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 75))
talkEntry:addResponse("Bevor meine Nachkommen das Licht der Welt erblicken musst du f�nf Spinnenk�niginnen t�ten. Sie jagen nach meiner Brut wie nach einer Delikatesse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 74))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 75))
talkEntry:addResponse("Before my offspring come forth into the world, you must kill five spider queens. They hunt my young as a delicacy and to ensure there is more food for themselves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 74))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 75))
talkEntry:addResponse("Bevor meine Nachkommen das Licht der Welt erblicken musst du f�nf Spinnenk�niginnen t�ten. Sie jagen nach meiner Brut wie nach einer Delikatesse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 74))
talkEntry:addCondition(condition_quest(520, "<", 80))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You haven't killed the spider queens yet? Please go ahead, I need your help!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 74))
talkEntry:addCondition(condition_quest(520, "<", 80))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast die Spinnenk�niginnen noch nicht beseitigt? Bitte erledige die Sache, ich brauch doch deine Hilfe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 74))
talkEntry:addCondition(condition_quest(520, "<", 80))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You haven't killed the spider queens yet? Please go ahead, I need your help!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 74))
talkEntry:addCondition(condition_quest(520, "<", 80))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast die Spinnenk�niginnen noch nicht beseitigt? Bitte erledige die Sache, ich brauch doch deine Hilfe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 80))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded one hundred and eighty silver coins."))
talkEntry:addConsequence(consequence_money("+", 18000))
talkEntry:addConsequence(consequence_quest(520, "=", 81))
talkEntry:addResponse("#me tosses a bag of silver at you. 'Those queens think they can just take over my territory. Thank you for showing them they are wrong. You have improved your stamina now and are ready for your final task.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 80))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 180 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 18000))
talkEntry:addConsequence(consequence_quest(520, "=", 81))
talkEntry:addResponse("#me wirft dir einen Beutel mit Silberm�nzen zu. 'Diese K�niginnen denken wohl , dass sie mein Territorium haben k�nnen. Danke, dass du ihnen das Gegenteil bewiesen hast. Wenn du soweit bist, dann wird es Zeit f�r die letzte Aufgabe.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 81))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 82))
talkEntry:addResponse("#me looks around at her offspring, which wander all around her, before looking up at you.  In her quiet raspy voice she says, 'As you can see, my offspring have come forth into the world. You must ensure their safety by killing fifty more of the strongest spiders. They are the species Tarantula, Gynkese Widow, Kings Fright, Spider Queen, or Shadow Munchers.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 81))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 82))
talkEntry:addResponse("#me beobachtet ihre Nachkommen, die um sie herum krabbeln, bevor sie dir einen Blick zuwirft. In ihrer rauen, leisen Stimme sagt sie dir: 'Wie du siehst sind meine Nachkommen geschl�pft. Du musst ihre Sicherheit gew�hrleisten. T�te 50 der st�rksten Spinnen! Zu diesen geh�ren Schattenmampfer, Taranteln, Spinnenk�niginnen, Ritterf�rchte, oder Gynkesische Witwen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 81))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Gorgophones' Nest"))
talkEntry:addConsequence(consequence_quest(520, "=", 82))
talkEntry:addResponse("#me looks around at her offspring, which wander all around her, before looking up at you.  In her quiet raspy voice she says, 'As you can see, my offspring have come forth into the world. You must ensure their safety by killing fifty more of the strongest spiders. They are the species Tarantula, Gynkese Widow, Kings Fright, Spider Queen, or Shadow Munchers.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 81))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neue Quest] Das Nest der Gorgophone"))
talkEntry:addConsequence(consequence_quest(520, "=", 82))
talkEntry:addResponse("#me beobachtet ihre Nachkommen, die um sie herum krabbeln, bevor sie dir einen Blick zuwirft. In ihrer rauen, leisen Stimme sagt sie dir: 'Wie du siehst sind meine Nachkommen geschl�pft. Du musst ihre Sicherheit gew�hrleisten. T�te 50 der st�rksten Spinnen! Zu diesen geh�ren Schattenmampfer, Taranteln, Spinnenk�niginnen, Ritterf�rchte, oder Gynkesische Witwen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 81))
talkEntry:addCondition(condition_quest(520, "<", 132))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You haven't killed the spider army yet? Please go ahead, I need your help! Kill fifty Tarantula, Gynkese Widow, Kings Fright, Spider Queen, or Shadow Munchers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 81))
talkEntry:addCondition(condition_quest(520, "<", 132))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Du hast die Armeen der Spinnen noch nicht beseitigt? Bitte erledige die Sache, ich brauch doch deine Hilfe! T�te 50 Schattenmampfer, Tarantel, Spinnenk�nigin, Ritterfurcht, oder Gynkesische Witwe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 81))
talkEntry:addCondition(condition_quest(520, "<", 132))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("You haven't killed the spider army yet? Please go ahead, I need your help! Kill fifty Tarantula, Gynkese Widow, Kings Fright, Spider Queen, or Shadow Munchers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, ">", 81))
talkEntry:addCondition(condition_quest(520, "<", 132))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Du hast die Armeen der Spinnen noch nicht beseitigt? Bitte erledige die Sache, ich brauch doch deine Hilfe! T�te 50 Schattenmampfer, Tarantel, Spinnenk�nigin, Ritterfurcht, oder Gynkesische Witwe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 132))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are rewarded with gems."))
talkEntry:addConsequence(consequence_item(285, 160, 333, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 133))
talkEntry:addResponse("#me skitters over her web, rushing over to you. 'You have far exceeded my best hopes for clearing the area. For your dedicated help, I will give you some of my greatest treasures.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 132))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst Edelsteine."))
talkEntry:addConsequence(consequence_item(285, 160, 333, nil))
talkEntry:addConsequence(consequence_quest(520, "=", 133))
talkEntry:addResponse("#me krabbelt �bers Netz und eilt zu dir. 'Du hast meine Erwartungen bei Weitem �bertroffen. F�r deine hingebungsvolle Hilfe werde ich dich mit meinen wertvollsten Sch�tzen belohnen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 133))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addResponse("Guardian of my Brood, I have no more tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 133))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("H�ter meiner Brut, ich habe keine weiteren Aufgaben f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 133))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Guardian of my Brood, I have no more tasks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(520, "=", 133))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("H�ter meiner Brut, ich habe keine weiteren Aufgaben f�r dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("#me just looks at you with disinterest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("#me sieht dich voller Desinteresse an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra is the All-Mother, the goddess of fertility, who blesses us with many healthy offspring.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra ist die All-Mutter, die G�ttin der Fruchtbarkeit, die uns mit vielen gesunden Nachkommen segnet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I do not sell or buy anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe und verkaufe nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("#me builds a large irregular, funnel-like web of sticky silk.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("#me baut eine gro�e unregelm��ige, trichterf�rmige Bahn aus klebrigen Spinnseide.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gorgophone")
talkEntry:addResponse("That is me, the grim slayer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gorgophone")
talkEntry:addResponse("Das bin ich, die grimmige Schl�chterin.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me flitzt herum und pflegt ihr Netz.", "#me�rushes around, tending to her web.")
talkingNPC:addCycleText("#me krabbelt schnell �ber ihr Netz, um Beute festzuhalten, die zappelnd und sich windend versucht zu fl�chten.", "#me scrabbles quickly over her web to capture prey that is wriggling and writhing around, trying to escape.")
talkingNPC:addCycleText("#me erzeugt seidige Spinnf�den und webt ein kompliziertes Netz in der Umgebung.", "#me produces silky thread, making an intricate web around the area.")
talkingNPC:addCycleText("#me betastet einen Strang der sich im Netz bewegt und eilt hinaus, um ihre Beute zu erfassen.", "#me feels a strand move on her web and rushes out to capture her prey.")
talkingNPC:addCycleText("#me findet einen Edelstein und schiebt ihn herum, um ihn zu verstecken.", "#me finds a gemstone and pushes it around to�hide it away.")
talkingNPC:addCycleText("#me durchsticht ihre Beute mit ihren Rei�z�hnen und verspritzt ihre Verdauungsenzyme.", "#me punctures her prey with her fangs and administers her digestive enzymes.")
talkingNPC:addCycleText("#me pr�ft ihren Eiersack, der aussieht wie ein Kokon und an ihrem Netz h�ngt.", "#me checks her egg sac, which looks like a cocoon and is suspended from her web.")
talkingNPC:addCycleText("#me benutzt ihre knirschenden F�nge, um die �berreste des K�rpers ihrer Beute vollst�ndig zu verfl�ssigen und saugt ihre Mahlzeit auf.", "#me uses her gnashing fangs to complete�the liquefaction of the�remains of her prey's body and sucks up her meal.")
talkingNPC:addCycleText("#me flitzt herum, um ihr Netz zu reparieren und nach ihrer n�chsten Mahlzeit zu suchen.", "#me skitters around, repairing her large web and searching for her next meal.")
talkingNPC:addCycleText("#me reinigt ihre Z�hne, w�hrend sie alle anstarrt, die in der N�he sind", "#me cleans her fangs as she glares at all who come near.")
talkingNPC:addCycleText("#me l�uft herum und vergr��ert ihr Netz.", "#me runs around enlarging her web.")
talkingNPC:addCycleText("#me h�ngt an einem seidenen Faden und schaukelt sanft hin und her.", "#me hangs from a silky thread and is gently rocked back and forth�on a�breeze.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist die Spinne Gorgophone.", "This NPC is the Spider Gorgophone.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
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
