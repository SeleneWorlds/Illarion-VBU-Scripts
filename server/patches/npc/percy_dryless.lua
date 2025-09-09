local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local condition_attribute = require("npc.base.condition.attribute")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addResponse("[Game Help] This NPC is the prison guard Percy Dryless. Keywords: 'Release me, please','I am hungry' 'Give me a new pick axe' 'How much of my punishment is left?'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addResponse("[Spielhilfe] Dieser NPC ist der Gef�ngnisaufseher Percy Dryless. Schl�sselw�rter: 'Lass mich bitte frei','Ich bin hungrig','Gib mir bitte eine neue Spitzhacke', 'Wie hoch ist meine �brige Strafe?'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", ">", 14999))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("hunger")
talkEntry:addResponse("You don't look hungry to me. Work some more!")
talkEntry:addResponse("No food for lazy scum like you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", ">", 14999))
talkEntry:addTrigger("hunger")
talkEntry:addResponse("Du siehst mir noch nicht hungrig genug aus. Arbeite weiter!")
talkEntry:addResponse("Kein Futter f�r faulen Abschaum wie dich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", ">", 14999))
talkEntry:addTrigger("hungry")
talkEntry:addTrigger("food")
talkEntry:addResponse("You don't look hungry to me. Work some more!")
talkEntry:addResponse("No food for lazy scum like you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", ">", 14999))
talkEntry:addTrigger("hungrig")
talkEntry:addTrigger("essen")
talkEntry:addResponse("Du siehst mir noch nicht hungrig genug aus. Arbeite weiter!")
talkEntry:addResponse("Kein Futter f�r faulen Abschaum wie dich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("hunger")
talkEntry:addConsequence(consequence_item(49, 4, 333, nil))
talkEntry:addResponse("Here, have some mouldy bread. Back to work!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "~=", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("hunger")
talkEntry:addResponse("You think I'm giving bread away for nothing, eh? Get back to work or feel my whip.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "=", 0, nil))
talkEntry:addTrigger("hunger")
talkEntry:addConsequence(consequence_item(49, 4, 333, nil))
talkEntry:addResponse("Hier etwas verschimmeltes Brot. Jetzt arbeite weiter!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "~=", 0, nil))
talkEntry:addTrigger("hunger")
talkEntry:addResponse("Du glaubst wohl, du bekommst Brot f�rs nichts tun, h�h? Arbeite oder sp�re meine Peitsche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "=", 0, nil))
talkEntry:addTrigger("hungry")
talkEntry:addTrigger("food")
talkEntry:addConsequence(consequence_item(49, 4, 333, nil))
talkEntry:addResponse("Here, have some mouldy bread. Back to work!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "~=", 0, nil))
talkEntry:addTrigger("hungry")
talkEntry:addTrigger("food")
talkEntry:addResponse("You think I'm giving bread away for nothing, eh? Get back to work or feel my whip.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "=", 0, nil))
talkEntry:addTrigger("hungrig")
talkEntry:addTrigger("essen")
talkEntry:addConsequence(consequence_item(49, 4, 333, nil))
talkEntry:addResponse("Hier etwas verschimmeltes Brot. Jetzt arbeite weiter!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_attribute("foodlevel", "<", 15000))
talkEntry:addCondition(condition_item(49, "all", "~=", 0, nil))
talkEntry:addTrigger("hungrig")
talkEntry:addTrigger("essen")
talkEntry:addResponse("Du glaubst wohl, du bekommst noch mehr Brot, h�h? Arbeite oder sp�re meine Peitsche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(2763, "all", "=", 0, nil))
talkEntry:addTrigger("pick axe")
talkEntry:addTrigger("rock pick")
talkEntry:addTrigger("pick")
talkEntry:addConsequence(consequence_item(2763, 1, 333, nil))
talkEntry:addResponse("So, you broke my pick? You lost it? Here, have this one, but pay more attention to it or I'll whip you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(2763, "all", "~=", 0, nil))
talkEntry:addTrigger("pick axe")
talkEntry:addTrigger("rock pick")
talkEntry:addTrigger("pick")
talkEntry:addResponse("What do you want with two picks? Two handed stone hitting?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(2763, "all", "~=", 0, nil))
talkEntry:addTrigger("spitzhacke")
talkEntry:addTrigger("hacke")
talkEntry:addResponse("Was willst du mit zwei Spitzhacken? Beidh�ndig auf die Steine eindreschen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_item(2763, "all", "=", 0, nil))
talkEntry:addTrigger("spitzhacke")
talkEntry:addTrigger("hacke")
talkEntry:addConsequence(consequence_item(2763, 1, 333, nil))
talkEntry:addResponse("So, du hast also meine Spitzhacke kaputt gemacht? Du hast sie verloren? Hier, nimm diese, aber pass besser auf sie auf oder ich peitsche dich aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(25, ">", 0))
talkEntry:addTrigger("release")
talkEntry:addResponse("No way.")
talkEntry:addResponse("You'd like that, wouldn't you?")
talkEntry:addResponse("Sure I'll release you. In a hundred years!")
talkEntry:addResponse("Shut up!")
talkEntry:addResponse("Hahahahaha!")
talkEntry:addResponse("Release you? Sure! What next, shall I wipe your boots?")
talkEntry:addResponse("No way. Work!")
talkEntry:addResponse("Wait, let me laugh first.")
talkEntry:addResponse("You want me to release you? You?")
talkEntry:addResponse("What kind of joker are you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(25, "<", 1))
talkEntry:addTrigger("release")
talkEntry:addResponse("Until next time. They all come back! Why are you still here? Use the teleporter and get lost!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(25, ">", 0))
talkEntry:addTrigger("freilassen")
talkEntry:addTrigger("lass mich frei")
talkEntry:addTrigger("rauslassen")
talkEntry:addTrigger("lass mich raus")
talkEntry:addResponse("Nichts da.")
talkEntry:addResponse("Das h�ttest du wohl gerne!")
talkEntry:addResponse("Ohja, klar lass ich dich frei... in hundert Jahren!")
talkEntry:addResponse("Schnauze!")
talkEntry:addResponse("Hahahahahaha!")
talkEntry:addResponse("Freilassen? Klar! Was noch, soll ich deine Stiefel lecken?")
talkEntry:addResponse("Nichts da. Arbeite!")
talkEntry:addResponse("Warte, lass mich erstmal dar�ber lachen.")
talkEntry:addResponse("Du willst also freigelassen werden? Du?")
talkEntry:addResponse("Was f�r ein Narr bist du?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(25, "<", 1))
talkEntry:addTrigger("freilassen")
talkEntry:addTrigger("lass mich frei")
talkEntry:addTrigger("rauslassen")
talkEntry:addTrigger("lass mich raus")
talkEntry:addResponse("Bis zum n�chsten mal. Sie kommen alle wieder! Was tust du noch hier? Benutzt den Teleporter und geh mir aus den Augen!")
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
talkEntry:addResponse("What do you want? Ah, I know, you want to feel my whip!")
talkEntry:addResponse("Welcome to my realm, the realm of work, sweat and tears.")
talkEntry:addResponse("Work, scum! Criminals deserve nothing more than pain.")
talkEntry:addResponse("Tell me you are innocent and I will laugh for the rest of the day.")
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
talkEntry:addResponse("Was ist? Ah, ich wei�: Du willst meine Peitsche zu sp�ren kriegen.")
talkEntry:addResponse("Willkommen in meinem Reich, dem Reich der Tr�nen, des Schwei�es und der harten Arbeit.")
talkEntry:addResponse("Arbeite, Abschaum! Kriminelle verdienen nichts als Schmerz!")
talkEntry:addResponse("Sag mir jetzt noch, du bist unschuldig und ich lache f�r den Rest des Tages.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("What do you want? Ah, I know, you want to feel my whip!")
talkEntry:addResponse("Welcome to my realm, the realm of work, sweat and tears.")
talkEntry:addResponse("Work, scum! Criminals deserve nothing more than pain.")
talkEntry:addResponse("Tell me you are innocent and I will laugh for the rest of the day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Was ist? Ah, ich wei�: Du willst meine Peitsche zu sp�ren kriegen.")
talkEntry:addResponse("Willkommen in meinem Reich, dem Reich der Tr�nen, des Schwei�es und der harten Arbeit.")
talkEntry:addResponse("Arbeite, Abschaum! Kriminelle verdienen nichts als Schmerz!")
talkEntry:addResponse("Sag mir jetzt noch, du bist unschuldig und ich lache f�r den Rest des Tages.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("I don't think you're leaving right now.")
talkEntry:addResponse("So you think you're leaving? Surprise! You're not!")
talkEntry:addResponse("When you find the exit, send me a letter.")
talkEntry:addResponse("Didn't anyone tell you that you have to stay a bit longer...?")
talkEntry:addResponse("Nope. Work. Deliver things. Deliver even more things. Then you may get released.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ich glaube kaum, dass du jetzt gehst.")
talkEntry:addResponse("So, du glaubst also, du gehst jetzt? �berraschung! Du gehst nicht.")
talkEntry:addResponse("Wenn du den Ausgang findest, schick mir einen Brief.")
talkEntry:addResponse("Hat dir niemand gesagt, dass du f�r eine Weile hier bleibst?")
talkEntry:addResponse("N�. Arbeite. Liefer Dinge ab. Liefere noch mehr Dinge ab. Dann wirst du vielleicht entlassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("I don't think you're leaving right now.")
talkEntry:addResponse("So you think you're leaving? Surprise! You're not!")
talkEntry:addResponse("When you find the exit, send me a letter.")
talkEntry:addResponse("Didn't anyone tell you that you have to stay a bit longer...?")
talkEntry:addResponse("Nope. Work. Deliver things. Deliver even more things. Then you may get released.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ich glaube kaum, dass du jetzt gehst.")
talkEntry:addResponse("So, du glaubst also, du gehst jetzt? �berraschung! Du gehst nicht.")
talkEntry:addResponse("Wenn du den Ausgang findest, schick mir einen Brief.")
talkEntry:addResponse("Hat dir niemand gesagt, dass du f�r eine Weile hier bleibst?")
talkEntry:addResponse("N�. Arbeite. Liefer Dinge ab. Liefere noch mehr Dinge ab. Dann wirst du vielleicht entlassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Mind your own business.")
talkEntry:addResponse("I would feel way better if you'd stop talking and get back to work!")
talkEntry:addResponse("I feel like whipping you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Das geht dich nichts an.")
talkEntry:addResponse("Es w�rde mir weit besser gehen wenn du die Klappe hieltest und arbeiten w�rdest.")
talkEntry:addResponse("Mir ist danach, dich auszupeitschen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("You can call me 'Master'.")
talkEntry:addResponse("Percy Dryless. You will remember my name in your nightmares.")
talkEntry:addResponse("At least I have a name, yours will be forgotten when you are released... one distant day.")
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
talkEntry:addResponse("Du kannst mich 'Meister' nennen.")
talkEntry:addResponse("Percy Dryless. Du wirst dich an diesen Namen in deinen Alptr�umen erinnern.")
talkEntry:addResponse("Wenigstens habe ich einen Namen, deinen wird man l�ngst vergessen haben, wenn du entlassen wirst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me points his finger in your face and laughs out loud.")
talkEntry:addResponse("Erm, no quest for you.")
talkEntry:addResponse("My quest is to whip those who are lazy.")
talkEntry:addResponse("Let me see... your quest is to work!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me zeigt mit dem Finger auf dich und lacht lauthals los.")
talkEntry:addResponse("�h, keine Queste f�r dich.")
talkEntry:addResponse("Meine Bestimmung ist, die Faulen auszupeitschen.")
talkEntry:addResponse("Wart mal... deine Bestimmung ist es, zu arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("#me points his finger in your face and laughs out loud.")
talkEntry:addResponse("Erm, no quest for you.")
talkEntry:addResponse("My quest is to whip those who are lazy.")
talkEntry:addResponse("Let me see... your quest is to work!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("#me zeigt mit dem Finger auf dich und lacht lauthals los.")
talkEntry:addResponse("�h, keine Queste f�r dich.")
talkEntry:addResponse("Meine Bestimmung ist, die Faulen auszupeitschen.")
talkEntry:addResponse("Wart mal... deine Bestimmung ist es, zu arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I take care that scum like you get punished!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich k�mmer mich drum, dass Abschaum wie du bestraft wird!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I take care that scum like you get punished!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich k�mmer mich drum, dass Abschaum wie du bestraft wird!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Shut up and keep working.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Halt's Maul und arbeite weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Actually I don't care about your name.")
talkEntry:addResponse("Aha? - So... what?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Tats�chlich interessiert mich dein Name weniger als der Dreck unter meinen Fingern�geln.")
talkEntry:addResponse("Aha? - Also... was?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("jingles")
talkEntry:addResponse("If I catch this stupid mouse, I will trample it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("jingles")
talkEntry:addResponse("Wenn ich diese verdammte Maus erwische... zerquetsch ich sie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("innocent")
talkEntry:addResponse("One word: No.")
talkEntry:addResponse("You innocent? That's about as likely as my whip missing you.")
talkEntry:addResponse("Wake up! You aren't dreaming anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("unschuldig")
talkEntry:addResponse("Ein Wort: Nein.")
talkEntry:addResponse("Die Chance, dass du unschuldig bist, ist so gro� wie die, dass dich meine Peitsche verfehlt.")
talkEntry:addResponse("Aufwachen! Du tr�umst nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("whip")
talkEntry:addResponse("I call my whip Susi.")
talkEntry:addResponse("This is my whip. There are many like it but this one is mine. My whip is my best friend. It is my life.")
talkEntry:addResponse("Wanna feel my whip, punk?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("peitsche")
talkEntry:addResponse("Ich nenne meine Peitsche Susi.")
talkEntry:addResponse("Dies ist meine Peitsche. Es gibt viele wie sie aber diese ist meine. Meine Peitsche ist mein bester Freund. Sie ist mein Leben.")
talkEntry:addResponse("Willst du meine Peitsche sp�ren, Gauner?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("criminal")
talkEntry:addTrigger("thug")
talkEntry:addResponse("You are as worthless as a cup of water in the ocean.")
talkEntry:addResponse("I will never understand why you people break the law.")
talkEntry:addResponse("Filthy bastard, good to see you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("krimineller")
talkEntry:addTrigger("gauner")
talkEntry:addResponse("Du bist so wertlos wie eine Tasse Wasser im Meer.")
talkEntry:addResponse("Ich werde nie verstehen, warum ihr Leute das Gesetz brecht.")
talkEntry:addResponse("Dreckiger Bastard, gut dass du hier bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("master")
talkEntry:addResponse("I am your master from now on. Obey or be whipped. Your choice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("meister")
talkEntry:addResponse("Ich bin jetzt dein Herr und Meister. Gehorche oder werde ausgepeitscht. Du hast die Wahl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Do you come from Runewick? Seems Archmage Morgan sent you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Bist du aus Runewick? Dann hat dich vermutlich Erzmagier Morgan hergeschickt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Do you come from Runewick? Seems Archmage Morgan sent you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Bist du aus Runewick? Dann hat dich vermutlich Erzmagier Morgan hergeschickt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("This prison gathers the scum of three nations! Now keep on working.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Hier versammelt sich der ganze Abschaum aus drei Nationen! Und jetzt arbeite weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Do you come from Galmair? Seems Don Valerio sent you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Bist du aus Galmair? Dann hat dich vermutlich Don Valerio hergeschickt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("This prison gathers the scum of three nations! Now keep on working.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Hier versammelt sich der ganze Abschaum aus drei Nationen! Und jetzt arbeite weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Do you come from Cadomyr? Seems Queen Rosaline sent you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Bist du aus Cadomyr? Dann hat dich vermutlich K�nigin Edwards hergeschickt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Do you come from Cadomyr? Seems Queen Rosaline sent you here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Bist du aus Cadomyr? Dann hat dich vermutlich K�nigin Edwards hergeschickt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("This prison gathers the scum of three nations! Now keep on working.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Hier versammelt sich der ganze Abschaum aus drei Nationen! Und jetzt arbeite weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("#me cracks his whip, 'Back to work!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("#me l�sst die Peitsche knallen. 'Weiter arbeiten!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("#me cracks his whip, 'Back to work!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("#me l�sst die Peitsche knallen. 'Weiter arbeiten!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("#me cracks his whip, 'Back to work!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("#me l�sst die Peitsche knallen. 'Weiter arbeiten!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("I don't care about your gods. All I care about is that you get punished.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Deine G�tter k�mmern mich nen Furz! Geh, arbeiten - Abschaum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("What buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I could sell you some lashes from my whip. Interested!?")
talkEntry:addResponse("I trade pain.")
talkEntry:addResponse("Stop bartering and get to work before I lose my patience.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kann dir ein paar Peitschenhiebe anbieten. Interesse?!")
talkEntry:addResponse("Ich handel mit Schmerzen.")
talkEntry:addResponse("H�r auf, rumzufeilschen und arbeite oder ich vergesse mich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Shut up and work!")
talkEntry:addResponse("No talking!")
talkEntry:addResponse("Shut up and swing the pick, you punk!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Halt deinen Mund und arbeite!")
talkEntry:addResponse("Hier wird nicht geplaudert!")
talkEntry:addResponse("Klappe halten, Hacke schwingen, du Gauner!")
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
talkEntry:addResponse("I could sell you some lashes from my whip. Interested!?")
talkEntry:addResponse("I trade pain.")
talkEntry:addResponse("Stop bartering and get to work before I lose my patience.")
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
talkEntry:addResponse("Ich kann dir ein paar Peitschenhiebe anbieten. Interesse?!")
talkEntry:addResponse("Ich handel mit Schmerzen.")
talkEntry:addResponse("H�r auf, rumzufeilschen und arbeite oder ich vergesse mich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Percy")
talkEntry:addTrigger("Dryless")
talkEntry:addResponse("I am your master from now on. Obey or be whipped. Your choice.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Percy")
talkEntry:addTrigger("Dryless")
talkEntry:addResponse("Ich bin jetzt dein Herr und Meister. Gehorche oder werde ausgepeitscht. Du hast die Wahl.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me knallt mit seiner Peitsche.", "#me cracks his whip.")
talkingNPC:addCycleText("Haut rein, alle, haut rein!", "Lets rock, everybody, lets rock.")
talkingNPC:addCycleText("Ich hab das genau gesehen!", "I saw that!")
talkingNPC:addCycleText("#me summt: 'Der Trauerklo� sa� auf einem Felsblock, in der Ecke und weinte vor sich hin.'", "#me sings low, 'The sad sack was sittin' on a block of stone, way over in the corner weepin' all alone'.")
talkingNPC:addCycleText("Arbeite!", "Work!")
talkingNPC:addCycleText("Schneller!", "Faster!")
talkingNPC:addCycleText("Wo gibt es eine Peitsche, ist auch ein Weg!", "Where there's a whip, there's a way!")
talkingNPC:addCycleText("Gehorche!", "Obey!")
talkingNPC:addCycleText("Mwahaha!", "Mwahaha!")
talkingNPC:addCycleText("#me lacht dreckig.", "#me laughs diabolically.")
talkingNPC:addCycleText("Ruhe bei der Arbeit, Abschaum!", "Be quiet, scum!")
talkingNPC:addCycleText("Ich hab das geh�rt!", "I heard that!")
talkingNPC:addCycleText("#me tritt nach einer Maus.", "#me kicks at a mouse.")
talkingNPC:addCycleText("Gute F�hrung? Ich f�hre dich gleich an einer Schlinge, ist das gut genug?!", "Good conduct? I will teach you 'good conduct' with my whip!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Percy Dryless der Gef�ngnisaufseher.", "This NPC is Percy Dryless the prison guard.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 7)
mainNPC:setEquipment(3, 363)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
mainNPC:setEquipment(9, 821)
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
