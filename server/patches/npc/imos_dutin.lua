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
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Imos Dutin, the Priest of Nargun. Keywords: Hello, god, favour, sacrifice."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Imos Dutin, ein Priester des Nargun. Schl�sselw�rter: Hallo, Gott, Gunst, Opfergabe."))
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
talkEntry:addResponse("Lord Nargun's blessing on you and welcome.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Lord Nargun's blessing on you and welcome.")
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
talkEntry:addResponse("Unser Herr Nargun segne dich. Herzlich Willkommen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May the raven guide you on your path, and may your bones roll true.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("May the raven guide you on your path, and may your bones roll true.")
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
talkEntry:addResponse("M�gen die Raben deine Wege begleiten und das Gl�ck dir hold sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("With Nargun's blessing am I doing well, he keeps me on my toes.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mit Narguns Segen geht's mir gut. Er h�lt mich auf Trab.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Imos Dutin, priest of Nargun, How may I help you?")
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
talkEntry:addResponse("Ich bin Imos Dutin, Nargunpriester. Wie kann ich dir helfen?")
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
talkEntry:addResponse("I will gladly speak of Lord Nargun and roll some bones to take some coins, but I do not trade or sell things.")
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
talkEntry:addResponse("Wenn du willst rede ich �ber Nargun oder wir w�rfeln um ein paar M�nzen, aber ich handel nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am Lord Nargun's servant, tend his altar and speak to those who seek favor of Nargun or have questions about him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am Lord Nargun's servant, tend his altar and speak to those who seek favor of Nargun or have questions about him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich diene unserem Herrn Nargun, sorge f�r seinen Altar und bin f�r die da, die seine Gunst suchen oder eine Frage an ihn haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("God")
talkEntry:addResponse("Lord Nargun, the God of Chaos and trickery. Some won't even speak his name for fear of attracting his attention.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addResponse("Nargun, der Gott des Chaos und der Listen. Es gibt tats�chlich Leute die seinen Namen nicht aussprechen aus Angst seine Aufmerksamkeit zu erregen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Lord Nargun, is one of the eleven younger gods, and not one of the five elder gods.. I follow my lord's religion spreading his will of chaos and tricks. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Religion")
talkEntry:addResponse("Unser Herr Nargun ist einer der elf j�ngeren G�tter und keiner der f�nf Alten G�tter. Ich befolge die Regeln seiner Religion und verbreite seine Lehren �ber Chaos und Liste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Yes, yes.. I know my lord Nargun, sometimes watches over Adron's doing since Adron is the god of wine and festivities. Most of Adron's followers are drunkards, making Lord Nargun's day to have some fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Ja, ja. Ich wei� dass Nargun manchmal �ber Adron wacht, da dieser der Gott des Weines und der Feste ist. Die meisten von Adrons Anh�nger sind Tunkenbold und bringen unserem Herrn viel Spa�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon. Yes, Bragon is the elder god of fire. A stiff board of the gods being so noble. But his followers are also ferocious warriors. And warriors cause great chaos. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addResponse("Bragon, ja Bragon der alte Gott des Feuers. Kaum einer der brettsteifen G�tter ist so edel. Doch seine Anh�nger sind wilde Krieger, und die verursachen ein sch�nes Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga:The goddess Cherga, now there is a goddess who does not care if you are good or evil.")
talkEntry:addResponse("Cherga:The goddess Cherga, now there is a goddess who does not care if you are good or evil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Der G�ttin Cherga ist es egal ist ob man gut oder schlecht war.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Hmm, what to say about goddess Elara. A smart one that one. My Lord Nargun does not like her followers much. They tend to figure out his tricks and stop his chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Was kann man nur �ber G�ttin Elara sagen? Sie ist clever. Mein Herr Nargun kann ihre Anh�nger nicht besonders leiden. Sie neigen dazu seine Tricks zu durchschauen und das Chaos zu ordnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("The recluse god Eldan. One never knows what that lot is thinking. Eldan's followers be mostly the magic users who spend their days in books studying theories.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan, der Einsiedler unter den G�ttern. Man wei� nie was er denkt. �Seine Anh�nger, vor allem die Magier, stecken tagelang ihre Nasen in B�cher und br�ten �ber Theorien.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("That be the windy goddess Findari, she can be quite tame, mostly only causes trouble for those she sees going against her will. Her followers are mostly artist and bards but lots of them elven follow her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Die windige G�ttin Findari kann recht zahm sein. Doch meist verursacht sie denen, die gegen sie sind, Schwierigkeiten.Die meisten ihrer Anh�nger sind Spielleute und Schauspieler doch auch einige Elfen f�hlen sich zu ihr hingezogen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ahh that boring god, Irmorom, god of trade and craft. But what can be said for a god who cares only for making coin. Lord Nargun likes to watch crafters and give them light unfelt nudges to mess up their wares so they do not turn out perfect.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Ahh, dieser langweilige Gott Irmorom. Der Gott des Handels und des Handwerks. Was soll man �ber einen Gott sagen, dem es nur darum geht, Geld anzuh�ufen. Nargun liebt es den Handwerkern zuzuschauen und durch den ein oder anderen Knuff dazu beizutragen, dass nicht alles perfekt wird.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("That do gooder god Malachin. He doesn't know chaos or how to have a wee bit of fun. He is god of battle and hunting and doesn't do tricks. Nor do his followers who are mostly knights, paladins and other rule following do gooders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addResponse("Der gute Malachin. Er kennt kein Chaos und hat nie Spa�. Er ist der Gott der Jagd und der Schlachten und spielt keine Streiche. Das gilt auch f�r seine Anh�nger, die meist Ritter, Paladine oder andere regelbesessene Leute sind.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("A god Lord Nargun's finds interesting. He is the god of blood and bones, he is. His followers spread chaos and allows for trickery like Lord Nargun likes, but they love to spill blood for fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Ein Gott den Nargun interessant findet. Er ist der Gott des Blutes und der Knochen. Seine Anh�nger verbreiten Chaos und Betrug so wie auch Nargun aber sie t�ten aus Spa�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Praise Lord Nargun! He is the god of chaos and fortune. He likes to have fun with mortals causing chaos and doing tricks and mischief. He is the lord of fun!")
talkEntry:addResponse("Narguns followers often don't admit to being his follower. Then they can cause as much chaos as possible! Though there is no pleasing Nargun. He is as fickle as his followers. Sometimes he helps you trick. Sometimes he tricks you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addResponse("Lobe Nargun den Gott von Chaos und Zufall. Er liebt es es mit seinen Tricks unter den Sterblichen Chaos und Unfug zu s�en. Er ist der Herr des Spa�es.")
talkEntry:addResponse("Narguns Anh�nger bekennen sich oft nicht zu ihm weil sie dann viel besser Verwirrung stiften k�nnen. Nargun ist nicht immer angenehm, er ist so wankelm�tig wie seine Anh�nger. Manchmal unterst�tzt er deine Streiche, manchmal trickst er dich aus.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Goddess Oldra, mother of all things. Lord Nargun is grateful for her followers, it lets him have more fun each generation. Her followers are often farmers, mothers, midwives, and many halflings. Lord Nargun likes to cause chaos with them at times.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Die G�ttin Oldra, die Mutter aller Dinge. Unser Herr Nargun ist ihren Anh�ngern dankbar, sie erlauben es ihm seinen Sp� mit jeder Generation zu haben. Ihre Anh�nger sind meist Bauern, M�tter, Hebammen und viele Halblinge. Nargun sorgt bei ihnen gerne f�r Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Now you there be a god close to Lord Nargun's heart. Ronagan is the god of thieves and shadows. That group knows how to have fun and cause a good bit of chaos and fun! His followers are thieves, and assassins")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan:Jetzt sind wir Narguns Herzen nahe. Ronagan ist der Gott der Diebe und der Schatten. Seine Anh�nger, Diebe und Assassinen, wissen wie man Spa� haben kann und vor allem verursachen sie jede Menge an Chaos.")
talkEntry:addResponse("Ronagan:Jetzt sind wir Narguns Herzen nahe. Ronagan ist der Gott der Diebe und der Schatten. Seine Anh�nger, Diebe und Assassinen, wissen wie man Spa� haben kann und vor allem verursachen sie jede Menge an Chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("What can be said for goddess Sirani? Goddess of love and pleasure. Foolish things are done in the name of love and pleasure, so she is a good goddess. My lord Nargun loves to play tricks on her followers.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani:Was kann man nur �ber die G�ttin Sirani sagen? Die G�ttin von Liebe und Freude. Unsinnige Dinge wurden in ihrem Namen verzapft, deshalb lieben wir sie. Unser Herr Nargun spielt ihren Anh�ngern gerne Streiche.")
talkEntry:addResponse("Sirani:Was kann man nur �ber die G�ttin Sirani sagen? Die G�ttin von Liebe und Freude. Unsinnige Dinge wurden in ihrem Namen verzapft, deshalb lieben wir sie. Unser Herr Nargun spielt ihren Anh�ngern gerne Streiche.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("The sad goddess Tanora. Her lizardfolk take things way too seriously. Lord Nargun finds no humor in their lives, but they always like to fight for power over each other and cause chaos.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addResponse("Die traurige G�ttin Tanora. Ihre Echsenmenschen nehmen alles zu ernst. Nargun wei� da keinen Humor zu erkennen aber sie sind chaotisch und k�mpfen gerne untereinander.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("She be the grandmother of the mortals land. She is like goddess Oldra but is more a stick in the mud. She is so serious and thinking, not things Lord Nargun likes. Her followers are old female druids or elves. No fun there for Lord Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Sie ist die Urmutter des Landes der Sterblichen. Sie ist wie Oldra blo� ein Spielverderber. Sie ist so ernst und nachdenklich, nichts was Nargun gefallen w�rde. Ihre Anh�nger sind alte Druiden und Elfen. Da hat Nargun keinen Spa�.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, god of Friendship and Loyalty, that stick in the mud. His followers distest lord Nargun and want everyone to be friends and trust worthy to each other, there is no fun there for Lord Nargun to cause chaos with them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra, der Gott der Freundschaft und Treue, ein Spielverderber. Seine Anh�nger verabscheuen Nargun und wollen dass alle befreundet sind und sich vertrauen. Wo bleibt da Spa� und Chaos?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (250); end))
talkEntry:addResponse("Narg�n is exalted with you!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (200); end))
talkEntry:addResponse("Narg�n is delighted with you, lucky one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (150); end))
talkEntry:addResponse("Narg�n is charmed by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (100); end))
talkEntry:addResponse("Narg�n is happy with you, keep it up.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 6))
talkEntry:addResponse("Narg�n is still pleased with you, but beware not to lose your status as priest.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addResponse("Narg�n is pleased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-50); end))
talkEntry:addResponse("Narg�n is indifferent about you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 6))
talkEntry:addResponse("Narg�n is displeased with you, if you go on this way you will not be able to call yourself devoted to Narg�n anymore.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addResponse("Narg�n is displeased with you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-150); end))
talkEntry:addResponse("Narg�n is irritated by you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-200); end))
talkEntry:addResponse("Narg�n is angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-250); end))
talkEntry:addResponse("Narg�n is very angry on you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("favour")
talkEntry:addTrigger("favor")
talkEntry:addResponse("Narg�n is wrathful about you. Are you not afraid of the god of chaos?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (250); end))
talkEntry:addResponse("Narg�n ist �berschw�nglich vor Freude!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (200); end))
talkEntry:addResponse("Narg�n ist au�erordentlich zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (150); end))
talkEntry:addResponse("Narg�n ist begeistert von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (100); end))
talkEntry:addResponse("Narg�n ist gl�cklich, mach weiter so.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addCondition(condition_quest(402, "=", 6))
talkEntry:addResponse("Narg�n ist noch zufrieden mit dir, aber sei vorsichtig, nicht deinen Priester Status zu verlieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, "=>", function(number) return (50); end))
talkEntry:addResponse("Narg�n ist zufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-50); end))
talkEntry:addResponse("Narg�n ist unentschlossen was dich angeht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addCondition(condition_quest(401, "=", 6))
talkEntry:addResponse("Narg�n ist unzufrieden mit dir, wenn du so weiter machst, wirst du bald nicht mehr in der Lage sein, dich Anh�nger Narg�ns zu nennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-100); end))
talkEntry:addResponse("Narg�n ist unzufrieden mit dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-150); end))
talkEntry:addResponse("Narg�n ist entt�uscht von dir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-200); end))
talkEntry:addResponse("Narg�n ist w�tend auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addCondition(condition_quest(408, ">", function(number) return (-250); end))
talkEntry:addResponse("Narg�n ist sehr zornig auf dich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gunst")
talkEntry:addResponse("Narg�n ist rasend vor Zorn auf dich. F�rchtest du den Gott des Chaos etwa nicht?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sacrifice")
talkEntry:addResponse("Narg�n changes his preferences ever so often.")
talkEntry:addResponse("Have you tried bananas today?")
talkEntry:addResponse("There are divinations to predict what Narg�n desires today. Have you tried telling by druids tea leaves?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("opfer")
talkEntry:addTrigger("opfergabe")
talkEntry:addResponse("Narg�n �ndert seine Vorlieben st�ndig.")
talkEntry:addResponse("Hast du es heute schon mit Bananen versucht?")
talkEntry:addResponse("Es gibt M�glichkeiten herauszufinden, wonach Narg�n heute verlangt. Hast du es versucht aus Druidentee-Bl�ttern zu lesen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Bah, stuffy mage. But still lord Nargun his fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Bah, stuffy mage. But still lord Nargun his fun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Pah, ein verklemmter Magier, aber immer f�r einen Streich Narguns gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Stuffy town of those good doers. Chaos would be good there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Was f�r eine verklemmte Stadt. Chaos t�te denen mal gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ahh the Don. A dwarf after Lord Nargun's heart. He would do anything for a coin! He likes to roll the bones with Lord Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ah der Don, ja ein Zwerg nach Narguns Geschmack. Der w�rde f�r Geld alles tun. Er wirft gerne mal die W�rfel mit Nargun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("A grand town! Lots of people and lots of fun. Chaos grows there with every whisper.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Eine gro�artige Stadt, ein Haufen Leute und jede Menge Spa�. Chaos entsteht dort mit jedem Gefl�ster.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("A no fun noble. Rules, rules, rules! All she cares about is who is following the rules of her town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("A no fun noble. Rules, rules, rules! All she cares about is who is following the rules of her town.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Eine unlustige Adlige. Regeln, nichts als Regeln. Sie interessiert nur, dass diese auch befolgt werden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Nobles! Bah! But easy to cause trouble or mischief with. A whisper of someone trying to bend the queen's ear more than another noble living there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Adelige, na ja. Aber es ist eifach unter ihnen Chaos zu stiften und Missgunst zu s�en. Ein Fl�stern, das das Ohr der K�nigin erreicht ist mehr wert als die anderen Adligen dort.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Wirf die W�rfel und schau was Nargun dir gibt.", "Roll your bones and see what Nargun gives you.")
talkingNPC:addCycleText("Folge dem Pfad des Raben, er ist verschlungen und lustig.", "Follow the Raven's path, it be fun and chaotic.")
talkingNPC:addCycleText("Nargun segne dich, mal sehen was dein Schicksal bereith�lt.", "Lord Nargun bless you, and see what fate has in store for you.")
talkingNPC:addCycleText("Gl�ck oder Pech, Nargun sei mit dir.", "Bad luck, good luck, or no luck at all, Lord Nargun be with you.")
talkingNPC:addCycleText("Verbreite Chaos und Unfug in Naguns Namen.", "Spread chaos and mischief, in Lord Nargun's name.")
talkingNPC:addCycleText("#me kniet nieder und sch�ttelt einen Holzbecher in dem es klappert, bevor er die W�rfel wirft und sagt: 'Nargun sei gepriesen.'", "#me kneels down, shaking a wooden cup that rattles with each shake. Before turning out the bones. 'Lord Nargun be praised.'")
talkingNPC:addCycleText("#me starrt auf die Steinwand als w�rde er dort etwas suchen.", "#me stares intently at the stone wall, as though looking for something.")
talkingNPC:addCycleText("#me f�ttert einen Raben, der ihm zu folgen scheint.", "#me feeds a raven that seems to follow him around.")
talkingNPC:addCycleText("#me schaut sich mit einem verschmitzten Grinsen auf den Lippen um.", "#me looks around with mischief grin on his lips.")
talkingNPC:addCycleText("#me murmelt leise dar�ber Spa� und Chaos in Narguns Namen zu verbreiten.", "#me mutters under his breath about causing fun and chaos for his Lord Nargun")
mainNPC:addLanguage(0)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Imos Dutin, ein Priester des Nargun.", "This NPC is Imos Dutin, the Priest of Nargun.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 1415)
mainNPC:setEquipment(3, 813)
mainNPC:setEquipment(11, 196)
mainNPC:setEquipment(5, 0)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 826)
mainNPC:setEquipment(10, 697)
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
