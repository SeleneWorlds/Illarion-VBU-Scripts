local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Andrei Kazakov, the Priest of Moshran. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Andrei Kazakov, ein Priester des Moshran. Schl�sselw�rter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Your cheerfulness irritates me. Perhaps I should end it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Your cheerfulness irritates me. Perhaps I should end it.")
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
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Deine Fr�hlichkeit st�rt mich, vielleicht sollte ich sie beenden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Good riddance. Be glad I did not slay you where you stand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Good riddance. Be glad I did not slay you where you stand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Gut, dich loszuwerden. Sei froh, dass ich dich nicht erschlagen habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Bored. I haven't run anyone through today. Would you like to help me solve this problem?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir ist langweilig. Ich hab heut noch keinen erschlagen, m�chtest du mir helfen dieses Problem zu l�sen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("Andrei Kazakov. Remember that name when I am the last face you see before you die.")
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
talkEntry:addResponse("Andrei Kazakov. Erinner dich an den Namen, wenn mein Gesicht das Letzte ist, was du vor deinem Tod siehst.")
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
talkEntry:addResponse("I only deal in blood and bones.")
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
talkEntry:addResponse("Ich handle nur mit Blut und Knochen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am a priest of Moshran. I spread his teachings across Illarion. Those who do not bow down to his will, will soon meet him in the afterlife.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am a priest of Moshran. I spread his teachings across Illarion. Those who do not bow down to his will, will soon meet him in the afterlife.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin Priester von Moshran. Ich verbreite seine Lehren in Illarion und  wer sich nicht seinem Willen beugt wird ihn bald im Jenseits kennenlernen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("There is only one god that matters. Moshran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Es gibt nur einen wahren Gott, Moshran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("There is only one god that matters. Moshran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Es gibt nur einen wahren Gott, Moshran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Drunkards the lot. Adron and his followers spend too much time in taverns sucking down bottles of wine. They make for easy prey, though it is wholly unsatisfying.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Allesamt Trunkenbolde. Adron und sein Anh�nger verbringen zu viel Zeit damit in Tavernen Wein zu saufen. Das macht sie zu leichter Beute, allerdings ist es ganz und gar unbefriedigend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("This elder god's warriors follow Malachin now. Pah! They would have been better off following Moshran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Die Krieger dieses alten Gottes folgen nun Malachin. Pah! Sie h�tten sich besser Moshran zugewandt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("She is the god of death and holds the secrets to necromancy. Chergas followers vainly attempt to chase us away from graveyards. I would prefer to be rid of them so we can do our work without interference. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Sie ist die G�ttin des Todes und kennt die Geheimnisse der Nekromanie. Chergas J�nger versuchen erfolglos uns von den Friedh�fen zu verjagen. Ich w�rde vorziehen sie loszuwerden, damit wir unsere Arbeit ungest�rt verrichten k�nnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Dreadfully boring followers. Elaras mages have a bad habit of mucking up things. I prefer to wait until they have hidden away in a secluded part of a library with a book before dispatching of them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ihre Anh�nger sind furchtbar langweilig. Elaras Magier haben die schlechte Angewohnheit Dinge zu versauen. Ich warte lieber ab bis sie sich in einem abgelegenen Bereich der B�cherei zur�ckziehen, bevor ich sie erledige.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("This elder god doesn't matter any more.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Dieser alte Gott interessiert nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Elder goddess. She matters not.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Eine alte G�ttin. Sie interessiert nicht mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("His followers will try to con you out of your coins. I would sooner kill them and take their finely crafted armor and weapons for myself than pay them. Or better yet. Kidnap them and enslave them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Seine Anh�nger werden versuchen dich deiner M�nzen zu erleichtern. Ich w�rde sie eher umbringen um ihre gut gefertigten R�stungen und Waffen selbst zu benutzen statt sie zu bezahlen. Oder noch besser, du entf�hrst und versklavst sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Sheep in wolves clothing. They think themselves more noble and honourable than everyone else. Little do they realize that they die screaming and crying for their mother like everyone else.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Ein Schaf im Wolfspelz. Die glauben sie w�ren edler und ehrenwerter als alle anderen. Dabei vergessen sie, dass sie weinend und nach ihrer Mutter schreiend sterben, wie jeder andere auch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Moshran is the god of the strong! There is no room for weakness within his ranks. Those who are feeble have no place in this world and it is our job to remove them by any means necessary. Heh. The bloodier the better.")
talkEntry:addResponse("Those who serve Moshran loyally in life will be given eternal life after death as a lich. But only should their work prove brutal enough. Those who do not serve faithfully enough face enslavement and eternal torture.")
talkEntry:addResponse("Known to necromancers as the bone lord, Moshran teaches the faithful rituals to increase their power and brutality. Quite unfortunate for the poor, innocent soul required for sacrifice. Bah! No one is innocent!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Moshran ist der Gott der Starken. In seinen Reihen ist kein Platz f�r Schw�che. Diejenigen die schwach sind haben auf dieser Welt nichts zu suchen und es ist unsere Aufgabe diese auszusortieren. Je blutiger desto besser.")
talkEntry:addResponse("Denen, die Moshran loyal im Leben gedient haben schenkt er nach dem Tode ewiges Leben als Lich. Aber nur wenn ihre Arbeit brutal genug war. Die, die nicht treu dienten droht Versklavung und ewige Folter.")
talkEntry:addResponse("Unter den Nekromanten als Herr der Knochen bekannt, lehrt Moshran seinen Getreuen die Wege Macht und St�rke zu mehren. Pech f�r die armen unschuldigen Seelen, die geopfert werden m�ssen. Pah, niemand ist unschuldig!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Ah. The god of chaos. His followers are all mad. I suppose they do have their uses. Causing public disturbances and general disorder. They are quite good at keeping town guards busy.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Ach ja, der Gott des Chaos. Seine Anh�nger sind alle verr�ckt. Ich sch�tze, die haben schon ihren Nutzen. Sie st�ren die �ffentliche Ordnung und bringen alles durcheinander. Sie sind gut darin Stadtwachen zu besch�ftigen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Her followers tend to be bright and bubbly halflings who spend too much time farming in fields and cooking stew. Their cheerfulness gives me a headache. It gives me much pleasure to chop them up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Ihre Anh�nger sind lebensfrohe �Halblinge, die zu viel Zeit auf ihren Feldern verbringen oder damit Eintopf zu kochen. Ihre Fr�hlichkeit bereiten mir Kopfschmerzen. Es macht viel mehr Spa� sie zu schlachten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("What better partners than thieves and assassins. His followers do not care from whom they receive their coins from. It also makes them rather disposable should they be caught.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Diebe und Assassinen sind die besten Partner. Die fragen nicht nach, woher das Geld kommt. Au�erdem sind sie leicht ersetzbar falls mal einer geschnappt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Pleasure goddess. Her followers are all back alley harlots. Though they're always up for a good time before you slit their throats.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Die G�ttin des Vergn�gens. Ihre Anh�nger sind alles Hintergassenhuren. Sie sind allerdings immer f�r eine gute Zeit zu haben, bevor man ihnen die Kehle durchschneidet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("An elder goddess who has her fingers in too many pies. The same goes for her damned lizardfolk children. Their priests and templars can not keep their scaley snouts out of others business.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora:Eine alte G�ttin, die in zu vielen Dingen mitmischt. Das Gleiche gilt auch f�r ihre Kinder, die verdammten Echsen. Ihre Priester und Templer k�nnen ihre geschuppten Schnauzen nicht aus anderer Leute Dinge heraushalten.")
talkEntry:addResponse("Tanora:Eine alte G�ttin, die in zu vielen Dingen mitmischt. Das Gleiche gilt auch f�r ihre Kinder, die verdammten Echsen. Ihre Priester und Templer k�nnen ihre geschuppten Schnauzen nicht aus anderer Leute Dinge heraushalten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Elder goddess. She no longer matters.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Eine der Alten G�tter, die keinen mehr interessieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Beware the paladins of Zhambra. They are righteous do-gooders who will try to hunt you down. But they are also extremely trusting. They will not be expect a knife in their back from a faithful friend.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("H�te dich vor den Paladinen Zhambras. Sie sind selbstgerechte Gutmenschen, die dich unbarmherzig jagen. Aber sie sind extrem vertrauensselig. Daher rechnen sie nicht mit dem Messer eines treuen Freundes in ihrem R�cken.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Servant")
talkEntry:addResponse("There are three immortal servants of Moshran. He breed them and taught them and bestowed upon them immense power. Their names are Dragorog, Bjolmur, and Cherass, and they are bound to Moshran for all eternity.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Diener")
talkEntry:addResponse("Es gibt drei unsterbliche Diener Moshrans. Er schuf sie, lehrte sie und gab ihnen ungeheure Macht. Ihre Namen sind Dragorog, Bjolmur und Cherass, und sie sind f�r alle Ewigkeit an Moshran gebunden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Dragorog")
talkEntry:addResponse("The master of the evil flame. He is lord of the dark paladins. Dark unholy knights of Dragorog. He is also the keeper of black dragons, if one can truly call them kept creatures. Beautiful, beautiful chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Dragorog")
talkEntry:addResponse("Der Meister der teuflischen Flamme. Er ist Herr �ber die schwarzen Paladine, die dunklen unheiligen Ritter Dragorogs. Er ist auch der H�ter der schwarzen Drachen und wei� tats�chlich wie man sie rufen kann. Welch wunderbares Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bjolmur")
talkEntry:addResponse("She is the whisper in the dark. Bjolmur takes all of a person's pain and hate and and turns them down the path of darkness. She is beautiful and charming and is a mistress of disguise. As are her demons.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bjolmur")
talkEntry:addResponse("Sie ist das Raunen im Dunkeln. Bjolmur baut aus Schmerz und Hass der Leute den Weg in die Finsternis. Sie ist wundersch�n und charmant und eine Meisterin der Verkleidung, ebenso wie ihre D�monen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherass")
talkEntry:addResponse("He is the undead lord. Cherass is the master of the undead death knights. Yet he commands many undead, liches, unholy mages, and even necromancers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherass")
talkEntry:addResponse("Er ist der Herr der Untoten, der Meister der untoten Ritter. Unter seinem Kommando stehen viele Untote, Liche, unheilige Magier und sogar Nekromanten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (250); end))
talkEntry:addResponse("Moshran is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (200); end))
talkEntry:addResponse("Moshran is delighted with your unholy path.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (150); end))
talkEntry:addResponse("Moshran is charmed by your wickedness.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (100); end))
talkEntry:addResponse("Moshran is happy with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 16))
talkEntry:addResponse("Moshran is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (50); end))
talkEntry:addResponse("Moshran is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-50); end))
talkEntry:addResponse("Moshran is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 16))
talkEntry:addResponse("Moshran is displeased with you. If you don't start appease him you will not be able to call yourself devoted to Moshran anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-100); end))
talkEntry:addResponse("Moshran is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-150); end))
talkEntry:addResponse("Moshran is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-200); end))
talkEntry:addResponse("Moshran is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-250); end))
talkEntry:addResponse("Moshran is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Moshran is wrathful about you. Beware.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (250); end))
talkEntry:addResponse("Moshran ist �berschw�nglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (200); end))
talkEntry:addResponse("Moshran ist au�erordentlich zufrieden mit deinem frevelhaften Werdegang.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (150); end))
talkEntry:addResponse("Moshran ist begeistert von deiner Verschlagenheit.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (100); end))
talkEntry:addResponse("Moshran ist gl�cklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 16))
talkEntry:addResponse("Moshran ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, "=>", function(number) return (50); end))
talkEntry:addResponse("Moshran ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-50); end))
talkEntry:addResponse("Moshran ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 16))
talkEntry:addResponse("Moshran ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anh�nger Moshrans zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-100); end))
talkEntry:addResponse("Moshran ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-150); end))
talkEntry:addResponse("Moshran ist entt�uscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-200); end))
talkEntry:addResponse("Moshran ist w�tend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(418, ">", function(number) return (-250); end))
talkEntry:addResponse("Moshran ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Moshran ist rasend vor Zorn auf dich. H�te dich!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Human sacrifices are the best. Then there are also elven sacrifices, lizard sacrifices, dwarven sacrifices, halfling sacrifices, and even orcish sacrifices.")
talkEntry:addResponse("You can always kill an animal and sacrifice its corpse if you can't find a sentient creature.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Menschenopfer sind die besten. Au�erdem gibt es noch Elfenopfer, Echsenopfer, Zwergenopfer, Halblingsopfer und sogar Orkopfer.")
talkEntry:addResponse("Du kannst jederzeit ein Tier t�ten und seinen Kadaver opfern, falls du keine geeignete Kreatur zuhand hast.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("He is too busy in his isolated island to care what happens in his town. It makes wreaking havoc there so simple.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("He is too busy in his isolated island to care what happens in his town. It makes wreaking havoc there so simple.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Auf seiner abgelegenen Insel k�mmert er sich nicht darum was in der Stadt passiert. Das macht es einfach die Stadt zu verw�sten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Stuck up scholars and mages. They die just like the rest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Hochn�sige Gelehrte und Magier. Sie sterben genauso wie alle Anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Selfish son of a greedy merchant. Though rumor is his father death was not as simple as it seems.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Selbsts�chtiger Sohn eines gierigen H�ndlers. Ger�chten nach war der Tod seines Vaters nicht so einfach wie es schien.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Greedy, but industrious. They die just like the rest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Gierig, aber arbeitssam. Sie sterben genauso wie alle Anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("She shall leave Cadomyr with no heir. I can not wait to see the anarchy that results from her death!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("She shall leave Cadomyr with no heir. I can not wait to see the anarchy that results from her death!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Sie wird Cadomyr ohne Erben hinterlassen. Ich kann es nicht erwarten die Anarchie zu sehen, die aus ihrem Tod resultiert!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Foolish and self-righteous. They die just like the rest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("T�richt und selbstgerecht. Sie sterben genauso wie alle Anderen.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Erfreu dich am Krieg. Sieh deine Gegner auf dem Schlachtfeld verbluten und du wei�t, du hast eine gute Tat im Namen Moshrans erbracht.", "Take pleasure in war. See your enemies strewn across the battlefield and know that you have done good work in the name of Moshran.")
talkingNPC:addCycleText("T�te den Schw�chsten, nicht den Besten.", "Kill smarter, not harder.")
talkingNPC:addCycleText("Anarchie und Zerst�rung sind Belohnung genug.", "Anarchy and disruption are its own reward.")
talkingNPC:addCycleText("Jage deine Feinde mit Schrecken in die Flucht. Schau zu, wie sie der Selbstsucht und Gier beim Kampf ums �berleben erliegen. Ohne zu wissen werden sie die Arbeit von Moshran f�r dich tun.", "Make your enemies flee in terror. Watch as they succumb to selfishness and greed in their search for survival. In turn, they will unknowingly do the work of Moshran for you.")
talkingNPC:addCycleText("Blutbesudelt werden wir geboren. Und so werden wir auch sterben!", "We were born into this world covered in someone else's blood. It is only fitting to to leave this world the same way.")
talkingNPC:addCycleText("#me singt schadenfroh: 'Sie verdienen alle zu sterben.'", "#me sings gleefully to himself: 'They all deserve to die!'")
talkingNPC:addCycleText("#me trinkt aus dem Sch�del eines Feindes.", "#me drinks from the skull of his enemies.")
talkingNPC:addCycleText("#me sch�rft seine Axt an einem Wetzstein.", "#me sharpens his axe with a whetstone.")
talkingNPC:addCycleText("#me taucht seinen Finger in eine Sch�ssel und schmiert sich die dunkelrote Fl�ssigkeit ins Gesicht, gefolgt von einem wei�z�hnigen Grinsen.", "#me dips his fingers into a bowl. His fingers come out covered in a dark red liquid that he promptly smears across his face, followed by a white toothy grin.")
talkingNPC:addCycleText("#me's Augen erkunden aufmerksam die Umgebung ab, genau wie ein J�ger der seine Beute sucht.", "#me's eyes search around intently, just as a hunter would seek out their prey.")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Andrei Kazakov, ein Priester des Moshran.", "This NPC is Andrei Kazakov, the Priest of Moshran.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 2303)
mainNPC:setEquipment(3, 2402)
mainNPC:setEquipment(11, 2378)
mainNPC:setEquipment(5, 2640)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 1471)
mainNPC:setEquipment(9, 1499)
mainNPC:setEquipment(10, 1518)
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
