local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(2)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Francois Delacroix the Trader. Keywords: Hello, Markets, Buy, Sell, Agriculture, Trade."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der H�ndler Francois Delacroix. Schl�sselw�rter: Hallo, M�rkte, Handel, Ackerbau."))
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
talkEntry:addResponse("Was soll's sein?")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("What do you want?")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Good day.")
talkEntry:addResponse("Greeted be.")
talkEntry:addResponse("It's your lucky day! You've found the best farmer in town!")
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
talkEntry:addResponse("Guten Tag.")
talkEntry:addResponse("Wie geht es Euch?")
talkEntry:addResponse("Heute scheint Euer Gl�ckstag zu sein, warum? Ihr habt beschlossen bei mir einzukaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Good day there.")
talkEntry:addResponse("How fare you?")
talkEntry:addResponse("It's your lucky day! You've found the best farmer in town!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Guten Tag der Herr, die Dame.")
talkEntry:addResponse("Wie geht es Euch?")
talkEntry:addResponse("Heute scheint Euer Gl�ckstag zu sein, warum? Ihr habt beschlossen bei mir einzukaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Have a magnificent day today. Remember you are beautiful.")
talkEntry:addResponse("Great tidings, friend! See you later.")
talkEntry:addResponse("Remember to tell your friends to come and see Francois Delacroix for all their agricultural needs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Einen sch�nen Tag w�nsche ich Euch. Ihr seid wundersch�n.")
talkEntry:addResponse("L�chelt, bis sp�ter.")
talkEntry:addResponse("Denkt dran euren Freunden zu sagen, sie sollen Francois Delacroix fragen, wenn sie Produkte aus der Landwirtschaft kaufen wollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Have a great day today! You deserve it!")
talkEntry:addResponse("Great tidings! See you later.")
talkEntry:addResponse("Remember to tell your friends to come and see Francois Delacroix for all their agricultural needs!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Einen sch�nen Tag w�nsche ich Euch. Ihr seid wundersch�n.")
talkEntry:addResponse("L�chelt, bis sp�ter.")
talkEntry:addResponse("Denkt dran euren Freunden zu sagen, sie sollen Francois Delacroix fragen, wenn sie Produkte aus der Landwirtschaft kaufen wollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'd feel better if you  brought something.")
talkEntry:addResponse(" I feel a lot better now that you've come!")
talkEntry:addResponse("It's just one of those days, you know?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Ich w�rde mich besser f�hlen, w�rdet ihr etwas einkaufen.")
talkEntry:addResponse("Ich f�hle mich viel besser jetzt wo ihr vorbei gekommen seid.")
talkEntry:addResponse("Es ist einer dieser Tage, Ihr versteht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Francois Delacroix, agricultural goods.")
talkEntry:addResponse("My name is Francois. It's beyond a pleasure to be acquainted with you")
talkEntry:addResponse("Francois Delacroix, it still feels weird every time I say it.")
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
talkEntry:addResponse("Francois Delacroix, Produke aus der Landwirtschaft.")
talkEntry:addResponse("My Name ist Francois. Es ist mir eine Freude Eure Bekanntschaft zu machen")
talkEntry:addResponse("Francois Delacroix. Es klingt noch immer jedes Mal seltsam es zu sagen.")
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
talkEntry:addTrigger("profession")
talkEntry:addResponse("I sell goods such as milk and farmer's tools")
talkEntry:addResponse("I sell that which you need.")
talkEntry:addResponse("I sell homemade agricultural goods.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich verkaufe G�ter wie Milch und Werkzeug f�r Bauern.")
talkEntry:addResponse("Ich verkaufe was immer Ihr braucht.")
talkEntry:addResponse("Ich verkaufe selbstgemachte Landwirtschaftswaren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I sell goods such as milk and farmer's tools.")
talkEntry:addResponse("I sell that which you need.")
talkEntry:addResponse("I sell homemade agricultural goods.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich verkaufe G�ter wie Milch und Werkzeug f�r Bauern.")
talkEntry:addResponse("Ich verkaufe was immer Ihr braucht.")
talkEntry:addResponse("Ich verkaufe selbstgemachte Landwirtschaftswaren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("That's like asking what the sky is, honestly, I don't think I could answer it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Das ist als ob man fragt, was der Himmel sei. Ehrlich gesagt, ich habe keine Ahnung davon.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Francois Delacroix, agricultural good seller.")
talkEntry:addResponse("My name is Francois. It's beyond a pleasure to be acquainted with you")
talkEntry:addResponse(" Francois Delacroix, it still feels weird every time I say it.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Francois Delacroix, Produke aus der Landwirtschaft.")
talkEntry:addResponse("My Name ist Francois. Es ist mir eine Freude Eure Bekanntschaft zu machen")
talkEntry:addResponse("Francois Delacroix. Es klingt noch immer jedes Mal seltsam es zu sagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Business")
talkEntry:addTrigger("Markets")
talkEntry:addTrigger("Tobacco")
talkEntry:addResponse("Tobacco is currently trading at three times the normal price. I'm looking forward to seeing when the price falls and I can count my big profit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesch�ft")
talkEntry:addTrigger("M�rkte")
talkEntry:addTrigger("Tabak")
talkEntry:addResponse("Tabak wird derzeit zum dreifachen Preis gehandelt. Ich freu mich schon darauf, wenn der Preis wieder f�llt und ich gro�en Profit abgreifen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Agriculture")
talkEntry:addTrigger("Farming")
talkEntry:addTrigger("crops")
talkEntry:addResponse("Harvesting crops and tending cattle is something that has always been and always will be. It's the most stable of markets.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Landwirtschaft")
talkEntry:addTrigger("Getreide")
talkEntry:addTrigger("Ackerbau")
talkEntry:addResponse("Der Anbau von Feldf�rchten und Viehhaltung ist etwas das es schon immer gegeben hat und das es immer geben wird. Das ist der best�ndigste Markt von allen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Family")
talkEntry:addResponse("I don't want to talk about them.")
talkEntry:addResponse("Family is not a word that everyone is fond of.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Familie")
talkEntry:addResponse("Ich m�chte dar�ber nicht sprechen")
talkEntry:addResponse("Diese Wort erfreut nich jeden von uns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wife")
talkEntry:addResponse("Hahaha, perhaps someday.")
talkEntry:addResponse("Settle down? Me? Ha, maybe after I'm done making money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ehefrau")
talkEntry:addResponse("Hahaha, vielleicht eines Tages.")
talkEntry:addResponse("Ich? Mich niederlassen? Hahaha, vielleicht wenn ich genug Geld gemacht habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I don't know much of the man, though I can't help but appreciate him for keeping this city safe for all of us who live here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich wei� nicht viel �ber ihn, aber ich komme nicht umhin diesen Mann zu bewundern, der daf�r sorgt das unsere Stadt sicher ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I don't know much of the man, though I can't help but appreciate him for keeping this city safe for all of us who live here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich wei� nicht viel �ber ihn, aber ich komme nicht umhin diesen Mann zu bewundern, der daf�r sorgt das unsere Stadt sicher ist.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("When I was a child I never thought I'd be a city person, but the women here sure are prettier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("As ich kein Kind war, h�tte ich nie gedacht einmal in der Stadt zu leben. Die Frauen hier sind wirklich sch�ner.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Of course I've heard the name, but I know nothing of Galmair or its people.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Den Namen habe ich nat�rlich schon geh�rt, aber ich wei� nichts �ber Galmair und die Leute dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("I've never been.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Da war ich noch nie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I grew up wanting to be like her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Als ich jung war wollte ich so sein wie sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I grew up wanting to be like her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Als ich jung war wollte ich so sein wie sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I've been. It's a little too dry and hot, I prefer the Runewick Breeze.")
talkEntry:addResponse("They have quite a few jewellery makers. I think most of my collection is from Cadomyrian smiths.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Da war ich schon. Es ist zu trocken da. Ich mag das Wetter in Runewick lieber.")
talkEntry:addResponse("Die haben da einige Schmuckh�ndler. Ich denke meine Sammlung wurde von Schmiedemeistern aus Cadomyr angefertigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("On the downside, it's dangerously hot in the Albarian deserts. The upshot, of course, is that the Albarian women are also dangerously hot.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Einerseits ist es in Albarischen W�ste verdammt hei�, andereseits sind Albarische Frauen verdammt hei�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Never been... I have no idea. Everyone keeps asking me about it though, maybe I should go someday.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Da war ich noch nie. Keine Ahnung, die Leute fragen immer. Vielleicht gehe ich eines Tages dorthin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I've lived in this land all my life. I don't love it, but being anywhere else is just uncomfortable.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich habe mein ganzes Leben dort verbracht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I follow Irmorom, obviously. What kind of question is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("G�ttter")
talkEntry:addResponse("Nat�rlich folge ich Irmorom. Was ist denn das f�r eine Frage?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("He keeps me at the top of my craft, which makes me money, which gets all these girls to look my way. How could I be malcontent?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Er verleiht mir Geschick, dadurch verdiene ich Geld und durch das Geld m�gen mich die M�dchen. Wie k�nnte ich da unzufrieden sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("What is there to tell? I'm Runewick's number one agricultural trading pretty boy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Was h�tte ich zu erz�hlen? Ich bin die Nummer Eins unter den H�ndlern in Runewick, wenn es um Landwirtschaftserzeugnisse geht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Francois")
talkEntry:addTrigger("Delacroix")
talkEntry:addResponse("Do you need something? Chances are I sell it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Francois")
talkEntry:addTrigger("Delacroix")
talkEntry:addResponse("Bracht Ihr etwas? Die Chancen stehen gut, dass ich es verkaufe.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Braucht Ihr Werkzeuge? Ich, Francois Delacroix, verkaufe Werkzeuge f�r den Ackerbau.", "Are you interested in new equipment? I, Francois Delacroix, offer farming tools.")
talkingNPC:addCycleText("Ihr sucht wundersch�n warme Felle um dem Winter zu trotzen oder Leder um jedem Schwerthieb standzuhalten? Wendet euch an mich, Francois Delacroix!", "Want beautiful furs to help you endure the coldest of winters? Or perhaps leather to withstand every possible assault! Francois Delacroix is your man!")
talkingNPC:addCycleText("Habt Ihr Hunger? Leidet ihr an Skorbut? Ich, Francois Delacroix, habe ein riesiges Angebot an gesunden Fr�chten und Gem�se! Kommt vorbei!", "Are you hungry? Perhaps you're dying from scurvy? With fresh fruit and vegetables from Francois Delacroix , your gums won't ever be sore nor will you ever lose a tooth again!")
talkingNPC:addCycleText("Ich habe Fr�chte, Ihr wollt Fr�chte? Kauft euer Obst bei mir, Francois Delacroix!", "You want fruits, I have fruits, come get your fruits from me, Francois Delacroix!")
talkingNPC:addCycleText("Ich verkaufe Saatgut f�r alle Jahreszeiten. Plant Ihr, einen neuen Hof und Familie zu gr�nden? Deckt euch zuerst hier ein, bei mir , Francois Delacroix.", "I offer seeds for any season! Are you about to settle down, start a new farm and found a family? First step, come here and prepare yourself with my help - I am Francois Delacroix!")
talkingNPC:addCycleText("Ihr k�nnt Euch kein Fleisch leisten? Milch ist das perfekte Mittel, um Eure Familie ohne Fleisch durchzubringen. Wenn Ihr das Gl�ck habt, euch Fleisch leisten zu k�nnen, es schmeckt auch zu Milch! Kauft bei mir ein, kauft bei Francois Delacroix!", "Can't afford meat? Milk is the perfect substitute to feed your family when you are broke! Get your fresh milk from me, Francois Delacroix.")
talkingNPC:addCycleText("Wie geht es Euch heute? Werft einen Blick auf meine neuesten Waren, Francois Delacroix bietet nur Feinste vom Feinsten an.", "How are you doing today? Check out the latest wares of mine, Francois Delacroix only offers the finest of the finest.")
talkingNPC:addCycleText("Euer liebster H�ndler f�r landwirtschaftliche G�ter, ich, Francois Delacroix bin f�r euch da!", "Your favourite agricultural trader, Francois Delacroix, that's me, yearns to serve your needs!")
talkingNPC:addCycleText("Ihr seid wundersch�ne Leute. Habt einen wundersch�nen Tag!", "You are beautiful people! Have an even more beautiful day!")
talkingNPC:addCycleText("Seid Ihr hungrig, gro�er Kerl? Oder wollt ihr einen Mann gl�cklich machen, h�bsches Fr�ulein? Ich, Francois Delacroix verkaufe das blutigste Fleisch. F�r das Tier in euch!", "Are you hungry, big man? Or do you wish to please your beloved, pretty lady? I, Francois Delacroix, sell the bloodiest meat... feed your wild side!")
tradingNPC:addItem(trade.tradeNPCItem(258,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(312,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(126,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(271,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(249,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(290,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2493,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(154,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(201,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3567,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(778,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(772,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(200,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(15,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(80,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(81,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(302,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(388,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1207,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(199,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2494,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(259,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(728,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(534,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3566,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(779,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(773,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2917,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(291,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4323,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4829,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4326,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4825,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4327,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4325,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4830,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(249,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(290,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2493,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(154,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(201,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(3567,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(200,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(15,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(80,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(81,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(302,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(388,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1207,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(199,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2494,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(259,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(728,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(534,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(3566,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(779,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(773,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2917,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(291,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4323,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4829,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4324,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4322,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4834,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4326,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4825,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4327,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4325,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(4830,"buyPrimary"))
tradingNPC:addNotEnoughMoneyMsg("Schlechte Gesch�fte in letzter Zeit, hmm?", "Bad business recently, hmm?")
tradingNPC:addDialogClosedMsg("Danke und bis bald.", "Thank you and see you soon.")
tradingNPC:addDialogClosedNoTradeMsg("Dann eben nicht.", "Well, nevermind then.")
tradingNPC:addWrongItemMsg("Sowas kaufe ich nicht.", "I don't buy such things.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist der Bauer Francois Delacroix.", "This is NPC is the peasant Francois Delacroix.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 813)
mainNPC:setEquipment(11, 55)
mainNPC:setEquipment(5, 258)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 823)
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
