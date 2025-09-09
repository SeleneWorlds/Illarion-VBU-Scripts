local guard = require("npc.base.guard")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
local guardNPC = guard(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Bre Southstar the gate guardian. Keywords: Hello, Gava, Galmair, Guard."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Bre Southstar die Torw�chterin. Schl�sselw�rter: Hallo, Gava, Galmair, Wache."))
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
talkEntry:addResponse("Good day. I hope you are doing well.")
talkEntry:addResponse("This is Galmair, have a pleasant time.")
talkEntry:addResponse("I'm happy that you decided to choose this gate. Please have a pleasant trip.")
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
talkEntry:addResponse("Guten Tag, ich hoffe, es geht euch gut.")
talkEntry:addResponse("Dies hier ist Galmair, genie�t euren Aufenthalt.")
talkEntry:addResponse("Es freut mich, dass ihr dieses Tor gew�hlt habt. Eine gute Reise w�nsche ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Good day. I hope you are doing well.")
talkEntry:addResponse("This is Galmair, have a pleasant time.")
talkEntry:addResponse("I'm happy that you decided to choose this gate. Please have a pleasant trip.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Guten Tag, ich hoffe, es geht euch gut.")
talkEntry:addResponse("Dies hier ist Galmair, genie�t euren Aufenthalt.")
talkEntry:addResponse("Es freut mich, dass ihr dieses Tor gew�hlt habt. Eine gute Reise w�nsche ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("May justice and peace make your day merry.")
talkEntry:addResponse("I will see you later.")
talkEntry:addResponse("Have a good day, please walk in peace wherever you step.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("M�gen Gerechtigkeit und Frieden euren Tag vers��en.")
talkEntry:addResponse("Wir sehen uns noch.")
talkEntry:addResponse("Einen sch�nen Tag noch, gehet hin in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("May Justice and peace make your day merry.")
talkEntry:addResponse("I will see you later.")
talkEntry:addResponse("Have a good day, please walk in peace wherever you step.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("M�gen Gerechtigkeit und Frieden euren Tag vers��en.")
talkEntry:addResponse("Wir sehen uns noch.")
talkEntry:addResponse("Einen sch�nen Tag noch, gehet hin in Frieden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("I'm doing great, can't really explain why.")
talkEntry:addResponse("Today is a good day, well I guess everyday is a good day.")
talkEntry:addResponse("I'm in utter peace... or at least I think I am.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht es gut, auch wenn ich gar nicht wei�, wieso.")
talkEntry:addResponse("Heute ist ein guter Tag, eigentlich ist jeder neue Tag ein guter.")
talkEntry:addResponse("Ich bin mit mir im Einklang... denke ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Bre Southstar.")
talkEntry:addResponse("I am the pretty dwarf warrior, Bre Southstar.")
talkEntry:addResponse("I prefer the name 'Amazing Battle Dwarf Bre the Southstar'.")
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
talkEntry:addResponse("Ich bin Bre Southstar.")
talkEntry:addResponse("Ich bin die schicke Zwergenkriegerin, Bre Southstar.")
talkEntry:addResponse("Ich w�rde die Anrede 'Gro�artige Zwergenkriegerin Bre der Southstar' vorziehen.")
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
talkEntry:addResponse("Ich bin keine Marktfrau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I don't need anything right now. Thank you though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ich brauche gerade nichts, danke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I don't need anything right now. Thank you though.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Ich brauche gerade nichts, danke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I'm a Galmairian Gateguard.")
talkEntry:addResponse("I am a Silverstone rank in the Civil Watch.")
talkEntry:addResponse("I guard gates and smash people in the face with my ball and chain, but not often.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin eine Torwache Galmairs.")
talkEntry:addResponse("Ich habe den Rang eines Silbersteins in der B�rgerwehr.")
talkEntry:addResponse("Ich bewache Tore und schlag Leuten, wenn n�tig, das Gesicht ein. Das kommt aber nicht so oft vor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm a Galmairian Gateguard.")
talkEntry:addResponse("I am a Silverstone rank in the Civil Watch.")
talkEntry:addResponse("I guard gates and smash people in the face with my ball and chain, but not often.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin eine Torwache Galmairs.")
talkEntry:addResponse("Ich habe den Rang eines Silbersteins in der B�rgerwehr.")
talkEntry:addResponse("Ich bewache Tore und schlag Leuten, wenn n�tig, das Gesicht ein. Das kommt aber nicht so oft vor.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gava")
talkEntry:addResponse("She is the prettiest, strongest, smartest person I know.")
talkEntry:addResponse("She rescued me from being homeless.")
talkEntry:addResponse("Gava is too tall for a girl.")
talkEntry:addResponse("Gava of the other gate is my sister.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sister")
talkEntry:addResponse("She is the prettiest, strongest, smartest person I know.")
talkEntry:addResponse("She rescued me from being homeless.")
talkEntry:addResponse("Gava is too tall for a girl.")
talkEntry:addResponse("Gava of the other gate is my sister.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Homeless")
talkEntry:addResponse("It is no place for a girl... I can tell you that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Peace")
talkEntry:addTrigger("Justice")
talkEntry:addResponse("Gava keeps telling me I need to do everything in peace and justice. I tell her that she needs to do everything in fun and sunshine.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("guard")
talkEntry:addTrigger("Civil Watch")
talkEntry:addTrigger("gate")
talkEntry:addResponse("My job. I never thought when I was a little girl, or a slightly older little homeless girl that I would become a watchman.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drugs")
talkEntry:addResponse("#me looks away silently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("men")
talkEntry:addResponse("They are all as bad as Don. All of the male watchmen only hang out with me to try and get with me. It's truly annoying.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Weapon")
talkEntry:addResponse("Gava taught me the morning star. I practised with it every day until I became the second best morning star user in the watch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gava")
talkEntry:addResponse("Sie ist die sch�nste, st�rkste und schlauste Person, die ich kenne.")
talkEntry:addResponse("Sie hat mich aus der Obdachlosigkeit geholt.")
talkEntry:addResponse("Gava ist eindeutig zu gro� f�r ein Weib.")
talkEntry:addResponse("Gava am anderen Tor, das ist meine Schwester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Schwester")
talkEntry:addResponse("Sie ist die sch�nste, st�rkste und schlauste Person, die ich kenne.")
talkEntry:addResponse("Sie hat mich aus der Obdachlosigkeit geholt.")
talkEntry:addResponse("Gava ist eindeutig zu gro� f�r ein Weib.")
talkEntry:addResponse("Gava am anderen Tor, das ist meine Schwester.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("obdachlos")
talkEntry:addResponse("Das ist nichts f�r ein M�dchen, glaubt mir.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Frieden")
talkEntry:addTrigger("Gerechtigkeit")
talkEntry:addResponse("Gava sagt immer, ich solle alles f�r Frieden und Gerechtigkeit tun. Ich sage ihr immer, sie solle alles mit Freude und der Sonne im Herzen tun.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wache")
talkEntry:addTrigger("B�rgerwehr")
talkEntry:addTrigger("Tor")
talkEntry:addResponse("Meine Aufgabe. Nie habe ich gedacht, eine Wache zu werden, als ich noch jung war und auf der Stra�e lebte.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Drogen")
talkEntry:addTrigger("Rauschgift")
talkEntry:addResponse("#me schaut versch�mt zu Boden.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("M�nner")
talkEntry:addResponse("M�nner sind alle so wie der Don. Die M�nner in der B�rgerwehr wollen alle immer nur mit mir Dienst schieben und bei mir sein. Das nervt!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Waffe")
talkEntry:addResponse("Gava brachte mir bei, mit dem Morgenstern umzugehen. Ich �bte jeden Tag, bis ich die zweitbeste in der B�rgerwehr damit war.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I don't want to buy or sell anything, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich will weder etwas kaufen noch verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("I could tell you a lot about my sister, Gava!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Ich k�nnte euch eine Menge �ber meine Schwester Gava erz�hlen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("I serve Elara because that is my sister's chosen god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich diene Elara, denn meine Schwester tut das auch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("I serve Elara because that is my sister's chosen god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Ich diene Elara, denn meine Schwester tut das auch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("I hear that there is an enormous bridge that stretches across a large sea just to get to the city. The image in my head is very pretty. Don't you think?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Ich h�rte, dass die Stadt mit einer riesigen Br�cke �ber das Meer mit dem Festland verbunden ist. Das klingt doch wundersch�n, oder?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("I hear he is a strong mage user, but honestly. Magic is nothing compared to a strong blow from a dwarven great axe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Ich h�rte, er wei�, mit der Magie umzugehen. Aber mal im Ernst: Was ist schon Magie gegen den Hieb einer Zwergenaxt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Archmage")
talkEntry:addResponse("I hear he is a strong mage user, but honestly. Magic is nothing compared to a strong blow from a dwarven great axe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Ich h�rte, er wei�, mit der Magie umzugehen. Aber mal im Ernst: Was ist schon Magie gegen den Hieb einer Zwergenaxt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I hear he is the worst womanizer, but he pays my salary, so I work for him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich h�rte, er ist der schlimmste Weiberhgeld, aber da er mein Gehalt zahlt, arbeite ich f�r ihn.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("The streets are cold, the men are rude, but this is where my sister is and my job. I love it.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Die Stra�en sind kalt, die Leute ungehobelt aber hier ist meine Schwester und meine Aufgabe, also liebe ich es.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("I made Gava promise she would take me there. She said on her next day off. That was two years ago.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Ich habe Gava dazu gebracht, mir zu versprechen, dass wir dort mal hingehen. Sie meinte, dass wir das an ihrem n�chsten freien Tag machen. Das war vor zwei Jahren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("I hear she is the meanest witch, even compared to the ugly ferocious women of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ich h�rte, sie ist die b�seste Hexe unter den gr��lichen Frauen Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("I hear she is the meanest witch, even compared to the ugly ferocious women of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ich h�rte, sie ist die b�seste Hexe unter den gr��lichen Frauen Cadomyrs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Outside of Galmair I know nothing, sorry.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("�ber die Welt ausserhalb Galmairs wei� ich nicht viel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I think that is what this place is like, but I really don't know.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich meine, dort ist es so �hnlich wie hier, aber ich wei� es nicht genau.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I've never even heard that word before.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Das Wort habe ich ja noch nie geh�rt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("What is that?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Was soll das sein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Is that you?")
talkEntry:addResponse("Yes?")
talkEntry:addResponse("Do you need something?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Seid ihr das?")
talkEntry:addResponse("Ja?")
talkEntry:addResponse("Braucht ihr was?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bre")
talkEntry:addTrigger("Southstar")
talkEntry:addResponse("I am her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bre")
talkEntry:addTrigger("Southstar")
talkEntry:addResponse("Das bin ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Nun, ihr kennt ja die Geschichten �ber Recht und Unrecht. Gava glaubt sogar daran.", "Well you know those stories about right and wrong. Gava is one of the ones who believes in them.")
talkingNPC:addCycleText("Geht geordnet weiter, danke.", "Please pass in an orderly fashion. Thank you.")
talkingNPC:addCycleText("Ihr da! Macht keinen �rger.", "Hey you! Don't cause any trouble.")
talkingNPC:addCycleText("Mir ist so langweilig. Ich w�nscht, wir Wachen d�rften im Dienst trinken.", "I'm so bored. I wish we could drink at work.")
talkingNPC:addCycleText("Ich bin so hungrig. Ich frage mich, was Gava wohl heute wieder kocht.", "So very very hungry. I wonder what Gava is cooking tonight?")
talkingNPC:addCycleText("Roar, ich mach alles mit meinem Morgenstern platt.", "Roar! I will crush anyone with my morning star.")
talkingNPC:addCycleText("Ich brauche keinen Mann.", "I'm not looking for a man.")
talkingNPC:addCycleText("In der B�rgerwehr zu sein ist der beste Beruf von allen.", "Civil watch is the best job ever.")
talkingNPC:addCycleText("Aye, Galvin hat immer recht.", "Aye, Gava is always right.")
talkingNPC:addCycleText("Ich w�nschte, Galvin w�re manchmal etwas besser gelaunt.", "I wish Gava would lighten up every now and then.")
talkingNPC:addCycleText("Weitergehen.", "Move along.")
talkingNPC:addCycleText("Geht weiter.", "Pass along.")
talkingNPC:addCycleText("Lungert hier nicht so rum!", "Do not loiter!")
talkingNPC:addCycleText("Rein oder raus?", "In or out?")
guardNPC:setWarpLocation(427,250,0)
guardNPC:setGuardRange(5,5,5,1)
guardNPC:addWarpedMonsterText("Weg mit dir, widerliche Kreatur!", "Go away, nasty creature!")
guardNPC:addWarpedMonsterText("Hinfort, du Monster!", "Begone, you monster!")
guardNPC:addWarpedPlayerText("Pass blo� auf! Wir brauchen hier kein Gesindel.", "You'd better watch out! We don't need such lowlifes here.")
guardNPC:addHitPlayerText("#me verpasst dem Eindringling einen Hieb 'Verschwinde!'", "#me hits the intruder 'Get lost!'")
mainNPC:addLanguage(0)
mainNPC:addLanguage(2)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Bre Southstar, die Torw�chterin.", "This NPC is Bre Southstar the gate guardian.")
mainNPC:setUseMessage("Zur�ck!", "Back up!")
mainNPC:setConfusedMessage("#me schaut verwirrt umher.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2359)
mainNPC:setEquipment(11, 55)
mainNPC:setEquipment(5, 2737)
mainNPC:setEquipment(6, 17)
mainNPC:setEquipment(4, 48)
mainNPC:setEquipment(9, 367)
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
