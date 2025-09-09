local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Brute Booze a famous orcish adventurer. Keywords: Hello, towns, heroic deeds, tell something"))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Brute Booze ein ber�hmter orkischer Gl�cksritter. Schl�sselw�rter: Hallo, St�dte, Heldentaten, erz�hl etwas"))
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
talkEntry:addResponse("Greetings! Are you travelling as well?")
talkEntry:addResponse("Good day to you. Are you on a great journey? ")
talkEntry:addResponse("I welcome you!")
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
talkEntry:addResponse("Seid mir gegr��et! Ihr seid wohl auch auf Reise?")
talkEntry:addResponse("Guten Tag, w�nsche iche. Befindigt Ihr Euch auf grosser Fahrt?")
talkEntry:addResponse("Seid mir willkommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greetings! Are you travelling as well?")
talkEntry:addResponse("Good day to you. Are you on a great journey?")
talkEntry:addResponse("I welcome you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Seid mir ger��et! Ihr seid wohl auch auf Reise?")
talkEntry:addResponse("Guten Tag, w�nsche iche. Befindigt Ihr Euch auf grosser Fahrt?")
talkEntry:addResponse("Seid mir willkommen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Save Travel!")
talkEntry:addResponse("...or like the southern lizard folk say: May clear waters surround you.")
talkEntry:addResponse("May your feet walk in good shoes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Sicheres Reisen!")
talkEntry:addResponse("... oder wie die s�dlichen Echsenmenschen sprechen: 'M�gt ihr von reinem Wasser umgebigt sein.'")
talkEntry:addResponse("Iche will Euch gute Stiefel an die F��e w�nsch-higen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Save Travel!")
talkEntry:addResponse("...or like the southern lizard folk say: May clear waters surround you.")
talkEntry:addResponse("May your feet walk in good shoes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Sichere Reise!")
talkEntry:addResponse("... oder wie die s�dlichen Echsenmenschen sprechen: 'M�gt ihr von reinem Wasser umgebigt sein.'")
talkEntry:addResponse("Iche will Euch gute Stiefel an die F��e w�nsch-higen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Yes! Old Brute is feeling great. Sometime I will leave for a new adventure.")
talkEntry:addResponse("Oh, it is not important how I'm feeling! Tell me, how are you?")
talkEntry:addResponse("I feel like I felt on great days, back then, when I was still a young orc.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Ja-h! Dem alten Brute geht's pr�chtigens. Irgendwann werde iche wohl zu einem neuen Abenteuer aufbrechen.")
talkEntry:addResponse("Ach, das iset doch nicht wichti-hig, wie's mir geht! Sagt mir, wie gehtigt's Euch?")
talkEntry:addResponse("Es geht mir wie an gro�en Tagen. Einst als iche noch Orkling war.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am the famous Brute Booze! A living legend and famous as well! I'm sure you have heard of my deeds.")
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
talkEntry:addResponse("Iche binne der ber�hmte Brute Booze! Lebendihige Legende und Ber�hmtheit! Sicherheitlich habt ihr von meinen Taten geh�rigt.")
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
talkEntry:addResponse("Oh, yes! Keep asking people for work and tasks, and one day you will become great hero, just like myself. However I don't have any work for you at the moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Hach, ja-ja! Fraget immerhig alle Leute nach Arbeit und Aufgaben. Dann werdet auch Ihr eines Tagiges ein ebenso gro�er Held sein, wie iche es bin. Allerdings habe iche im Moment keine Arbeit f�-h�r Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Oh, yes! Keep asking people for work and tasks, and one day you will become great hero, just as I am. However I don't have any work for you at the moment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Hach, ja-ja! Fraget immerhig alle Leute nach Arbeit und Aufgaben. Dann werdet auch Ihr eines Tagiges ein ebenso gro�er Held sein, wie iche es bin. Allerdings habe iche im Moment keine Arbeit f�-h�r Euch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("Im not a king, not a smith, not a peasant... I live for adventures.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Binne kein K�nig. Binne kein Schmied. Binne kein Bauer. Mein Leben iset das Abenteuer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("Im not a king, not a smith, not a peasant... I live for adventures.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Binne kein K�nig. Binne kein Schmied. Binne kein Bauer. Mein Leben iset das Abenteuer.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Of course, even on Gobaith I drank a flat beer. Many call it Gobiath, but the truth is the name got distorted over time having been copied from maps so many times. It's name is GobAIth.")
talkEntry:addResponse("Of course, even on Gobaith I drank a flat beer. It was a small, inconspicuous island, but there was always something exciting to experience.")
talkEntry:addResponse("Of course, even on Gobaith I drank a flat beer. An inconspicuous piece of land, but filled with great men of honour and bravery.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Sicherlin, selbst auf Gobaith drank iche ein schales Bier. Viele meinen es hie�e Gobiath, doch tats�chlich wurde der Name in der oft abgezeichneten Karte falsch geschriebigt. Es hei�t GobAIth.")
talkEntry:addResponse("Sicherlin, selbst auf Gobaith drank iche ein schales Bier. Es war eine kleine unscheinbare Insel, dennoche gab es immer viel Spannendes zu erlebigen.")
talkEntry:addResponse("Sicherlin, selbst auf Gobaith drank iche ein schales Bier. Ein unscheinbarer Flecken, doch bef�llt mit gro�igen M�nnern voll Ehre und Mut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("That sounds very well in my ears.")
talkEntry:addResponse("Great!")
talkEntry:addResponse("That's a very nice thing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Das klinghigt sehr wohl in meinen Ohren.")
talkEntry:addResponse("Grossartig!")
talkEntry:addResponse("Eine sehr feine Sache iset das.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("town")
talkEntry:addTrigger("village")
talkEntry:addTrigger("city")
talkEntry:addTrigger("cities")
talkEntry:addResponse("Many lands I saw and even more tales I heard. Orcish towns like Kroch'Gurak, Fireshine, Judgement's Flame and Light of Khaari! Brute Booze drunk almost everywhere. In Firnismill, Pennymill but never in Oldwillows. The strongholds of the dwarvlings! Sevenhill, Storm's Keep and Arn-Gharrach. The stormy town Kjelt! The icy Karras, the old Ann-Korr and famous Kang-Arr! Myr-Tobar the town made of jade. Oldford, Fennsworth, Falmarha, Nubris, Mitsobar and Koldamar - all towns of the human folk. And last Lor-Angur realm of magics.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stadt")
talkEntry:addTrigger("St�dte")
talkEntry:addTrigger("Dorf")
talkEntry:addTrigger("D�rfer")
talkEntry:addResponse("Schon viele L�nder habe ich geseh-higt und von noch mehr kennige ich Geschichten! Orkst�dte wie Kroch'Gurak, Fireshine, Judgement's Flame, Licht von Khaari! �berall habige ich schon gesoffen. Im gr�nigen Firnism�hle und in Pfennigm�hle war ich auch. Aber niemals in Altweiden. Und die Festungen der Zwerglinge! Siebenberg, Storm's Keep und Arn-Gharrach. Die st�rmige Stadt Kjelt! Das frostigige Karras. Das alte Ann-Korr und das ber�hmte Kang-Arr! Myr-Tobar die Stadt aus Jade und Khenserra. Altfurten, Fennsworth, Falmarha, Nubris, Mitsobar und Koldamar. Alles St�dte der Menschen. Und zuletzigt Lor-Angur, das Magierreich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("heroic")
talkEntry:addTrigger("deed")
talkEntry:addResponse("Three winters ago, Brute Booze slayed the snake beast, Myr Tobars! It's body was as thick as an oak's trunk and was as long as any number of men. As thanks for slaying the beast, the High Priest gave Brute Booze his daughter to marry!")
talkEntry:addResponse("Seven winters ago, I brought down the curse of Kang-Arr. A bear big enough for three Norodaj warriors, with spikes as long as arms covering its body. On that day Prince Aramar Ingelfsen of Kanthun, appointed me travelling knight of his court.")
talkEntry:addResponse(" Once, as I was travelling the icy lands of Karras, a demonic Wyrm was threatening the land. Many warriors had lost their lives to the beast, but eventually it was speared by united force. From this day on, the people of Karras' Nordanaj, greeted me with respect and honour.")
talkEntry:addResponse("Four winters ago, the court magician of Falmarha's triumvirate, managed with my help to stake Lad'Nothratar the Butcher, an ancient vampire, whose death granted me the title 'Honourable Mage of Falmarhas' ")
talkEntry:addResponse("Huzza! Since one year now, I, Brute Booze, count amongst my possessions the coppery fur of the lion Azzor, who once devoured dozens of brave warriors from Nubris. They constructed a copper monument of this very battle, in front of Malachin's temple, in my honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Heldentat")
talkEntry:addTrigger("Taten")
talkEntry:addResponse("Vor drei Wintern, erschlug Brute Booze die Schlangenbestie, Myr Tobars! Ihr Leib wahr-higte so dick wie der einer Eiche und ungez�hligte Mann lang. Zum dank gab der Hochpriester, Brute Booze seine Tochter zum Weib!")
talkEntry:addResponse("Sieben Winter iset es her, da erlegte iche den Fluch Kang-Arr's. Ein B�r gro� f�r drei Norodaj-Krieger, �bers�het mit armlangen Stacheln. An jenem Tag ernannte mich F�rst Aramar Ingelfsen von Kathun zum fahrigenden Ritter seines Hofes.")
talkEntry:addResponse("Einst, als ich im eisigen Karras war, bedrohhigte ein d�monischer Wyrm das Land. Viele Krieger mussten sterben, doch endlich spie�te man das Untier mit geeinigter Kraft auf. Seit da an geno� iche Ansehen und Ehre unter Karras' Norodaj.")
talkEntry:addResponse("Vor vier Wintern, gelang es den Hofmagiern des Triumvirats in Falmarha, mit meiniger Hilfe Lad'Nothratar den Metzger zu pf�hlen. Ein altert�mlicher Vampir, dessen Tod, iche den Ehrentitel 'Ehrenhafter Magier Falmarhas' verdankige.")
talkEntry:addResponse("Hossa! Seit einem Jahr besitze iche, Brute Booze das kupferige Fell des L�wen Azzors, der einst dutzende mutige Krieger Nubris' verschlang. Mir zu Ehren steht ein kupferiges Abbild des Kampfes vor einem der Tempel Malachins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kroch")
talkEntry:addTrigger("Gurak")
talkEntry:addResponse("Kroch'Gurak! The winter camp of the wild clans is a colossal, cavernous construct, steeped in the rhythmic sound of drums. It is full of orcs, herding cattle and the smell of bean brandy!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fireshine")
talkEntry:addResponse("Fireshine! The Dragon castle of the Flame orcs. Carved in black lava-stone, the orcs of Khor-Anthalatosh, bearers of the Inner Flame, are lead by the Dragon of the North. This fortress is literally, illuminating. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Judgement")
talkEntry:addTrigger("Flame")
talkEntry:addResponse("Judgement's Flame is a monastery castle, inhabited by the Flame orcs. Three times a day, the loud, resounding sound of horns, is heard through the temples, calling the paladins and monks to prayer. The inner part of the city is off-limits to travellers though. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Khaari")
talkEntry:addResponse("Let me tell you, the Light of Khaari is a Flame orc city. The Temple of Flames is enthroned above it and the shine of the temples Dragonfire lights up the whole city , so that it never gets dark, not even at night.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kroch")
talkEntry:addTrigger("Gurak")
talkEntry:addResponse("Kroch'Gurak! Das Winterlager, der wilden Klans. Ein kolossales H�hlengebilde, durchdrungen vom rhythmischen Klang der Trommeln. Alles iset voll mit Orklingen die Vieh herumtreiben und es riecht nach Bohnenschnaps!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fireshine")
talkEntry:addResponse("Fireshine! Die Drachenburg der Flammenorks. Aus schwarzem Lava-Stein heraus gehauen, werden die Orks von Khor-Anthalatosh, Tr�ger der Inneren Flamme, gro�er Drache des Nordens, geleitet. Diese Festung iset im wahren Sinn des Worts, erleuchtigt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Flamme")
talkEntry:addTrigger("Gerechtigkeit")
talkEntry:addResponse("Die Flamme der Gerechtigkeit iset eine Klosterburg der Flammenorks. Dreimal t�glich rufen laute, tief schallende H�rner in den Tempeln, die Paladine und M�nche zum Gebet. Allerdings verschlie�t man den Reisenden den Inneren Teil der Stadt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Khaari")
talkEntry:addResponse("Iche will Euch sagen, das Licht von Khaari iset eine Stadt der Flammenorks. Und �ber der Stadt thront der Tempel der Flamme dessen Drachenfeuer so hell leuchtet, das die Stadt niemals im Dunkeln liegt. Selbst in der Nacht nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sevenhill")
talkEntry:addResponse("Well, not even humans are allowed inside Sevenhill by the dwarves. So I can only tell you, what one may hear. It is said to be a mine, with vast treasures recovered from it. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Storm")
talkEntry:addTrigger("Keep")
talkEntry:addResponse("It was really hard to reach Storm's Keep. It's far away to the north and only a few strangers go there, but the art of smithing there is legendary.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Arn-Gharrach")
talkEntry:addTrigger("Arn Gharrach")
talkEntry:addResponse("Arn-Gharrach is probably the oldest dwarven realm. It is the city of trading and even 'Overlander', as they say, are allowed inside. Before all, I'd like to praise the dwarven beer. '")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Siebenberg")
talkEntry:addResponse("Tja, nichtmal Menschen lass-hen die Zwerge nach Siebenberg hinein. Also kann iche Euch nur sagigen, was man h�rt. Es soll eine Miene sein, und die ausgegrabigten Sch�tze unermesslich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Storm")
talkEntry:addTrigger("Keep")
talkEntry:addResponse("Es war wirklich schwierig nach Storm's Keep zu gelangen. Sehr weit im Norden und nur wenig Fremde dort. Die Schmiedekunst dort, iset jedoch weithin legend�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gharrach")
talkEntry:addTrigger("Gharrach")
talkEntry:addResponse("Arn-Gharrach, wohl das �lteste Zwergenreich. Es iset die Stadt des Handels und auch 'Oberwelter' wie man dort sagt, haben Zutritt. Vor allem m�chte iche das Bier der Zwerge lobend erw�hnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Firnismill")
talkEntry:addResponse("Firnismill is known for it's hospitality. As an orc however, one is frowned upon. Anyhow, it is very green and rich in gardens. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pennymill")
talkEntry:addResponse("In Pennymill, the vegetables usually are twice as big as elsewhere. It was a bit too quiet there, for my taste and I didn't stay long.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldwillows")
talkEntry:addResponse("Hm, I never visited Oldwillows. I doubt that it is worth visiting. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Firnism�hle")
talkEntry:addResponse("Firnism�hle iset f�r seine Gastfreundschaft ber�hmt. Als Ork iset man aber trotzdem nicht gern gesehen. Jedenfalls iset es dort sehr Gr�n und voll mit G�rten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Pfennigm�hle")
talkEntry:addResponse("In Pfennigm�hle iset das Gem�se f�r gew�hnlich doppelt so gro� wie anders wo. Mir war's dort allerdings zu ruhig und iche blieb nicht besonders lange.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Altweiden")
talkEntry:addResponse("Ach, in Altweiden war iche nie. Aber iche glaub kaum, dass es die Reise wert iset.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kjelt")
talkEntry:addResponse("The stormy city! Kjelt. After month of travelling through cold, bleak steppe, one will find a sightly fortress. The humans there similar to us orcs, but then again completely different.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Karras")
talkEntry:addResponse("Karras is a city made of ice. Even during summer it doesn't get warm enough, to melt the city walls, they say. There, you get hot beer and spiced wine. The journey was worth every frozen off toe!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kjelt")
talkEntry:addResponse("Die sturmumtoste Stadt! Kjelt. Nachdem man Monate lang durch kalte trostlose Steppe reist, findet man eine anschauliche Festung. Die Menschen dort sind uns Orks teils �hnlich und dann doch wieder ganz anders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Karras")
talkEntry:addResponse("Karras die Stadt aus Eis. Es iset selbst im Sommer nicht warm genug um die Mauern zu schmelzen, lie� iche mir sagen. Man bekommt hei�es Bier zum saufen und w�rzigen Wein. Die Reise war mir jede abgefrorigte Zehe wert!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Korr")
talkEntry:addResponse("Ann-Korr is a remarkably old harbour city. It got split into different districts, and depending on how wealthy you are, the position of your house would differ.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Fennsworth")
talkEntry:addResponse("If you are an orc, you are only allowed into Fennsworth as a slave. So I've never been there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kang")
talkEntry:addResponse("Kang-Arr is probably the most beneficial city for travellers, in the whole Albarian realm. A lot of humans from the north are there. I guess, this has a profitable influence.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldford")
talkEntry:addResponse("Oldford is a village, one would say, having visited as many great cities as I have. But the inn 'The Gumbler's Head' is quite plush. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Korr")
talkEntry:addResponse("Ann'Korr iset eine besonders alte Hafenstadt. Man hat sie in verschiedene Viertel geteilt, und je wohlhabender man iset hat man sein Haus wo anders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fennsworth")
talkEntry:addResponse("Wenn man n' Ork iset, darf man Fennsworth nur als Sklave betretigen. Also war iche dort nie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kang")
talkEntry:addResponse("Kang-Arr iset wohl die bek�mmlichste Stadt f�r einen Reisenden im ganzen Albarischen Reich. Gi-hibt eine Menge Menschen aus dem Norden dort. Sch�tze das hat einen n�tzlichen Einfluss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Altfurten")
talkEntry:addResponse("Altfurten iset ein Dorf, wird man sagen, wenn man so viele gro�e St�dte beschaut hat wie iche. Aber der Gasthof 'The Grumbler's Head' iset ber�chtigend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Myr")
talkEntry:addTrigger("Tobar")
talkEntry:addResponse("Myr-Tobar, the jade city and green heart of the jungle. The seven great temples are worth visiting. The people living there seem to generally like the number seven very much.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Khenserra")
talkEntry:addResponse("Khenserra is a dusty mining city, I even saw an ogre there... A good city if an orc needs some money fast. It doesn't smell very good, but is free from elves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Myr")
talkEntry:addTrigger("Tobar")
talkEntry:addResponse("Myr-Tobar, die Jadestadt, das gr�ne Herz des Dschungels. Die sieben gro�en Tempel geh�ren angesehen. Und �berhaupt m�chten diese Menschen die Zahl Sieben sehr gern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Khenserra")
talkEntry:addResponse("Khenserra iset eine staubige Mienenstadt. Sogar'n Oger hab iche dort gesehen. Eine gute Stadt wenn ein Ork schnell Geld braucht. Es riecht zwar nicht sch�n, iset aber elfenfrei.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Falmarha")
talkEntry:addResponse("Falmarha is some kind of sea castle. The inns are cheap and the humans serve you like slaves. I tell you, I have never seen that many ships before.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Laris")
talkEntry:addResponse("Laris is a castle too, if you want to call it that. There, they even tamed a river and redirected. The most important thing is the wine though. THE WHINE!...You should try it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nubris")
talkEntry:addResponse("Let me tell you, the humans in Nurbis have as black a skin, as mine is green. Their city is called the golden jewel of the south and there are a vast amount of herbs and other things you can buy there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Mitsobar")
talkEntry:addResponse("There is strong beer and pungent, brown liquor in Mitsobar. The humans there, drink a lot of it and eat fish as if they were lizards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Koldamar")
talkEntry:addResponse("Koldamar is a boring, windy city. Everyone there is thinking a lot and is not very talkative. If you do not like the jungle, you can go there to see the lizards - as long as the gods are willing.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Falmarha")
talkEntry:addResponse("Falmarha iset eine Art Festung im Meer. Die Gasth�fe sind g�nstig und die Menschen bedienen einen wie Sklaven. Iche will sagen, so viele Schiffe sah iche dort zum Ersten Mal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Laris")
talkEntry:addResponse("Laris iset auch eine Festung, wenn man das so sagen will. Man hat sogar einen Fluss gez�hmhigt und umgegraben. Das wichtigste iset aber der Wein. DER WEIN!...sollte man getrunken haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nubris")
talkEntry:addResponse("Lassigt Euch sagen, die Menschen in Nubris, haben schwarze Haut, wie meine Gr�n iset. Ihre Stadt nennen sie das goldene Juwel des S�dens und es giehebt unz�hlige Gew�rze und anderen Kram zu kaufigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Mitsobar")
talkEntry:addResponse("In Mitsobar gibt es kr�ftiges Bier und starkigen , braunen Schnaps. Und davon saufen die Menschen beachtlicher Menge. Au�erdem fressen die Menschen dorte Fische als w�ren sie Echsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Koldamar")
talkEntry:addResponse("Koldamar iset eine langweilige windige Stadt. Alle denken viel nach und sprechen wene-hig. Wenn ihr den Dschungel nicht m�gt, k�nnt ihr dort Echsenmenschen sehigen... - Sodar die G�tter es wollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Angur")
talkEntry:addResponse("Lor-Angur is filled with elves that think themselves very clever, and the humans there, are no different. All of them indulge in sorcery and other dangerous things like it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Angur")
talkEntry:addResponse("In Lor-Angur iset's voll mit Elfen die meinen sie sind besonderig klug. Und die Menschen sind nichtig besser. Allesamte fr�nen sie der Zauberei und solch gef�hrlichen Sachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("I heard the Archmage of Runewick, Elvaine Morgan, is an elf from Lor-Angur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Iche hab mir sagen lassen der Erzmagier Runewicks, Elvaine Morgan, iset ein Elf aus Lor-Angur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I heard the Archmage of Runewick, Elvaine Morgan, is an elf from Lor-Angur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Iche hab mir sagen lassen der Erzmagier Runewicks, Elvaine Morgan, iset ein Elf aus Lor-Angur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("There's nothing to keep me in Runewick. It makes my hair stand on end when sorcery is near.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("In Runewick h�lt mich nichts. Meine Nackenhaare str�ubigen sich wenn Zauberei in der N�he iset.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("A dwarf from Gynk, Don Valerio Guilianni, is a ruthless merchant, in general.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ein Zwerg aus Gynk. Don Valerio Guilianni. Ein Skrupelloser H�ndler, alles im alligen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The beer in Galmair is good, but if you're not careful they steal your purse, before you can pay for it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Das Bier in Galmair iset gut. Aber wenn man nicht aufpassigt klauen sie einem den Geldbeutel, noch bevor man die Zeche begleichen kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("A human Queen, chosen by the gods, most likely. I prefer lonely princesses in high towers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Eine K�nigin der Menschen. Wohl von den G�ttern erw�hlt. Iche bevorzuge ja eher Prinzessinnen in vereinsamten T�rmsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("A human Queen, chosen by the gods, most likely. I prefer lonely princesses in high towers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Eine K�nigin der Menschen. Wohl von den G�ttern erw�hlt. Iche bevorzuge ja eher Prinzessinnen in vereinsamten T�rmsen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("It's too dry in Cadomyr, for my liking, and no beer there is good enough to stay for long.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Es iset mir zu trocken in Cadomyr. Und kein Bier dort iset gut genug um lange dort zu bleibigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Albar")
talkEntry:addResponse("I have to confess, I never set foot in Albar. They say, people without work are forced to labour in the mines. I don't even want mention what they do with orcs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Albar")
talkEntry:addResponse("Iche muss Euch gestehen, um Albar hab iche einen weiten Bogen gemacht. 's hei�t dort sperrt man Leute ohne Arbeit in die Mienen. Von Orks will iche gar nicht sprechen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Let me tell you, if you plan to do something illegal, do it in Gynk. You can get swampweed and sibanac on practically every corner and slaves are richer than workers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Lasst Euch sagen, wenn ihr was verbotenes machen wollt, macht es in Gynk. Stechkraut und Sibanac, wir einem �berall feilgeboten. Und die Sklaven sind reicher als die Arbeiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("City of the sun. The biggest temple of the known world is located there, Temple of the wheel, where books are kept like treasures in great halls.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar - Die Stadt der Sonne. Dort steht der gr��te Tempel der bekannten Welt, der Tempel des Rades und B�cher hortet man wie Sch�tze in gro�en Hallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("My ancestors always accompany me on my journey. And before battle, I pray for the blessings of Zhambra and Malach�n!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Meine Vorahnen si-hind auf meinen Reisen immer beihe mir. Und vorm Kampfe bittige ich um Zhambras und Malach�ns Segen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, the brother god, we spill blood together, he needs backing!")
talkEntry:addResponse("In battle, you will find yourself next to the shoulder of your companions. Zhambra unites my axe with those of my brothers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, issigt der Brudergott. Wer gemeinsam Blut vergie�t braucht R�ckendeckigung!")
talkEntry:addResponse("Im Kampf stehigen wir oft r�cklings an den Schultern unserer Waffenbr�der. Zhambra st�rkt mich und meine Br�der und unsere �xte werden Eine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n, the aureate hunter! The impregnable warrior! In his name my axe shall taste the blood of many beasts!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n, der gro�artige J�ger! Der unbezwingbare Krieger! In seinem Namen sollige meine Axt das Blut von Bestien trinken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I'm afraid, I don't have anything for sale and I've got no interest in any of your things.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Iche bedauerige sehr, nichts habe iche zu verkaufen und keine Eurer Sachen sind mir von Wertlichkeit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("When I was a young orc, someone asked me, what I wanted to have done, before I die. And I said, I want to have drank a beer in even city of Illarion. The next day, I had already broken up.")
talkEntry:addResponse("Since I had left the Norbug Plateua back then, I have travelled many known countries, so if you are looking for knowledge, just ask me. I enjoy telling you about various, strange lands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Als iche noch ein Orkling war, fragte mich Einer was iche getan haben wollte, sei iche erst tot. Und iche sagte, iche wollte in jeder Stadt Illarions ein Bier getrunken haben. Tags darauf war iche scho-hon aufgebrochen.")
talkEntry:addResponse("Seit iche damals das Norbug Plateau verlie�, binne iche in viele der bekannten L�nder gereist. Wenn Ihr also etwas zu Wissen versucht, fragt mich ruhig aus. Iche erz�hle gernig von allersamt fremder L�nder.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Brute")
talkEntry:addTrigger("Booze")
talkEntry:addResponse("Hurr hurr. That's being me!")
talkEntry:addResponse("#me scratches his chin. 'How are you?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Brute")
talkEntry:addTrigger("Booze")
talkEntry:addResponse("Hurr hurr. Der binnige ich!")
talkEntry:addResponse("#me reckt sein Kinn in die H�he. 'Wonach verlangts Euch?'")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me grunzt vergn�gt und nimmt einen Schluck aus seinem Tonkrug.", "#me grunts cheerfully and takes a swig from his jug.")
talkingNPC:addCycleText("#me nickt sich selbst zu und wirft einen Blick in seine Tasche. Dann holt er eine halbe Wurst hervor und bei�t davon ab.", "#me nods to himself and takes a look inside his bag, then he takes out half a sausage and takes a bite from it.")
talkingNPC:addCycleText("#me kratzt sich an der Nase.", "#me scratches his nose.")
talkingNPC:addCycleText("#me streckt seine Zunge heraus und grinst.", "#me stretches out his tongue and grins.")
talkingNPC:addCycleText("#me spannt seine muskul�sen Arme an und streckt sich demonstrativ.", "#me flexes his muscular arms and stretches demonstratively.")
talkingNPC:addCycleText("#me l�chelt und l�sst dabei abwechselnd seine Brustmuskeln h�pfen.", "#me smiles and twitches his chest muscles alternately.")
talkingNPC:addCycleText("#me nimmt seinen Trinkschlauch vom G�rtel und nimmt einen Schluck daraus.", "#me takes a waterskin from his belt and takes a sip from it.")
talkingNPC:addCycleText("#me f�hrt sich mit der Hand �ber seinen kahlen Kopf und zeigt dabei, gewinnend l�chelnd, seine blendend wei�en Z�hne.", "#me strokes a hand over his bald head, smiling engagingly and showing his dazzlingly white teeth.")
talkingNPC:addCycleText("#me zupft mit seinen gepflegten H�nden am Spitzbart.", "#me plucks his pointed beard with his sleek hands.")
talkingNPC:addCycleText("#me stemmt die Arme in die Seiten und streckt den Oberk�rper durch.", "#me stands with his arms akimbo and puffs out his chest.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(5)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein stattlicher Ork, mit selbstbewusstem L�cheln. Er tr�gt nichts am Oberk�rper und spricht mit seltsamem Akzent.", "A portly orc with a confident smile. He doesn't wear anything on his upper body and talks with a strange accent.")
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 0)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2642)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 0)
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
