local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Alexis Dostas the stablemaster. Keywords: Hello, quest, Cadomyr, profession, stables."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Alexis Dostas der Stallmeister. Schl�sselw�rter: Hallo, Quest, Cadomyr, Beruf, Stallungen."))
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
talkEntry:addResponse("Be greeted. You came here for a mount I suppose?")
talkEntry:addResponse("Welcome to the stables.")
talkEntry:addResponse("If you need a mount, you came to the right place.")
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
talkEntry:addResponse("Seid gegr��t. Ihr seid hier eines Reittiers wegen, nehme ich an.")
talkEntry:addResponse("Willkommen in den Stallungen.")
talkEntry:addResponse("Falls ihr ein Lasttier ben�tigt seid ihr hier richtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted. You came here for a mount I suppose?")
talkEntry:addResponse("Welcome to the stables.")
talkEntry:addResponse("If you need a beast of burden, you came to the right place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid gegr��t. Ihr seid hier eines Reittiers wegen, nehme ich an.")
talkEntry:addResponse("Willkommen in den Stallungen.")
talkEntry:addResponse("Falls ihr ein Reittier ben�tigt seid ihr hier richtig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell... and come back alive.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehabt euch wohl und kommt gesund zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell... and come back alive.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gehabt euch wohl und kommt gesund zur�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("This is none of your business, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Entschuldigt, aber das tut jetzt nichts zur Sache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("My name is Alexis Dostas, I am the royal stablemaster.")
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
talkEntry:addResponse("Mein Name ist Alexis Dostas, ich bin hier der k�nigliche Stallmeister.")
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
talkEntry:addCondition(condition_quest(125, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Royal Stables I"))
talkEntry:addConsequence(consequence_quest(125, "=", 1))
talkEntry:addResponse("As you may know, Cadomyr is not blessed with much fertile farmland, hence the stables always lack hay. Could you please bring ten bundles of grain? My gratitude is guaranteed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die k�niglichen Stallungen I"))
talkEntry:addConsequence(consequence_quest(125, "=", 1))
talkEntry:addResponse("Wie euch bekannt sein d�rfte, ist Cadomyr nicht gerade mit fruchtbarem Ackerland gesegnet. Somit fehlt es in den Stallungen immer an Heu. Bringt ihr mir bitte zehn B�ndel Getreide? Mein Dank ist euch gewiss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Royal Stables I"))
talkEntry:addConsequence(consequence_quest(125, "=", 1))
talkEntry:addResponse("As you may know, Cadomyr is not blessed with much fertile farmland, hence the stables always lack hay. Could you please bring ten bundles of grain? My gratitude is guaranteed.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die k�niglichen Stallungen I"))
talkEntry:addConsequence(consequence_quest(125, "=", 1))
talkEntry:addResponse("Wie euch bekannt sein d�rfte, ist Cadomyr nicht gerade mit fruchtbarem Ackerland gesegnet. Somit fehlt es in den Stallungen immer an Heu. Bringt ihr mir bitte zehn B�ndel Getreide? Mein Dank ist euch gewiss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a gold nugget."))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_item(234, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 2))
talkEntry:addResponse("Ah, the hay, thank you very much. Bette and the other mounts will be pleased! I do not have much I can give you, but long ago, a weird dwarf dropped a gold nugget in the stables. I cannot shake the feeling that he is somehow responsible for our lack of hay...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Goldnugget."))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_item(234, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 2))
talkEntry:addResponse("Ah, das Heu, vielen lieben Dank. Bette und die anderen Reittiere wird es freuen. Ich kann euch nicht viel geben, aber ein verr�ckter Zwerg hat vor langer Zeit ein Goldnugget im Stall vergessen. Irgendwie werde ich das Gef�hl nicht los, dass er etwas mit unserem Heumangel zu tun hat...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a gold nugget."))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_item(234, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 2))
talkEntry:addResponse("Ah, the hay, thank you very much. Bette and the other mounts will be pleased! I do not have much I can give you, but long ago, a weird dwarf dropped a gold nugget in the stables. I cannot shake the feeling that he is somehow responsible for our lack of hay...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addCondition(condition_item(249, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Goldnugget."))
talkEntry:addConsequence(consequence_deleteitem(249, 10, nil))
talkEntry:addConsequence(consequence_item(234, 1, 699, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 2))
talkEntry:addResponse("Ah, das Heu, vielen lieben Dank. Bette und die anderen Reittiere wird es freuen. Ich kann euch nicht viel geben, aber ein verr�ckter Zwerg hat vor langer Zeit ein Goldnugget im Stall vergessen. Irgendwie werde ich das Gef�hl nicht los, dass er etwas mit unserem Heumangel zu tun hat...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The mounts urgently need hay. All I am asking for is that you get ten bundles of grain for them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Die Reittiere brauchen dringend neues Heu. Alles, was ich also von euch f�r sie erbitte, sind zehn B�ndel Getreide.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("The mounts urgently need hay. All I am asking for is that you get ten bundles of grain for them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Die Reittiere brauchen dringend neues Heu. Alles, was ich also von euch f�r sie erbitte, sind zehn B�ndel Getreide.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] The Royal Stables II"))
talkEntry:addConsequence(consequence_quest(125, "=", 3))
talkEntry:addResponse("Did you know what our mounts love the most? Carrots! And only a content mount can stride proudy over the plains. Would you gather ten carrots for them, please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die k�niglichen Stallungen II"))
talkEntry:addConsequence(consequence_quest(125, "=", 3))
talkEntry:addResponse("Wu�tet ihr, was unsere Reittiere am liebsten haben? Karotten! Und nur zufriedene Reittiere galoppieren stolz �ber die Ebenen. W�rdet ihr bitte zehn Karotten f�r sie besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] The Royal Stables II"))
talkEntry:addConsequence(consequence_quest(125, "=", 3))
talkEntry:addResponse("Did you know what our mounts love the most? Carrots! And only a content mount can stride proudy over the plains. Would you gather ten carrots for them, please?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die k�niglichen Stallungen II"))
talkEntry:addConsequence(consequence_quest(125, "=", 3))
talkEntry:addResponse("Wu�tet ihr, was unsere Reittiere am liebsten haben? Karotten! Und nur zufriedene Reittiere galoppieren stolz �ber die Ebenen. W�rdet ihr bitte zehn Karotten f�r sie besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addCondition(condition_item(2493, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded four silver coins."))
talkEntry:addConsequence(consequence_money("+", 400))
talkEntry:addConsequence(consequence_deleteitem(2493, 10, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 4))
talkEntry:addResponse("You really brought some carrots for Bette and the other mounts. I thank you very, very much. Here, have my salary, you made the mounts happy, so you deserve it much more than I do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addCondition(condition_item(2493, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst vier Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 400))
talkEntry:addConsequence(consequence_deleteitem(2493, 10, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 4))
talkEntry:addResponse("Ihr habt wirklich Karotten f�r Bette und die anderen Reittiere gebracht. Ich danke euch vielmals daf�r. Hier, nehmt meinen Lohn, ihr habt die Reittiere gl�cklich gemacht und verdient ihn mehr als ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addCondition(condition_item(2493, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded four silver coins."))
talkEntry:addConsequence(consequence_money("+", 400))
talkEntry:addConsequence(consequence_deleteitem(2493, 10, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 4))
talkEntry:addResponse("You really brought some carrots for Bette and the other mounts. I thank you very, very much. Here, have my salary, you made the mounts happy, so you deserve it much more than I do.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addCondition(condition_item(2493, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst vier Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 400))
talkEntry:addConsequence(consequence_deleteitem(2493, 10, nil))
talkEntry:addConsequence(consequence_quest(125, "=", 4))
talkEntry:addResponse("Ihr habt wirklich Karotten f�r Bette und die anderen Reittiere gebracht. Ich danke euch vielmals daf�r. Hier, nehmt meinen Lohn, ihr habt die Reittiere gl�cklich gemacht und verdient ihn mehr als ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("The horses become nervous whenever I just mention the word 'carrot'. Perhaps you have the time to get ten carrots for them?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Die Pferde wiehern aufgeregt wenn ich nur das Wort 'Karotte' erw�hne. Vielleicht findet ihr ja die Zeit, zehn Karotten f�r sie besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("The horses become nervous whenever I just mention the word 'carrot'. Perhaps you have the time to get ten carrots for them?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Die Pferde wiehern aufgeregt wenn ich nur das Wort 'Karotte' erw�hne. Vielleicht findet ihr ja die Zeit, zehn Karotten f�r sie besorgen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Well, there is nothing I need at this moment. Perhaps you should ask Anthar Vilicon, the Chancellor, about services you could do for Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nun, es gibt nichts, was ich derzeit br�uchte. Vielleicht fragt ihr den Kanzler Anthar Vilicon nach Diensten, die ihr Cadomyr leisten k�nntet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Well, there is nothing I need at this moment. Perhaps you should ask Anthar Vilicon, the Chancellor, about services you could do for Cadomyr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(125, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nun, es gibt nichts, was ich derzeit br�uchte. Vielleicht fragt ihr den Kanzler Anthar Vilicon nach Diensten, die ihr Cadomyr leisten k�nntet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rumpelstilzchen")
talkEntry:addResponse("Den Namen habe ich noch nie geh�rt. Wer soll das sein, ein B�cker oder ein Brauer etwa?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rumpelstiltskin")
talkEntry:addResponse("Never heard that name. Who is that supposed to be, a baker or a brewer?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I feed the mounts, I care for them, I lend them to anyone who promises to treat them well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich f�ttere die Reittiere hier. Ich k�mmere mich um sie und leihe sie jedem, der verspricht, sie gut zu behandeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I feed the mounts, I care for them, I lend them to anyone who promises to treat them well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich f�ttere die Reittiere hier. Ich k�mmere mich um sie und leihe sie jedem, der verspricht, sie gut zu behandeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mule")
talkEntry:addTrigger("donkey")
talkEntry:addTrigger("burden")
talkEntry:addResponse("Mules are rather frugal animals. They just need a little oats from time to time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("feed")
talkEntry:addTrigger("food")
talkEntry:addTrigger("oat")
talkEntry:addResponse("Mules love oats! No wonder, they're related to horses.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stable")
talkEntry:addResponse("Sometimes, I may care for the proud destriers of noble knights, the other day for Bette and the other mules. I treat all of them well, all of them work hard for Cadomyr's honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("horse")
talkEntry:addTrigger("destrier")
talkEntry:addResponse("There are two differences between horses and mules: Longer legs and even more hunger for oats!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Maultier")
talkEntry:addTrigger("Muli")
talkEntry:addTrigger("Esel")
talkEntry:addTrigger("Lasttier")
talkEntry:addResponse("Maultiere sind recht gen�gsame Tiere. Sie brauchen nur hin und wieder etwas Hafer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Futter")
talkEntry:addTrigger("F�tter")
talkEntry:addTrigger("Hafer")
talkEntry:addResponse("Maultiere lieben Hafer! Kein Wunder, sind sie doch mit Pferden verwandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stall")
talkEntry:addResponse("Manchmal darf ich mich um stolze Schlachtr�sser edler Ritter k�mmern, an anderen Tagen um Bette und die anderen Maultiere. Ich behandle alle gleich gut, denn alle tragen ihren Teil zu Cadomyrs Ehre bei.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pferd")
talkEntry:addTrigger("ross")
talkEntry:addResponse("Es gibt genau zwei Unterschiede zwischen Pferden und Maultieren: L�ngere Beine und noch mehr Hunger auf Hafer!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Queen Rosaline is a good sovereign. She rules just and fair, just like her father.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("K�nigin Rosaline ist eine gute Herrscherin. Sie regiert gerecht und weise, genau wie ihr Vater.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Queen Rosaline is a good sovereign. She rules just and fair, just like her father.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("K�nigin Rosaline ist eine gute Herrscherin. Sie regiert gerecht und weise, genau wie ihr Vater.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I have to admit: When Sir Reginald... passed away, I was a little afraid about the future. But Queen Rosaline drove away all my sorrows.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich gebe zu: Als Sir Reginald... nicht mehr war, da war ich etwas unsicher �ber die Zukunft. Aber K�nigin Rosaline hat alle meine Sorgen von mir genommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Willkommen in den Stallungen.", "Welcome to the stables.")
talkingNPC:addCycleText("Die G�tter m�gen die K�nigin sch�tzen.", "Gods, save the Queen.")
talkingNPC:addCycleText("#me hakt etwas Heu zusammen.", "#me rakes hay.")
talkingNPC:addCycleText("#me sch�ttet etwas Wasser in eine Tr�nke.", "#me pours some water into a water trough.")
talkingNPC:addCycleText("Meine kleine Schwester ist ein h�bsches M�dchen.", "My little sister is a pretty, pretty girl.")
talkingNPC:addCycleText("Seid ihr weit gereist und tun euch eure F��e weh?", "Have you walked for miles, are your feet hurting?")
talkingNPC:addCycleText("#me pfeift vor sich hin.", "#me whistles a song.")
talkingNPC:addCycleText("Cadomyr, oh Cadomyr, wie lieb ich dir!", "Cadomyr, O Cadomyr, how much I love you!")
talkingNPC:addCycleText("Bette? Wo ist denn Bette?", "Bette? Where is Bette?")
talkingNPC:addCycleText("#me �ffnet einen Hafersack.", "#me opens a bag of oats.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Alexis Dostas der Stallmeister.", "This NPC is Alexis Dostas the stablemaster.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 365)
mainNPC:setEquipment(11, 193)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2114)
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
