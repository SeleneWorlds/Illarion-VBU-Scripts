local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
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
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, ">", 2))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Error! Something went wrong, please inform a developer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("help")
talkEntry:addConsequence(consequence_inform("[Game help] This NPC is the smuggler Cormac. Keywords: Be greeted, Profession, Tavern."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Schmuggler Cormac. Schl�sselw�rter: Seid gegr��t, Beruf, Taverne."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addConsequence(consequence_inform("[New quest] Galmair's Gossiper"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("#me flashes you a sparse-toothed grin. 'Eh! If ye want to sit down with me, ye better bring me a mug of beer. Then I'll answer yer questions.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("Is there wax in yer ears or what? If ye want to talk with me, ye need to bring me a beer! I'm bloody thirsty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addResponse("If it isn't mah good ol' buddy! Come, sit down and drink with meh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Galmair"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("#me zeigt ein zahnloses Grinsen. 'Eh! Wenn du dich hier hinsetzen willst, bring mir besser ein Bier. Dann beantworte ich deine Fragen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Hast du Wachs in den Ohren oder was? Wenn du mit mir reden willst, musst du mir ein Bier bringen. Ich bin verdammt nochmal durstig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Gr��")
talkEntry:addTrigger("Gru�")
talkEntry:addTrigger("Gr�ss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addResponse("Wenn das nicht mein guter Kumpel ist! Komm, setz dich und trink mit mir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[New quest] Galmair's Gossiper"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("#me strokes his beard and grins: 'Arr, Greetings! If ye want to talk, then ye better quench my thirst first!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Is there wax in yer ears or what? If ye want to talk with me, ye need to bring me a beer! I'm bloody thirsty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("What! Haven't seen ya since last time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Galmair"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("#me streicht seinen Bart zurecht: 'Arr, gr�� dich. Wenn du mit mir reden willst, dann l�sch erstmal meinen Durst mit einem Bier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hast du Wachs in den Ohren oder was? Wenn du mit mir reden willst, musst du mir ein Bier bringen. Ich bin verdammt nochmal durstig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Was! Dich hab ich ja seit dem letzten mal nicht mehr gesehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Until next time, traveller!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Bis zum n�chsten mal, Reisender.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("See ye around, traveller. Stay safe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Man sieht sich, Fremder. Gib auf dich acht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addConsequence(consequence_inform("[New quest] Galmair's Gossiper"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("Arr! My throat is dry as tha desert! When ye want to talk, ye need to bring me a beer first.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Is there wax in yer ears or what? If ye want to talk with me, ye need to bring me a beer! I'm bloody thirsty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("A beer in the morning drives away the sorrows, and I have none anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Galmair"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("Arr! Meine Kehle ist so trocken wie die W�ste. Wenn du reden willst, bring mir erstmal ein Bier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Hast du Wachs in den Ohren oder was? Wenn du mit mir reden willst, musst du mir ein Bier bringen. Ich bin verdammt nochmal durstig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Ein Bier am Morgen vertreibt Kummer und Sorgen. Und ich hab keine mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Cormac, the... river transportation entrepreneur.")
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
talkEntry:addResponse("Cormac, der... Flussschiffahrtstransportunternehmer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Galmair's Gossiper"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("A task? Bring mah meh beer, ye bum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Is there wax in yer ears or what? If ye want to talk with me, ye need to bring me a beer! I'm bloody thirsty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("What is it ya want to know? I know the latest gossip. The Don, Galmair and its neighbours, everything!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Galmair"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("Hol' mir mal 'nen Krug Bier sonst streik ich hier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du Wachs in den Ohren oder was? Wenn du mit mir reden willst, musst du mir ein Bier bringen. Ich bin verdammt nochmal durstig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Was willst du wissen? Ich kenne alle Ger�chte. Der Don, Galmair und seine Nachbarn, alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addConsequence(consequence_inform("[New quest] Galmair's Gossiper"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("A task? Bring mah meh beer, ye bum!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addResponse("Is there wax in yer ears or what? If ye want to talk with me, ye need to bring me a beer! I'm bloody thirsty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("question")
talkEntry:addResponse("What is it ya want to know? I know the latest gossip. The Don, Galmair and its neighbours, everything!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 0))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Der Schw�tzer von Galmair"))
talkEntry:addConsequence(consequence_quest(74, "=", 1))
talkEntry:addResponse("Hol' mir mal 'nen Krug Bier sonst streik ich hier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addResponse("Hast du Wachs in den Ohren oder was? Wenn du mit mir reden willst, musst du mir ein Bier bringen. Ich bin verdammt nochmal durstig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Frage")
talkEntry:addResponse("Was willst du wissen? Ich kenne alle Ger�chte. Der Don, Galmair und seine Nachbarn, alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Cormac will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(74, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me takes the mug and grins: 'Arr! Ye aint so bad after all! I've been all over tha place, so I can tell ye about tha town, tha Don, Galmair or even the neighbours if ye really want.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] Cormac will now answer your questions."))
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(74, "=", 2))
talkEntry:addResponse("#me takes the mug and grins: 'Arr! Ye aint so bad after all! I've been all over tha place, so I can tell ye about tha town, tha Don, Galmair or even the neighbours if ye really want.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", ">", 0, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Cormac wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(74, "=", 2))
talkEntry:addConsequence(consequence_rankpoints("+", 2))
talkEntry:addResponse("#me nimmt den Krug und grinst: 'Arr! Du bist gar nicht so schlecht, wie du aussiehst. Ich bin schon �berall gewesen, du kannst mich alles �ber die Stadt, den Don, Galmair oder sogar unsere dummen Nachbarn fragen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Cormac wird nun deine Fragen beantworten."))
talkEntry:addConsequence(consequence_deleteitem(1909, 1, nil))
talkEntry:addConsequence(consequence_quest(74, "=", 2))
talkEntry:addResponse("#me nimmt den Krug und grinst: 'Arr! Du bist gar nicht so schlecht, wie du aussiehst. Ich bin schon �berall gewesen, du kannst mich alles �ber die Stadt, den Don, Galmair oder sogar unsere dummen Nachbarn fragen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Beer here, now! A real sip.")
talkEntry:addResponse("Is there wax in yer ears or what? If ye want tha talk with me, ye need to bring me a beer! I'm bloody thirsty.")
talkEntry:addResponse("Beer here now!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 1))
talkEntry:addCondition(condition_item(1909, "all", "<", 1, nil))
talkEntry:addTrigger(".+")
talkEntry:addResponse("Bier her! So einen richtigen Schluck.")
talkEntry:addResponse("Hast du Wachs in den Ohren oder was? Wenn du mit mir reden willst, musst du mir ein Bier bringen. Ich bin verdammt nochmal durstig.")
talkEntry:addResponse("Bier her, jetzt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("town")
talkEntry:addResponse("#me chuckles: 'This town is a bloody fine place fer a man or woman with coin. Ye can live free and mind yer business, as long as ye let others mind theirs.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Urbano")
talkEntry:addTrigger("Dorian")
talkEntry:addResponse("#me frowns: 'Dorian Urbano, he called himself... A former bigshot in these parts... a no-good thief and scoundrel whom Don Guillianni booted out. Haha!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("money")
talkEntry:addResponse("Ha! Money is a fine way o' measuring everything. When ye got more money, yer o' course more powerful too.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("like[s]")
talkEntry:addResponse("Tha Don likes expensive and and rare weapons or armours. He's a bit o' a collector, I hear. Hah... n' o' course money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("gift")
talkEntry:addResponse("Gifts? Arr! I heard tha Don likes expensive weapons n' armour... very prudent, don't ye think? Money is good as well...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("beer")
talkEntry:addResponse("#me flashes you a sparse-toothed grin: 'Thank ye fer tha beer, traveller! What d'ye want to know now?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("neighbo")
talkEntry:addResponse("#me scowls: 'May tha plague visit those bastards in Runewick and Cadomyr! This is 'our' bloody land n' they're just enroaching.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("smuggle")
talkEntry:addTrigger("smuggling")
talkEntry:addResponse("By Ron... moron... I am a... Arr... 'river transportation entrepreneur', aye.. that's what I do fer living.")
talkEntry:addResponse("#me scowls: 'ARR! I know nothing 'bout such things! I'm a decent n' hardworking... arr... river transportation entrepreneur.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Stadt")
talkEntry:addResponse("Diese Stadt ist ein guter Ort f�r einen Mann oder ein Frau mit dem n�tigen Kleingeld. Man kann hier frei schalten und walten und niemand funkt dir dazwischen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Urbano")
talkEntry:addTrigger("Dorian")
talkEntry:addResponse("#me grummelt: 'Dorian Urbano, so schimpft er sich. Fr�her mal ein m�chtiges Tier hier, jetzt eher ein gemeiner Schurk, den Don Guillianni aus dem Gesch�ft gedr�ngt hat. Haha!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("geld")
talkEntry:addResponse("Ha! Geld ist gut, um Dingen einen Wert zu geben. Aber Geld bedeutet auch Macht, lass dir das gesagt sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Vorliebe")
talkEntry:addResponse("Der Don liebt Teures und Seltenes, wie Waffen und R�stungen. Er ist ein Sammler, so sagt man. Ein Geldeinsammler, ha!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("geschenk")
talkEntry:addTrigger("pr�sent")
talkEntry:addResponse("Geschenke? Arr! Ich hab geh�rt, der Don mag seltene Waffen und R�stungen. Ziemlich prahlerisch, nicht? Geld ist aber auch eine gute Wahl.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Bier")
talkEntry:addResponse("#me grinst: 'Danke f�r das Bier, Fremder. Was willst du jetzt wirklich wissen?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Nachbar")
talkEntry:addResponse("#me bellt: 'M�ge die Pest �ber diese Bastarde kommen, Runewick und Cadomyr! Dies ist unser Land, die lungern hier nur rum.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("schmugg")
talkEntry:addResponse("Bei Ron... moron... Ich bin ein... Arr... 'Flussschiffahrtstransportunternehmer', ja, das ist, was ich mache.")
talkEntry:addResponse("#me faucht: 'ARR! Ich wei� nichts �ber solche Machenschaften. Ich bin ein ehrlicher, hart arbeitender... Flussschiffahrtstransportunternehmer!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("My profession? Well, I am in tha... transportation business, sorta.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Mein Beruf? Ich bin im... Fuhrgewerbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("My profession? Well, I am in tha... transportation business, sorta.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Mein Beruf? Ich bin im... Fuhrgewerbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Leave me in peace about that!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Lasst mich doch damit in Frieden!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("That information is too vital to me. I'll write it down immediatly... after my next beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Diese Information ist so weltbewegend f�r mich, dass ich sie sofort niederschreiben werde... nach meinem n�chsten Bier.")
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
talkEntry:addTrigger("tavern")
talkEntry:addResponse("Did you ever wonder where all this booze comes from? No? Good!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tavern")
talkEntry:addResponse("Hast du dich nie gefragt, wo all der Schnaps hier herkommt? Nein? Gut so!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Some say the Archmage Morgan of Runewick was once a woman but some mysterious, failed spell turned her in a man... partially, har, har.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Manche behaupten, der Erzmagier Morgan von Runwick war einst eine Frau, aber ein geheimnisvoller, fehlgeschlagener Zauber hat sie in einen Mann verwandelt... zumindestens teilweise, har, har.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Some say the Archmage Morgan of Runewick was once a woman but some mysterious, failed spell turned her in a man... partially, har, har.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Manche behaupten, der Erzmagier Morgan von Runwick war einst eine Frau, aber ein geheimnisvoller, fehlgeschlagener Zauber hat sie in einen Mann verwandelt... zumindestens teilweise, har, har.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick! Hah! They're a nation o' folks who sit on a bloody broomstick in tha morning, ruled by a bloody lass who waves a magic wand around.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick! Hah! Ein Land von Knilchen, die morgens erstmal auf einem Besen reiten, regiert von einem Kerl, der mit seinem Zauberstab rumfuchtelt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Don")
talkEntry:addTrigger("Lord")
talkEntry:addResponse("Arr! Don Valerio Guilianni is in charge around here! He's tha richest n' most powerful man in tha land, or so they say! A fine leader!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addResponse("Ye've been keeping yer ears open, good! Aye, he's the man in charge. He keeps us free from tha oppressing neighbours and that bastard Urbano.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Don")
talkEntry:addTrigger("Lord")
talkEntry:addResponse("Arr! Don Valerio Guilianni ist hier der Boss! Er ist der m�chtigste und reichste Mann weit und breit, so sagt man. Ein guter Anf�hrer!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addResponse("Ich sehe, du hast dich schlau gemacht. Ja, das ist hier der Boss. Er h�lt uns den R�cken von unseren kontrollw�tigen Nachbarn und diesem Bastard Urbano frei.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me grins: 'Welcome to tha land o' tha free, traveller! When ye got enough coins and show loyalty tha Don, yer free to mind yer own business as ye please.'")
talkEntry:addResponse("Galmair, home o' tha free, land o' those who can take care o' themselves. Ha!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Willkommen im Land der Freien, Reisender. Wenn du genug Gold hast und dem Don nicht in die Quere kommst, kannst du machen, was du willst.'")
talkEntry:addResponse("Galmair, Heimat der Freien, Land derer, die f�r sich selbst sorgen k�nnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Princess, erm, Queen of Cadomyr is quite a fitty. She would fit as the Don's wife, and rumour says he has got quite a crush on her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Die Prinzessin, �h, K�nigin von Cadomyr ist ein ziemlich hei�er Feger. Sie sollte mal die K�che vom Don fegen. Und es spricht sich herum, dass er ganz sch�n wild nach ihr ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("The Princess, erm, Queen of Cadomyr is quite a fitty. She would fit as the Don's wife, and rumour says he has got quite a crush on her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die Prinzessin, �h, K�nigin von Cadomyr ist ein ziemlich hei�er Feger. Sie sollte mal die K�che vom Don fegen. Und es spricht sich herum, dass er ganz sch�n wild nach ihr ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("They make a big fuss 'bout honour, bending over backwards to kiss arse and look down on people who like coins. Hehe... Ye know what they say, a man fights fer what he lacks tha most.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Die machen einen riesen Aufstand �ber ihre Ehre, kriechen einander in den Allerwertesten und spucken auf gesch�ftst�chtige Leute. Aber wie sagt man, man k�mpft am st�rksten f�r etwas, was man gar nicht hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Talking about anything abroad, eh? No way. I know so much about these lands, everything!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Du willst �ber irgendwas in Weitwegland reden? Nichts da! Ich wei� so viel �ber diese Region, alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("So, you think I'm from Gynk? Pah! Then I should think you come from a badger's burrow or something?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("So, du denkst also, ich komme aus Gynk? Pah! Dann m��te ich ja glauben, du kommst aus einem Dachsbau oder wie?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Talking about anything abroad, eh? No way. I know so much about these lands, everything!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Du willst �ber irgendwas in Weitwegland reden? Nichts da! Ich wei� so viel �ber diese Region, alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Blah.")
talkEntry:addResponse("Bleh.")
talkEntry:addResponse("Blubb.")
talkEntry:addResponse("Moep.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Eh?")
talkEntry:addResponse("Hmm?")
talkEntry:addResponse("Shh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("god")
talkEntry:addResponse("#me nods and strokes his beard: 'We're all pious folks down here, though we mind our own business with this like with other stuff.'")
talkEntry:addResponse("Gods are overrated.")
talkEntry:addResponse("Do I look like I want to talk about faith and devotion?")
talkEntry:addResponse("Go to a temple if you want to talk about gods. Or just go... elsewhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(74, "=", 2))
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("#me nickt und streicht durch seinen Bart: 'Wir sind alle fromme Leute hier, auch wenn wir das niemanden auf die Nase binden, wie wir uns auch sonst aus anderer Leute Angelegenheiten raushalten.")
talkEntry:addResponse("Die G�tter werden �bersch�tzt.")
talkEntry:addResponse("Sehe ich wie jemand aus, der �ber Glaube und Hingabe reden will?")
talkEntry:addResponse("Geh doch in einen Tempel, wenn du �ber die G�tter reden wollt. Oder geh... einfach weg!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Business, eh? Not here! Meet me... wait... nevermind!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Gesch�fte, h�h? Nicht hier! Triff mich... Moment mal... Vergiss es!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cormac")
talkEntry:addResponse("So, you think you know my name? Did I tell it to you? Did I!?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cormac")
talkEntry:addResponse("So, du denkst also, du kennst meinen Namen? Hab ich ihn dir gesagt? Hab ich etwas!?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Ich war schon �berall und woanders, aber verdammt nochmal, nichts ist sch�ner als das gute, alte Galmair.", "I've been all over the place and more, but damn... there's no place like good ol' Galmair!")
talkingNPC:addCycleText("#me schnattert: 'Wie viele Cadomyrer braucht man, um eine Kerze anzuz�nden? Einen, um die Kerze anzuz�nden und eine Brigade, um das brennende Haus zu l�schen!'", "#me cackles: 'How many Cadomyrians do you need to light a candle? One to light tha candle and a brigade to extinguish tha burning house!'")
talkingNPC:addCycleText("Verdammt! Wirt, meine Kehle ist so leer und trocken wie der Sch�del eines Runewickers!", "Damn! Oy, bartender! My throat is as empty and dry as a Runewickian skull!")
talkingNPC:addCycleText("#me ist ein Zwerg mit einem schwarzen, buschigem Bart, gekleidet in grober, zerschlissener Kleidung.", "#me is a dwarf with a black bushy beard, dressed in ragged and coarse clothes.")
talkingNPC:addCycleText("#me scheint bester Laune zu sein, auch wenn sein Bierkrug leer erscheint.", "#me seems to be in jubilant mood, eventhough his beer mug is empty.")
talkingNPC:addCycleText("Hey! F�ll meinen Krug und wir k�nnen reden.", "Oy, fill my mug with beer n' we can talk.")
talkingNPC:addCycleText("#me summt: F�sser voll Schnaps, flie�en den Fluss entlang. Der Zollmann wei� von nichts, die Nacht besch�tzt meine Fracht. Mein Profit ist recht und Steuern gibts von mir nicht.'", "#me hums: 'Barrels o' booze, downstream they go! That tha bailiff don't know! The night protects my cargo n' coins, n' tha taxman can kiss my loins! Haha!'")
talkingNPC:addCycleText("Borps!", "Burp!")
talkingNPC:addCycleText("Ist der Krug leer, dann muss ein neuer her!", "An empty mug is not good!")
talkingNPC:addCycleText("Sagt ein M�tterchen zum Wachtmeister: K�nnen sie mir �ber den Fluss helfen? Der Wachtmeister: Ja, ich bringe euch zur Br�cke dort. Das M�tterchen: Pah, da komm ich alleine r�ber!", "A mother to the constable: Could you help me cross the river? The constable replies: Sure, I'll take you to the bridge. The mother: Pah! There, I can do it on my own!")
talkingNPC:addCycleText("Ein Bauer zum Wachtmeister: Man hat mir meinen Karren gestohlen! Der Wachtmeister: Hatte der Wagen eine Laterne und eine Tr�te? Der Bauer: Nein, warum? Der Wachtmeister: Das macht dann drei�ig Kupferst�cke Strafe!", "A peasant to the constable: Someone stole my cart! The constable: Did the cart have a lantern and a horn? The peasant. No, why? The constable: That's thirty copper fine then!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Schmuggler Cormac.", "This NPC is the smuggler Cormac.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 809)
mainNPC:setEquipment(11, 193)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 2113)
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
