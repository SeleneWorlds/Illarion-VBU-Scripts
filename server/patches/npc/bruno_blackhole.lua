local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_skill = require("npc.base.condition.skill")
local condition_language = require("npc.base.condition.language")
local condition_town = require("npc.base.condition.town")
local talk = require("npc.base.talk")
local consequence_skill = require("npc.base.consequence.skill")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local condition_sex = require("npc.base.condition.sex")
local basic = require("npc.base.basic")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is the miner Bruno Blackhole. Keywords: Hello, quest, pick-axe, miner."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Bergarbeiter Bruno Blackhole. Schl�sselw�rter: Hallo, Quest, Spitzhacke, Bergarbeiter."))
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
talkEntry:addResponse("Be greeted ma friend!")
talkEntry:addResponse("Welcome to da Malachite mine.")
talkEntry:addResponse("Greetings, I hope ya don't try to steal ma gold!")
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
talkEntry:addResponse("Tach mein Freund!")
talkEntry:addResponse("Willkommen inner Malachitmine!")
talkEntry:addResponse("Gr��e, ich hoff' du versuchst nicht mein Gold zu stehlen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Be greeted ma friend!")
talkEntry:addResponse("Welcome to da Malachite mine.")
talkEntry:addResponse("Greetings, I hope ya don't try to steal ma gold!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Tach mein Freund!")
talkEntry:addResponse("Willkommen inner Malachitmine!")
talkEntry:addResponse("Gr��e, ich hoff' du versuchst nicht mein Gold zu stehlen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May Irmorom guide ya on yar ways!")
talkEntry:addResponse("Come back whenever ya miss the coolness of da mine.")
talkEntry:addResponse("Farewell.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("M�ge Irmorom dich auf deinen Wegen besch�tzen!")
talkEntry:addResponse("Komm' ruhig zur�ck wenn du die K�hle der Mine vermisst.")
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
talkEntry:addResponse("Farewell is what we say around here.")
talkEntry:addResponse("Fancy words don't bring you further around here. Farewell.")
talkEntry:addResponse("Irmorom with ya!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Auf bald sagen wa hier.")
talkEntry:addResponse("Schicke Worte helfen dir auch nicht weiter. Auf bald.")
talkEntry:addResponse("Irmorom mit dir!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("None of ya business.")
talkEntry:addResponse("I'm fine and ya?")
talkEntry:addResponse("I could use some beer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Geht dich nichts an.")
talkEntry:addResponse("Gut und dir?")
talkEntry:addResponse("Ich k�nnte 'n Bier vertragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Bruno Blackhole.")
talkEntry:addResponse("I'm a dwarven miner named Bruno.")
talkEntry:addResponse("Just call meh Bruno for now.")
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
talkEntry:addResponse("Ich bin Bruno Blackhole.")
talkEntry:addResponse("Ich bin 'n zwergischer Bergarbeiter namens Bruno.")
talkEntry:addResponse("Nenn' mich einfach Bruno.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addTrigger("message")
talkEntry:addTrigger("news")
talkEntry:addTrigger("letter")
talkEntry:addTrigger("scroll")
talkEntry:addTrigger("parchment")
talkEntry:addConsequence(consequence_inform("[Quest status] The Reminder III: You deliver the message from Groktan Flintsplit to Bruno Blackhole."))
talkEntry:addConsequence(consequence_quest(107, "=", 7))
talkEntry:addResponse("Oh my goodness! How will I pay that amount of money to the Don? I just know what I get when I don't pay...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addTrigger("nachricht")
talkEntry:addTrigger("brief")
talkEntry:addTrigger("Botschaft")
talkEntry:addTrigger("Schriftrolle")
talkEntry:addTrigger("Pergament")
talkEntry:addConsequence(consequence_inform("[Queststatus] Die Erinnerung III: Du �berbringst Bruno Blackhole die Nachricht von Groktan Flintsplit."))
talkEntry:addConsequence(consequence_quest(107, "=", 7))
talkEntry:addResponse("Ach du meine G�te! Wie soll ich nur so viel Geld and den Don zahlen? Ich wei� nur, was mir bl�ht, wenn ich nicht zahle...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addConsequence(consequence_inform("[Quest status] The Reminder III: You deliver the message from Groktan Flintsplit to Bruno Blackhole."))
talkEntry:addConsequence(consequence_quest(107, "=", 7))
talkEntry:addResponse("Oh my goodness! How will I pay that amount of money to the Don? I just know what I get when I don't pay...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(107, "=", 6))
talkEntry:addTrigger("Groktan")
talkEntry:addTrigger("Flintsplit")
talkEntry:addConsequence(consequence_inform("[Queststatus] Die Erinnerung III: Du �berbringst Bruno Blackhole die Nachricht von Groktan Flintsplit."))
talkEntry:addConsequence(consequence_quest(107, "=", 7))
talkEntry:addResponse("Ach du meine G�te! Wie soll ich nur so viel Geld and den Don zahlen? Ich wei� nur, was mir bl�ht, wenn ich nicht zahle...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine I"))
talkEntry:addConsequence(consequence_item(2763, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 1))
talkEntry:addResponse("Aye, I hope ya like hard work. Bring meh ten raw stones and I will give you a little something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine I"))
talkEntry:addConsequence(consequence_item(2763, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 1))
talkEntry:addResponse("Aye, ich hoffe du magst harte Arbeit. Bring mir zehn rohe Steine, dann gebe ich dir 'ne Kleinigkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine I"))
talkEntry:addConsequence(consequence_item(2763, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 1))
talkEntry:addResponse("Aye, I hope ya like hard work. Bring meh ten raw stones and I will give ya a little something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine I"))
talkEntry:addConsequence(consequence_item(2763, 1, 333, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 1))
talkEntry:addResponse("Aye, ich hoffe du magst harte Arbeit. Bring mir zehn rohe Steine, dann gebe ich dir 'ne Kleinigkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Do ya have da ten raw stones yet? Just hit on da rocks over there with your pick-axe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", "<", 10, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du die zehn rohen Steine schon? Haue einfach mit der Spitzhacke auf die Steine dort dr�ben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", "<", 10, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Do ya have da ten raw stones yet? Just hit on da rocks over there with your pick-axe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", "<", 10, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du die zehn rohen Steine schon? Haue einfach mit der Spitzhacke auf die Steine dort dr�ben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Good work, that shows meh that you're not a whimp.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Good work, that shows meh that you're not a whimp.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Gute Arbeit, dies zeigt das du kein Schw�chling bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Gute Arbeit, dies zeigt das du kein Schw�chling bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Good work, that shows meh that you're not a whimp.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded five silver coins."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Good work, that shows meh that you're not a whimp.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Gute Arbeit, dies zeigt das du kein Schw�chling bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 1))
talkEntry:addCondition(condition_item(735, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 500))
talkEntry:addConsequence(consequence_deleteitem(735, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 2))
talkEntry:addResponse("Gute Arbeit, dies zeigt das du kein Schw�chling bist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Ya'll become a good miner someday lad! Bring meh twenty pieces of copper ore and I'll pay for it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Ya'll become a good miner someday lass! Bring meh twenty pieces of copper ore and I'll pay for it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Du wirst mal 'n guter Bergarbeiter Bursche! Bring mir zwanzig Brocken Kupfererz und ich bezahle dich daf�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Du wirst mal 'n guter Bergarbeiter M�del! Bring mir zwanzig Brocken Kupfererz und ich bezahle dich daf�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Ya'll become a good miner someday lad! Bring meh twenty pieces of copper ore and I'll pay for it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Ya'll become a good miner someday lass! Bring meh twenty pieces of copper ore and I'll pay for it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_sex(0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Du wirst mal 'n guter Bergarbeiter Bursche! Bring mir zwanzig Brocken Kupfererz und ich bezahle dich daf�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 2))
talkEntry:addCondition(condition_sex(1))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine II"))
talkEntry:addConsequence(consequence_quest(65, "=", 3))
talkEntry:addResponse("Du wirst mal 'n guter Bergarbeiter M�del! Bring mir zwanzig Brocken Kupfererz und ich bezahle dich daf�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", "<", 20, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I need twenty pieces copper ore, do ya have it yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", "<", 20, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauche zwanzig Brocken Kupfererz, hast du die schon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", "<", 20, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I need twenty pieces of copper ore, do ya have it yet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", "<", 20, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich brauche zwanzig Brocken Kupfererz, hast du die schon?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Thank ya pal! Here is ya money, don't spend it all at once.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Thank ya pal! Here is ya money, don't spend it all at once.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Danke Kumpel! Hier is dein Geld, gib' nicht alles auf einmal aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Danke Kumpel! Hier is dein Geld, gib' nicht alles auf einmal aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Thank ya pal! Here is ya money, don't spend it all at once.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Thank ya pal! Here is ya money, don't spend it all at once.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Danke Kumpel! Hier is dein Geld, gib' nicht alles auf einmal aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 3))
talkEntry:addCondition(condition_item(2536, "all", ">", 19, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(2536, 20, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 4))
talkEntry:addResponse("Danke Kumpel! Hier is dein Geld, gib' nicht alles auf einmal aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine III"))
talkEntry:addConsequence(consequence_quest(65, "=", 5))
talkEntry:addResponse("Another quest? Alright pal, I need five gold nuggets, ya think ya can find them?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine III"))
talkEntry:addConsequence(consequence_quest(65, "=", 5))
talkEntry:addResponse("Noch 'n Auftrag? Na gut Kumpel. Ich brauche f�nf Goldnuggets, denkst du, du kannst die finden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine III"))
talkEntry:addConsequence(consequence_quest(65, "=", 5))
talkEntry:addResponse("Another task? Alright pal, I need five gold nuggets, ya think ya can find them?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine III"))
talkEntry:addConsequence(consequence_quest(65, "=", 5))
talkEntry:addResponse("Noch 'n Auftrag? Na gut Kumpel. Ich brauche f�nf Goldnuggets, denkst du, du findest welche?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Five gold nuggets is what I need. Ya can find them in the rocks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", "<", 5, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauche f�nf Goldnuggets. Du kannst sie in den Steinen finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", "<", 5, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Five gold nuggets is what I need. Ya can find them in the rocks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", "<", 5, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich brauche f�nf Goldnuggets. Du kannst sie in den Steinen finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Now ya are a real miner. Here are some coins for ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Now ya are a real miner. Here are some coins for ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Jetzt bist du 'n richtiger Bergarbeiter. Hier hast du 'n Silberst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Jetzt bist du 'n richtiger Bergarbeiter. Hier hast du 'n Silberst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Now ya are a real miner. Here are some coins for ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Now ya are a real miner. Here are some coins for ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Jetzt bist du 'n richtiger Bergarbeiter. Hier hast du 'n Silberst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 5))
talkEntry:addCondition(condition_item(234, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_deleteitem(234, 5, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 6))
talkEntry:addResponse("Jetzt bist du 'n richtiger Bergarbeiter. Hier hast du 'n Silberst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 6))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine IV"))
talkEntry:addConsequence(consequence_quest(65, "=", 7))
talkEntry:addResponse("Ya know pal, it's mah sweet Gold Nuggets birthday soon. She likes virgin weed but I have too much work to get them mahself. Could ya bring meh ten virgin weed? Ya should ask Raban at his grove, he can help ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 6))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine IV"))
talkEntry:addConsequence(consequence_quest(65, "=", 7))
talkEntry:addResponse("Wei�t du Kumpel, mein s��es Goldnugget hat bald Geburtstag. Sie mag Jungfernkraut, aber ich habe zu viel zu tun um sie selbst zu suchen. K�nntest du mir zehn Jungfernkraut bringen? Du solltest Raban in seinem Hain fragen, er kann dir helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 6))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_inform("[New quest] Malachite Mine IV"))
talkEntry:addConsequence(consequence_quest(65, "=", 7))
talkEntry:addResponse("Ya know pal, it's mah sweet Gold Nuggets birthday soon. She likes virgin weed but I have too much work to get them mahself. Could ya bring meh ten virgin weed? Ya should ask Raban at his grove, he can help ya.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 6))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Malachitmine IV"))
talkEntry:addConsequence(consequence_quest(65, "=", 7))
talkEntry:addResponse("Wei�t du Kumpel, mein s��es Goldnugget hat bald Geburtstag. Sie mag Jungfernkraut, aber ich habe zu viel zu tun um sie selbst zu suchen. K�nntest du mir zehn Jungfernkraut bringen? Du solltest Raban in seinem Hain fragen, er kann dir helfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Do ya have the ten virgin weed for mah wife yet? Ya should go to Raban's grove and ask Raban himself for help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", "<", 10, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hast du die zehn Jungerfernkraut f�r meine Frau schon? Du solltest zu Rabans Hain gehen und Raban um Hilfe bitten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", "<", 10, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Do ya have the ten virgin weed for mah wife yet? Ya should go to Raban's grove and ask Raban himself for help.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", "<", 10, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hast du die zehn Jungfernkraut f�r meine Frau schon? Du solltest zu Rabans Hain gehen und Raban um Hilfe bitten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Thank you, mah wife will be very pleased. Here ya are, have some compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Thank you, mah wife will be very pleased. Here ya are, have some compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Danke, meine Frau wird begeistert sein. Hier hast du 'ne kleine Entsch�digung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addCondition(condition_town(3))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Danke, meine Frau wird begeistert sein. Hier hast du 'ne kleine Entsch�digung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins and your mining skill increases."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Thank you, mah wife will be very pleased. Here ya are, have some compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded 20 silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Thank you, mah wife will be very pleased. Here ya are, have some compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_skill(Character.mining, "<", 90))
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und deine Bergbaufertigkeit steigt."))
talkEntry:addConsequence(consequence_skill(Character.mining, "+", 1))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Danke, meine Frau wird begeistert sein. Hier hast du 'ne kleine Entsch�digung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 7))
talkEntry:addCondition(condition_item(144, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_deleteitem(144, 10, nil))
talkEntry:addConsequence(consequence_quest(65, "=", 8))
talkEntry:addResponse("Danke, meine Frau wird begeistert sein. Hier hast du 'ne kleine Entsch�digung.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("There is nothing ya can do for meh now. Why don't you help someone else, maybe even Raban?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich habe nun nichts mehr f�r dich zu tun. Wieso hilfst du nicht jemand anderes, vielleicht sogar Raban?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("There is nothing ya can do for meh now. Why don't you help someone else, maybe even Raban?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich habe nun nichts mehr f�r dich zu tun. Wieso hilfst du nicht jemand anderes, vielleicht sogar Raban?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 0))
talkEntry:addTrigger("pick")
talkEntry:addResponse("You'll need a pickaxe in order to mine for ore. Just hit the rocks with it. If you want to try it I could give you a little quest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(65, "=", 0))
talkEntry:addTrigger("Hacke")
talkEntry:addResponse("Du wirst 'ne Spitzhacke brauchen um nach Erzen zu suchen, einfach auf die Steine hauen damit. Wenn du es probieren willst, k�nnte ich dir 'nen kleinen Auftrag geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("pick")
talkEntry:addResponse("If ya need another pickaxe, ask a smith or another miner. The best miners can be found in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hacke")
talkEntry:addResponse("Wenn du 'ne weitere Spitzhacke brauchst, frag' 'nen Schmied oder 'nen anderen Bergarbeiter. Die besten Bergarbeiter kann man in Galmair finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Oh, I am a miner, but isn't that obvious?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Oh, ich bin ein Bergarbeiter, aber sieht man das nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Oh, I am a miner, but isn't that obvious?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Oh, ich bin ein Bergarbeiter, aber sieht man das nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I remember a young lad telling me 'bout a dwarven stronghold on that cursed island... Goldfire?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich erinnere mich daran, wie mir ein Jungspunt mal von einer Zwergenfeste auf dieser verdammten Insel erz�hlt hat... Goldfeuer?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Aye, now let's swing the pick!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Aye und nun lass uns die Spitzhacke schwingen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("miner")
talkEntry:addResponse("Aye, that's what I am. Da very best miner of Galmair.")
talkEntry:addResponse("A miner mines in da mines of Galmair for ore and coal.")
talkEntry:addResponse("Miners are important to smiths, because they sell ore and coal to them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bergarbeiter")
talkEntry:addResponse("Aye, das bin ich. Der beste Bergarbeiter von Galmair.")
talkEntry:addResponse("Ein Bergarbeiter sucht in den Minen Galmairs nach Erz und Kohle.")
talkEntry:addResponse("Bergarbeiter sind wichtig f�r Schmiede, weil sie Erz und Kohle an sie verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachit")
talkEntry:addResponse("The Malachite mine belongs to Galmair and one can mine for copper and iron here.")
talkEntry:addResponse("Copper and iron are the most common ores here, but when ya get lucky ya might find gold nuggets as well.")
talkEntry:addResponse("The Malachite mine is mah favourite spot. Isn't it nice here?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachit")
talkEntry:addResponse("Die Malachitmine geh�rt zu Galmair und man findet Kupfer- und Eisenerz hier.")
talkEntry:addResponse("Kupfer- und Eisenerz kommt hier am meisten vor, aber wenn du Gl�ck hast, findest du auch Goldnuggets.")
talkEntry:addResponse("Die Malachitmine ist mein liebster Platz, ist es nicht toll hier?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("nugget")
talkEntry:addResponse("You might find some down here. But you know my wife is my most precious gold nugget for meh. Are you married?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("nugget")
talkEntry:addResponse("Vielleicht findest du welche hier unten. Doch f�r mich ist meine Frau mein wertwollstes Goldnugget. Bist du verheiratet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Raban")
talkEntry:addResponse("Raban is most likely at his grove in the northeast. He never leaves the places and talks to his plants all day long.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Raban")
talkEntry:addResponse("Raban ist wahrscheinlich in seinem Hain im Nordosten. Er verl�sst den Platz nie und spricht den ganzen Tag zu seinen Pflanzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grove")
talkEntry:addResponse("Raban's grove is in the forest in the northeast, I used to get lost between all those trees.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hain")
talkEntry:addResponse("Rabans Hain ist im Wald im Nordosten. Ich verlauf mich immer zwischen all diesen B�umen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Mine")
talkEntry:addResponse("There are several mines close to Galmair. Just ask a fellow miner or a smith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mine")
talkEntry:addResponse("Es gibt mehrere Minen hier bei Galmair. Frag' einfach einen anderen Bergarbeiter oder einen Schmied.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ore")
talkEntry:addResponse("A smith can make several things out of ore... Tools, swords, armour and more. Just ask one and maybe he'll even give ya work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz")
talkEntry:addResponse("Ein Schmied kann viele Dinge aus Erz machen. Werkzeuge, Schwerter, Schilder und noch mehr. Frag' doch einfach einen Schmied und vielleicht gibt er dir ja sogar Arbeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stone")
talkEntry:addResponse("From raw stone ya can make stoneblocks which are needed to build houses. All ya need is a chisel and a place to work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stein")
talkEntry:addResponse("Von rohen Steinen kann man Steinquader machen, welche man braucht um H�user zu bauen. Alles was du brauchst ist ein Mei�el und ein Platz zum Arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("The Archmage of Runewick is there reading books all day long. You wonder who does all the work for him? Me as well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Der Erzmagier von Runewick lie�t doch den ganzen Tag nur B�cher. Du fragst dich, wer die Arbeit f�r ihn erledigt? Das w�rde ich auch gerne wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage of Runewick is there reading books all day long. You wonder who does all the work for him? Me as well!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier von Runewick lie�t doch den ganzen Tag nur B�cher. Du fragst dich, wer die Arbeit f�r ihn erledigt? Das w�rde ich auch gerne wissen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Lazy scum is living in Runewick. Gentle they are, but lazy!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ein faules Pack wohnt dort in Runewick. Nett sind sie zwar, aber sowas von faul!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don is a good leader. He never forgets who did something for him, or who owes him something...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don ist ein guter Anf�hrer. Er vergisst nie, wer etwas f�r ihn getan hat; und wer ihm was schuldet...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The place to be is Galmair... Cozy, free and money counts in large amounts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Der Ort schlechthin: Galmair. Gem�tlich, frei und Geld z�hlt man in gro�en Betr�gen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I'd really like to arr... Discuss with Queen Rosaline... about... her gems!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich w�rd' gern mal mit arr... K�nigin Rosaline �ber ihre... Juwelen diskutieren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I'd really like to arr... Discuss with Queen Rosaline... about... her gems!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich w�rd' gern mal mit arr... K�nigin Rosaline �ber ihre... Juwelen diskutieren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Noble men, pah, the people of Cadomyr behave only noble as long as they stare at the Queen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Edel, pff, die Leute aus Cadomyr verhalten sich nur edel, wenn sie ihr K�nigin anstarren k�nnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("In Albar, arr, you can make good profit. They are so stupid there, can't distinguish between a pebble and a ruby, they can't.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("In Albar, arr, da kann man gute Profite machen. Die sind so d�mlich da, die k�nnen einen Kieselstein nicht von einem Rubin unterscheiden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("In Gynk, arr, you can make good profit. You just need to know who to bribe, a little investment before payday.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("In Gynk, arr, da kann man gute Profite machen. Du mu�t nur wissen, wen du schmieren mu�t, eine kleine Investition vor dem Zahltag!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("In Salkamar, arr, you can make good profit. Just stuff some wax in your ears before negotiating with a trader and shake your head. After an hour, you pay close to nothing!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("In Salkamar, arr, da kann man gute Profite machen. Stop' dir einfach Wachs in die Ohren bevor du mit einem H�ndler verhandelst und sch�ttel immer mit dem Kopf. Nach einer Stunde wirst du kaum noch etwas zahlen m�ssen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("In the Malachite mine, you sometimes forget about the world outside and the gods. But when the light goes off and you hear noises, you remember the gods...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("In der Malachitmine vergi�t man manchmal die Welt dort drau�en und ihre G�tter. Aber wenn dann das Licht ausgeht und schlurfende Ger�usche zu h�ren sind, dann erinnert man sich an die G�tter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Hail Irmorom!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Lobet Irmorom!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Us dwarves honour Ushara. Maybe not every day and with high devotion, but we know who to thank for all the gems!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Wir Zwerge verehren Ushara. Vielleicht nicht an jedem Tag und mit vollster Hingabe, aber wir wissen schon genau, wem wir all die Edelsteine zu verdanken haben!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I do not sell or buy anything, but I could use ya help.")
talkEntry:addResponse("Do I really look like a trader?")
talkEntry:addResponse("I'm no trader, I'm a miner!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich kaufe und verkaufe nichts, aber ich k�nnte Hilfe gebrauchen.")
talkEntry:addResponse("Seh' ich wirklich wie 'n H�ndler aus?")
talkEntry:addResponse("Ich bin kein H�ndler, sondern 'n Bergarbeiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("If you want to hear a story, ya in da wrong place.")
talkEntry:addResponse("I'm here to work, not to tell stories.")
talkEntry:addResponse("My Gold Nugget is my most precious posession.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Wenn du 'ne Geschichte h�ren wollt, biste am falschen Ort.")
talkEntry:addResponse("Ich bin nicht zum Geschichtenerz�hlen hier, sondern zum Arbeiten.")
talkEntry:addResponse("Mein Goldnugget ist mein wertvollster Besitz.")
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
talkEntry:addTrigger("Bruno")
talkEntry:addTrigger("Blackhole")
talkEntry:addResponse("Aye, that's me I suppose!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bruno")
talkEntry:addTrigger("Blackhole")
talkEntry:addResponse("Aye, dat bin ich!")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me poliert gedankenverloren ein Goldnugget.", "#me seems to be lost in thought whilst polishing a gold nugget.")
talkingNPC:addCycleText("#me tritt nach einem Stein der klimpernd wegspringt.", "#me kicks at a small stone which bounces away with a strumming noise.")
talkingNPC:addCycleText("#me nuschelt vor sich hin: 'Ich h�tte mehr Bier mitnehmen sollen.'", "#me mumbles: 'I should have brought more beer.'")
talkingNPC:addCycleText("Irmorom is der Gott des Handwerks und Handels und zudem der Weltenschmied. Er hat die Zwerge nach seinem Ebenbild geschaffen damit sie der Welt und den anderen Rassen eine St�tze sind.", "Irmorom is the god of trade and craftmanship and also the worldsmith. He created us dwarves in his own likeness so that we can be a support for the world and the other races.")
talkingNPC:addCycleText("Wenn ich einmal sterbe, werde ich all die gro�en Zwerge in dem gro�en Berg wiedersehen und werde Irmorom zeigen k�nnen was ich gelernt habe.", "When I die, I'll see all those great dwarves again in the big mountain and can show Irmorom what I learnt.")
talkingNPC:addCycleText("Hey-ho!", "Hey-ho!")
talkingNPC:addCycleText("Gl�ck auf!", "Good luck!")
talkingNPC:addCycleText("Arbeit macht durstig!", "Work makes me thirsty!")
talkingNPC:addCycleText("Metall zu gie�en ist ein wahres Wunder - erst fl�ssig, dann fest, wer braucht da noch Magie?", "Casting metal is really exciting. First liquid, then solid, who needs magic, anyway?")
talkingNPC:addCycleText("Willkommen in der Malachitmine!", "Welcome to the Malachite mine!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Bergarbeiter Bruno Blackhole.", "This NPC is the miner Bruno Blackhole.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 812)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 2763)
mainNPC:setEquipment(6, 392)
mainNPC:setEquipment(4, 48)
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
