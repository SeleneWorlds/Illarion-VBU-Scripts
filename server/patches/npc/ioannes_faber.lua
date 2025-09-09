local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_rankpoints = require("npc.base.consequence.rankpoints")
local basic = require("npc.base.basic")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the royal treasurer of Cadomyr, Ioannes Faber. Keywords: Be greeted, quest, treasurer, gold."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der k�nigliche K�mmerer von Cadomyr, Ioannes Faber. Schl�sselw�rter: Seid gegr��t, Quest, K�mmerer, Gold."))
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
talkEntry:addResponse("Hail and may Malach�n bless you. I assume you obey the Queen?")
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
talkEntry:addResponse("Malach�n zum Gru�e. Ich nehme an, ihr gehorcht der K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hail and may Malach�n bless you. I assume you obey the Queen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Malach�n zum Gru�e. Ich nehme an, ihr gehorcht der K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Go forth and do as the Queen tells you.")
talkEntry:addResponse("Farewell and may your journey be a pleasant one.")
talkEntry:addResponse("Good bye and don't forget to come back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehet hin und tut, wie die K�nigin euch gehei�t.")
talkEntry:addResponse("Gehabt euch wohl und m�ge eure Reise eine angenehme sein.")
talkEntry:addResponse("Auf wiedersehen und vergesst nicht, zur�ckzukehren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Go forth and do as the Queen tells you.")
talkEntry:addResponse("Farewell and may your journey be a pleasant one.")
talkEntry:addResponse("Good bye and don't forget to come back.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gehet hin und tut, wie die K�nigin euch gehei�t.")
talkEntry:addResponse("Gehabt euch wohl und m�ge eure Reise eine angenehme sein.")
talkEntry:addResponse("Auf wiedersehen und vergesst nicht, zur�ckzukehren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("The smile of the Queen makes me spin, spinning within.")
talkEntry:addResponse("Every word of the Queen is like caress.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Das L�cheln der K�nigin macht mich ganz wuschig im Inneren.")
talkEntry:addResponse("Jedes Wort der K�nigin ist wie eine Liebkosung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Faber. Ioannes Faber. I am the royal treasurer, do not underestimate my importance at the palace.")
talkEntry:addResponse("My name is Ioannes Faber, the royal treasurer of Cadomyr. The Queen relies on me, indeed.")
talkEntry:addResponse("You don't know my name? Better write it down then: Ioannes Faber.")
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
talkEntry:addResponse("Faber. Ioannes Faber. Ich bin der k�nigliche K�mmerer, ihr solltet meine Bedeutung am Hofe nicht untersch�tzen.")
talkEntry:addResponse("Mein Name ist Ioannes Faber, der k�nigliche K�mmerer von Cadomyr. Die K�nigin h�lt gro�e St�cke auf mich.")
talkEntry:addResponse("Ihr kennt meinen Namen nicht? Schreibt ihn euch besser auf: Ioannes Faber.")
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
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I doubt you came to the right place for a mission. How about you try the sewers?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Dies d�rfte nicht der richtige Ort f�r eure Mission sein. Schaut doch mal im Abwasserkanal nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I doubt you came to the right place for a mission. How about you try the sewers?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Dies d�rfte nicht der richtige Ort f�r eure Mission sein. Schaut doch mal im Abwasserkanal nach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("While I admire the wisdom of Runewick, I have my orders not to issue any tasks to its citizens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich bewundere zwar die Weisheit Runewicks aber ich habe meine Befehle und vergebe keine Aufgaben an B�rger von dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("order")
talkEntry:addResponse("While I admire the wisdom of Runewick, I have my orders not to issue any tasks to its citizens.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich bewundere zwar die Weisheit Runewicks aber ich habe meine Befehle und vergebe keine Aufgaben an B�rger von dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("We have no use for outlaws. Leave the palace immediately!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wir k�nnen hier keine Gesetzlosen gebrauchen! Verlasse den Palast umgehend!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("We have no use for outlaws. Leave the palace immediately!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_town(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wir k�nnen hier keine Gesetzlosen gebrauchen! Verlasse den Palast umgehend!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr Treasury"))
talkEntry:addConsequence(consequence_quest(151, "=", 1))
talkEntry:addResponse("As a loyal citizen of Cadomyr, it is your duty to donate a share of your mudane wealth to the treasury. The donation place is right next to Her Majesty's throne, place your donation on it, but don't you dare to donate just alms!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schatzkammer Cadomyrs"))
talkEntry:addConsequence(consequence_quest(151, "=", 1))
talkEntry:addResponse("Als loyaler B�rger Cadomyrs ist es eure Pflicht, einen Teil eures Reichtums an die Schatzkammer zu spenden. Der Spendenplatz ist genau neben dem Thron ihrer Majest�t, bringt eure Spende dorthin. Aber wagt es nicht, einfach nur Almosen zu spenden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr Treasury"))
talkEntry:addConsequence(consequence_quest(151, "=", 1))
talkEntry:addResponse("As a loyal citizen of Cadomyr, it is your duty to donate a share of your mudane wealth to the treasury. The donation place is right next to Her Majesty's throne, place your donation on it, but don't you dare to donate just alms!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 0))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Schatzkammer Cadomyrs"))
talkEntry:addConsequence(consequence_quest(151, "=", 1))
talkEntry:addResponse("Als loyaler B�rger Cadomyrs ist es eure Pflicht, einen Teil eures Reichtums an die Schatzkammer zu spenden. Der Spendenplatz ist genau neben dem Thron ihrer Majest�t, bringt eure Spende dorthin. Aber wagt es nicht, einfach nur Almosen zu spenden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest solved] Ioannes is satisfied."))
talkEntry:addConsequence(consequence_quest(151, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("I see that you have learnt how you can donate your wealth to the treasury. Next time, donate more! I will mention your name when talking to the Queen next time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 2))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Ioannes ist zufrieden."))
talkEntry:addConsequence(consequence_quest(151, "=", 3))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("Nun, ihr habt verstanden, wie man etwas an die Schatzkammer spendet. Das n�chste Mal spendet ihr aber gef�lligst mehr! Ich werde euren Namen in meinem n�chsten Gespr�ch mit der K�nigin erw�hnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Donating is quite easy, just drop your items on the donation place. Obey!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Spenden ist eigentlich ganz einfach: Legt einen Gegenstand auf den Spendenplatz. Gehorcht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Donating is quite easy, just drop your items on the donation place. Obey!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 1))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Spenden ist eigentlich ganz einfach: Legt einen Gegenstand auf den Spendenplatz. Gehorcht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 3))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("If you want to do further deeds in the name of Cadomyr, ask Chancellor Anthar Vilicon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wenn ihr weitere Taten im Namen Cadomyrs vollbringen wollt, fragt Kanzler Anthar Vilicon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("If you want to do further deeds in the name of Cadomyr, ask Chancellor Anthar Vilicon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(151, "=", 3))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Wenn ihr weitere Taten im Namen Cadomyrs vollbringen wollt, fragt Kanzler Anthar Vilicon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("You have no business here, outcast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("F�r Ausgesto�ene gibt es hier nichts zu holen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addTrigger("order")
talkEntry:addResponse("You have no business here, outcast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("F�r Ausgesto�ene gibt es hier nichts zu holen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am the royal treasurer. The Queen entrusted me with the wealth of Cadomyr and I am not the one who will disappoint her. Will you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin der k�nigliche K�mmerer. Die K�nigin hat mir den Reichtum Cadomyrs anvertraut; und ich bin keiner von denen, die sie entt�uschen wird. Ihr etwa?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am the royal treasurer. The Queen entrusted me the wealth of Cadomyr and I am not the one who will disappoint her. Will you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin der k�nigliche K�mmerer. Die K�nigin hat mir den Reichtum Cadomyrs anvertraut; und ich bin keiner von denen, die sie entt�uschen wird. Ihr etwa?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Well, I heard many refugees came from Gobaith to Cadomyr, but I do not deal that much with refugees, I have to admit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Nun, ich h�rte, dass viele Fl�chtlinge von Gobaith nach Cadomyr gekommen sind. Aber ich muss gestehen, ich schere mich nicht sonderlich um Fl�chtlinge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Welcome to the Palace. I hope you haven't come here to rob the treasury.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Willkommen im Palast. Ich hoffe, ihr seid nicht hier, um die Schatzkammer zu pl�ndern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("treasurer")
talkEntry:addTrigger("treasury")
talkEntry:addResponse("The office of treasurer requires loyalty, integrity and meekness, and you won't find anyone in Cadomyr who suits the office better than Ioannes Faber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gold")
talkEntry:addResponse("Gold is important for Cadomyr's wealth, but more important is our honour. For honour, you cannot buy but just sell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("jewel")
talkEntry:addResponse("Jewels, gems, diamonds, only the brightest ones for the crown of Cadomyr. Got some?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("glas")
talkEntry:addResponse("The Queen uses to have banquets with her nobley from time to time, thus, the finest tableware is needed frequently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wealth")
talkEntry:addResponse("I hold the keys to the treasury, and there is nothing even Baron Hastings could offer me to betray my Queen. I'd rather die... like my wife.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("honor")
talkEntry:addTrigger("honour")
talkEntry:addResponse("Honour is what shapes a man and crafted Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("bribe")
talkEntry:addTrigger("corrupt")
talkEntry:addResponse("Hold your tongue!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wife")
talkEntry:addResponse("It is not a secret anymore, my wife was slain by henchmen of Baron Hastings in an attempt to blackmail me, but I did not surrender the treasury to them... Instead...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�mmerer")
talkEntry:addTrigger("Schatzkammer")
talkEntry:addResponse("Das Amt des K�mmerers erfordert Loyalit�t, Integrit�t und Demut. Es gibt niemanden in Cadomyr, der von all dem mehr aufwei�t als Ioannes Faber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gold")
talkEntry:addResponse("Gold ist wichtig f�r Cadomyrs Reichtum, aber weit wichtiger noch ist die Ehre. Denn Ehre kann man nicht kaufen, sehr wohl aber verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Juwel")
talkEntry:addResponse("Juwelen, Edelsteine, Diamanten, nur die funkelnsten f�r die Krone Cadomyrs. Habt ihr welche?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glas")
talkEntry:addResponse("Die K�nigin h�lt des �fteren Banketts mit ihren Oberen ab. Hierf�r wird stets das beste Geschirr gebraucht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reichtum")
talkEntry:addTrigger("Reicht�mer")
talkEntry:addResponse("Ich verwahre die Schl�ssel zur Schatzkammer und es gibt nichts, was mir nicht einmal Baron Hastings bieten k�nnte, um meine K�nigin zu verraten. Ich w�rde viel lieber sterben... wie meine Frau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ehre")
talkEntry:addResponse("Ehre es, was einen Mann ausmacht und auf was Cadomyrs Fundament steht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bestech")
talkEntry:addTrigger("korrupt")
talkEntry:addResponse("Haltet den Schnabel!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frau")
talkEntry:addResponse("Es ist kein Geheimnis mehr; meine Frau wurde von Handlangern von Baron Hastings umgebracht, als er mich erpressen wollte. Doch ich �berlie� ihm nicht die Schatzkammer. Stattdessen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage seems to be quite a charismatic person. I can't explain otherwise how such a honourless person gathered so many followers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier scheint mir eine charismatische Pers�nlichkeit zu sein. Wie anders ist es zu erkl�ren, dass so eine ehrlose Person so viele Anh�nger um sich schart.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage seems to be quite a charismatic person. I can't explain otherwise how such a honourless person gathered so many followers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier scheint mir eine charismatische Pers�nlichkeit zu sein. Wie anders ist es zu erkl�ren, dass so eine ehrlose Person so viele Anh�nger um sich schart.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("What makes me wonder, Runewick is admittedly a magnificent town, but they don't really care about mundane wealth there. That... simply does not fit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Wor�ber ich mich wundere: Runewick ist zugegebenerma�en eine prunkvolle Stadt, aber sie scheren sich nicht um weltlichen Reichtum dort. Das... passt irgendwie nicht zusammen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("There is a difference between me and the Don, he keeps all his wealth for himself, and I keep it for the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Was mich und den Don unterscheidet ist, dass der seinen ganzen Reichtum f�r sich selber hortet und ich den Reichtum Cadomyrs f�r die K�nigin verwahre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("I'd be king of Galmair if I could claim all the treasury of Cadomyr for myself, but I am rather an honourable serf than a heinous lord.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ich w�re K�nig von Galmair, wenn ich den Inhalt der Schatzkammer Cadomyrs an mich rei�en w�rde. Aber ich bin lieber ein ehrbarer Diener als ein ruchloser Herr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Since my wife died, Queen Rosaline is the only woman in my life. I serve her with every fibre of my body.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Seitdem meine Frau nicht mehr ist, ist K�nigin Rosaline die einzige Frau in meinem Leben. Ich diene ihr mit jeder Faser meines K�rpers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Since my wife died, Queen Rosaline is the only woman in my life. I serve her with every fibre of my body.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Seitdem meine Frau nicht mehr ist, ist K�nigin Rosaline die einzige Frau in meinem Leben. Ich diene ihr mit jeder Faser meines K�rpers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is a glorious realm, founded by honourable men of Albarian origin. Be proud to stand here!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist ein glorreiches Reich, gegr�ndet von ehrbaren M�nnern albarischen Gebl�ts. Seid stolz, hier sein zu d�rfen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar, Albar, Albar. Cadomyr! I respect our ancestors, but Cadomyr is independent and even more honourable than Albar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar, Albar, Albar. Cadomyr! Ich ehre unsere Vorv�ter, aber Cadomyr ist eigenst�ndig und noch ehrbarer als Albar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("They are no people and no tribe. What are they, anyway - besides smugglers?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Sie sind kein Volk und kein Stamm. Was sind sie eigentlich - au�er Schmuggler?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Warmongers! Men cannot recall true peace between Salkamar and Albar. Why? Because of them!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Kriegstreiber! Die Menschheit kann sich an keinen dauerhaften Frieden zwischen Albar und Salkamar erinnern. Warum? Ihretwegen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I pray to Malach�n and only to Malach�n!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich bete zu Malach�n - und nur zu Malach�n!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n is the patron of Cadomyr. Never displease him nor the Queen and you will have a long life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n ist der Schutzgott von Cadomyr. Entt�uscht weder ihn noch die K�nigin und ihr werdet euch eines langen Lebens erfreuen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("The dwarves pray to Irmorom to gain wealth, so far, so good, but I pray to Malach�n to help me guard the wealth of Cadomyr with my sword.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Die Zwerge beten zu Irmorom um Reicht�mer anzuh�ufen, soweit, so gut. Aber ich bete zu Malach�n, damit er mir hilft, die Reicht�mer Cadomyrs mit dem Schwert zu verteidigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm not merchant, I am the royal treasurer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich bin kein H�ndler, ich bin der k�nigliche K�mmerer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Let me tell you something, a whip can make people work but a crown makes them obey.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Lasst euch das gesagt sein: Eine Peitsche bringt Leute zum arbeiten, aber eine Krohne bringt sie dazu, zu gehorchen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ioannes")
talkEntry:addTrigger("Faber")
talkEntry:addResponse("I am the royal treasurer Ioannes Faber. I obey Her Majesty and only Her Majesty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ioannes")
talkEntry:addTrigger("Faber")
talkEntry:addResponse("Ich bin der k�nigliche K�mmerer Ioannes Faber. Ich gehorche ihrer Majest�t und nur ihrere Majest�t.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Hoch lebe die K�nigin!", "Long live the Queen!")
talkingNPC:addCycleText("F�r die Ehre von Cadomyr!", "For the glory of Cadomyr!")
talkingNPC:addCycleText("Cadomyr, oh Cadomyr, wie lieb ich dir!", "Cadomyr, O Cadomyr, you are my dear!")
talkingNPC:addCycleText("Rosaline und Cadomyr - Liebe geben sie uns, unsch�tzbar und unerreicht.", "Rosaline and Cadomyr - Love she gives us, passing measure.")
talkingNPC:addCycleText("Nur ein toter Hastings ist ein guter Hastings.", "Only a dead Hastings is a good Hastings.")
talkingNPC:addCycleText("Ein Halblingsgewicht in Gold f�r den Kopf von Baron Hastings!", "The weight of a halfling in gold for the head of Baron Hastings!")
talkingNPC:addCycleText("Vor jedem verborgenen Feind, vor den Anschl�gen der M�rder, sch�tze Malach�n die K�nigin!", "From every latent foe, from the assassins blow, Malach�n save the Queen!")
talkingNPC:addCycleText("Und wie ein rei�ender Strom losbrechen, um rebellische Hastings niederzuwerfen!", "And like a torrent rush, rebellious Hastings to crush.")
talkingNPC:addCycleText("Malach�n sch�tze die K�nigin!", "Malach�n save the Queen!")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der k�nigliche K�mmerer von Cadomyr, Ioannes Faber.", "This NPC is the royal treasurer of Cadomyr, Ioannes Faber.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Don't you touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 101)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 459)
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
