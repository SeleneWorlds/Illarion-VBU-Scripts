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
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This is 'Big Nik', he is a tool and supply trader. Keywords: sell, buy, trade, Hello, profession, laws."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist der Werkzeug- und Rohstoffh�ndler 'Big Nik'. Schl�sselw�rter: kaufe, verkaufe, Handel, Hallo, Beruf, Gesetze."))
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
talkEntry:addResponse("I trade with rocks and stones that are as hard as my muscles!")
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
talkEntry:addResponse("Ich handel mit Felsen und Steinen, die so hart sind wie meine Muskeln!")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addConsequence(consequence_quest(702, "=", 2))
talkEntry:addResponse("Ah yes, thank you for passing the message. Go talk to Charwis, I'm sure he will reward you for your service.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addTrigger("ruby")
talkEntry:addTrigger("gem")
talkEntry:addConsequence(consequence_quest(702, "=", 2))
talkEntry:addResponse("Ah yes, thank you for passing the message. Go talk to Charwis, I'm sure he will reward you for your service.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(702, "=", 1))
talkEntry:addTrigger("charwis")
talkEntry:addTrigger("irongate")
talkEntry:addTrigger("rubin")
talkEntry:addTrigger("edelstein")
talkEntry:addConsequence(consequence_quest(702, "=", 2))
talkEntry:addResponse("Ah ja, vielen Dank dass ihr die Nachricht �berbracht habt. Geht und sprecht mit Charwis, ich bin sicher er wird euch f�r eure Arbeit belohnen.")
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
talkEntry:addResponse("#me grins as he waves, 'What can I do for you?'")
talkEntry:addResponse("#me lifts his head, 'Hello there, you here to buy or sell?'")
talkEntry:addResponse("Hello, you look like someone who knows a good price for tools, that's why you're here, right?")
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
talkEntry:addResponse("#me grinst und winkt: 'Was kann ich f�r euch tun?'")
talkEntry:addResponse("#me hebt den Kopf: 'Heda, wollt ihr etwas kaufen oder loswerden?'")
talkEntry:addResponse("Hallo, ihr seht aus wie jemand, dem ich einen guten Preis f�r Werkzeuge machen kann. Deshalb seid ihr doch hier?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Yeah, yeah, you here to buy or sell?")
talkEntry:addResponse("#me scratches his cheek as he looks over, 'Want to see my wares?'")
talkEntry:addResponse("Hello and all that, why don't you spend some of that coin you have with me!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Jaja, wollt ihr nun etwas kaufen oder loswerden?")
talkEntry:addResponse("#me kratzt sich am Kinn und schaut umher: 'Seid ihr wegen meinen Waren hier?'")
talkEntry:addResponse("Hallo und so, warum gebt ihr nicht einfach etwas Geld bei mir aus!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Aye... another time.")
talkEntry:addResponse("Come back again now!")
talkEntry:addResponse("#me chuckles, 'I'll be seeing you again I hope.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ja, bis zum n�chsten mal.")
talkEntry:addResponse("Kommt schon zur�ck!")
talkEntry:addResponse("#me lacht: 'Wir werden uns wiedersehen, da bin ich mir sicher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Aye... another time.")
talkEntry:addResponse("Come back again now!")
talkEntry:addResponse("#me chuckles, 'I'll be seeing you again.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addResponse("Ja, bis zum n�chsten mal.")
talkEntry:addResponse("Kommt schon zur�ck!")
talkEntry:addResponse("#me lacht: 'Wir werden uns wiedersehen, da bin ich mir sicher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I do alright, I would do better if you bought something!")
talkEntry:addResponse("Why do you ask, you wont get a better price for small talk.")
talkEntry:addResponse("I'm good, all the better for making a trade with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addResponse("Mir geht es gut und es w�rde mir noch besser gehen, wenn ihr etwas kaufen w�rdet.")
talkEntry:addResponse("Warum fragt ihr, denkt ihr, dass ihr durch Geschw�tz einen besseren Preis bekommt?")
talkEntry:addResponse("Gut, genau richtig, um mit euch zu handeln.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("#me chuckles, 'Nik Nilo, but people call me Big Nik.")
talkEntry:addResponse("Big Nik and don't you forget it!")
talkEntry:addResponse("You mean you never heard of me, I'm Big Nik Nilo!")
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
talkEntry:addResponse("#me lacht auf: 'Nik Nilo, aber die Leute nennen mich Big Nik.")
talkEntry:addResponse("Big Nik, vergesst das besser nicht.")
talkEntry:addResponse("Ihr habt also noch nie von mir geh�rt? Ich bin Big Nik Nilo!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me laughs, 'What? I'm a builders merchant, I have tools not quests.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("#me lacht: 'Was? Ich bin ein Baustoffh�ndler. Ich habe Werkzeuge, keine Abenteuer.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("#me shakes his head as he laughs, 'Look, buy or sell... or move on, I don't have time for quests.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("#me sch�ttelt den Kopf und lacht: 'Schaut, kauft was oder haut ab, ich habe keine Zeit f�r Abenteuer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("#me grins, 'I buy and sell tools and building supplies.'")
talkEntry:addResponse("I'm a builders merchant.")
talkEntry:addResponse("#me smiles, 'Tools, building supplies, coal, ores and wares I've got it all to sell... and I buy as well.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("#me grinst: 'Ich kaufe und verkaufe Werkzeuge und Baumaterial.'")
talkEntry:addResponse("Ich bin ein Baustoffh�ndler")
talkEntry:addResponse("#me l�chelt: 'Werkzeuge, Baumaterial, Kohle, Erze und andere Waren, ich hab alles im Angebot.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Well I'm a trader, can't you tell?")
talkEntry:addResponse("I buy and sell tools, building supplies and other things.")
talkEntry:addResponse("I do a little buying and a lot of selling. Why, what are you after?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Nun, ich bin ein H�ndler, so viel steht fest.")
talkEntry:addResponse("Ich kaufe und verkaufe Werkzeuge, Baumaterial und anderes.")
talkEntry:addResponse("Ich kaufe ein bisschen und verkaufe eine Menge. Was braucht ihr?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addResponse("Wasn't that a little island?")
talkEntry:addResponse("#me looks up in thought, 'I've heard of that place, can't think where it is though.'")
talkEntry:addResponse("Gobaith, don't know where it is and I don't care.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addResponse("War das nicht irgendsoeine Insel?")
talkEntry:addResponse("#me schaut gedankenverloren hoch: 'Ich habe von diesem Ort geh�rt, aber nicht, wo er ist.")
talkEntry:addResponse("Gobaith, wen k�mmerts?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Ah, yes. Now buy something!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Ja, wunderbar. Nun kauft endlich was!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Laws")
talkEntry:addResponse("Haha, what laws? Do as you please, just don't get caught!")
talkEntry:addResponse("Treat others as you would be done by, else you will have to pay them compensation.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addResponse("Haha, Gesetze? Macht was ihr wollt, aber lasst euch nicht erwischen!")
talkEntry:addResponse("Behandelt andere so wie sie euch behandeln, sonst m�sst ihr nachher noch Schadensersatz bezahlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tool")
talkEntry:addResponse("My tools will help you build whatever you want in no time!")
talkEntry:addResponse("Yes, for this thing called 'work', have a look at my stock.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Werkzeug")
talkEntry:addResponse("Mein Werkzeug wird dir helfen zu bauen, was immer du m�chtest!")
talkEntry:addResponse("Ja, Werkzeug f�r diese Sache, die man 'Arbeit' nennt, schaut sie euch an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Big Nik")
talkEntry:addResponse("#me scratches his knee casually, 'Well, Big Nik is my maiden's name, if you know what I mean?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Big Nik")
talkEntry:addTrigger("Gro� Nik")
talkEntry:addResponse("#me kratzt sich gelassen am Knie 'Nun, Big Nik ist mein M�dchenname. Wenn ihr versteht, was ich meine.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("location")
talkEntry:addTrigger("town")
talkEntry:addTrigger("village")
talkEntry:addResponse("I'm right in front of you, here in Galmair!")
talkEntry:addResponse("Galmair, where else!")
talkEntry:addResponse("Only the best town around these parts, Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ort")
talkEntry:addTrigger("Stadt")
talkEntry:addTrigger("Dorf")
talkEntry:addResponse("Ich bin genau hier, hier in Galmair!")
talkEntry:addResponse("Galmair, was sonst!")
talkEntry:addResponse("Die beste Stadt in diesen Landen, Galmair!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("trader")
talkEntry:addTrigger("merchant")
talkEntry:addTrigger("collegue")
talkEntry:addTrigger("vendor")
talkEntry:addTrigger("market")
talkEntry:addResponse("Need anything? Ask around. In Galmair, you can get anything. And when I say 'anything', I mean anything!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("h�ndler")
talkEntry:addTrigger("kollege")
talkEntry:addTrigger("h�ker")
talkEntry:addTrigger("markt")
talkEntry:addResponse("Ihr sucht etwas? Fragt herum. In Galmair bekommt man alles. Und wenn ich 'alles' sage, meine ich alles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("All light and wisdom, what a load of dung! He is just like any other pompous mage in Runewick.")
talkEntry:addResponse("The Archmage of Runewick thinks the light shines out of his bum!")
talkEntry:addResponse("Just another mage in Runewick with a big title that thinks he is something special. Pah! Same as all the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Wissen und Licht, was f�r ein Unfug. Er ist einfach nur ein Scharlatan aus Runewick.")
talkEntry:addResponse("Der Erzmagier von Runewick, er denkt, das Licht w�rde aus seinem Hinter strahlen!")
talkEntry:addResponse("Nur noch ein Magier in Runewick mit gro�em Titel, er denkt, er ist etwas besondere. Pah! Genausoein Versager wie die anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("All light and wisdom, what a load of dung. He is just like any other pompous mage in Runewick.")
talkEntry:addResponse("The Archmage of Runewick thinks the light shines out of his bum!")
talkEntry:addResponse("Just another mage in Runewick with a big title that thinks he is something special. Pah! Same as all the others.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Wissen und Licht, was f�r ein Unfug. Er ist einfach nur ein Scharlatan aus Runewick.")
talkEntry:addResponse("Der Erzmagier von Runewick, er denkt, das Licht w�rde aus seinem Hinter strahlen!")
talkEntry:addResponse("Nur noch ein Magier in Runewick mit gro�em Titel, er denkt, er ist etwas besondere. Pah! Genausoein Versager wie die anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("What a horrible place, full of scribes, mages and the learned. Supposed to be a place of wisdom, arrogance more like.")
talkEntry:addResponse("Nice place to look at, but wouldn't want to live there.")
talkEntry:addResponse("#me grins, motioning a hand to the surrounding area, 'Pah! Runewick, you don't want to know about that place when you've got Galmair!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Was f�r ein ekliger Ort voll von Schreiberlingen, Magiern und Gelehrten. Eigentlich ein Ort der Weisheit, ist es mehr ein Ort der Hochn�sigkeit.")
talkEntry:addResponse("Sieht schick aus, aber ich w�rde da nicht leben wollen.")
talkEntry:addResponse("#me grinst und zeigt mit seiner Hand auf die Umgebung: 'Pah! Runewick, wen interessiert das schon, wenn man Galmair sieht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Aye, he is alright as long as you stay on his good side, he runs this place.")
talkEntry:addResponse("Some people say he killed his father to rule this place, me, I reckon it's probably true.")
talkEntry:addResponse("#me chuckles, 'He is firm but fair if you stay on his good side, he keeps this town in free order. That is just how I like it, its good for trade.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Er ist in Ordnung, solange man es sich mit ihm nicht verscherzt. Er hat hier das sagen.")
talkEntry:addResponse("Manche sagen, er h�tte seinen Vater umgebracht um hier das Kommando zu �bernehmen, mag was wahres dran sein.")
talkEntry:addResponse("#me lacht: 'Er ist hart aber fair, wenn man es sich nicht mit ihm verscherzt. Er h�lt die Z�gel locker, so mag ich das; ist gut f�r das Gesch�ft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me takes in a deep breath, 'Smell that, no place smells like that. I love this town, it's all for the free man.'")
talkEntry:addResponse("It can be a little rough around here some nights, but every man and some of the women need to let off a little steam.")
talkEntry:addResponse("If you live around here, you are a free man. Around here do as you want, just don't upset anyone bigger than you... and I am pretty big.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("#me atmet tief durch: 'Riecht ihr das, kein Ort riecht so gut. Ich liebe diesen Geruch der Freiheit.'")
talkEntry:addResponse("Es kann hier nachts schonmal ruppig zugehen, aber jeder Mann und einige Frauen m�ssen auch einfach mal Dampf ablassen d�rfen.")
talkEntry:addResponse("Wenn ihr hier lebt, seid ihr freier Mann. Macht, was ihr wollt, solange ihr niemanden gegen euch aufbringt, der st�rker ist als ihr. Und ich bin ziemlich stark.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("queen")
talkEntry:addResponse("Don't know much about her, ain't she the Queen of Cadomyr?")
talkEntry:addResponse("I hear she is a right witch, that Queen of Cadomyr.")
talkEntry:addResponse("From what I hear she is quite the woman, bit of a witch though, but some men like that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nigin")
talkEntry:addResponse("Viel wei� ich nicht �ber sie, ist sie nicht die K�nigin von Cadomyr?")
talkEntry:addResponse("Ich hab geh�rt, sie ist ein ziemliches Biest, die K�nigin von Cadomyr.")
talkEntry:addResponse("Von dem, was ich geh�rt habe, ist sie ein echtes Weibsbild, aber auch ein Biest. Manche M�nner m�gen das...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Don't know much about her, ain't she the Queen of Cadomyr?")
talkEntry:addResponse("I hear she is a right witch, that Queen of Cadomyr.")
talkEntry:addResponse("From what I hear she is quite the woman, bit of a witch though, but some men like that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Viel wei� ich nicht �ber sie, ist sie nicht die K�nigin von Cadomyr?")
talkEntry:addResponse("Ich hab geh�rt, sie ist ein ziemliches Biest, die K�nigin von Cadomyr.")
talkEntry:addResponse("Von dem, was ich geh�rt habe, ist sie ein echtes Weibsbild, aber auch ein Biest. Manche M�nner m�gen das...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("It's a nice place, but too many laws for me, I'm a free man not a slave to laws and Royals.")
talkEntry:addResponse("#me points to the ground, 'See, here a man can be what he wants, in Cadomyr you have a place and that's it for life. You live in the gutter, you die there.")
talkEntry:addResponse("Good place, if you get into trouble, you will end up dead or in jail.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ein netter Ort, aber zuviele Gesetze f�r meinen Geschmack. Ich bin ein freier Mann und kein Sklave der Br�uche und Adeligen.")
talkEntry:addResponse("#me zeigt auf den Boden: 'Seht, hier kann ein Mann sein, was er will, in Cadomyr kriegt jeder einen Platz zugewiesen und das f�r das ganze Leben. Wer im Dreck lebt, stirbt dort.")
talkEntry:addResponse("Eigentlich ein guter Ort, wer �rger macht, stirbt oder wird in den Kerker geworfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ah, good for trading that place, big harbour town is Ann-Korr and the oldest of the Albarian towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ah, ein guter Platz zum Handeln, ein gro�er Hafen dort ist Ann-Korr, die �lteste albarische Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("If you're looking for gods, they are the towns to find. It is said the Gynkeesh have a temple for every god you can think of.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Wenn ihr nach den G�ttern sucht, schaut bei den Gynkeesh. Sie haben einen Tempel f�r jeden erdenklichen Gott.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ah the town of the sun as it is called. Used to be just a fishing village now its a place of poets, art and a world renowned academy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ah, die Stadt an der Sonne, so sagt man. War mal ein Fischerdorf, jetzt soll das ein Ort der Poeten, K�nstler und Magier sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I thank Irmorom for good business every day.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich danke Irmorom jeden Tag f�r mein erfolgreiches Gesch�ft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom is your best bet if you want good business.")
talkEntry:addResponse("Aye I have trust in the gods, Irmorom has always been good to me.")
talkEntry:addResponse("Best save a coin and offer it to Irmorom if you want to prosper in this life.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom, der Gott der Wahl, wenn man ein gutes Gesch�ft haben will.")
talkEntry:addResponse("Ja, ich vertraue den G�ttern, Irmorom hat es immer gut mit mir gemeint.")
talkEntry:addResponse("Spart einen Groschen und opfert ihn Irmorom, wenn ihr Erfolg haben wollt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("#me makes an inviting gesture and lowers his voice, 'I'll tell you something, buy something or go away!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("#me winkt einladend und senkt dann die Stimme: 'Ich sag dir was, kauf was oder verschwinde!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("obi")
talkEntry:addResponse("What did you say?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("obi")
talkEntry:addResponse("Was habt ihr gesagt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("animal food")
talkEntry:addResponse("No discount on that!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tiernahrung")
talkEntry:addResponse("Darauf gibt es hier keinen Rabatt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nik")
talkEntry:addTrigger("Nilo")
talkEntry:addResponse("Everyone calls me Big Nik. Well, my friends do. Everyone is my friend here in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nik")
talkEntry:addTrigger("Nilo")
talkEntry:addResponse("Jeder nennt mich Big Nik. Jedenfalls tun das meine Freunde. Und hier in Galmair ist jeder mein Freund.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Auch mit wenig Schotter bekommst du deine Steine hier billig!", "My prices are cheap as rocks, get your stones here!")
talkingNPC:addCycleText("Wenn ihr anderen eine Grube graben wollt, hier gibt es die Schaufeln daf�r!", "Don't dig around, get your shovel here!")
talkingNPC:addCycleText("Mein Erz ist was dein Herz begehrt!", "Need some ore? I've got it and more!")
talkingNPC:addCycleText("Steine so g�nstig, dass eure Augen funkeln werden.", "Stones at a price that will make your eyes sparkle!")
talkingNPC:addCycleText("Meine Spitzhacken gleiten durch den Stein wie durch Butter!", "Want a pick, mine cut through stone as if it was butter!")
talkingNPC:addCycleText("#me winkt aufgeregt mit der Hand: 'Kommt her, kommt alle, hier gibt es Werkzeuge und Baumaterial.'", "#me waves his hand up, 'Come one, come all, get your tools and trade supplies here!'")
talkingNPC:addCycleText("#me wischt sich die Stirn ab.", "#me wipes his forehead with the back of an arm.")
talkingNPC:addCycleText("#me spielt mit einem Goldnugget, er wirft es hoch und f�ngt es anschlie�end.", "#me plays with a nugget, tossing it up then catching it")
talkingNPC:addCycleText("#me formt mit seinen H�nden einen Trichter und ruft: 'Nur keine Scheu, ich hab Geld wie Heu!'", "#me holds a hand to the side of his mouth as he calls, 'Don't be shy, come and buy!'")
talkingNPC:addCycleText("Wir geben ihrer Zukunft ein Zuhause!", "We give your future a home!")
talkingNPC:addCycleText("Wie, wo, was, wei�... Big Nik!", "How, where, what, who knows... Big Nik!")
tradingNPC:addItem(trade.tradeNPCItem(2751,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(737,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2763,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2535,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2550,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(104,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(236,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(21,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(22,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2536,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1062,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(234,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(251,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(255,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(252,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(253,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(256,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1266,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(733,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(735,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2535,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2550,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(104,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(236,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2571,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(21,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(22,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2536,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1062,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(234,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2534,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(251,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(255,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(252,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(253,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(256,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(257,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(254,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(1266,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(733,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(735,"buyPrimary"))
tradingNPC:addNotEnoughMoneyMsg("Ihr solltet eine Lohnerh�hung beantragen.", "You should try to increase your wage.")
tradingNPC:addDialogClosedMsg("Das hat sich gelohnt.", "That was worth it.")
tradingNPC:addDialogClosedNoTradeMsg("Hat sich nicht recht gelohnt.", "That wasn't worth it.")
tradingNPC:addWrongItemMsg("Lohnt sich nicht.", "Not worth it.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein hoch gewachsener Mensch. Seine Haare sind staubig und verschmutzt durch Kohle und Steine.", "A tall man. His hair is dusty and dirty from mining coal and stone.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 812)
mainNPC:setEquipment(11, 193)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 366)
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
