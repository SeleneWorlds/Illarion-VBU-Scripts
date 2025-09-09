local consequence_quest = require("npc.base.consequence.quest")
local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Morri the cook. Keywords: buy, sell, trade, Profession."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Morri der Koch. Schl�sselw�rter: kaufe, verkaufe, Handel, Beruf."))
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
talkEntry:addResponse("I am selling different meals, just have a look!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
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
talkEntry:addResponse("Ich verkaufe verschiedenstes Essen, schau dich nur um!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addConsequence(consequence_quest(702, "=", 5))
talkEntry:addResponse("Charwis? A pin order? What, now? The pins have already started to corrode? No, thanks. I want new pins, please tell Charwis that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addTrigger("pin")
talkEntry:addTrigger("order")
talkEntry:addConsequence(consequence_quest(702, "=", 5))
talkEntry:addResponse("Charwis? A pin order? What, now? The pins have already started to corrode? No, thanks. I want new pins, please tell Charwis that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 4))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addTrigger("Bestellung")
talkEntry:addTrigger("n�gel")
talkEntry:addConsequence(consequence_quest(702, "=", 5))
talkEntry:addResponse("Charwis? Eine Nagelbestellung? Was h�re ich da, die N�gel beginnen bereits zu rosten? Nein, danke! Ich m�chte neue N�gel, bitte sagt das Charwis.")
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
talkEntry:addResponse("Hrm... Greetings. How can I help you?")
talkEntry:addResponse("#me grumbles moodily, 'Good day'.")
talkEntry:addResponse("Hail Irmorom. Do you want to buy something?")
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
talkEntry:addResponse("Hrm... Gr��e. Wie kann ich Euch helfen?")
talkEntry:addResponse("#me brummt schlecht gelaunt: 'Guten Tag.'")
talkEntry:addResponse("Heil Irmorom. Wollt ihr was kaufen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hrm...Greetings. How can I help you?")
talkEntry:addResponse("#me grumbles moodily, 'Good day'.")
talkEntry:addResponse("Hail Irmorom. Do you want to buy something?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hrm...Gr��e. Wie kann ich Euch helfen?")
talkEntry:addResponse("#me brummt schlecht gelaunt: 'Guten Tag.'")
talkEntry:addResponse("Heil Irmorom. Wollt ihr was kaufen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Bye and enjoy your meal.")
talkEntry:addResponse("Arr... See you soon.")
talkEntry:addResponse("Fare thee well and come again soon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Tsch�ss und guten Appetit.")
talkEntry:addResponse("Arr... Bis bald.")
talkEntry:addResponse("Gehabt Euch wohl und kommt wieder mal bei mir vorbei!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bye and enjoy your meal.")
talkEntry:addResponse("Arr... See you soon.")
talkEntry:addResponse("Fare thee well and come again soon!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Tsch�ss und guten Appetit.")
talkEntry:addResponse("Arr... Bis bald.")
talkEntry:addResponse("Gehabt Euch wohl und kommt wieder mal bei mir vorbei!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Great and how are you?")
talkEntry:addResponse("I'm fine, thanks!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Gro�artig und wie gehts dir?")
talkEntry:addResponse("Mir gehts gut, dankie!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Morri the cook.")
talkEntry:addResponse("The best cook in Galmair, that's me Morri!")
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
talkEntry:addResponse("Ich bin Morri der Koch.")
talkEntry:addResponse("Der beste Koch in Galmair, das bin ich Morri!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't employ anyone, ask someone else!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich stelle niemanden ein, fragt jemand anderen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't employ anyone, ask someone else")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich stelle niemanden ein, fragt jemand anderen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Actually, I am a cook. For a few years I cooked at my cousin's tavern, but now I am dealing with all kinds of food here in Galmair. What is your daily task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Eigentlich bin ich Koch. Hab einige Jahre gro� und fein in meines Vettern Taverne gekocht. Nun handle ich mit allerlei Essbarem hier in Galmair. Was ist Euer Tagwerk?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Actually, I am a cook. For a few years I cooked at my cousin's tavern, but now I am dealing with all kinds of food here in Galmair. What is your daily task?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Eigentlich bin ich Koch. Hab einige Jahre gro� und fein in meines Vettern Taverne gekocht. Nun handle ich mit allerlei Essbarem hier in Galmair. Was ist Euer Tagwerk?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("There is nothing but bad news about Gobaith. What do you say to that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("�ber Gobaith gibts immer nur schlechte Nachricht. Was habt ihr dar�ber zu sagen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Well, what can I sell you?")
talkEntry:addResponse("Arr. Do you want to buy some food?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Is' recht. Was darf ich Euch verkaufen?")
talkEntry:addResponse("Arr. Wollt ihr Essen einkaufen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("orc")
talkEntry:addResponse("Arr. Those green noses are annyoing, every last one of them. Actually, we merchants have to stick together. It is all about business!")
talkEntry:addResponse("Those orcs are smarter than you think, particularly Krudash! Sogg, though, I haven't ever seen him sober.")
talkEntry:addResponse("Arrr.... I don't know. I think it looks like the entire orc pack here in Galmair belongs to the same clan, but on the other hand... well, I don't know whether that's important.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dwarf")
talkEntry:addResponse("What is important to a dwarf? Gold, business and sin-... no... relatives. Therefore, the clan.")
talkEntry:addResponse("What does a dwarf like? His craft, his wife and his beer.")
talkEntry:addResponse("We dwarves are a proud folk. I have to warn you, never insult a dwarf! He will remember even after his sons have grown up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ork")
talkEntry:addResponse("Arr. Die Gr�nschnauzen sind ein �rgernis. Nicht's weiter. Im Grunde m�ssen wir H�ndler zusammen stehen. Es geht ums Gesch�ft, das ist was z�hlt!")
talkEntry:addResponse("Diese Orks sind kl�ger als Ihr denkt. Im besonderen diese Krudash! Aber dieser Sogg, den hab ich noch nie n�chtern gesehen...")
talkEntry:addResponse("Arrr... ich wei� nicht. Aber f�r mich sieht's so aus als w�ren die alle, die Ganze Orkmeute in Galmair von der selben Sippe. Andererseits muss das bei Orks ja auch nichts hei�en.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("zwerg")
talkEntry:addResponse("Was ist einem Zwerg von Wert? Gold, Gesch�fte und Ge-...nein. Verwandte. Also sprich, der Klan.")
talkEntry:addResponse("Was darf ein Zwerg lieben? Sein Handwerk, seine Frau und Bier.")
talkEntry:addResponse("Wir Zwerge sind ein stolzes Volk. Ich will euch warnen, beleidigt ihr einen Zwerg wird er sich noch daran erinnern wenn Eure S�hne erwachsen sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Ha-ha! I've heard that Archmage wears women's clothes! Wool under the chain mail and so on! *laughs*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ha-h! Man sagt sich bei uns Zwergen dieser Erzmagier tr�gt Weiber-Gewand! Wolle unterm Kettenhemd und so nen Kram! *lacht*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ha-ha! I've heard that Archmage wears women's clothes! Wool under the chain mail undies and so on! *laughs*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ha-h! Man sagt sich bei uns Zwergen dieser Erzmagier tr�gt Weiber-Gewand! Wolle unterm Kettenhemd und so nen Kram! *lacht*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick? Aren't they the farmers who fiddle around with magic? They should cultivate bigger tomatoes instead. That is more useful.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick? Sind das nicht diese Bauern, die glauben mit Magie herum murksen zu m�ssen?. Die sollten lieber gr��ere Tomaten z�chten. Damit w�re allen geholfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Guilianni is a nasty fellow. We merchants cut our deals with him carefully.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Don Guilianni ist ein abgebr�hter Gesch�ftsmann. Und wir H�ndler versuchen uns so gut es geht mit ihm zu arrangieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("I want to say, my brother and I could not find a better place than this... except for all the riff-raff. Well, and the buildings are falling down, but business is great.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Ich m�chte sagen, an einen besseren Ort h�tte es mich und meinen Bruder nicht verschlagen k�nnen. Nun gut, hier treibt sich einiges Gesindel herum, und die Mauern sehen ziemlich zerbrechlich aus, aber das Gesch�ft geht ausgezeichnet!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Blue blood! Pah! Bring the human royalty under my axe and I'll show you how blue it is. I tell you, they die just like anyone else! I have seen too many fools on the throne!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Blaues Blut! Pha! Bringt mir diese K�nige der Menschen vor meine Axt und ich demonstriere Euch wie blau es ist. Ich sage Euch, beim sterben ist jeder der Erste! Zu viele Narren hab ich auf dem Thron gesehn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Blue blood! Pah! Bring the human royalty under my axe and I'll show you how blue it is. I tell you, they die just like anyone else! I have seen too many fools on the throne!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Blaues Blut! Pha! Bringt mir diese K�nige der Menschen vor meine Axt und ich demonstriere Euch wie blau es ist. Ich sage Euch, beim sterben ist jeder der Erste! Zu viele Narren hab ich auf dem Thron gesehn!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("They give their wealth and belongings to the dead in Cadomyr. Bury their gold in their crypts! Every dwarf knows that gold is an element for the living. How is it of any use to the dead?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyrs Reichtum geben sie den Toten. Vergraben das Gold in den Krypten! Jeder Zwerg wei� nat�rlich, das Gold das Element der Lebenden ist. Wie sollte es den verstorbenen schon von Nutzen sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar! A terrible county. Ruled by jesters. The people are weak and their kings treat them like livestock.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar! Ein schreckliches Land. Regiert von Narren. Das Volk ist schwach, es ist den K�nigen kaum mehr wert als die Schweine die sie fressen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Gynk! Everyone meets there. What a market! You can find anything there! If only dwarves would not waste their money on drinks and games... *sighs*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Gynk! Hier trifft sich alles Volk, das der Sprache m�chtig ist. Sicher, da kann viel passieren, aber einen Markt gibt es dort! W�rden die Zwerge dort nicht alles Geld versaufen und verspielen... *seufzt*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar? In Salkamar four out of five people claim to be smarter than everyone else. Smart, isn't it? *laughs*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar? In Salkamar behaupten 4 von 5 Leuten, sie sind kl�ger als der durchschnittliche B�rger. Clever nicht wahr? *lacht*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ironsiege")
talkEntry:addResponse("Listen to me, Ironsiege is an impregnable fortress. Saying the gates in the mountain are 'impressive' is an understatement. They are gigantic!")
talkEntry:addResponse("Well, you can find mainly three clans in Ironsiege. The Goldaxe clan, the Ironaxe clan, and last but not least my clan. The Flinthammers! Arr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ironsiege")
talkEntry:addResponse("Last Euch sagen, Ironsiege ist eine uneinnehmbare Festung. Allein die Tore im Berg als 'imposant' zu bezeichnen reicht nicht aus. So gigantisch, erscheinen sie.")
talkEntry:addResponse("Nun, in Ironsiege findet ihr haupts�chlich drei Klans. Den Goldaxtklan, den Eisenherzklan und zu guter letzt meinen Klan. Die Flinth�mmer! Arr!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Listen to me, Irmorom created the dwarves out of a rock. He got this rock as a gift from Ushara. I don't want to know more about gods. Except...well, Adron should be praised for cheese and beer!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Last Euch sagen, Irmorom schuf einst die Zwerge aus einem St�ck Felsen. Jenen hatte er von Ushara zum Geschenk bekommen. Und viel mehr m�chte ich von den G�ttern nicht wissen m�ssen. Au�er...nun ja Adron sei's gedankt f�r K�se und Bier!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Toast! Toast to Adron. Praised be his beer and cheese.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Trinkt! Trinken wir auf Adron. Gepriesen sein Bier und K�se.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Hail Irmorom. Protect my brother and his clan. Be praised, the creator of the dwarves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Heil Irmorom. Sch�tze meinen Bruder und unseren Klan. Gedankt sei dir, denn du bist der Zwergen Sch�pfer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Honour to you, Mother of the rock, stone and soil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ehre dir, Mutter der Felsen, Steine und Erde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I could tell you a lot about cooking, but sadly I'm really busy right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich k�nnte dir eine Menge �ber das Kochen erz�hlen, aber ich bin im Moment leider sehr besch�ftigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("morri")
talkEntry:addResponse("Arr. Bura'zak-ka! Welches Essen wollt Ihr mir abkaufen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("morri")
talkEntry:addResponse("Arr. Bura'zak-ka! What meal would you like to buy?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me brummt schlecht gelaunt und wirft einen missmutigen Blick auf die Stra�e.", "#me grumbles moodily and looks at the street with a discontent glance.")
talkingNPC:addCycleText("#me knurrt kopfsch�ttelnd: 'Dieser Fisch ist niemals frisch...'", "#me grumbles and shakes his head, 'This fish is not fresh...'")
talkingNPC:addCycleText("#me r�mpft die Nase.", "#me wrinkles his nose.")
talkingNPC:addCycleText("#me h�lt sich die Nase zu und streckt die Zunge heraus: 'Igittigitt!'", "#me covers his nose and shows his tongue, 'Yuck!'")
talkingNPC:addCycleText("#me fasst sich mit einer verzweifelt wirkenden Geste, beidh�ndig in den langen schwarzen Bart und zieht daran. Dabei gibt er ein lautes Grunzen von sich.", "#me pulls his long black beard with both hands despairingly and grunts loudly.")
talkingNPC:addCycleText("Essen! Feinste Gerichte aller Art! Tretet n�her und deckt Euch ein!", "Food! Finest dishes of every kind! Come closer, go ahead take a look and buy!")
talkingNPC:addCycleText("Frisches Brot! Schmackhafte Kuchen! Unverw�stliche Kekse!", "Fresh bread! Tasty cakes! Indestructible cookies!")
talkingNPC:addCycleText("Wurst mit Zwiebeln, Kohlsuppe! Bei mir k�nnt ihr alles kaufen!", "Sausages with onion, cabbage soup! You can find everything here!")
tradingNPC:addItem(trade.tradeNPCItem(121,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(227,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(429,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(51,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2495,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2031,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(191,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(453,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3568,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(49,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3631,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3609,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(454,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(353,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(303,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3051,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3573,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3715,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3716,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2459,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(556,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1154,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2277,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2922,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3570,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2456,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2923,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2278,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2276,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3569,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(306,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(455,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3916,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4260,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4264,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3914,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3915,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4265,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3606,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3709,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3710,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3713,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3714,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4295,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(4819,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(191,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(453,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3568,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(49,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3631,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3609,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(454,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(353,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(303,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3571,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(354,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3723,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1153,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3610,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3051,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3573,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3715,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3716,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2459,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(556,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1154,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2277,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2922,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3570,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(557,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(555,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(559,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(554,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1155,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2456,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2923,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2278,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2276,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3569,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3572,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3712,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3711,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1152,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(306,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(455,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3916,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4260,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4264,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3914,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3915,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4265,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4262,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4258,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3606,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3709,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3710,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3713,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3714,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4205,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4206,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4207,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4295,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4319,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4321,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4297,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4299,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(4819,"buySecondary"))
tradingNPC:addNotEnoughMoneyMsg("Du kannst dir das nicht leisten!", "You can not afford that!")
tradingNPC:addDialogClosedMsg("Danke, komm bald wieder!", "Thanks, come again!")
tradingNPC:addDialogClosedNoTradeMsg("Auf bald!", "Farewell!")
tradingNPC:addWrongItemMsg("Nichts da.", "No way.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein grimmiger Zwerg mit einem pr�chtigen schwarzen Bart und einem kahlem Kopf.", "A serious looking dwarf with an impressive black beard and a bald head.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(3, 101)
mainNPC:setEquipment(9, 2111)
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
