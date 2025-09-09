local condition_state = require("npc.base.condition.state")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_state = require("npc.base.consequence.state")
local basic = require("npc.base.basic")
local condition_money = require("npc.base.condition.money")
local condition_chance = require("npc.base.condition.chance")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(-1)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is a thimblerig. You can see him shuffling three nuts over and over again. Say 'I bet.' to play for ten silver coins. Then, say 'right', 'left' or 'middle' to choose a nut."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist ein H�tchenspieler. Er schiebt in einer Tour drei N��e hin und her. Sag 'Ich wette.' um zehn Silberst�cke zu spielen. Sage dann 'rechts', 'links' oder 'mitte' um eine Nuss zu w�hlen."))
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
talkEntry:addResponse("Hiho! Time for gambling, right?")
talkEntry:addResponse("Shh, want to play with me?")
talkEntry:addResponse("Hey, you look like somebody who is used to winning. Want to play?")
talkEntry:addResponse("Hello. Thimblerig is my business. Want to bet, stranger?")
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
talkEntry:addResponse("Hiho! Zeit zum Zocken, nicht wahr?")
talkEntry:addResponse("Shh, willst du mit mir spielen?")
talkEntry:addResponse("Hey, du siehtst aus wie jemand, der gerne gewinnt. Willst du wetten?")
talkEntry:addResponse("Hallo. Das H�tchenspiel ist mein Handwerk. Willst du was setzen, Fremder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Time for gambling, right?")
talkEntry:addResponse("Shh, want to play with me?")
talkEntry:addResponse("Hey, you look like somebody who is used to winning. Want to play?")
talkEntry:addResponse("Hello. Thimblerig is my business. Want to bet, stranger?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Zeit zum Zocken, nicht wahr?")
talkEntry:addResponse("Shh, willst du mit mir spielen?")
talkEntry:addResponse("Hey, du siehtst aus wie jemand, der gerne gewinnt. Willst du wetten?")
talkEntry:addResponse("Hallo. Das H�tchenspiel ist mein Handwerk. Willst du was setzen, Fremder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Yes, yes, and come back with more money!")
talkEntry:addResponse("Bye! May your purse fill again.")
talkEntry:addResponse("Goodbye and please don't tell anyone what I am doing here.")
talkEntry:addResponse("Ronagan may bless you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ja, ja, und komm mit mehr Geld zur�ck.")
talkEntry:addResponse("Auf wiedersehen. Und m�ge sich deine B�rse wieder mit Gold f�llen.")
talkEntry:addResponse("Tsch��! Erz�hl bitte nichts von dem, was ich hier mache.")
talkEntry:addResponse("M�ge Ronagan dich segnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Yes, yes, and come back with more money!")
talkEntry:addResponse("Bye! May your purse fill again.")
talkEntry:addResponse("Goodbye and please don't tell anybody what I am doing here.")
talkEntry:addResponse("Ronagan may bless you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ja, ja, und komm mit mehr Geld zur�ck.")
talkEntry:addResponse("Auf wiedersehen. Und m�ge sich deine B�rse wieder mit Gold f�llen.")
talkEntry:addResponse("Tsch��! Erz�hl bitte nichts von dem, was ich hier mache.")
talkEntry:addResponse("M�ge Ronagan dich segnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("That is none of your business.")
talkEntry:addResponse("I would feel way better with your money in my purse.")
talkEntry:addResponse("I feel like playing. Time for some thimblerig?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Das geht dich nichts an.")
talkEntry:addResponse("Es w�rde mir weit besser gehen mit deinem Geld in meiner Tasche.")
talkEntry:addResponse("Mir ist nach Zocken. Zeit f�r ein kleines H�tchenspiel?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Henning, yes, that's me. My friends call me Henni.")
talkEntry:addResponse("Who wants to know? Nevermind, let's play!")
talkEntry:addResponse("Well, I am Henning. Are you happy now?")
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
talkEntry:addResponse("Henning, ja, das bin ich. Meine Freunde nennen mich Henni.")
talkEntry:addResponse("Wer will das wissen? Ach, was solls, lass uns spielen.")
talkEntry:addResponse("Also ich bin Henning. Bist du jetzt gl�cklich?")
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
talkEntry:addResponse("Let me see... I can send you on an epic quest to choose the right nut! Care to bet?")
talkEntry:addResponse("No quest today, my money has gone away. The nuts stand forlorn, a symbol of the dawn.")
talkEntry:addResponse("You are the hero, I am the thimblerig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Lass mich mal �berlegen... Ich kann dich auf die epische Suche nach der richtigen Nuss schicken. Hast du Lust, zu wetten?")
talkEntry:addResponse("Leider hab ich keine Abenteuer im Angebot. Wie w�rs mit einer kleinen Wette?")
talkEntry:addResponse("Du bist der Held, ich der H�tchenspieler!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Let me see... I can send you on an epic quest to choose the right nut! Care to bet?")
talkEntry:addResponse("No quest today, my money has gone away. The nuts stand forlorn, a symbol of the dawn.")
talkEntry:addResponse("You are the hero, I am the thimblerig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Lass mich mal �berlegen... Ich kann dich auf die epische Suche nach der richtigen Nuss schicken. Hast du Lust, zu wetten?")
talkEntry:addResponse("Leider hab ich keine Abenteuer im Angebot. Wie w�rs mit einer kleinen Wette?")
talkEntry:addResponse("Du bist der Held, ich der H�tchenspieler!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("~=", 0))
talkEntry:addTrigger("bet")
talkEntry:addResponse("You already bet, choose a nut: Left, middle or right?")
talkEntry:addResponse("You still have to choose a nut: Left, middle or maybe right?")
talkEntry:addResponse("I await your decision. Under which nut might the ball be hidden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addCondition(condition_money("<", 1000))
talkEntry:addTrigger("bet")
talkEntry:addResponse("You don't even have ten silver coins.")
talkEntry:addResponse("You should not bet more than you have. Ten silver coins, c'mon!")
talkEntry:addResponse("Are you kiddin' me? Count your money!")
talkEntry:addResponse("Nice try, chap. Get your money before we play, right?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addCondition(condition_money(">", 999))
talkEntry:addTrigger("bet")
talkEntry:addConsequence(consequence_state("=", 1))
talkEntry:addConsequence(consequence_money("-", 1000))
talkEntry:addConsequence(consequence_quest(21, "+", 1))
talkEntry:addResponse("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You are pretty sure the ball is under the left one.")
talkEntry:addResponse("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You are pretty sure the ball is under the right one.")
talkEntry:addResponse("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You are pretty sure the ball is under the one in the middle.")
talkEntry:addResponse("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You have no idea where the ball is now.")
talkEntry:addResponse("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. The ball might be anywhere, his hands were too fast for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addTrigger("right")
talkEntry:addTrigger("left")
talkEntry:addTrigger("middle")
talkEntry:addResponse("So, you want to play with me? You have to bet one silver coin.")
talkEntry:addResponse("First, you have to bet, then I will shuffle the nuts.")
talkEntry:addResponse("We did not start playing, did we?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("~=", 0))
talkEntry:addCondition(condition_chance(33.0))
talkEntry:addTrigger("right")
talkEntry:addTrigger("left")
talkEntry:addTrigger("middle")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("#me lifts the nut. You see... a ball! You won twice your bet.")
talkEntry:addResponse("We have a winner! Here, the ball was under your nut. Take your prize money.")
talkEntry:addResponse("#me curses as he lifts the nut and a ball can be seen. You win twice your bet!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("~=", 0))
talkEntry:addTrigger("right")
talkEntry:addTrigger("left")
talkEntry:addTrigger("middle")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("#me lifts the nut. There is no ball, so you lost your bet.")
talkEntry:addResponse("Bad luck today, chap. No ball under your nut, sorry. Your bet is mine.")
talkEntry:addResponse("#me lifts the nut with a grin. No ball is under it, so you've lost your bet.")
talkEntry:addResponse("Oh, how sad, no ball under this nut, but maybe you'll have more luck next time?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("~=", 0))
talkEntry:addTrigger("setze")
talkEntry:addTrigger("wette")
talkEntry:addTrigger("setz")
talkEntry:addResponse("Du hast doch schon gesetzt. W�hl' eine Nu�: Links, mitte oder vielleicht rechts?")
talkEntry:addResponse("Ich warte noch auf deine Wahl. Unter welche Nu� verbirgt sich wohl die Kugel?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addCondition(condition_money("<", 1000))
talkEntry:addTrigger("setze")
talkEntry:addTrigger("wette")
talkEntry:addTrigger("setz")
talkEntry:addResponse("Du hast ja nichtmal zehn Silberm�nzen.")
talkEntry:addResponse("Du solltest nicht mehr setzen als du eigentlich hast. Zack, zehn Silberm�nzen auf den Tisch!")
talkEntry:addResponse("Willst du mich ver�ppeln? Z�hl mal dein Geld!")
talkEntry:addResponse("Netter Versuch. Hol erstmal dein Geld, bevor wir spielen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addCondition(condition_money(">", 999))
talkEntry:addTrigger("setze")
talkEntry:addTrigger("wette")
talkEntry:addTrigger("setz")
talkEntry:addConsequence(consequence_state("=", 1))
talkEntry:addConsequence(consequence_money("-", 1000))
talkEntry:addConsequence(consequence_quest(21, "+", 1))
talkEntry:addResponse("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du bist ziemlich sicher, dass die Kugel unter der linken Nu� ist.")
talkEntry:addResponse("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du bist ziemlich sicher, dass die Kugel unter der rechten Nu� ist.")
talkEntry:addResponse("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du bist ziemlich sicher, dass die Kugel unter der mittleren Nu� ist.")
talkEntry:addResponse("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du hast keine Ahnung, wo die Kugel nun ist.")
talkEntry:addResponse("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Die Kugel k�nnte �berall sein, so schnell waren seine H�nde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("=", 0))
talkEntry:addTrigger("rechts")
talkEntry:addTrigger("links")
talkEntry:addTrigger("mitte")
talkEntry:addResponse("So, du willst also mit mir spielen? Wieviel setzt du denn?")
talkEntry:addResponse("Erst mu�t du was setzen. Dann schiebe ich die N��e hin und her.")
talkEntry:addResponse("Wir haben noch nicht zu spielen angefangen, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("~=", 0))
talkEntry:addCondition(condition_chance(33.0))
talkEntry:addTrigger("rechts")
talkEntry:addTrigger("links")
talkEntry:addTrigger("mitte")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addResponse("#me hebt die Nu�. Du siehst... eine Kugel! Du hast deinen Einsatz verdoppelt.")
talkEntry:addResponse("Wir haben einen Gewinner! Hier, die Kugel war unter deiner Nu�. Nimm dein gewonnenes Geld.")
talkEntry:addResponse("#me flucht als er die Nu� anhebt und eine Kugel zum Vorschein kommt. Du gewinnst deinen doppelten Einsatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_state("~=", 0))
talkEntry:addTrigger("rechts")
talkEntry:addTrigger("links")
talkEntry:addTrigger("mitte")
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("#me hebt die Nu�. Es ist keine Kugel drunter, also hast du deinen Einsatz verloren.")
talkEntry:addResponse("Kein Gl�ck heute, was? Keine Kugel unter dieser Nu�, dein Einsatz ist mein.")
talkEntry:addResponse("#me hebt die Kugel mit einem Grinsen. Keine Kugel ist drunter, also hast du deinen Einsatz verloren.")
talkEntry:addResponse("Oh, wie schade, keine Kugel unter dieser Nu�. Vielleicht hast du beim n�chsten mal mehr Gl�ck?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("copper")
talkEntry:addResponse("I play for silver coins, only.")
talkEntry:addResponse("I don't gamble for copper coins, but feel free to bet some silver coins.")
talkEntry:addResponse("Since you're winning anyway, please bet silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("silber")
talkEntry:addResponse("Ich spiele nur um Silberm�nzen.")
talkEntry:addResponse("Ich spiele nicht um Kupfer, aber setz' doch ein paar Silberm�nzen.")
talkEntry:addResponse("Da du ja eh gewinnst, setze bitte Silberm�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gold")
talkEntry:addResponse("I play for silver coins, only.")
talkEntry:addResponse("I don't gamble for gold coins, but feel free to bet some silver coins.")
talkEntry:addResponse("Since you're winning anyway, please bet silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gold")
talkEntry:addResponse("Ich spiele nur um Silberm�nzen.")
talkEntry:addResponse("Ich spiele nicht um Gold, aber setz' doch ein paar Silberm�nzen.")
talkEntry:addResponse("Da du ja eh gewinnst, setze bitte Silberm�nzen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rules")
talkEntry:addTrigger("thimblerig")
talkEntry:addTrigger("gamble")
talkEntry:addTrigger("play")
talkEntry:addTrigger("playing")
talkEntry:addTrigger("betting")
talkEntry:addTrigger("gambling")
talkEntry:addTrigger("game")
talkEntry:addTrigger("nuts")
talkEntry:addResponse("Thimblerig is simple. You bet ten silver coins and I place a ball under one of three nuts. I shuffle the nuts and you choose the right one. You get twice the money you bet in case you can follow my hands!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("regeln")
talkEntry:addTrigger("H�tchenspiel")
talkEntry:addTrigger("H�tchen")
talkEntry:addTrigger("wetten")
talkEntry:addTrigger("spielen")
talkEntry:addTrigger("zocken")
talkEntry:addTrigger("spiel")
talkEntry:addTrigger("spielchen")
talkEntry:addTrigger("n�sse")
talkEntry:addTrigger("n��e")
talkEntry:addTrigger("Einsatz")
talkEntry:addResponse("Das H�tchenspiel ist eigentlich ganz einfach. Du setzt zehn Silberst�cke und ich verstecke eine Kugel unter einer von drei N��en. Ich mische dann die N��e und du w�hlst einfach die Richtige. Du bekommst deinen doppelten Einsatz, wenn du meinen H�nden folgen kannst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am an... entertainer.")
talkEntry:addResponse("So, what do you think a halfling with three nuts and a ball does for a living?")
talkEntry:addResponse("I am a thimblerig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein... Unterhaltungsk�nstler.")
talkEntry:addResponse("Also, was glaubst du, macht ein Halbling mit drei N�ssen und einer Kugel?")
talkEntry:addResponse("Ich bin ein H�tchenspieler!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am an... entertainer.")
talkEntry:addResponse("So, what do you think a halfling with three nuts and a ball does for a living?")
talkEntry:addResponse("I am a thimblerig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein... Unterhaltungsk�nstler.")
talkEntry:addResponse("Also, was glaubst du, macht ein Halbling mit drei N�ssen und einer Kugel?")
talkEntry:addResponse("Ich bin ein H�tchenspieler!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ah, yes Gobaith, good island, good money. I wonder what happened to good old Brendan... back then.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ah, ja, Gobaith, eine gute Insel, gutes Geld. Ich frage mich nur, was damals aus dem guten alten Brendan geworden ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Stranger, do you want to bet or tell me about your entire life?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Willst du jetzt wetten oder mir deine ganze Lebensgeschichte erz�hlen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Mason")
talkEntry:addTrigger("Brendan")
talkEntry:addResponse("What do you know about good ol' Brandy? Nah, don't tell me, let's play instead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mason")
talkEntry:addTrigger("Brendan")
talkEntry:addResponse("Was wei�t du denn schon vom guten alten Brandy? Nah, erz�hls mir gar nicht erst, lass uns spielen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dwarf")
talkEntry:addTrigger("dwarv")
talkEntry:addResponse("Dwarves have lots of gold, don't they? I wish I was a dwarf...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zwerg")
talkEntry:addResponse("Zwerge haben viel Gold, nicht wahr? Ich w�nschte, ich w�re ein Zwerg...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cheater")
talkEntry:addTrigger("cheat")
talkEntry:addResponse("Well, ahm, uhm...")
talkEntry:addResponse("I swear, I don't cheat! Well, apart from that dwarf back then, he just had too much gold.")
talkEntry:addResponse("No cheating here, three nuts, one ball.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Betr�ger")
talkEntry:addTrigger("Betrug")
talkEntry:addResponse("Nunja, �h, �h...")
talkEntry:addResponse("Ich schw�r dir, ich betr�ge niemals! Naja, au�er diesen einen Zwerg damals, der hatte einfach zu viel Gold.")
talkEntry:addResponse("Hier geht alles mit rechten Dingen zu. Drei N��e, eine Kugel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Beer")
talkEntry:addTrigger("Drink")
talkEntry:addTrigger("Food")
talkEntry:addTrigger("Dish")
talkEntry:addResponse("I don't serve here, I am just a guest. A guest with three nuts and a ball.")
talkEntry:addResponse("Get your food yourself.")
talkEntry:addResponse("Hmm?")
talkEntry:addResponse("What do you want from me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bier")
talkEntry:addTrigger("Getr�nk")
talkEntry:addTrigger("Trank")
talkEntry:addTrigger("Speise")
talkEntry:addTrigger("Essen")
talkEntry:addTrigger("Gericht")
talkEntry:addResponse("Ich serviere hier nicht. Ich bin auch nur ein Gast. Ein Gast mit drei N��en und einer Kugel.")
talkEntry:addResponse("Hol dir deinen Fra� alleine.")
talkEntry:addResponse("Hmm?")
talkEntry:addResponse("Was willst du von mir?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Halfling")
talkEntry:addResponse("Without a doubt, I am a halfling, and a poor one.")
talkEntry:addResponse("What is it you want from me?")
talkEntry:addResponse("Sure, I am a halfling, or do you see me with a beard and wielding an axe?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Halbling")
talkEntry:addResponse("Zweifelsohne bin ich ein Halbling. Und dazu noch ein armer.")
talkEntry:addResponse("Was genau m�chtest du von mir?")
talkEntry:addResponse("Klar bin ich ein Halbling, oder hab ich etwa einen Bart und trag 'ne Axt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Halfer")
talkEntry:addTrigger("Hobbit")
talkEntry:addResponse("Without a doubt, I am a halfling, and a poor one.")
talkEntry:addResponse("What is it you want from me?")
talkEntry:addResponse("Sure, I am a halfling, or do you see me with a beard and wielding an axe?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Halfer")
talkEntry:addTrigger("Hobbit")
talkEntry:addResponse("Zweifelsohne bin ich ein Halbling. Und dazu noch ein armer.")
talkEntry:addResponse("Was genau m�chtest du von mir?")
talkEntry:addResponse("Klar bin ich ein Halbling, oder hab ich etwa einen Bart und trag 'ne Axt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hemp")
talkEntry:addTrigger("Necktie")
talkEntry:addTrigger("inn")
talkEntry:addResponse("Welcome to the Hemp Necktie Inn.")
talkEntry:addResponse("Indeed, this is a tavern. So, how about we do what is done best in a tavern, Gambling!")
talkEntry:addResponse("A nice name for a tavern, Hemp Necktie Inn. Why don't you make me happy and do some thimblerig with me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gasthof")
talkEntry:addTrigger("Hanfschlinge")
talkEntry:addResponse("Willkommen im Gasthof zur Hanfschlinge.")
talkEntry:addResponse("In der Tat, dies ist eine Taverne. Also, warum machen wir nicht, was man am besten in einer Taverne macht: Zocken!")
talkEntry:addResponse("Ein netter Name f�r eine Taverne: Gasthof zur Hanfschlinge. Warum machst du mich nicht zu einem gl�cklichem Halbling und spielst das H�tchenspiel mit mir?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tavern")
talkEntry:addTrigger("Bar")
talkEntry:addResponse("Welcome to the Hemp Necktie Inn.")
talkEntry:addResponse("Indeed, this is a tavern. So, how about we do what is done best in a tavern, Gambling!")
talkEntry:addResponse("A nice name for a tavern, Hemp Necktie Inn. Why don't you make me happy and do some thimblerig with me?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tavern")
talkEntry:addTrigger("Bar")
talkEntry:addResponse("Willkommen im Gasthof zur Hanfschlinge.")
talkEntry:addResponse("In der Tat, dies ist eine Taverne. Also, warum machen wir nicht, was man am besten in einer Taverne macht: Zocken!")
talkEntry:addResponse("Ein netter Name f�r eine Taverne: Gasthof zur Hanfschlinge. Warum machst du mich nicht zu einem gl�cklichem Halbling und spielst das H�tchenspiel mit mir?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Wilderland")
talkEntry:addResponse("The Wilderland is a nice place for a thimblerig like me. You know, few guards, lots of money...")
talkEntry:addResponse("There is no place like the Wilderland. This tavern is a good place for gambling, isn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wilderland")
talkEntry:addResponse("Wilderland ist schon ein netter Fleck f�r einen H�tchenspieler wie mich. Du wei�t schon, wenige Wachen, viel Geld...")
talkEntry:addResponse("Es geht doch nichts �ber Wilderland. Diese Taverne ist genau der richtige Ort f�r ein Spielchen, nicht wahr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("townguard")
talkEntry:addTrigger("guard")
talkEntry:addResponse("Guards? Uhm, I better be goin'...")
talkEntry:addResponse("#me gathers his three nuts and grabs the money, hiding it.")
talkEntry:addResponse("Oh, a thug just left the tavern, maybe you could catch him when you leave now?")
talkEntry:addResponse("#me whistles innocently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stadtwache")
talkEntry:addTrigger("Wache")
talkEntry:addTrigger("W�chter")
talkEntry:addResponse("Wachen? Uhm, ich geh dann jetzt besser...")
talkEntry:addResponse("#me rafft seine drei N��e und etwas Geld zusammen und versteckt es schnell.")
talkEntry:addResponse("Oh, ein Dieb ist eben gerade zur T�r heraus, wenn ihr euch beeilt, erwischt ihr ihn noch.")
talkEntry:addResponse("#me pfeift unschuldig.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Who is that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wer soll das denn sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Who is that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wer soll das denn sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Where is that supposed to be?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Wo soll das denn sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I prefer not to talk to or about the Don, that's better for my business.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich ziehe es vor, nicht mit oder �ber den Don zu reden. Das ist besser f�r mein Gesch�ft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("No, I've never been to Galmair and I do not owe the Don a huge sum... Who sent you!? Groktan?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Nein, ich bin nat�rlich noch nie in Galmair gewesen und ich schulde dem Don auch keine gro�e Summe... Wer schickt dich!? Groktan?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I was told the fianc�e of Don Valerio rules her own pile of sand in the south. Candymore or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich habe geh�rt, dass die Verlobte von Don Valerio im S�den �ber einen Sandh�gel herscht. Candymore oder so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I was told the fianc�e of Don Valerio rules her own pile of sand in the south. Candymore or something.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich habe geh�rt, dass die Verlobte von Don Valerio im S�den �ber einen Sandh�gel herscht. Candymore oder so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addTrigger("Candymore")
talkEntry:addResponse("Oh, please, I don't want to talk about a pile of sand. How about you win a pile of money?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addTrigger("Candymore")
talkEntry:addResponse("Oh, bitte, ich m�chte jetzt nicht �ber einen Sandh�gel reden. Wollt ihr nicht viel lieber ein Berg Geld gewinnen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I'll never play with an Albarian again. Last time, one slammed on the table so hard after losing that all three nuts flew up, revealing that there was no ball... uhm, nevermind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich spiele nie wieder mit einem Albarier. Das letzte mal hat einer so stark vor Wut �ber seine Niederlage auf den Tisch geschlagem, dass alle drei N��e herumgeflogen sind und er festgestellt hat, dass gar keine Kugel... uhm, egal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I'll never play with an Gynkeesh again. Last time, I lost thirty times in a row! If there are folk that can cheat better than me, it's the Gynkeesh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich spiele nie wieder mit einem Gynkeesh. Das letzte mal hat einer drei�ig mal in Folge gewonnen! Wenn es ein Volk gibt, dass besser im Schummel ist als ich, dann sind es die Gynkeesh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I'll never play with an Salkamaerian again. Last time, one argued half an hour with me that he meant the right nut from 'my' point of view, not 'his'...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich spiele nie wieder mit einem Salkamaerier. Das letzte mal hat einer mich eine halbe Stunde damit zugeredet, dass er die rechte Nuss von 'mir aus' gesehen meinte, nicht von 'sich aus'...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("My religion is called gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Meine Religion hei�t Gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Hail Ronagan!")
talkEntry:addResponse("My religion is called gold.")
talkEntry:addResponse("How come Ronagan has no temple in this land? ... He could not lift it as he tried to steal one!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Lobet Ronagan!")
talkEntry:addResponse("Meine Religion hei�t Gold.")
talkEntry:addResponse("Warum hat Ronagan keinen Tempel auf dieser Insel? ... Er hat ihn nicht anheben k�nnen, als er versucht hat einen zu stehlen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Do I look like a trader!?")
talkEntry:addResponse("Oh, I left my vendor's tray at home. Want to play a game instead?")
talkEntry:addResponse("You must be kidding me. I am not a huckster!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Sehe ich aus wie ein H�ndler?")
talkEntry:addResponse("Oh, gerade heute hab ich meinen Bauchladen zuhause vergessen. Willst du nicht viel lieber ein Spiel spielen?")
talkEntry:addResponse("Willst du mich ver�ppeln? Ich bin kein H�ker!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I don't tell nobody nothing, no!")
talkEntry:addResponse("Who are you anyway, the town guard?")
talkEntry:addResponse("I don't cheat! I would never, would I...?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich erz�hl hier gar nichts.")
talkEntry:addResponse("Wer bist du, die Stadtwache?")
talkEntry:addResponse("Ich betr�ge nicht! Ich doch nicht...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Henning")
talkEntry:addTrigger("Broomshrub")
talkEntry:addResponse("Henning, yes, that's me. My friends call me Henni.")
talkEntry:addResponse("Who wants to know? Nevermind, let's play!")
talkEntry:addResponse("Well, I am Henning. Are you happy now?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Henning")
talkEntry:addTrigger("Broomshrub")
talkEntry:addResponse("Henning, ja, das bin ich. Meine Freunde nennen mich Henni.")
talkEntry:addResponse("Wer will das wissen? Ach, was solls, lass uns spielen.")
talkEntry:addResponse("Also ich bin Henning. Bist du jetzt gl�cklich?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me schiebt gelangweilt drei N��e hin und her.", "#me shuffles three nuts around, seeming rather bored.")
talkingNPC:addCycleText("#me pfeift vor sich hin.", "#me whistles innocently.")
talkingNPC:addCycleText("#me z�hlt sein Geld nach und grinst", "#me counts his money and grins.")
talkingNPC:addCycleText("#me sitzt vor einem Brett mit drei N��en darauf. Seine Finger spielen mit einer kleinen, grauen Kugel.", "#me is sitting in front of a board. On the board are three nuts. He is playing around with a small, grey ball.")
talkingNPC:addCycleText("Shh, Lust auf ein Spiel?", "Shh, want to play?")
talkingNPC:addCycleText("Psst, du, komm mal her. Ich kann dich reich machen.", "Hush, you, come here, I can make you rich.")
talkingNPC:addCycleText("Zeit f�r die Kr�tenwanderung. Die Kr�ten wandern von euren in meinen Geldbeutel.", "Time for a coin march from your purse to mine.")
talkingNPC:addCycleText("#me nimmt ein Schluck aus seinem Krug.", "#me takes a sip from his mug.")
talkingNPC:addCycleText("Denn Geld regiert die Welt...", "Money makes the world go round, the world go round...")
talkingNPC:addCycleText("#me summt vor sich hin.", "#me hums silently.")
talkingNPC:addCycleText("Finger weg von meinen N�ssen!", "Hands off my nuts!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Henning Broomshrub der H�tchenspieler.", "This NPC is Henning Broomshrub the thimblerig.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 809)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 2113)
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
