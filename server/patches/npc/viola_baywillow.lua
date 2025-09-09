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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Viola Baywillow. She will gladly help you learn more about Illarion. Keywords: Hello, Illarion, Realms, Cadomyr, Galmair, Runewick, Empire, Gods, Crafts, Motives, Landscapes, Leaders, Politics, Laws, Founding, Gems."))
talkEntry:addResponse("Hiho, Viola Baywillow, here to help! I know lots about the three realms of Illarion and beyond if you want to ask me anything?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC hei�t Viola Baywillow. Sie wird dir gerne dabei helfen mehr �ber Illarion zu erfahren. Schl�sselw�rter: Hallo, Illarion, Reiche, Cadomyr, Galmair, Runewick, Imperi, G�tter, Handwerk, Motivation, Landschaft, Anf�hrer, Politik, Gesetze, Gr�ndung, Edelsteine."))
talkEntry:addResponse("Hiho, ich bin Viola Baywillow und hier um dir zu helfen! Ich wei� eine ganze Menge �ber die drei Reiche Illarions und einige andere Dinge. Was m�chtest du wissen?")
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
talkEntry:addResponse("Hiho! If you would like to know something about the realms of Cadomyr, Galmair or Runewick, just ask me!")
talkEntry:addResponse("Hiho! Let me tell you about the realms of Cadomyr, Galmair and Runewick!")
talkEntry:addResponse("Hiho! Just ask if you would like to know something about the realms of Cadomyr, Galmair and Runewick.")
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
talkEntry:addResponse("Hiho! Wenn du etwas �ber die Reiche Cadomyr, Galmair und Runewick wissen m�chtest, frag mich einfach.")
talkEntry:addResponse("Hiho! Lass mich dir etwas �ber die Reiche Cadomyr, Galmair und Runewick erz�hlen!")
talkEntry:addResponse("Hiho! Frag einfach, falls du etwas �ber die Reiche Cadomyr, Galmair und Runewick erfahren m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! If you would like to know something about the realms of Cadomyr, Galmair or Runewick, just ask me!")
talkEntry:addResponse("Hiho! Let me tell you about the realms of Cadomyr, Galmair and Runewick!")
talkEntry:addResponse("Hiho! Just ask if you would like to know something about the realms of Cadomyr, Galmair and Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho! Wenn du etwas �ber die Reiche Cadomyr, Galmair und Runewick wissen m�chtest, frag mich einfach.")
talkEntry:addResponse("Hiho! Lass mich dir etwas �ber die Reiche Cadomyr, Galmair und Runewick erz�hlen!")
talkEntry:addResponse("Hiho! Frag einfach, falls du etwas �ber die Reiche Cadomyr, Galmair und Runewick erfahren m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Safe travels!")
talkEntry:addResponse("Goodbye and good luck!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addTrigger("Bis bald")
talkEntry:addResponse("Mach's gut.")
talkEntry:addResponse("Tsch��.")
talkEntry:addResponse("Viel Gl�ck und auf Wiedersehen.")
talkEntry:addResponse("Bis bald!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farewell!")
talkEntry:addResponse("Safe travels!")
talkEntry:addResponse("Goodbye and good luck!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Bis sp�ter.")
talkEntry:addResponse("Tsch��.")
talkEntry:addResponse("Viel Gl�ck und auf Wiedersehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How do you feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm fine, and you?")
talkEntry:addResponse("I feel great, thanks for asking.")
talkEntry:addResponse("Can't complain!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befinden")
talkEntry:addResponse("Es geht mir gut. Und selbst?")
talkEntry:addResponse("Ich f�hle mich gro�artig, danke der Nachfrage.")
talkEntry:addResponse("Ich kann mich nicht beschweren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Viola Baywillow and I know all the important things about the realms of Cadomyr, Galmair and Runewick. Feel free to ask me something!")
talkEntry:addResponse("I'm Viola Baywillow and I can provide lots of information about the realms of Cadomyr, Galmair and Runewick, to help you decide on a new home.")
talkEntry:addResponse("I'm Viola Baywillow and I have lots of information about the realms of Cadomyr, Galmair and Runewick, to help you decide which ferry to catch.")
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
talkEntry:addResponse("Ich bin Viola Baywillow und ich wei� viele wichtige Dinge �ber die Reiche Cadomyr, Galmair und Runewick. Du kannst mich gerne etwas fragen.")
talkEntry:addResponse("Mein Name ist Viola Baywillow und ich kann eine Menge Informationen zu den Reichen Cadomyr, Galmair und Runewick liefern, um dir bei der Wahl deines neuen Zuhauses zu helfen.")
talkEntry:addResponse("Ich hei�e Viola Baywillow. Ich wei� eine Menge �ber Cadomyr, Galmair und Runewick und kann dir dabei helfen die passende F�hre auszuw�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addTrigger("I am called")
talkEntry:addTrigger("I'm called")
talkEntry:addResponse("Pleased to meet you, I will try to remember it!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addTrigger("ich hei�e")
talkEntry:addResponse("Freut mich, dich kennen zu lernen. Ich werde versuchen es mir zu merken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Frizza in Cadomyr, Iradona Goldschein in Galmair, and Elesil Daelwon in Runewick, all have good advice for those seeking work or adventures in the three realms. Carry on asking around as you explore Illarion and you are sure to find many opportunities.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Frizza in Cadomyr, Iradona Goldschein in Galmair und Elesil Daelwon in Runewick k�nnen allen, die Arbeit oder Abenteuer in den drei Reichen suchen, weiterhelfen. Frag weiter herum, w�hrend du Illarion erkundest und du wirst mit Sicherheit viele Gelegenheiten finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Frizza in Cadomyr, Iradona Goldschein in Galmair, and Elesil Daelwon in Runewick, all have good advice for those seeking work or adventures in the three realms. Carry on asking around as you explore Illarion and you are sure to find many opportunities.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Frizza in Cadomyr, Iradona Goldschein in Galmair und Elesil Daelwon in Runewick k�nnen allen, die Arbeit oder Abenteuer in den drei Reichen suchen, weiterhelfen. Frag weiter herum, w�hrend du Illarion erkundest und du wirst mit Sicherheit viele Gelegenheiten finden.")
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
talkEntry:addResponse("I am not a trader. All I have is information about the realms, and I'll gladly provide that for free!")
talkEntry:addResponse("I'm sorry, but I don't trade anything. You are welcome to ask me about the realms instead.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("koste")
talkEntry:addTrigger("Handel")
talkEntry:addTrigger("ver�u�er")
talkEntry:addTrigger("ver�usser")
talkEntry:addTrigger("erwerb")
talkEntry:addResponse("Ich bin keine H�ndlerin. Alles was ich habe sind Informationen �ber die Reiche und die biete ich gerne kostenlos an.")
talkEntry:addResponse("Es tut mir leid, aber ich handel nicht. Stattdessen kannst du mich aber gerne �ber die Reiche befragen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I tell people about Illarion and help guide newcomers to the harbour so that they can catch a ferry to one of the three realms.")
talkEntry:addResponse("I provide information about the three realms of Illarion and if you are new to these lands I can help you catch a ferry to your new home.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addTrigger("arbeit")
talkEntry:addResponse("Ich erz�hle Leuten von Illarion und weise Neuank�mmlingen den Weg zum Hafen, damit sie eine F�hre zu einem der drei Reiche nehmen k�nnen.")
talkEntry:addResponse("Ich biete Informationen zu den drei Reichen Illarions an und kann dir helfen die F�hre zu deinem neuen Zuhause zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I tell people about Illarion and help guide newcomers to the harbour so that they can catch a ferry to one of the three realms.")
talkEntry:addResponse("I provide information about the three realms of Illarion and if you are new to these lands I can help you catch a ferry to your new home.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich erz�hle Leuten von Illarion und weise Neuank�mmlingen den Weg zum Hafen, damit sie eine F�hre zu einem der drei Reiche nehmen k�nnen.")
talkEntry:addResponse("Ich biete Informationen zu den drei Reichen Illarions an und kann dir helfen die F�hre zu deinem neuen Zuhause zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("harbour")
talkEntry:addTrigger("harbor")
talkEntry:addTrigger("dock")
talkEntry:addResponse("Ferries depart for the three realms of Cadomyr, Galmair and Runewick, from the harbour here at Troll's Haven all the time. Take the path west to the main pier where you can board one. Be careful you don't get on the wrong boat though as some go to dangerous places!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hafen")
talkEntry:addTrigger("anlege")
talkEntry:addTrigger("steg")
talkEntry:addResponse("F�hren zu den drei Reichen Cadomyr, Galmair und Runewick legen st�ndig hier in Trollshaven ab. Folge dem Weg nach Westen zum Pier, um an Bord zu gehen. Aber sei vorsichtig, dass du nicht auf das falsche Schiff steigst! Manche setzen zu gef�hrlichen Orten �ber.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("port")
talkEntry:addTrigger("pier")
talkEntry:addResponse("Ferries depart for the three realms of Cadomyr, Galmair and Runewick, from the harbour here at Troll's Haven all the time. Take the path west to the main pier where you can board one. Be careful you don't get on the wrong boat though as some go to dangerous places!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("port")
talkEntry:addTrigger("pier")
talkEntry:addResponse("F�hren zu den drei Reichen Cadomyr, Galmair und Runewick legen st�ndig vom Hafen hier in Trollshaven ab. Folge dem Weg nach Westen zum Pier, um an Bord zu gehen. Aber sei vorsichtig, dass du nicht auf das falsche Schiff steigst! Manche setzen zu gef�hrlichen Orten �ber!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ferry")
talkEntry:addTrigger("boat")
talkEntry:addTrigger("ship")
talkEntry:addResponse("Boats sail all around the peninsula and you can catch one to any of the three realms of Cadomyr, Galmair and Runewick from the harbour here at Troll's Haven. Take the path west to the main pier if you want to set sail.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("f�hre")
talkEntry:addTrigger("boot")
talkEntry:addTrigger("schiff")
talkEntry:addResponse("Schiffe segeln um die gesamte Halbinsel herum. Von Trollshaven aus kannst du eins zu jedem der drei Reiche nehmen. Folge dem Pfad gen Westen zum Pier, wenn du Segel setzen m�chtest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Illarion")
talkEntry:addResponse("Cut off from the mainland by the towering Nameless Mountains, Illarion is home to the realms of Cadomyr, Galmair and Runewick. They once stood together to overcome the mighty sorcerer Kharud after he wrought destruction across the Old Empires.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Illarion")
talkEntry:addResponse("Illarion ist durch die riesigen Namenlosen Berge vom Festland getrennt. Es ist unterteilt in die Reiche Cadomyr, Galmair und Runewick. Einst taten sie sich zusammen, um den m�chtigen Hexer Kharud, nachdem dieser Zerst�rung �ber die Alten Reiche brachte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Troll's Haven")
talkEntry:addTrigger("Trolls Haven")
talkEntry:addTrigger("Trollshaven")
talkEntry:addResponse("People come to Troll's Haven from all over Illarion and beyond to visit, but it isn't somewhere most would call home. The three realms of Cadomyr, Galmair and Runewick can offer much more by way of protection and opportunity.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Troll's Haven")
talkEntry:addTrigger("Trolls Haven")
talkEntry:addTrigger("Trollshaven")
talkEntry:addResponse("Leute aus allen Teilen Illarions und von au�erhalb kommen als Besucher nach Trollshaven, aber nur die wenigsten w�rden es ein Zuhause nennen. Die drei Reiche Cadomyr, Galmair und Runewick bieten wesentlich mehr Schutz und M�glichkeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("faction")
talkEntry:addTrigger("realm")
talkEntry:addTrigger("town")
talkEntry:addTrigger("city")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'Cadomyr', 'Galmair' or 'Runewick' if you want to know more."))
talkEntry:addResponse("The three realms of Cadomyr, Galmair and Runewick, dominate the once forgotten land of Illarion. Ruled by three powerful leaders, they were founded during the rise of the sorcerer Kharud and were instrumental in his demise. Nowadays with the six gems of power secure, the realms flourish with each becoming renowned for their specialist crafting expertise.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fraktion")
talkEntry:addTrigger("Reich")
talkEntry:addTrigger("St�dte")
talkEntry:addTrigger("Stadt")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Cadomyr', 'Galmair' oder 'Runewick', um mehr zu erfahren."))
talkEntry:addResponse("Die drei Reiche Cadomyr, Galmair und Runewick dominieren das einst vergessene Land Illarion. Regiert von drei m�chtigen Herrschern, wurden die St�dte w�hrend des Aufstiegs des Hexers Kharuds errichtet und im Verlauf der Auseinandersetzung entwickelten sie sich zu wichtigen Werkzeugen f�r seinen Untergang. Heutzutage, da die sechs Edelsteine der Macht gesichert sind, gedeihen die Reiche, und jedes ist f�r seine spezielle Handwerkskompetenz bekannt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Flanked by the impenetrable Nameless Mountains and the Great Ocean, the formidable fortress walls of Cadomyr dominate the Kantabi Desert in the southwest of Illarion. With a rich heritage of combat, honour and glory are central to Cadomyrian values. Hierarchal noble houses form the ruling elite with Queen Rosaline Edwards expecting unquestionable loyalty from her subjects.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Umgeben von den unbezwingbaren Namenlosen Bergen und dem Gro�en Ozean, trotzen die glorreichen Mauern der Festung Cadomyr der Kantabiw�ste im S�dwesten Illarions. Mit einer reichen Tradition in der Kriegsf�hrung, sind Ehre und Ruhm wichtige Werte Cadomyrs. Hierarchische Adelsh�user bilden die Regierungselite. K�nigin Rosaline Edwards erwartet unbedingte Loyalit�t von ihren Untertanen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("With halls and caverns nestled in the foothills of the Nameless Mountains, the imposing walls and rocky outcrops of Galmair overlook the northwest of Illarion. Galmair thrives on trade, with prosperity and wealth held in high esteem. Free from the constraints of formal law and codes of honour, Don Valerio Guilianni welcomes any who can pay their taxes and with enough wealth you can become anything.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Mit Hallen und H�hlen am Fu�e der Namenlosen Berge �berblicken die imposanten Mauern und Felsvorspr�nge Galmairs den Nordwesten Illarions. Galmair gedeiht vom Handel und legt daher gro�en Wert auf Reichtum und Wohlstand. Ohne die beschr�nkenden Fesseln eines Ehrenkodex, hei�t Don Valerio Guilianni all jene willkommen, die ihre Steuern zahlen. Mit gen�gend M�nzen kannst du hier alles erreichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Set in an archipelago of forested islands in the southeast of Illarion, Runewick is surrounded by fertile fields and bountiful glades. Founded as an academy of magic, wisdom and knowledge is believed to be the source of all power. Runewick is considered enlightened by many but few of his flock would dare challenge the advice of Archmage Elvaine Morgan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Verteilt �ber eine bewaldete Inselgruppe im S�dosten Illarions liegt Runewick mit seinen fruchtbaren Feldern und seinen wundersch�nen Wiesen. Gegr�ndet als magische Akademie, bilden Weisheit und Wissen die Quelle aller Macht in der Stadt. Runewick wird von vielen als aufgekl�rt angesehen, doch nur wenige seiner B�rger wagen es, den weisen Ratschlag von Erzmagier Elvaine Morgan auszuschlagen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I heard this was once a distant island in the Great Ocean, but it was destroyed when the Elder Gods returned angered by the self-destructiveness of the mortal races. The rulers of the realms heard of Gobaith's plight and with promises of glory, wisdom, and prosperity sent a fleet of vessels to save refugees from the sinking island. Many found a new life here in Illarion, perhaps one of those rescued can tell you more?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Ich habe geh�rt, dass es einst eine weit entfernte Insel im Gro�en Ozean war, aber es wurde zerst�rt, als die Alten G�tter zur�ckkehrten aus Zorn �ber das selbstzerst�rerische Verhalten der Sterblichen. Die Herrscher der Reiche h�rten von Gobaiths Not und entsandten eine Flotte von Schiffen, um Fl�chtlinge von der sinkenden Insel zu retten. Sie versprachen Ruhm, Weisheit und Wohlstand. Viele fanden hier in Illarion ein neues Leben. Vielleicht kannst du jemanden der Geretteten darum bitten, dir mehr zu erz�hlen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("empire")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'Albar', 'Gynk', 'Salkamar' or 'Lor-Angur' if you want to know more."))
talkEntry:addResponse("For years the mighty empires of Albar, Gynk, Salkamar and Lor-Angur vied for dominance with frequent wars. The rise of the sorcerer Kharud, however, crushed the Old Empires and they never recovered their former prestige. Luckily Illarion brought new hope!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Imperi")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Albar', 'Gynk', 'Salkamar' oder 'Lor-Angur', wenn du mehr erfahren m�chtest."))
talkEntry:addResponse("Jahrelang rangen die m�chtigen Imperien Albar, Gynk, Salkamar und Lor-Angur in andauernden Kriegen um die Vorherrschaft. Der Aufstieg des Hexers Kharud zerschmetterte die alten Reiche und sie konnten nie wieder ihren alten Glanz erreichen. Zum Gl�ck brachte Illarion neue Hoffnung!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar is an old city of the Straight Folk, rich in heritage and ruled by a long line of illustrious kings. After years of war though, the imposing monuments that once honoured glorious victories mostly lie in ruins. Albarian life conforms to strict hierarchical social order and comparisons can be drawn with Cadomyr, yet only men rise to nobility in Albar. The Queen's father was Albarian but named his only child, a daughter, as his successor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Albar ist eine alte Stadt des Volkes der Ordnung, reich an Tradition und regiert von einer langen Reihe ber�hmter K�nige. Nach Jahren des Krieges liegen die imposanten Monumente, die einst glorreiche Siege ehrten, gr��tenteils in Tr�mmern. Das albarische Leben folgt einer strikten hierarchischen Gesellschaftsordnung, ganz �hnlich wie in Cadomyr. Allerdings k�nnen in Albar nur M�nner in den Adelsstand erhoben werden. Der Vater der K�nigin war Albarer, aber er benannte seine Tochter, sein einziges Kind, zur Throhnfolgerin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Gynk rose as an independent city of Free Folk, founded by refugees after years of suffering war between the Old Empires. Rough and chaotic, with many battling just to survive, almost any trade can be found for the right price. Opportunity lies everywhere for those prepared to take it and almost anything can be possible in Gynk. The Don and his father both arrived from Gynk, so it is hardly surprising to find similarities with Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Gynk wuchs als unabh�ngige Stadt des Freien Volkes. Es wurde von Fl�chtlingen aus den jahrelangen Kriegen zwischen den alten Imperien gegr�ndet. Die Stadt ist rau und chaotisch, viele k�mpfen ums �berleben. Dort kann mit fast allem gehandelt werden, wenn der Preis stimmt. Fast alles ist m�glich in Gynk und jene, die bereit sind jede sich bietende Gelgenheit zu nutzen, k�nnen hier beinahe alles erreichen. Der Don und sein Vater stammen beide aus Gynk, daher ist es wenig �berraschend, dass sich �hnlichkeiten zu Galmair finden lassen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar is an old city of the Light Folk, a place of enlightened loyalty and respect that once thrived under the wise rule of male or female representatives of the population. Every child was taught to read and write but so many of the libraries were lost to war. Many Salkamaerian influences are seen in the social structure of Runewick, derived no doubt from the close ties between the empire and Lor-Angur where the Archmage hailed from.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Salkamar ist eine alte Stadt des Lichtvolkes, ein Ort von erhabener Loyalit�t und Respekt, der einst unter der weisen Herrschaft m�nnlicher oder weiblicher Vertreter der Bev�lkerung gedieh. Jedes Kind lernte zu lesen und zu schreiben, doch etliche Bibliotheken wurden im Krieg zerst�rt. Die sozialen Strukturen in Runewick sind stark von denen Salkamars beeinflusst. Dies begr�ndet sich vermutlich in den starken Banden zwischen Salkamar und Lor-Angur, von wo der Erzmagier stammt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("angur")
talkEntry:addResponse("Lor-Angur was founded as a centre of magic by scholars fleeing persecution in Albar. Six outer citadels surround the inner citadel of the High Lord Protector who heads the governing council of mages. Thanks to a magical crystal shield the citadels have remained intact despite years of war that ravaged the land. Archmage Elvaine Morgan arrived from Lor-Angur, so it is hardly surprising to find similarities with Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("angur")
talkEntry:addResponse("Lor-Angur wurde als Zentrum der Magie von Gelehrten gegr�ndet, die vor der Verfolgung in Albar flohen. Sechs �u�ere Zitadellen umgeben die Festung des Hochf�rsten, der dem regierenden Rat der Magier vorsteht. Dank eines magischen Kristallschildes sind die Zitadellen trotz jahrelanger Kriege, die das Land verw�steten, intakt geblieben. Erzmagier Elvaine Morgan stammt aus Lor-Angur, daher sind die �hnlichkeiten mit Runewick wenig verwunderlich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("elder")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'Br�gon', 'Eldan', 'Findari', 'Tanora', or 'Ushara' if you want to know more."))
talkEntry:addResponse("The Elder Gods rarely trouble themselves with daily life of mortals. All but Tanora left this realm long ago, so your prayers likely wouldn't be heard. Only the foolish would question their power, but few worship the Elder Gods these days, apart from nostalgic elves.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alte")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Br�gon', 'Eldan', 'Findari', 'Tanora' oder 'Ushara', wenn du mehr wissen willst."))
talkEntry:addResponse("Die Alten G�tter mischen sich nur selten in die Belange der Sterblichen ein. Alle au�er Tanora verlie�en diese Ebene vor langer Zeit, also h�ren sie unsere Gebete vermutlich nicht. Nur die Verr�ckten w�rden ihre Macht anzweifeln, aber au�er ein paar nostalgischen Elfen betet heutzutage kaum noch jemand zu den Alten G�ttern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("younger")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'Adron', 'Cherga', 'Elara', 'Irmorom', 'Malach�n', 'Moshran', 'Narg�n', 'Oldra', 'Ronagan', 'Sirani', or 'Zhambra' if you want to know more."))
talkEntry:addResponse("Elevated by the Elder Gods to guide the mortal races, the eleven Younger Gods dominate daily life in Illarion with each of the realms shaped by three patron deities. Malach�n, Sirani and Zhambra are revered above all others in Cadomyr. Many in Galmair follow Irmorom, Narg�n and Ronagan. In Runewick they hold Elara, Adron and Oldra in the highest regard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("jung")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Adron', 'Cherga', 'Elara', 'Irmorom', 'Malach�n', 'Moshran', 'Narg�n', 'Oldra', 'Ronagan', 'Sirani' oder 'Zhambra', wenn du mehr �ber sie erfahren m�chtest."))
talkEntry:addResponse("Auserw�hlt von den Alten G�ttern, um die sterblichen V�lker zu f�hren, beherrschen die elf Jungen G�tter den Alltag in Illarion. Jedes der Reiche ist gepr�gt von jeweils drei Schutzg�ttern. Malach�n, Sirani und Zhambra sind die Leitg�tter Cadomyrs. Viele in Galmair folgen Irmorom, Narg�n oder Ronagan. In Runewick genie�en Elara, Adron und Oldra h�chstes Ansehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about the 'Elder' Gods, 'Younger' Gods, or any individual god if you want to know more."))
talkEntry:addResponse("The Five Elder Gods, Br�gon, Eldan, Findari, Tanora, and Ushara, created the world and all that inhabit it. In time they selected eleven outstanding representatives of the mortal races to join them in an immense battle against the Prince of Terror, Madrook Na'han. The Younger Gods, Adron, Cherga, Elara, Irmorom, Malach�n, Moshran, Narg�n, Oldra, Ronagan, Sirani, or Zhambra, were blessed to guide and protect the mortal races and their influence can be seen throughout Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tt")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach den 'Alten' G�ttern, den 'Jungen' G�ttern oder nach einem speziellen Gott, �ber den du mehr wissen willst."))
talkEntry:addResponse("Die f�nf Alten G�tter, Br�gon, Eldan, Findari, Tanora und Ushara erschufen die Welt und all ihre Bewohner. Mit der Zeit erw�hlten sie elf herausragende Repr�sentanten der sterblichen Rasse, damit sie ihnen im Kampf gegen den Prinzen des Schreckens, Madrook Na'han, beist�nden. Die Jungen G�tter Adron, Cherga, Elara, Irmorom, Malach�n, Moshran, Narg�n, Oldra, Ronagan, Sirani und Zhambra wurden gesegnet, um die sterblichen Rassen zu f�hren und ihr Einfluss kann in ganz Illarion gesp�rt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron is the god of festivities and wine. His charisma and sociability is celebrated amongst the jovial revellers of Runewick. There is also an altar dedicated to Adron out the back of the Hemp Necktie Inn. Pray that the bottle never runs dry!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Adron ist der Gott der Feste und des Weins. Sein Charisma und seine Geselligkeit werden von fr�hlichen Zechern in Runewick gefeiert. Ein Altar zu seinen Ehren steht auch hinter dem Gasthof zur Hanfschlinge. Bete, dass die Flasche niemals leer wird!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Br�gon is the god of fire. As the Elder Gods left the mortal plane, many of his former worshippers turned to Malach�n. Like all the Elder Gods, there is an altar dedicated to him at the Temple of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Br�gon ist der Gott des Feuers. Als einer der Alten G�tter, hat er die Sph�re der Sterblichen verlassen und viele seiner Anh�nger haben sich stattdessen Malach�n angeschlossen. Wie alle Alten G�tter, hat er einen ihm gewidmeten Altar im Tempel der F�nf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga is the goddess of spirits and the underworld. Although few worship her with particular reverence, all will meet her in time and she is generally respected. Should your adventures take a turn for the worse pray she shows mercy and denies you entry to her realm!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Cherga ist die G�ttin der Geister und der Unterwelt. Obwohl nur wenige sie mit besonderer Ehrfurcht verehren, werden alle sie fr�her oder sp�ter treffen. Sie wird im Allgemeinen sehr respektiert. Sollten deine Abenteuer einmal fehlschlagen, bete besser um Gnade und hoffe, dass sie dir den Eintritt in ihr Reich versagt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara is the goddess of wisdom and knowledge. Her righteous intentions and pensive nature are held in high esteem amongst the learned of Runewick. Pray she grants you the wisdom to make a good decision about your future!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara ist die G�ttin des Wissens und der Weisheit. Ihre rechtschaffenden Absichten und ihre nachdenkliche Art werden von den Gebildeten Runewicks verehrt. Bete, dass sie dir die Weisheit gibt, eine gute Entscheidung f�r deine Zukunft zu treffen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan is the god of spirit. As the Elder Gods left the mortal plane, many of his former worshippers turned to Elara. Like all the Elder Gods, there is an altar dedicated to him at the Temple of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan ist der Gott des Geistes. Als einer der Alten G�tter, hat er die Ebene der Sterblichen verlassen. Viele seiner ehemaligen Anh�nger folgen nun Elara. Wie alle Alten G�tter, hat er einen ihm gewidmeten Altar im Tempel der F�nf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari is the goddess of air. As the Elder Gods left the mortal plane, many of her former worshippers turned to Adron. Like all the Elder Gods, there is an altar dedicated to her at the Temple of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari ist die G�ttin der Luft. Als eine der Alten G�tter, weilt sie nicht mehr in der Ebene der Sterblichen. Viele ihrer einstigen Anh�nger folgen nun Adron. Wie alle Alten G�tter, hat sie einen ihr gewidmeten Altar im Tempel der F�nf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom is the god of trade and craftsmanship. His righteous intentions with a love of fine craftmanship and ale are held in high esteem by the industrious of Galmair. Do not expect to find good business and wealth in trade without his blessing!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom ist der Gott des Handels und des Handwerks. Seine gerechte Art sowie seine Liebe f�r gutes Handwerk und hervorragendes Bier finden bei Galmairs Arbeitern gro�en Anklang. Erwarte nicht einen guten Handel oder Reichtum ohne seinen Segen zu erlangen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n is the god of battle and hunting. His valour and strong sense of justice are revered by the honourable of Cadomyr. Should you seek the thrill of the hunt or glory in battle pray to him or you won't live past a week!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n ist der Gott der Jagd und der Schlachten. Seine Tapferkeit und sein starker Sinn f�r Gerechtigkeit werden von den Edelleuten Cadomyrs verehrt. Wenn du den Kitzel der Jagd oder Ruhm in der Schlacht suchst, bete zu ihm, oder du �berlebst keine Woche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("The unspoken one is the god of blood and bones. Once revered as a champion, he defeated the Prince of Terror, but festering wounds left him blighted by raging madness. I daren't say any more than that!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Der Ungenannte ist der Gott des Blutes und der Gebeine. Einst wurde er als Held verehrt, weil er den Prinz des Schreckens besiegte. Doch ewig eiternde Wunden verdarben ihn mit Wahnsinn. Ich wage es nicht mehr als das zu sagen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Narg�n is the god of chaos and fortune. His quick wit is valued amongst those seeking good fortune in Galmair, as blessed by his favour anything becomes possible. Beware a black feather in your path for he is the trickiest of tricksters!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Narg�n ist der Gott des Chaos und des Gl�cks. Seine Gewitztheit wird von denen gesch�tzt, die ihr Gl�ck in Galmair versuchen. F�r die, die von ihm gesegnet werden, scheint alles m�glich. Sieh dich vor schwarzen Federn auf deinen Wegen vor, er ist der Trickreichste der Trickreichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra is the Goddess of life and fertility. Her gentle nurturing and humility is favoured amongst farmers tending the fields of Runewick. Should you seek rich soils and bountiful harvests pray to her or you will surely go hungry!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra ist die G�ttin des Lebens und der Fruchtbarkeit. Ihre F�rsorge und Demut wird von Bauern, die die Felder von Runewick bestellen, gesch�tzt. Wenn du nach fruchtbaren B�den und reichen Ernten strebst, bete zu ihr, oder du wirst sicherlich hungern!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan is the god of thieves and shadows. His stealth and determined audacity is held in high esteem amongst the underclass of Galmair as they strive for freedom. Most only pray for his protection rather than risk robbery or worse!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ronagan ist der Gott der Diebe und der Schatten. Seine Verstohlenheit und seine entschlossene K�hnheit wird in der Unterschicht von Galmair, die nach Freiheit strebt, hoch gesch�tzt. Die meisten beten allerdings nur f�r seinen Schutz, statt Diebstahl oder Schlimmeres zu riskieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sirani is the goddess of love and pleasure. Amongst the faithful of Cadomyr, few will not recognise her beauty and passion in their beloved Queen. Should you seek your true love be sure to pray to her or you may forever be lonely!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Sirani ist die G�tting der Liebe und der Freude. Unter den Gl�ubigen in Cadomyr werden nur wenige daran zweifeln, dass ihre Sch�nheit und ihre Leidenschaft in ihrer geliebten K�nigin vereint sind. Solltest du die wahre Liebe suchen, solltest du dich Sirani zuwenden, oder du k�nntest f�r immer alleine bleiben!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora is the goddess of water. She is the only Elder God that did not immediately leave the mortal plane. Like all the Elder Gods, there is an altar dedicated to her at the Temple of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Tanora ist die G�ttin des Wassers. Sie ist die einzige der Alten G�tter, die die Ebene der Sterblichen nie verlassen hat. Wie bei allen Alten G�ttern, steht ein ihr gewidmeter Altar im Tempel der F�nf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is the goddess of earth. As the Elder Gods left the mortal plane, many of her former worshippers turned to Oldra. Like all the Elder Gods, there is an altar dedicated to her at the Temple of the Five.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist die G�ttin der Erde. Als sie mit den anderen Alten G�ttern die Ebene der Sterblichen verlie�, wandten sich viele ihrer Anh�nger Oldra zu. Wie bei allen Alten G�ttern, steht ein ihr gewidmeter Altar im Tempel der F�nf.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra is the god of friendship and loyalty. His righteous intentions and camaraderie are held in high esteem amongst the faithful of Cadomyr. Should you seek the glory of battle or defend all you hold dear, pray he protects and your comrades stand by you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra ist der Gott der Freundschaft und des Vertrauens. Seine gerechten Absichten und seine Kameradschaft werden von den Gl�ubigen in Cadomyr sehr gesch�tzt. Solltest du Ruhm in der Schlacht suchen oder deine Liebsten sch�tzen wollen, bete darum, dass er dich besch�tzt und dir deine Kameraden beistehen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Madrook")
talkEntry:addTrigger("Na?han")
talkEntry:addTrigger("terror")
talkEntry:addResponse("The arrival of the Prince of Terror, Madrook Na'han, heralded the Age of Struggle. The Elder Gods once fled his Master and now together with their prot�g�es faced his horrific horde. It was the unspoken one who entered into the most cataclysmic of battles to defeat Madrook, but he paid dearly!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Madrook")
talkEntry:addTrigger("Na?han")
talkEntry:addTrigger("terror")
talkEntry:addResponse("Das Auftauchen des Prinzen des Terrors, Madrook Na'han, l�utete das Zeitalter des Kampfes ein. Die Alten G�tter flohen einst vor seinem Meister und sahen sich nun mit ihren Auserw�hlten seinen schrecklichen Horden konfrontiert. Es war der Ungenannte, der im tragischsten aller K�mpfe Madrook besiegte. Aber er zahlte einen hohen Preis!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("motiv")
talkEntry:addTrigger("motif")
talkEntry:addTrigger("theme")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'honour', 'wealth', or 'wisdom' if you want to know more."))
talkEntry:addResponse("Each of the three realms developed with a distinct motivation. Honour is the cornerstone of Cadomyr, wealth is the bedrock of Galmair, and wisdom is the essence of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("motiv")
talkEntry:addTrigger("thema")
talkEntry:addTrigger("motif")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Ehre', 'Wohlstand' oder 'Weisheit', wenn du mehr dar�ber wissen m�chtest."))
talkEntry:addResponse("Jedes der drei Reiche entwickelte sich mit einer eigenen Motivation. Ehre ist der Grundstein Cadomyrs, Reichtum ist das Fundament Galmairs und Weisheit ist die Essenz Runewicks.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("honour")
talkEntry:addTrigger("honor")
talkEntry:addResponse("Honour is held in high esteem in Cadomyr and all should seek to emulate the dignified morality of their beloved Queen Rosaline Edwards. Guided by Malach�n, justice and integrity are valued, with good manners and respect for hierarchy expected.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ehre")
talkEntry:addResponse("Ehre wird in Cadomyr sehr gesch�tzt und alle sollten versuchen der w�rdevollen Moral ihrer geliebten K�nigin Rosaline Edwards nachzueifern. Von Malach�n geleitet, werden Gerechtigkeit und Integrit�t gesch�tzt, wobei gute Manieren und Respekt vor der Hierarchie erwartet werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wealth")
talkEntry:addResponse("Wealth brings great respect in Galmair and all should seek their fortune should they wish to find favour with the astute Don Valerio Guilianni. Fair trade flourishes under the guidance of Irmorom, and almost everything is valuable to someone.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reichtum")
talkEntry:addTrigger("Wohlstand")
talkEntry:addResponse("Reichtum wird in Galmair mit gro�em Respekt begegnet und alle sollten nach Gl�ck streben, wenn sie in der Gunst des gerissenen Don Valerio Guilianni aufsteigen wollen. Fairer Handel gedeiht unter der Anleitung von Irmorom und fast alles ist f�r irgendwen wertvoll.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wisdom")
talkEntry:addResponse("Wisdom is held with the greatest regard in Runewick and all should seek to learn from the council of their exalted Archmage Elvaine Morgan. Guided by Elara, gain of knowledge is encouraged and understanding should be sought on the path to enlightenment.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Weisheit")
talkEntry:addResponse("Weisheit wird in Runewick bewundert und alle sollten versuchen, vom Rat ihres erhabenen Erzmagiers Elvaine Morgan zu lernen. Von Elara geleitet, wird der Erwerb von Wissen gef�rdert und auf dem Weg zur Erleuchtung sollte Verst�ndnis gesucht werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("land")
talkEntry:addTrigger("region")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'desert', 'mountain', 'forest', or 'centre' if you want to know more."))
talkEntry:addResponse("The fortress town of Cadomyr overlooks the Kantabi Desert in the south west of Illarion, sheltered by towering mountains. Galmair is dug into the foothills of the Nameless Mountains in the north west of the peninsula, overlooking Syrita Bay and the forests beyond. Runewick lies beyond Elstree Forest in the south east, occupying an archipelago of forested islands surrounded by grassy meadows. Be careful on your travels though, the remote north east harbours many dangers and here in the centre, desert, mountains and forests converge into fire!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Land")
talkEntry:addTrigger("Region")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'W�ste', 'Gebirge', 'Wald' oder 'Zentrum', wenn du mehr wissen m�chtest."))
talkEntry:addResponse("Die Festungsstadt Cadomyr �berblickt die Kantabi-W�ste im S�dwesten von Illarion, gesch�tzt von hohen Bergen. Galmair wurde in die Ausl�ufer der namenlosen Berge im Nordwesten der Halbinsel gegraben, mit Blick auf die Syrita Bucht und die W�lder dahinter. Runewick liegt jenseits des Elstree -Waldes im S�dosten und verteilt sich auf einige bewaldete Inseln, die von grasbewachsenen Wiesen umgeben sind. Sei auf deinen Reisen vorsichtig, der abgelegene Nordosten birgt viele Gefahren und hier im Zentrum laufen Berge und W�lder zu Feuer zusammen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("desert")
talkEntry:addTrigger("south west")
talkEntry:addTrigger("southwest")
talkEntry:addResponse("Stretching from the mountains to the ocean, the sandy expanse of the Kantabi Desert is cleaved by the Kantabi River as it cascades from high in the Nameless Mountains to course towards the Great Ocean where it diverges to form Kantabi Delta. Only beyond the Border Mountains does sand give way to trees in the form of Sentry Forest. Ruzusss, in Cadomyr, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("W�ste")
talkEntry:addTrigger("s�d-west")
talkEntry:addTrigger("s�dwest")
talkEntry:addTrigger("s�d west")
talkEntry:addResponse("Die sandigen Weiten der Kantabi-W�ste erstrecken sich von den Bergen bis zum Ozean. Sie wird vom Kantabi-Fluss durchschnitten, der von hoch in den Namenlosen Bergen in Richtung des Gro�en Ozeans flie�t, wo er auseinander geht und das Kantabi-Delta bildet. Nur jenseits der Grenzberge weicht Sand den B�umen des Wachtwaldes. Ruzusss in Cadomyr kann dir mehr �ber diesen Teil Illarions erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kantabi")
talkEntry:addResponse("Stretching from the mountains to the ocean, the sandy expanse of the Kantabi Desert is cleaved by the Kantabi River as it cascades from high in the Nameless Mountains to course towards the Great Ocean where it diverges to form Kantabi Delta. Only beyond the Border Mountains does sand give way to trees in the form of Sentry Forest. Ruzusss, in Cadomyr, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kantabi")
talkEntry:addResponse("Die sandigen Weiten der Kantabi-W�ste erstrecken sich von den Bergen bis zum Ozean. Sie wird vom Kantabi-Fluss durchschnitten, der von hoch in den Namenlosen Bergen in Richtung des Gro�en Ozeans flie�t, wo er auseinander geht und das Kantabi-Delta bildet. Nur jenseits der Grenzberge weicht Sand den B�umen des Wachtwaldes. Ruzusss in Cadomyr kann dir mehr �ber diesen Teil Illarions erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mountain")
talkEntry:addTrigger("north west")
talkEntry:addTrigger("northwest")
talkEntry:addResponse("Beneath the snow-capped peaks of the Nameless Mountains that isolate Illarion from the mainland, Malachite Creek tumbles down the northern foothills towards Nargun's Plain, joining the Bounding Stream. From the swampy coast of Syrita Bay, lush grassland of the Plains of Silence stretch as far as the Northern Woods. Lotta Medborgar, in Galmair, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Berg")
talkEntry:addTrigger("Gebirge")
talkEntry:addTrigger("nordwest")
talkEntry:addTrigger("nord west")
talkEntry:addTrigger("nord-west")
talkEntry:addResponse("Unter den schneebedeckten Gipfeln der Namenlosen Berge, die Illarion vom Festland trennen, st�rzt der Malachitbach die n�rdlichen Ausl�ufer hinunter in Richtung von Narguns Ebene und m�ndet in den Grenzstrom. Von der sumpfigen K�ste der Syritabucht erstreckt sich das �ppige Grasland der Ebene der Stille bis in den n�rdlichen Wald. Lotta Medborgar in Galmair kann dir mehr �ber diesen Teil Illarions erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Syrita")
talkEntry:addResponse("Beneath the snow-capped peaks of the Nameless Mountains that isolate Illarion from the mainland, Malachite Creek tumbles down the northern foothills towards Nargun's Plain, joining the Bounding Stream. From the swampy coast of Syrita Bay, lush grassland of the Plains of Silence stretch as far as the Northern Woods. Lotta Medborgar, in Galmair, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Syrita")
talkEntry:addResponse("Unter den schneebedeckten Gipfeln der Namenlosen Berge, die Illarion vom Festland trennen, st�rzt der Malachitbach die n�rdlichen Ausl�ufer hinunter in Richtung von Narguns Ebene und m�ndet in den Grenzstrom. Von der sumpfigen K�ste der Syritabucht erstreckt sich das �ppige Grasland der Ebene der Stille bis in den n�rdlichen Wald. Lotta Medborgar in Galmair kann dir mehr �ber diesen Teil Illarions erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("forest")
talkEntry:addTrigger("south east")
talkEntry:addTrigger("southeast")
talkEntry:addResponse("An archipelago of forested islands with fertile fields and bountiful glades form a headland that marks the entrance to Snakehead Bay. Beyond the Dewy Swamps and grassy expanse of Eastland, the towering trees of Elstree Forest stretch from the marshes of Death's Stench as far as Snakehead Mountain as it rises above Elstree Plain. Numila Irunnleh, in Runewick, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wald")
talkEntry:addTrigger("s�dost")
talkEntry:addTrigger("s�d-ost")
talkEntry:addTrigger("s�d ost")
talkEntry:addResponse("Eine Gruppe aus bewaldeten Inseln mit fruchtbaren Feldern und prachtvollen Lichtungen bildet eine Landzunge, die den Eingang zur Schlangenkopfbucht markiert. Jenseits des Todessumpfes und der Grasfl�che des Ostlandes erstrecken sich die hoch aufragenden B�ume des Elsbaumwaldes von den S�mpfen des Todesgestanks bis zum Schlangenkopfberg, der sich �ber der Elsbaumebene erhebt. Numila Irunnleh in Runewick kann dir mehr �ber diesen Teil Illarions erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elstree")
talkEntry:addResponse("An archipelago of forested islands with fertile fields and bountiful glades form a headland that marks the entrance to Snakehead Bay. Beyond the Dewy Swamps and grassy expanse of Eastland, the towering trees of Elstree Forest stretch from the marshes of Death's Stench as far as Snakehead Mountain as it rises above Elstree Plain. Numila Irunnleh, in Runewick, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elstree")
talkEntry:addTrigger("Elsbaum")
talkEntry:addResponse("Eine Gruppe aus bewaldeten Inseln mit fruchtbaren Feldern und prachtvollen Lichtungen bildet eine Landzunge, die den Eingang zur Schlangenkopfbucht markiert. Jenseits des Todessumpfes und der Grasfl�che des Ostlandes erstrecken sich die hoch aufragenden B�ume des Elsbaumwaldes von den S�mpfen des Todesgestanks bis zum Schlangenkopfberg, der sich �ber der Elsbaumebene erhebt. Numila Irunnleh in Runewick kann dir mehr �ber diesen Teil Illarions erz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("centre")
talkEntry:addTrigger("center")
talkEntry:addTrigger("fire")
talkEntry:addTrigger("north east")
talkEntry:addTrigger("northeast")
talkEntry:addResponse("Putrid swamplands and fiery lava flows lay waste to much of Illarion's centre beyond Snakehead Mountain and should only be explored with abundant caution. Only the remote north east can rival in danger with terror lurking beyond the Northern Woods. Wulfgorda, here in Troll's Haven, can tell you more about this part of Illarion.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zentrum")
talkEntry:addTrigger("Feuer")
talkEntry:addTrigger("nordost")
talkEntry:addTrigger("nord-ost")
talkEntry:addTrigger("nord ost")
talkEntry:addResponse("Faulige Sumpfgebiete und feurige Lavastr�me verw�sten einen Gro�teil von Illarions Zentrum jenseits des Schlangenkopfberges und sollten nur mit gro�er Vorsicht erkundet werden. Nur der abgelegene Nordosten, dessen Schrecken jenseits des n�rdlichen Waldes lauern, kann mit dieser Gefahr konkurrieren. Wulfgorda, hier in Trollshaven, kann dir mehr �ber diesen Teil Illarionserz�hlen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("leader")
talkEntry:addTrigger("ruler")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'Queen Rosaline Edwards', 'Don Valerio Guilianni' or 'Archmage Elvaine Morgan' if you want to know more."))
talkEntry:addResponse("Three powerful rulers lead the realms of Illarion. Queen Rosaline Edwards reigns over Cadomyr, Don Valerio Guilianni determines Galmair's fate, and Archmage Elvaine Morgan guides Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Anf�hrer")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'K�nigin Rosaline Edwards', 'Don Valerio Guilianni' oder 'Erzmagier Elvaine Morgan', wenn du mehr �ber sie erfahren m�chtest."))
talkEntry:addResponse("Drei m�chtige Anf�hrer regieren die Reiche Illarions. K�nigin Rosaline Edwards regiert in Cadomyr, Don Valerio Guilianni leitet Galmairs Geschicke und Erzmagier Elvaine Morgen f�hrt Runewick an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("queen")
talkEntry:addResponse("Only Cadomyr has a queen! The fair Queen Rosaline Edwards is of noble Albarian heritage and took the throne after the death of her father, King Reginald. Don't let her beauty fool you though, she is a proud and ambitious ruler. Many a loyal and valiant knight seeks to impress their beloved Queen with honourable and glorious endeavours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("k�nigin")
talkEntry:addResponse("Nur Cadomyr hat eine K�nigin! Die holde K�nigin Rosaline Edwards ist von adeliger Albarischer Abstammung und bestieg den Thron nach dem Tod ihres Vaters, K�nig Reginald. Lass dich nicht von ihrer Sch�nheit t�uschen, sie ist eine stolze, ambitionierte Anf�hrerin. Viele loyale und tapfere Ritter versuchen ihre geliebte K�nigin mit ruhmvollen und glorreichen Taten zu beeindrucken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Only Cadomyr has a queen! The fair Queen Rosaline Edwards is of noble Albarian heritage and took the throne after the death of her father, King Reginald. Don't let her beauty fool you though, she is a proud and ambitious ruler. Many a loyal and valiant knight seeks to impress their beloved Queen with honourable and glorious endeavours.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Die holde K�nigin Rosaline Edwards ist von adeliger Albarischer Abstammung und bestieg den Thron nach dem Tod ihres Vaters, K�nig Reginald. Lass dich nicht von ihrer Sch�nheit t�uschen, sie ist eine stolze, ambitionierte Anf�hrerin. Viele loyale und tapfere Ritter versuchen ihre geliebte K�nigin mit ruhmvollen und glorreichen Taten zu beeindrucken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("don")
talkEntry:addResponse("Only Galmair has a Don! The dwarf Valerio Guilianni arrived from Gynk in search of riches with his father, Tommaso Guilianni. With Galmair established as a profitable merchant town, he became Don on the untimely demise of his father. Many an industrious craftsman or merchant eagerly seeks to impress their astute Don with their wealth and prosperity.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("don")
talkEntry:addResponse("Nur Galmair hat einen Don! Der Zwerg Valerio Guilianni kam mit seinem Vater Tommaso Guilianni auf der Suche nach Reicht�mern aus Gynk. Nachdem sein Vater vorzeitig verstarb, wurde er Don von Galmair, welches als profitable Handelsstadt gegr�ndet worden war. Viele flei�ige Handwerker und Kaufleute versuchen eifrig, ihren klugen Don mit ihrem Reichtum und Wohlstand zu beeindrucken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addResponse("Only Galmair has a Don! The dwarf Valerio Guilianni arrived from Gynk in search of riches with his father, Tommaso Guilianni. With Galmair established as a profitable merchant town, he became Don on the untimely demise of his father. Many an industrious craftsman or merchant eagerly seeks to impress their astute Don with their wealth and prosperity.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addResponse("Nur Galmair hat einen Don! Der Zwerg Valerio Guilianni kam mit seinem Vater Tommaso Guilianni auf der Suche nach Reicht�mern aus Gynk. Nachdem sein Vater vorzeitig verstarb, wurde er Don von Galmair, welches als profitable Handelsstadt gegr�ndet worden war. Viele flei�ige Handwerker und Kaufleute versuchen eifrig, ihren klugen Don mit ihrem Reichtum und Wohlstand zu beeindrucken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Only Runewick has an Archmage! The elf Elvaine Morgan arrived with a group of renegade mages from Lor-Angur to found a new seat of learning. Wielding immense magical power, the path of enlightenment can quickly darken if not heeding his advice. Many a learned scholar strives to impress their eclectic Archmage with wise decisions and depth of knowledge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Nur Runewick hat einen Erzmagier! Der Elf Elvaine Morgan kam mit einer Gruppe abtr�nniger Magier aus Lor-Angur, um einen neuen Studienort zu gr�nden. Mit immenser magischer Kraft kann sich der Weg der Erleuchtung schnell verdunkeln, wenn sein Rat nicht beachtet wird. Viele gebildete Gelehrte bem�hen sich, ihren weisen Erzmagier mit klugen Entscheidungen und gro�em Wissen zu beeindrucken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Only Runewick has an Archmage! The elf Elvaine Morgan arrived with a group of renegade mages from Lor-Angur to found a new seat of learning. Wielding immense magical power, the path of enlightenment can quickly darken if not heeding his advice. Many a learned scholar strives to impress their eclectic Archmage with wise decisions and depth of knowledge.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Nur Runewick hat einen Erzmagier! Der Elf Elvaine Morgan kam mit einer Gruppe abtr�nniger Magier aus Lor-Angur, um einen neuen Studienort zu gr�nden. Mit immenser magischer Kraft kann sich der Weg der Erleuchtung schnell verdunkeln, wenn sein Rat nicht beachtet wird. Viele gebildete Gelehrte bem�hen sich, ihren weisen Erzmagier mit klugen Entscheidungen und gro�em Wissen zu beeindrucken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("politics")
talkEntry:addTrigger("govern")
talkEntry:addResponse("Whilst the three rulers seem unlikely to be usurped, political opportunities are abundant. Queen Rosaline nominates nobles to join the Royal Court in Cadomyr, granting them the privilege to form their own house. An elected council of Chancellors assist the Left Hand with Galmair's affairs on behalf of the Don. The Archmage selects advisors to form an academic council to guide Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Politik")
talkEntry:addTrigger("regier")
talkEntry:addResponse("Obwohl es unwahrscheinlich scheint, dass die drei Regenten gest�rzt werden, gibt es dennoch reichlich politische M�glichkeiten. K�nigin Rosaline Edwards benennt Adelige f�r ihren k�niglichen Hof in Cadomyr und bietet ihnen das Privileg, ein eigenes Haus zu gr�nden. Ein gew�hlter Kanzlerrat unterst�tzt die Linke Hand dabei, Galmairs Angelegenheiten im Namen des Dons zu regeln. Der Erzmagier ernennt Ratgeber, die einen akademischen Rat bilden, um Runewick zu f�hren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("law")
talkEntry:addTrigger("custom")
talkEntry:addTrigger("legal")
talkEntry:addTrigger("justice")
talkEntry:addResponse("Cadomyr follows traditional customs, although interpretation of these is less strict than their Albarian origin. Galmair has simple rules that allow a good deal of freedom, but these remain open to the Don's discretion. Runewick considers itself the most enlightened community with a written constitution. Laws can quickly change though with a new administration.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gesetz")
talkEntry:addTrigger("brauch")
talkEntry:addTrigger("gerecht")
talkEntry:addTrigger("legal")
talkEntry:addResponse("Cadomyr folgt traditionellen Br�uchen, die allerdings weniger strikt ausgelebt werden, als in ihren albarischen Urspr�ngen. Galmair hat einfache Regeln, die jedem B�rger eine Menge Freihheit erlauben, allerdings der Willk�r des Dons unterliegen. Da sie eine niedergeschriebene Verfassung haben, betrachtet man sich in Runewich als am Erhabensten. Die Gesetze k�nnen sich allerdings unter einer neuen F�hrung schnell �ndern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Found")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'Edward', 'Tommaso' or 'renegade' if you want to know more."))
talkEntry:addResponse("The three realms of Illarion were all founded within a few years of each other at the time Kharud began to dominate the Old Empires. Cadomyr was founded by an Albarian prince called Edward, Galmair was established by a dwarven merchant from Gynk by the name of Tommaso Guilianni, and Runewick was the creation of a group of renegade mages from Lor-Angur led by Elvaine Morgan.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gr�nd")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Edward', 'Tommaso' oder 'Abtr�nnige', wenn du mehr dar�ber erfahren m�chtest."))
talkEntry:addResponse("Die drei Reiche Illarions wurden alle innerhalb weniger Jahre gegr�ndet, zu einer Zeit in der Kharud begann die Alten Imperien einzunehmen. Cadomyr wurde von einem Albarischen Prinzen namens Edward gegr�ndet. Galmair wurde von Tommaso Guilianni, einem Zwergenh�ndler aus Gynk, gegr�ndet und Runewick war die Sch�pfung einer Gruppe abtr�nniger Magier, die von Elvaine Morgan aus Lor-Angur gef�hrt wurden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Edward")
talkEntry:addResponse("Impatient to succeed his father, a petulant young Albarian Prince Edward seized the old King's riches and fled Kharud, founding the first settlement of Cadomyr near Sentry Forest. Tormented by guilt, however, his was not to be a happy ending and he was succeeded by his loyal comrade and cousin, Sir Reginald, the father of Queen Rosaline Edwards.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Edward")
talkEntry:addResponse("Ungeduldig seinen Vater zu beerben, nahm der junge Albarische Prinz Edward die Besitzt�mer des alten K�nigs an sich und floh vor Kharud. Im Wachtwald gr�ndete er die erste Siedlung Cadomyr. Gequ�lt von Schuldgef�hlen, nahm sein Leben allerdings kein gl�ckliches Ende und sein treuer Kamerad und Cousin, Sir Reginald, der Vater von K�nigin Rosaline Edwards, trat seine Nachfolge an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tommaso")
talkEntry:addResponse("Hearing rumours of vast gold deposits in the Nameless Mountains, the dwarven merchant Tommaso Guilianni and his son Valerio arrived from Gynk to establish new trade routes in the wake of Kharud's destruction. Their prospecting angered indigenous clans but the rebellions were quickly quashed and the mountain stronghold of Galmair was founded.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tommaso")
talkEntry:addResponse("Als er Ger�chte �ber reiche Goldvorkommen in den Namenlosen Bergen h�rte, reiste Tommaso Guilianni mit seinem Sohn Valerio aus Gynk an, um eine neue Handelsroute im Schatten der Zerst�rung durch Kharud zu etablieren. Ihre Bem�hungen ver�rgerte eingeborene Clans, doch die Rebellionen wurden schnell niedergeschlagen und die Bergfestung Galmair wurde gegr�ndet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("renegade")
talkEntry:addResponse("When the High Lord Protector resolved to remain neutral and refused to challenge the growing threat of Kharud, a group of renegade mages left Lor-Angur to found their own academy here in Illarion. The mages created an immense arcane structure which once had four elemental towers rising above forested isles, instating Elvaine Morgan as Archmage of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Abtr�nnig")
talkEntry:addResponse("Als der Hochf�rst beschloss, neutral zu bleiben und sich weigerte, sich der wachsenden Bedrohung durch Kharud entgegenzustellenf, verlie� eine Gruppe abtr�nniger Magier Lor-Angur, um hier in Illarion eine eigene Akademie zu gr�nden. Die Magier schufen eine immense arkane Struktur mit vier Elementart�rmen, die sich einst �ber den bewaldeten Inseln erhoben, und setzten Elvaine Morgan als Erzmagier von Runewick ein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gem")
talkEntry:addTrigger("stone")
talkEntry:addTrigger("power")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about 'topaz', 'amethyst', 'obsidian', 'sapphire', 'emerald', 'ruby', or 'diamond' if you want to know more."))
talkEntry:addResponse("The gods created seven gems of immense magical power, with six to be distributed between the races, while the diamond remained in their hands. Nothing is known of the first custodians of these gems but nowadays each of the rulers of Illarion holds two, bringing protection to their realms. Queen Rosaline Edwards holds the topaz and amethyst, Don Valerio Guilianni holds the obsidian and sapphire, and Archmage Elvaine Morgan holds the emerald and ruby.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Stein")
talkEntry:addTrigger("Macht")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Frag nach 'Topas', 'Amethyst', 'Obsidian', 'Saphir', 'Smaragd', 'Rubin' oder 'Diamant', wenn du mehr �ber einen der Steine wissen willst."))
talkEntry:addResponse("Die G�tter erschufen sieben Edelsteine von gewaltiger Macht. Sechs davon wurden an die Sterblichen �bergeben, w�hrend der Diamant in ihren H�nden blieb. Es ist nicht bekannt, wer die Steine als Erstes hielt, doch heutzutage sind jeweils zwei im Besitz der Regenten Illarions, die zum Schutz der Reiche genutzt werden. K�nigin Rosaline Edwards besitzt den Topas und den Amethyst, Don Valerio Guilianni h�lt den Obsidian und den Saphir und Erzmagier Elvaine Morgan ist im Besitz des Smaragds und des Rubins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("topaz")
talkEntry:addResponse("Queen Rosaline Edwards of Cadomyr inherited the magical topaz from her father, King Reginald. It was once stolen by Prince Edward from his own father, but when the first King of Cadomyr died in battle he bequeathed the precious stone to his cousin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Topas")
talkEntry:addResponse("K�nigin Rosaline Edwards von Cadomyr erbte den magischen Topas von ihrem Vater, K�nig Reginald. Einst wurde es von Prinz Edward von dessen Vater gestohlen, doch als der erste K�nig Cadomyrs im Kampf umkam, gab er diesen kostbaren Stein an seinen Cousin weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("amethyst")
talkEntry:addResponse("Queen Rosaline Edwards of Cadomyr inherited the magical amethyst from her father, King Reginald. In the battle against Kharud, the brave Sir Reginald seized the precious stone after defeating one of the Sorcerer's generals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Amethyst")
talkEntry:addResponse("K�nigin Rosaline Edwards von Cadomyr erbte den magischen Amethyst von ihrem Vater, K�nig Reginald. Im Kampf gegen Kharud, gelangte der tapfere Sir Reginald in den Besitz dieses kostbaren Steins, als er einen der Gener�le des Hexers besiegte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("obsidian")
talkEntry:addResponse("Don Valerio Guilianni of Galmair inherited the magical obsidian on the death of his father, Tomasso Guilianni. The young Valerio once boasted they used the precious stone to subdue rebellious local dwarven clans when they founded Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Obsidian")
talkEntry:addResponse("Don Valerio Guilianni aus Galmair erbte den magischen Obsidian von seinem Vater Tomasso Guilianni. Der junge Valerio gab einmal damit an, dass sie diesen kostbaren Stein nutzten, um die rebellischen Zwergenclans niederzuschlagen, als sie Galmair gr�ndeten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sapphire")
talkEntry:addResponse("Don Valerio Guilianni of Galmair inherited the magical sapphire on the death of his father, Tomasso Guilianni. In the battle against Kharud, the shrewd Tomasso Guilianni seized the precious stone after defeating one of the Sorcerer's generals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Saphir")
talkEntry:addResponse("Don Valerio Guilianni erbte den magischen Saphir von seinem Vater Tomasso Guilianni. Im Kampf gegen Kharud, gelangte der gerissene Tomasso Guilianni in den Besitz dieses kostbaren Steins, nachdem er einen der Gener�le des Hexers besiegte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Emerald")
talkEntry:addResponse("Archmage Elvaine Morgan of Runewick has held the magical emerald for thousands of years. Nobody knows if he was the first custodian of the gem, entrusted with the precious stone by the gods themselves, or he acquired it by other means in Lor-Angur.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Smaragd")
talkEntry:addResponse("Erzmagier Elvaine Morgan aus Runewick ist bereits seit tausenden Jahren im Besitz des magischen Smaragds. Niemand wei�, ob er der erste Besitzer des Steins ist und die G�tter ihm diesen direkt anvertrauten, oder ob er ihn sich anderweitig in Lor-Angur angeeignet hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ruby")
talkEntry:addResponse("Archmage Elvaine Morgan of Runewick has held the magical ruby since the fall of the sorcerer Kharud. In the battle against Kharud, the wise Elvaine Morgan seized the precious stone after defeating one of the Sorcerer's generals.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Rubin")
talkEntry:addResponse("Erzmagier Elvaine Morgan aus Runewick besitzt den magischen Rubin seit dem Fall des Hexers Kharud. Im Kampf gegen Kharud, nahm der weise Elvaine Morgan diesen wertvollen Stein einem General des Hexers ab, nachdem er diesen besiegt hatte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Diamond")
talkEntry:addResponse("Only six gems were bequeathed to the mortal races, the diamond remained under the watchful guardianship of the gods themselves. Nobody knows where it can be found or what power it holds.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Diamant")
talkEntry:addResponse("Nur sechs Edelsteine wurden den sterblichen Rassen anvertraut. Der Diamant bleibt in der wachsamen Obhut der G�tter selbst. Niemand wei� wo er gefunden werden kann, oder welche Kr�fte ihm innewohnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Kharud")
talkEntry:addResponse("The sorcerer Kharud once held three magical gems, bringing swift victories as he crushed the Old Empires with his mighty legions. Only when the three rulers of Illarion came together did they have the power to defeat Kharud.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kharud")
talkEntry:addResponse("Der Hexer Kharud besa� einst drei magische Edelsteine, die ihm einfache Siege �ber die alten Imperien einbrachten. Nur vereint waren die drei Regenten Illarions in der Lage, die Kraft Kharuds zu �bertreffen und ihn letztendlich zu besiegen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("craft")
talkEntry:addConsequence(consequence_inform("[Game Help] Ask about gathering materials through 'digging', 'farming', 'fishing', 'herblore', 'husbandry, 'mining', 'tanning and weaving', and 'woodcutting', or about the crafts 'armourer', blacksmithing', 'brewing', 'carpentry', 'cooking and baking', 'finesmithing', 'grinding', 'glass blowing', 'pottery', 'tailoring', if you want to know more."))
talkEntry:addResponse("Each realm is renowned for their specialist crafts, supported by abundant resources. In Cadomyr crafters excel at glassblowing, tailoring and pottery. Galmair is acclaimed for all kinds of smithing and gem cutting. Runewick is famous for delicious food and drink, as well as fine carpentry. Which craft would you like to know more about?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Handwerk")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Wenn du mehr �ber das Sammeln von Ressourcen erfahren m�chtest, frag nach 'Graben', 'Ackerbau', 'Fischen', 'Kr�uterkunde', 'Landwirtschaft', 'Bergbau', 'Weben und Gerben' oder 'Holzf�llen'. Oder frag nach Handwerken, 'R�stungsschmieden', 'Waffenschmieden', 'Brauen', 'Schreinern', 'Kochen und Backen', 'Feinschmieden', 'Schleifen', 'Glasblasen', 'T�pfern' oder 'N�hen'."))
talkEntry:addResponse("Jedes Reich ist bekannt f�r seine spezialisierten Handwerker, die von lokalen Ressourcen in ihrem Treiben unterst�tzt werden. In Cadomyr sind vor allem die Glasbl�ser, T�pfer und Schneider bekannt. Galmair ist ber�hmt f�r seine Schmiede und Edelsteinschleifer. Runewicks Speisen und Getr�nke sind vorz�glich, genau wie die �rtlichen Schreiner. �ber welches Handwerk m�chtest du mehr erfahren?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("dig")
talkEntry:addResponse("Diggers will find plenty of clay and sand near Cadomyr to supply glassblowers and potters. Runewick isn't a bad place either to find pits for digging, but sand is especially scarce in Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grab")
talkEntry:addTrigger("Gr�b")
talkEntry:addResponse("Gr�ber werden reichlich Sand und Lehm nahe Cadomyr finden, mit denen sie Glasbl�ser und T�pfer versorgen k�nnen. Runewick hat ebenfalls ein paar Gruben in denen man graben kann, doch in Galmair sucht man Sand vergeblich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("farm")
talkEntry:addTrigger("peasant")
talkEntry:addResponse("Runewick has fertile soil and a mild climate perfect for farming, with fields close to town and in Yewdale. Although cooler, Galmair also has productive fields, but nothing will grow in the desert around Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bauer")
talkEntry:addTrigger("B�uer")
talkEntry:addTrigger("farm")
talkEntry:addTrigger("acker")
talkEntry:addResponse("Runewick hat fruchtbaren Boden und das milde Klima ist perfekt f�r Ackerbau. Felder findest du nahe der Stadt und in Eibenthal. Obwohl es in Galmair etwas k�hler ist, gibt es auch dort ergiebige Felder. In der W�ste Cadomyrs jedoch w�chst nichts.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fish")
talkEntry:addResponse("Surrounded by water, there are abundant shoals of fish around the islands of Runewick. Galmair also has a good supply of fish, but Cadomyr depends on trade of the smoked catch from elsewhere.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Fisch")
talkEntry:addTrigger("angel")
talkEntry:addResponse("Die Inseln Runewicks sind umgeben von Wasser, in denen Fischschw�rme reichlich vorkommen. Auch Galmair hat gute Fischgr�nde. Cadomyr ist g�nzlich auf den Handel von anderswo angewiesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("herb")
talkEntry:addResponse("Herbs can be gathered all over Illarion with different plants found in grassland, forests, swamps, mountains, and deserts. Alchemists always need a good supply of fresh herbs for their concoctions, no matter where they work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kr�uter")
talkEntry:addTrigger("sammler")
talkEntry:addTrigger("Kraut")
talkEntry:addResponse("Kr�uter k�nnen �berall in Illarion gefunden werden. Verschiedene Pflanzen wachsen an verschiedenen Orten, sei es eine Wiese, ein Wald, ein Sumpf, das Gebirge oder die W�ste. Alchemisten brauchen immer einen Vorrat an frischen Kr�utern, f�r ihre Gebr�ue, ganz gleich wo sie arbeiten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("husbandry")
talkEntry:addResponse("Honey, milk and eggs are all easily gathered around Runewick and are much sought after by cooks and bakers. Galmair also has a plentiful supply, but they are scarce in the desert around Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("landwirt")
talkEntry:addResponse("Honig, Milch und Eier lassen sich ganz einfach um Runewick herum finden und sie werden st�ndig von K�chen und B�ckern ben�tigt. Galmair hat ebenfalls reiche Vorr�te, aber in der W�ste Cadomyrs sucht man vergeblich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mining")
talkEntry:addTrigger("smelt")
talkEntry:addResponse("Plenty of miners make use of Galmair's mines and smiths depend on the abundant ores smelted. Cadomyr also lays claim to some nearby mines, but you will not find any around Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sch�rf")
talkEntry:addTrigger("Bergbau")
talkEntry:addResponse("Viele Bergleute nutzen Galmairs Minen und Schmiede verlassen sich auf das reiche Erzvorkommen. Auch Cadomyr hat ein paar nahegelegene Minen. In der N�he von Runewick, wrist du allerdings keine Minen finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tan")
talkEntry:addTrigger("weave")
talkEntry:addTrigger("weaving")
talkEntry:addTrigger("dye")
talkEntry:addResponse("Cadomyr's tailors depend on hides for tanning and wool for spinning and weaving into cloth that can be dyed. Runewick also produces some cloth and leather, but sheep are scarce around Galmair.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gerbe")
talkEntry:addTrigger("F�rber")
talkEntry:addTrigger("Farbe")
talkEntry:addTrigger("webe")
talkEntry:addResponse("Cadomyrs Schneider sind abh�ngig von H�uten, die sie gerben, von Wolle, die sie spinnen und in Stoffe weben, die gef�rbt werden k�nnen. Runewick produziert ebenfalls Stoff und Leder, nur Galmair hat keine Schafe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wood")
talkEntry:addTrigger("lumber")
talkEntry:addTrigger("log")
talkEntry:addResponse("Runewick is set amongst forested islands so there are plenty of trees for wood cutters to supply the carpenters. Galmair also has a good supply of wood, but trees are more scarce in the desert surrounding Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Holz")
talkEntry:addTrigger("f�ll")
talkEntry:addTrigger("hack")
talkEntry:addResponse("Runewick liegt verteilt auf bewaldeten Inseln, also bieten sich Holzf�llern viele B�ume an, mit deren Holz sie Schreiner versorgen k�nnen. Eine hohe Anzahl an B�umen wirst du auch um Galmair herum finden, doch in der kargen W�ste Cadomyrs sind B�ume sp�rlich ges�ht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("armour")
talkEntry:addTrigger("armor")
talkEntry:addResponse("Galmair is renowned for metal work and many talented armourers can be found smithing at the anvils there. You should also be able to find a smith able to wield a hammer in Cadomyr, but Runewick has to trade for armour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("r�stung")
talkEntry:addResponse("Galmair ist bekannt f�r Metallarbeiten und viele talentierte R�stungsschmiede sammeln sich um die Ambosse dort. Mit etwas Gl�ck findest du auch in Cadomyr einen Schmied, der wei� wie man einen Hammer schwingt. Runewick ist auf Handel mit R�stungen angewiesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("black")
talkEntry:addResponse("Galmair is renowned for metal work and many blacksmiths produce tools and weapons there. You should also be able to find one able to forge what you need in Cadomyr, but Runewick has to trade for such metal wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("waffen")
talkEntry:addTrigger("werkzeug")
talkEntry:addResponse("Galmair ist bekannt f�r Metallarbeiten und viele Schmiede stellen dort Waffen und Werkzeuge her. Auch in Cadomyr kannst du manche finden, die diesem Handwerk nachgehen, doch Runewick muss Metallwaren importieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("brew")
talkEntry:addResponse("Runewick is celebrated for countless tasty beverages brewed by resident brewers. Galmair can also produce some fine ale, amongst other things, but Cadomyr largely depends on trade to supply the tavern.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Brau")
talkEntry:addTrigger("Br�u")
talkEntry:addResponse("Die �rtlichen Brauer machen Runewicks vielz�hlige Getr�nke ber�hmt. Auch Galmair produziert manch gutes Bier, aber Cadomyrs Taverne muss seine Vorr�te durch Handel mit den anderen Reichen auf Stand halten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("carpenter")
talkEntry:addTrigger("carpentry")
talkEntry:addTrigger("wood work")
talkEntry:addTrigger("carve")
talkEntry:addTrigger("carving")
talkEntry:addResponse("Proficient carpenters are mainly found in Runewick with abundant wood supplied from the surrounding forests. Galmair also supports some carpenters, but Cadomyr depends on trade to obtain wooden wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schreiner")
talkEntry:addTrigger("schnitze")
talkEntry:addResponse("Mit reichlichen Holzvorkommen in den umliegenden W�ldern, finden sich kompetente Schreiner haupts�chlich in Runewick. Galmair beherbergt auch einige Schreiner, w�hrend Cadomyr auf Handel angewiesen ist, um an Holzwaren zu gelangen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cook")
talkEntry:addTrigger("bake")
talkEntry:addTrigger("baking")
talkEntry:addResponse("Runewick is acclaimed for the tasty delights produced in the kitchen by bakers and cooks. Galmair can also provide some palatable alternatives, but Cadomyr largely depends on trade to feed the population.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Koch")
talkEntry:addTrigger("B�cker")
talkEntry:addTrigger("back")
talkEntry:addResponse("Runewick ist bekannt f�r leckere K�stlichkeiten, die B�cker und K�che in der K�che zubereiten. Galmair kann auch einiges Schmackhaftes bieten, aber Cadomyr ist weitgehend vom Handel abh�ngig, um die Bev�lkerung zu ern�hren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("fine")
talkEntry:addTrigger("gold")
talkEntry:addTrigger("jewel")
talkEntry:addResponse("Galmair is renowned for metal work and many finesmiths produce beautiful jewellery and other intricate wares there. Cadomyr also supports some finesmiths, but Runewick has to trade for such precious wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Feinschmied")
talkEntry:addTrigger("Goldschmied")
talkEntry:addTrigger("schmuck")
talkEntry:addResponse("Galmair ist bekannt f�r Metallarbeiten und viele Feinschmiede stellen dort sch�nen Schmuck und andere feine Waren her. Cadomyr unterst�tzt auch einige Goldschmiede. Runewick ist auf den Handel mit solch kostbaren Waren angewiesen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cut")
talkEntry:addTrigger("grind")
talkEntry:addTrigger("polish")
talkEntry:addResponse("Gem cutters in Galmair produce the most precisely polished stones and grind the best refined powders. Cadomyr's mines also support a good number of gem grinders, but Runewick must trade for such gems and powders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("schleife")
talkEntry:addTrigger("polier")
talkEntry:addResponse("Edelsteinschneider in Galmair produzieren die am pr�zisesten polierten Steine und mahlen sie zu feinstem Pulver. Cadomyrs Minen unterst�tzen auch eine gute Anzahl von Edelsteinschleifern, aber Runewick muss solche Edelsteine und Pulver importieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("glass")
talkEntry:addTrigger("blow")
talkEntry:addResponse("With so much sand around, Cadomyr has always been renowned for glassblowing and produces sparkling glassware. Runewick also supports some glassblowers, but without any sand Galmair must trade for bottles and such wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Glasbl�ser")
talkEntry:addTrigger("Glasblas")
talkEntry:addResponse("Umgeben von so viel Sand, ist es kaum verwunderlich, dass Cadomyrs Glasbl�ser bekannt sind f�r ihre funkelnden Produkte. Auch Runewick hat ein paar Glasbl�ser, aber ohne Sand gibt es auch keine Glasbl�serei in Galmair, sie m�ssen Flaschen und �hnliches erwerben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("potter")
talkEntry:addTrigger("brick")
talkEntry:addResponse("Potters work abundant clay and fire countless bricks and ornate vases in the kilns of Cadomyr. Runewick also has working kilns, but Galmair mostly trades for such clay products.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("T�pfer")
talkEntry:addTrigger("topf")
talkEntry:addTrigger("ziegel")
talkEntry:addResponse("T�pfer arbeiten mit den reichen Lehmvorkommen in Cadomyr und brennen dort unz�hlige Ziegel und kostbare Vasen in den Brenn�fen. Auch Runewick besitzt Brenn�fen, w�hrend man in Galmair vergeblich nach lokalen Tonerzeugnissen sucht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tailor")
talkEntry:addTrigger("dress")
talkEntry:addResponse("Cadomyr's tailors are renowned for their intricate stitching of colourful garments and robust leather wear. You should also be able to find a tailor able to stitch in Runewick, but Galmair largely depends on trade for tailored wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schneider")
talkEntry:addTrigger("kleid")
talkEntry:addTrigger("n�hen")
talkEntry:addResponse("Die Schneider von Cadomyr sind bekannt f�r ihre aufw�ndigen Schneiderein aus bunten Stoffen und ihre robusten Lederr�stungen. Du solltest auch in Runewick jemanden finden k�nnen, der n�hen kann, aber Galmair h�ngt weitestgehend vom Handel mit gen�hten Waren ab.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("candle")
talkEntry:addTrigger("chandler")
talkEntry:addResponse("Chandlers are most commonly found in Runewick thanks to the abundant supply of wax. Galmair also supports some candle making but Cadomyr must depend on other sources of light or trade for such wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kerzen")
talkEntry:addResponse("Kerzenzieher sind in Runewick am h�ufigsten anzutreffen, da reichlich Wachs vorhanden ist. Galmair unterst�tzt auch die Herstellung von Kerzen, aber Cadomyr muss sich auf andere Lichtquellen verlassen oder Kerzen importieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mason")
talkEntry:addResponse("Masons cut and sculpt the plentiful stone brought in from Galmair's mines. The mines close to Cadomyr also support some masons, but Runewick is dependent on trade of stone wares.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Metz")
talkEntry:addResponse("Steinmetze behauen und formen eine Vielzahl an Steinen, die Galmairs Minen hervorbringen. Auch die Minen Cadomyrs sind ergiebig, doch Runewick muss auf Handel f�r Steinwaren zur�ckgreifen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("smith")
talkEntry:addResponse("Armourers, blacksmiths, and finesmiths are all best found in Galmair. Cadomyr also supports such metal work, but you are unlikely to find any such crafters in Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("schmied")
talkEntry:addResponse("R�stungsschmiede, Waffenschmiede und Goldschmiede finden sich vor allem in Galmair. Auch Cadomyr f�rdert die Arbeit mit Metallen. Es ist allerdings unwahrscheinlich Schmiede irgendeiner Art in Runewick zu finden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("hunter")
talkEntry:addTrigger("fighter")
talkEntry:addTrigger("soldier")
talkEntry:addTrigger("guard")
talkEntry:addResponse("Those adept at wielding a weapon can find work in any realm, be it hunting, adventuring, or defending your homeland.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("j�ge")
talkEntry:addTrigger("jagd")
talkEntry:addTrigger("K�mpfer")
talkEntry:addTrigger("Soldat")
talkEntry:addTrigger("Wache")
talkEntry:addResponse("Diejenigen, die mit Waffen umgehen k�nnen, k�nnen in jedem Reich Arbeit finden, sei es bei der Jagd, unterwegs auf Abenteuern oder bei der Verteidigung ihres Heimatlandes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alchemist")
talkEntry:addTrigger("alchemy")
talkEntry:addTrigger("potion")
talkEntry:addResponse("Alchemists can find a cauldron to work with in any of the realms, supported by a good supply of local herbs and those collected across the lands.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("alchem")
talkEntry:addTrigger("trank")
talkEntry:addResponse("Alchemisten finden in jedem Reich Kessel, an denen sie arbeiten k�nnen. �rtlich unterschiedliche Kr�uter und auch jene, die �ber ganz Illarion verteilt sind, stellen eine wichtige Grundlage dar.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mage")
talkEntry:addTrigger("magic")
talkEntry:addTrigger("arcane")
talkEntry:addResponse("Runewick was founded by mages but those adept at manipulating mana can make use of their talents in any realm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("magie")
talkEntry:addTrigger("arkan")
talkEntry:addResponse("Runewick wurde von Magiern gegr�ndet, doch jene, die in der Lage sind Mana zu kontrollieren, sind mit ihren Talenten in allen Reichen willkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("glyph")
talkEntry:addCondition(condition_language("english"))
talkEntry:addResponse("Runewick was founded by mages but those adept at manipulating mana can make use of their talents in any realm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("glyph")
talkEntry:addResponse("Runewick wurde von Magiern gegr�ndet, doch jene, die in der Lage sind Mana zu kontrollieren, sind mit ihren Talenten in allen Reichen willkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell")
talkEntry:addTrigger("something")
talkEntry:addResponse("All I have is information about the realms, and I'll give that to you for free!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Von mir bekommst du Informationen �ber die Reiche und die sind umsonst!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Viola")
talkEntry:addTrigger("Baywillow")
talkEntry:addResponse("That's me! If you want information about the realms look no further!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Viola")
talkEntry:addTrigger("Baywillow")
talkEntry:addResponse("Das bin ich und ich wei� viele wichtige Dinge �ber die Reiche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addResponse("Sorry, I don't quite understand. Just ask me for 'help' and I'll see what I can do for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger(".*")
talkEntry:addResponse("Das habe ich jetzt nicht richtig verstanden. Frag mich einfach nach 'Hilfe' und ich schau, was ich f�r dich tun kann.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Hiho Reisender! Falls du neu hier bist, hei�e ich dich herzlich willkommen in Illarion! Wenn du Hilfe brauchst, sag einfach Bescheid.", "Hiho traveller! If you are new to these lands, welcome to Illarion! Just ask me for help if you need any assistance.")
talkingNPC:addCycleText("Trollshaven ist die Heimat des Gasthofes zur Hanfschlinge und ist jederzeit einen Besuch wert, auch wenn es nat�rlich ein richtiges Zuhause nicht ersetzt.", "Troll's Haven is home of the Hemp Necktie Inn and is always worth a visit, but there is no place like home!")
talkingNPC:addCycleText("Oh Mann, es gibt so viel �ber Illarion zu lernen!", "Gosh! There is so much to learn about Illarion!")
talkingNPC:addCycleText("Reiche, Anf�hrer, Handwerke, Motivationen, Landschaften und sogar G�tter! Schlag ein Thema vor, ich wei� alles... Naja, fast alles!", "Realms, leaders, crafts, motives, landscapes, even gods! You name it, I know it... well nearly all!")
talkingNPC:addCycleText("Wenn du etwas �ber die drei Reiche erfahren m�chtest, kann ich dir vielleicht davon erz�hlen.", "If there was something you wanted to know about the three realms, I could probably tell you.")
talkingNPC:addCycleText("Hiho! Ich kann dir alles �ber die drei Reiche Illarions erz�hlen!", "Hiho! I can tell you all about the three realms of Illarion.")
talkingNPC:addCycleText("Hiho! Falls du nach Abenteuern suchst, findest du in ganz Illarion einiges zu tun und zu erkunden.", "Hiho! If you're looking for adventures there are plenty of quests to be found all over Illarion.")
talkingNPC:addCycleText("Wenn du nach Arbeit suchst, scheu dich nicht davor, herumzufragen. Die Leute haben immer etwas f�r dich zu tun.", "If you're looking for work, don't be afraid to ask around as people always need tasks doing.")
talkingNPC:addCycleText("Verlauf dich nicht! Ich kann dir eine Menge Hinweise geben, damit du dich zurechtfindest.", "Don't get lost! I can offer you lots of advice to help you find your way.")
talkingNPC:addCycleText("Ganz gleich wer du bist oder was du tust, ich kann dir helfen einen Ort zu finden, den du dein Zuhause nennen kannst!", "No matter who you are or what you do, I can find you a place to call home!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Das ist deine Tutorin Viola Baywillow.", "This is your tutorial guide Viola Baywillow.")
mainNPC:setUseMessage("Finger weg!", "Do not touch me!")
mainNPC:setConfusedMessage("Bitte wechsle die Sprache deines Charakters zur Gemeinsprache mit dem Befehl '!l common'.", "Please switch the language of your character to the common tongue using the command '!l common'.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 803)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 106)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 34)
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
