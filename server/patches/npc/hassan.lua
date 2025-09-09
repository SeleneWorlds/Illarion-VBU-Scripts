local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local consequence_talkstate = require("npc.base.consequence.talkstate")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
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
talkEntry:addCondition(condition_quest(75, ">", 2))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Error! Something went wrong, please inform a developer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game help] This NPC is the royal fan-waver Hassan. Keywords: Greetings, Profession, Tavern."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der k�nigliche F�chelwedler Hassan. Schl�sselw�rter: Seid gegr��t, Beruf, Taverne."))
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
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr's Gossiper"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("#me stares at you. 'Be greeted, traveller! I am much too thirsty to talk. If you bring me a glass of red wine I will gladly answer your questions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories don't you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories, so grease my throat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr's Gossiper"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("#me frowns, 'Mere peasant you dare greet me in such a way! Make up for your lack of consideration by getting me a glass of wine so that I may quench my thirst.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories, so grease my throat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("Hah! My friend, let us talk about important things, we're important people, aren't we?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr's Gossiper"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("I am thirsty! If you bring me a glass of red wine, I will answer your questions... and trust me I know many things!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories, so grease my throat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Now that you've brought me wine, splendid.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Cadomyr"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("#me starrt dich an. 'Seid gegr��t, Reisender. Meine Kehle ist zu trocken zum Reden. Bringt mir ein Glas Wein, wenn ihr was erfahren wollt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Wein! Ich hab gesagt, ich will Wein! Wer meine Geschichten h�ren will, muss erst meine Stimme �len.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Ah, hallo nochmal. Nun, da mein Durst gestillt ist, fragt was immer ihr wollt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Cadomyr"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("#me knurrt: 'Was f�r eine b�uerliche Art, einen Mann meines Ranges zu gr��en. Wenn ihr was wissen wollt, bringt mir erstmal ein Glas Wein, um meinen Durst zu stillen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Wein! Ich hab gesagt, ich will Wein! Wer meine Geschichten h�ren will, muss erst meine Stimme �len.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hah! Mein Freund, lasst uns �ber wichtige Dinge Reden, denn wir sind wichtige Leute, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell, traveller!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gute Reise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell, traveller!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gute Reise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Cadomyr"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("Ich bin durstig! Wenn ihr mir ein Glas Wein bringt, beantworte ich eure Fragen... und ich wei� eine Menge!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Wein! Ich hab gesagt, ich will Wein! Wer meine Geschichten h�ren will, muss erst meine Stimme �len.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Nun, da ihr mir Wein gebracht habt: Fein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Hassan, the royal fan-waver.")
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
talkEntry:addResponse("Hassan, der k�nigliche F�chelwedler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr's Gossiper"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("Bring me a glass of red wine, and I'll answer your questions! Otherwise leave me be!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories, so grease my throat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Just ask me and I will share my vast knowledge of the Palace with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Cadomyr"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("Bringt mir ein Glas Wein und ich beantworte eure Fragen. Ansonsten, lasst mich in Ruhe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Wein! Ich hab gesagt, ich will Wein! Wer meine Geschichten h�ren will, muss erst meine Stimme �len.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Fragt einfach, wonach auch immer und ich werde mein Wissen �ber den Palast mit euch teilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[New Quest] Cadomyr's Gossiper"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("Bring me a glass of red wine, and I'll answer your questions! Otherwise leave me be!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories, so grease my throat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addResponse("Just ask me and I will share my vast knowledge of the Palace with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 0))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Cadomyr"))
talkEntry:addConsequence(consequence_quest(75, "=", 1))
talkEntry:addResponse("Bringt mir ein Glas Wein und ich beantworte eure Fragen. Ansonsten, lasst mich in Ruhe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addResponse("Wein! Ich hab gesagt, ich will Wein! Wer meine Geschichten h�ren will, muss erst meine Stimme �len.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addResponse("Fragt einfach, wonach auch immer und ich werde mein Wissen �ber den Palast mit euch teilen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Hassan will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(75, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me takes the glass with a pleased smile. 'Very good! Now, you can ask me anything you like... about the town, the Queen, the Palace, our glorious Cadomyr, or even the vile neighbouring factions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Hassan will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(75, "=", 2))
talkEntry:addResponse("#me takes the glass with a pleased smile. 'Very good! Now, you can ask me anything you like... about the town, the Queen, the Palace, our glorious Cadomyr, or even the vile neighbouring factions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(1))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Hassan wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(75, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me nimmt das Glas und grinst erfreut. 'Sehr gut. Nun k�nnt ihr mich alles fragen, was ihr wollt... �ber die Stadt, den Palast, Cadomyr oder unsere b�sen Nachbarn.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Hassan wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(2057, 1, nil))
talkEntry:addConsequence(consequence_quest(75, "=", 2))
talkEntry:addResponse("#me nimmt das Glas und grinst erfreut. 'Sehr gut. Nun k�nnt ihr mich alles fragen, was ihr wollt... �ber die Stadt, den Palast, Cadomyr oder unsere b�sen Nachbarn.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Wine! I told you to bring me a glass of wine! You want to hear my stories, so grease my throat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 1))
talkEntry:addCondition(condition_item(2057, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Wein! Ich hab gesagt, ich will Wein! Wer meine Geschichten h�ren will, muss erst meine Stimme �len.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("town")
talkEntry:addResponse("Cadomyr is the most civilised and advanced community! I hear the others live in pitiful clay huts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("nobles")
talkEntry:addResponse("Like any proper nation, below the Queen are her nobles, just like the men are below the Gods... just as the Gods themselves have intended!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("honor")
talkEntry:addTrigger("honour")
talkEntry:addResponse("We value honour above all else in Cadomyr. If you have no honour, then you have nothing and will be nothing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("like[s]")
talkEntry:addResponse("The Queen likes the shine of gold and the sparkle of precious gemstones.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("gift")
talkEntry:addResponse("Gifts? Of course our Queen likes gifts! Expensive jewellery and shiny gemstones, especially diamonds, is what she fancies.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("baron")
talkEntry:addTrigger("hastings")
talkEntry:addResponse("Baron Hastings? He was not at all happy about Queen Rosaline finding a clause that enabled her to succeed her father to the throne, but now he has gone missing...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("wine")
talkEntry:addResponse("#me sips from the glass, smiling 'The wine is very good, thank you...'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("neighbor")
talkEntry:addTrigger("neighbour")
talkEntry:addResponse("#me grumbles. 'Oh! Galmair and Runewick! Pox on them! The ancient histories make it clear that the people of Cadomyr are the rightful lords of the land!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("palace")
talkEntry:addResponse("If Cadomyr is the crown of the land, then the Palace is certainly the most magnificent crown jewel! Sadly not all the servants in the Palace are as reliable and loyal as I am.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Edel")
talkEntry:addResponse("Wie in jeder gute Nation bedient sich die K�nigin ihrer Edelleute, wie die G�tter sich den Menschen bedienen. Genauso wollen es die G�tter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Ehre")
talkEntry:addResponse("Die Ehre steht �ber allem hier in Cadomyr. Wenn man keine Ehre hat, hat man gar nichts mehr. Und dann ist man auch ein Nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Vorliebe")
talkEntry:addResponse("Die K�nigin hat eine Vorliebe f�r Gold und funkelnde Edelsteine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Geschenk")
talkEntry:addResponse("Geschenke? Na klar liebt unsere K�nigin Geschenke. Teure Juwelen und Edelsteine, besonders Diamanten, das erfreut sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Baron")
talkEntry:addTrigger("hastings")
talkEntry:addResponse("Baron Hastings? Er war nicht sonderlich begeistert, als K�nigin Rosaline eine Klausel gefunden hat, die ihr erm�glichte, das Erbe ihres Vaters anzutreten. Nun ist er verschwunden...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Wein")
talkEntry:addResponse("#me schl�rft etwas Wein: 'Danke f�r den Wein, der ist wirklich gut.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Nachbar")
talkEntry:addResponse("#me knurrt: 'Oh! Galmair und Runewick, die Pest soll �ber sie kommen. Die Geschichte lehrt uns, dass die Herren von Cadomyr die Herren der L�ndereien sind.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Palast")
talkEntry:addResponse("Wenn Cadomyr die Krone des Landes ist, dann ist der Palast das funkelnste Kronjuwel. Leider sind nicht alle Palastdiener so loyal und verl�sslich wie ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a servant of the Queen herself!")
talkEntry:addResponse("I am a royal fan-waver! A glorious task!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich ein Diener der K�nigin.")
talkEntry:addResponse("Ich bin der k�nigliche F�chelwedler. Eine ehrenhafte T�tigkeit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a servant of the Queen herself!")
talkEntry:addResponse("I am a royal fan-waver! A glorious task!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich ein Diener der K�nigin.")
talkEntry:addResponse("Ich bin der k�nigliche F�chelwedler. Eine ehrenhafte T�tigkeit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("It is a shame what happened to the Gobaithians, but blasphemous deeds need to be punished!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Es ist traurig, was den Gobaithianern widerfahren ist. Aber blasphemische Taten m�ssen bestraft werden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("And what makes you think a person as important as me would like to talk to you?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Und was bringt euch dazu zu denken, dass eine so wichtige Person wie ich mit euch sprechen m�chte?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("tavern")
talkEntry:addResponse("A lousy tavern, in the glorious Kingdom of Cadomyr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tavern")
talkEntry:addResponse("Eine einfache Taverne im pr�chtigen K�nigreich Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("queen")
talkEntry:addResponse("We are ruled by the Queen of Cadomyr! She can trace her ancestry back a millennia or more, having the bluest of blue blood in all the land.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Rosaline")
talkEntry:addResponse("Oh, so you have heard about our Queen? Of course, not everyone thought that a woman should rule. Baron Hastings was quite vocal about that, but then he... disappeared.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Edwards")
talkEntry:addResponse("Cadomyr has been ruled by the House of Edwards since its inception. Finest stock of Albarian blue bloods! The Queen's father, King Reginald, ruled the town with a firm grip.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("#me sighs. 'Cadomyr, oh Cadomyr! We are the most honourable and magnificent nation in all the land, held back only by the treachery of our cursed neighbours.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("stadt")
talkEntry:addResponse("Cadomyr ist die zivilisierteste und fortschrittlichste Gesellschaft. Ich h�rte, unsere Nachbarn wohnen in erb�rmlichen Lehmh�tten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Wir werden von der K�nigin von Cadomyr regiert. Sie kann ihre Ahnen tausend Jahre zur�ckverfolgen und hat das blauste Blut von allen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Rosaline")
talkEntry:addResponse("Nun, was habt ihr �ber unsere K�nigin geh�rt? Nicht jeder stimmt damit �berein, dass eine Frau die Macht hat. Baron Hastings war ihr Redelsf�hrer, aber dann verschwand er...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Edwards")
talkEntry:addResponse("Cadomyr wird seit seiner Gr�ndung von den Edwards regiert. Feinstes albarisches Blut! Der Vater der K�nigin, K�nig Reginald, regierte mit harter Hand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Cadomyr")
talkEntry:addConsequence(consequence_talkstate("end"))
talkEntry:addResponse("#me seufzt: 'Cadomyr, oh Cadomyr! Wir sind die ehrenhafteste und gro�artigste Nation in der Gegnur behindert durch unsere verr�terischen Nachbarn.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("A false 'mage' rules them. Bah I say! They speak about wisdom, yet they have only lies to offer! They are nothing but cheap charlatans who try to twist the truth to justify their vile customs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair! That treacherous pit! Filled with the most despicable scum imaginable. Any decent person should steer clear of the place! Of course, I have been lucky enough to never visit it myself.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ein falscher Magier regiert dort. Bah, sag ich! Sie reden �ber Weisheit, meinen aber L�gen. Sie sind nichts als Scharlatane welche die Wahrheit verdrehen, um ihre widerlichen Sitten zu rechtfertigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair! Eine Schlangengrube! Gef�llt mit dem widerlichsten Abschaum. Jeder ehrbare Mann sollte Galmair fern bleiben. Zum Gl�ck war ich noch nie dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("archmage")
talkEntry:addResponse("If the Archmage of Runewick promises you something, do the exact opposite to get the truth. He's a liar!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wenn euch der Erzmagier Runewicks etwas versprecht, dann dreht den Sinn der Worte herum und ihr erhaltet die Wahrheit. Er ist ein L�gner!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("If the Archmage of Runewick promises you something, do the exact opposite to get the truth. He's a liar!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wenn euch der Erzmagier Runewicks etwas versprecht, dann dreht den Sinn der Worte herum und ihr erhaltet die Wahrheit. Er ist ein L�gner!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Let him try and touch my Queen and I shall smack him soundly with my fan!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Wenn ich diesen Bastard jemals dabei erwische, wie er meine K�nigin betatscht, zieh' ich ihm eins mit meinem F�chel �ber!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Did you ever realise Albar reads Rabla, spelt backwards?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Habt ihr jemals bemerkt, dass Albar r�ckw�rts gesprochen zu Rabla wird?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Blasted Gynk-people! They have no honour and no enchanting queen either.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Verdammte Gynk-Leute! Sie haben weder Ehre, noch eine K�nigin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I heard many people talking about Salkamar being similar to the realm of Albar. They must be kidding.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Manche Leute sagen, dass Salkamar so �hnlich wie das albarische Reich w�re. Selten so gelacht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("gods")
talkEntry:addResponse("#me nods eagerly, spilling some wine on the table. 'We are proper, honourable, god-fearing people in Cadomyr, unlike our wretched neighbours!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("#me nickt heftig, etwas Wein versch�ttend: 'Wir sind gute, ehrenhaft, g�tterf�rchtige Leute hier in Cadomyr, nicht so unsere verdorbenen Nachbarn.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, Zhambra, what shall I say? I am his minion, well actually, I am the Queen's royal fan-waver, that's beyond being a humble minion I guess.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, Zhambra, was soll ich sagen - ich bin sein Diener. Nun, genau genommen bin ich der k�nigliche F�chelwedler ihrer Majest�t, das macht mich zu mehr als einen Diener.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("All this talking about Malach�n makes me... silent.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("All dieses Gerede �ber Malach�n macht mich... verschwiegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara... is that suppose to mean something?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara... wollt ihr irgendwas andeuten?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Did I hear right? Br�gon? Wine must be stronger than I thought.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Habe ich richtig geh�rt? Br�gon? Im Wein liegt die Wahrheit, mein Freund!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Pretty sure that is a type of tree, but they don't grow around here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Ich bin mir ziemlich sicher... das ist eine Art Baum. Aber davon gibts nicht wirklich viele hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora, sounds familiar but I can't place where I've heard the name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Tanora, kommt mir bekannt vor, aber ich kann mich einfach nicht erinnern...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("If you're looking for answers about Zelphia go find the lizard folk, they're always blabbing on and on about her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Wenn du fragen �ber Zelphia hast, geh und such dir ne verdammte Echse, die brabbeln n�mlich die ganze Zeit �ber sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("#me hiccups, 'Huh? I think you need to lay off the wine traveller; you're talking gibberish.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("#me st��t leise auf. 'Huh? Du solltest nicht so viel Wein trinken, mein Freund! Dein Lallen ist ja kaum noch zu verstehn.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Do yourself a favour and forget that name. Only the filth from Galmair dare to mention his name.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Tuhe dir selbst einen Gefallen und vergiss seinen Namen. Nur diese Idoten in Galmair sprechen von ihm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("#me yawns, 'Boring, let's talk about something else.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("#me g�hnt herzhaft. 'Wie langweilig! Lass uns �ber etwas anderes sprechen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("#me raises his glass of wine, 'This is all anyone needs to know about Adron.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("#me hebt sein Weinglas: 'Darum! Darum, sollen wir Adron ehren.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("#me sighs in mild agitation, 'Ask me something relevant please.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("#me seufzt langezogen: 'Sprechen wir lieber �ber irgendetwas wichtiges. Ich bitte euch.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Mmh... this wine is delicious. Sorry did you say something about Cherga? If you did that is probably why I wasn't listening.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Mmh... dieser Wein schmeckt vorz�glich. Entschuldigt, habt ihr �ber Cherga gesprochen? - Vermutlich habe ich desshalb nicht zugeh�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("#me stifles a yawn halfheartedly, 'I suggest asking the greedy swines in Galmair about Irmorom, not me.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ha! Fragt die Rattenfresser in Galmair nach Irmorom - nicht mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("The Goddess of Love and Pleasure? If you don't know her name then you have no business in Cadomyr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Die G�ttin der Liebe - und des Vergn�gens! *Er grinst anz�glich.*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("#me blinks, 'One word of advice, never mention that name ever again in Cadomyr!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("#me blinzelt. 'Besser du sprichst diesen Namen hier, in Gadomyr, nicht laut aus, mein Freund.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me nearly drops his wine, clearly in shock, 'Do not mention the Unspoken One here traveller... You may find yourself behind bars or worse.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(75, "=", 2))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("#me l�sst beinahe sein Glas fallen, sichtlich erschrocken: 'Diesen Namen spricht niemand laut aus, nimm dir besser ein Beispeil daran!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Do I look like the barkeeper!? Do not belittle my importance with your imprudent questioning!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Sehe ich aus wie der Schankwirt? Ich bin eine �u�erst wichtige Pers�nlichkeit!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("It is a shame what happened to the Gobaithians, but blasphemous deeds need to be punished!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Es ist traurig, was den Gobaithianern widerfahren ist. Aber blasphemische Taten m�ssen bestraft werden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Wine is divine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Wein ist fein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hassan")
talkEntry:addResponse("So, who sent you?")
talkEntry:addResponse("Yes, yes, I know, I should be in the Palace.")
talkEntry:addResponse("No.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hassan")
talkEntry:addResponse("So, wer schickt euch?")
talkEntry:addResponse("Ja, ja, ich wei�, ich sollte im Palast sein.")
talkEntry:addResponse("Nein.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me schwingt ein Weinglas und riecht daran.", "#me brandishes a wine glass and sniffs at it.")
talkingNPC:addCycleText("Ich hab mal von einer Taverne geh�rt, die 'Happy Halfling' hie�. 'Happy Hassan', das w�re mal ein Name!", "I heard there's a tavern called 'The Happy Halfling'. I'd prefer 'The Happy Hassan' personally.")
talkingNPC:addCycleText("Oh ja, ich bin wirklich wichtig. Ohne meine Dienste w�rde die K�nigin schwitzen! Und das w�re nicht gut...", "Oh yes, I am indeed an important man. Without my service, the Queen would sweat, and we couldn't have that could we?")
talkingNPC:addCycleText("#me knallt seine Faust auf den Tresen: 'Bedienung!'", "#me bangs his fist on the counter, 'I demand service!'")
talkingNPC:addCycleText("#me tippt sich mit seinem Zeigefinger auf die Brust: 'Ich kenne die K�nigin! Ich bin eine sehr wichtige Person.'", "#me pokes his own chest with his index finger, 'I know the Queen! I am a very important person!'")
talkingNPC:addCycleText("Wie, ich soll f�r meine Getr�nke zahlen? Ihr solltet mich daf�r bezahlen, dass ich hier trinke. Wi�t ihr nicht, wer ich bin?", "What do you mean I have to pay for my drinks? You should be paying me to drink here! Do you have any idea who I am?")
talkingNPC:addCycleText("#me ist ein Mann in feiner, aber weingetr�nkten Kleidung. Sein Haar gl�nzt durch ein wohlriechendes �l.", "#me is a man in expensive, albeit wine-stained clothes, his hair gleams with fine-smelling oil.")
talkingNPC:addCycleText("Ich arbeite im k�niglichen Palast. Nichts geschieht dort, ohne das ich davon erfahre.", "I work in the Royal Palace. Nothing happens there without my knowledge.")
talkingNPC:addCycleText("#me knurrt beim Anblick seines leeren Glases: 'Warum erfreu ich euch Bauern mit meiner Anwesenheit? Ich, der Liebling der K�nigin! Sie hat mich gestern sogar angesehen.'", "#me frowns at the empty glass of wine, 'Why do I bless you peasants with my presence? I, who am the Queen's favourite! She even looked at me two days ago!'")
talkingNPC:addCycleText("Ich f�chere der K�nigin Luft, damit sie einen ruhigen Kopf bewahren kann. Das nenn' ich eine wichtige T�tigkeit.", "I wave my fan over the Queen, keeping her blue blood cool in this desert heat. Now that is an important duty!")
talkingNPC:addCycleText("Wein ist fein.", "Wine is divine.")
talkingNPC:addCycleText("Oh, ich k�nnte so viele Geheimnisse der K�nigin ausplaudern, aber ich bin ihr treu ergeben.", "Oh, I could tell you so many secrets of the Queen, but I am loyal to her.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dies ist der k�nigliche Fechlwedler Hassan.", "This is the royal fan-waver Hassan.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 807)
mainNPC:setEquipment(11, 2419)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
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
