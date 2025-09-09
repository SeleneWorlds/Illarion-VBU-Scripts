local guard = require("npc.base.guard")
local condition_language = require("npc.base.condition.language")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(1)
local talkingNPC = talk(mainNPC)
local guardNPC = guard(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Horatio Milenus the gate guardian. Keywords: Hello, Gate, Desert, Cadomyr, Guard."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Horatio Milenus der Torw�chter. Schl�sselw�rter: Hallo, Tor, W�ste, Cadomyr, Wache."))
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
talkEntry:addResponse("What?")
talkEntry:addResponse("Welcome to Cadomyr.")
talkEntry:addResponse("This is Cadomyr, home of beautiful and infinitely wise Queen Rosaline.")
talkEntry:addResponse("Hello.")
talkEntry:addResponse("#me just gives a brief nod.")
talkEntry:addResponse("Greetings to you.")
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
talkEntry:addResponse("Was?")
talkEntry:addResponse("Willkommen in Cadomyr.")
talkEntry:addResponse("Dies ist Cadomyr, Heimat der sch�nen und unglaublich weisen K�nigin Rosaline.")
talkEntry:addResponse("Hallo.")
talkEntry:addResponse("#me nickt nur kurz.")
talkEntry:addResponse("Seid gegr��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("What?")
talkEntry:addResponse("Welcome to Cadomyr.")
talkEntry:addResponse("This is Cadomyr, home of beautiful and infinitely wise Queen Rosaline.")
talkEntry:addResponse("Hello.")
talkEntry:addResponse("#me just gives a brief nod.")
talkEntry:addResponse("Greetings to you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Was?")
talkEntry:addResponse("Willkommen in Cadomyr.")
talkEntry:addResponse("Dies ist Cadomyr, Heimat der sch�nen und unglaublich weisen K�nigin Rosaline.")
talkEntry:addResponse("Hallo.")
talkEntry:addResponse("#me nickt nur kurz.")
talkEntry:addResponse("Seid gegr��t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Care, the desert can be quite unforgiving.")
talkEntry:addResponse("Care, make no trouble.")
talkEntry:addResponse("Care.")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Good bye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Nehmt euch in Acht, die W�ste kann unerbitterlich sein.")
talkEntry:addResponse("Nehmt euch in Acht und macht keinen �rger.")
talkEntry:addResponse("Nehmt euch in Acht.")
talkEntry:addResponse("Auf Wiedersehen.")
talkEntry:addResponse("Bis zum n�chsten Mal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Care, the desert can be quite unforgiving.")
talkEntry:addResponse("Care, make no trouble.")
talkEntry:addResponse("Care.")
talkEntry:addResponse("Farewell.")
talkEntry:addResponse("Good bye.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Nehmt euch in Acht, die W�ste kann unerbitterlich sein.")
talkEntry:addResponse("Nehmt euch in Acht und macht keinen �rger.")
talkEntry:addResponse("Nehmt euch in Acht.")
talkEntry:addResponse("Auf Wiedersehen.")
talkEntry:addResponse("Bis zum n�chsten Mal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Don't ask me such silly questions.")
talkEntry:addResponse("Don't ask me such silly qu- Actually today is a pretty good day.")
talkEntry:addResponse("I guard, I don't feel.")
talkEntry:addResponse("I'm on duty. How should I feel?")
talkEntry:addResponse("Everyday it's the same anyway.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Fragt nicht so ein dummes Zeug.")
talkEntry:addResponse("Fragt nicht so ein dummes - also genau genommen geht es mir heute recht gut.")
talkEntry:addResponse("Ich bin ein W�chter, ich habe keine Gef�hle.")
talkEntry:addResponse("Ich bin im Dienst. Wie soll es mir da gehen?")
talkEntry:addResponse("Ist jeden Tag sowieso immer dasselbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Horatio Milenus, guard of this realm.")
talkEntry:addResponse("I am Horatio Milenus protector of Cadomyr.")
talkEntry:addResponse("This is Cadomyr. I am Cadomyr.")
talkEntry:addResponse("My name is Horatio Milenus. I am guarding this town entrance.")
talkEntry:addResponse("I am Horatio Milenus, town guard of Cadomyr.")
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
talkEntry:addResponse("Ich bin Horatio Milenus, W�chter des Reiches.")
talkEntry:addResponse("Ich bin Horation Milenus, der Besch�tzer Cadomyrs.")
talkEntry:addResponse("Dies ist Cadomyr. Ich bin Cadomyr.")
talkEntry:addResponse("Mein  Name ist Horatio Milenus. Ich bewache diesen Eingang Stadt.")
talkEntry:addResponse("Ich bin Horatio Milenus, Stadtwache von Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Well, it is my mission to guard this gate. I do not know what your mission is; apart from serving her majesty, of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Nun, meine Aufgabe ist es, dieses Tor zu bewachen. Was eure Aufgabe ist, wei� ich nicht, Hauptsache, ihr dient ihrer Majest�t.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("Well, it is my mission to guard this gate. I do not know what your mission is; apart from serving her majesty, of course.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Nun, meine Aufgabe ist es, dieses Tor zu bewachen. Was eure Aufgabe ist, wei� ich nicht, Hauptsache, ihr dient ihrer Majest�t.")
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
talkEntry:addTrigger("profession")
talkEntry:addResponse("I am Guard of Cadomyr.")
talkEntry:addResponse("I serve this realm.")
talkEntry:addResponse("I serve this mighty city.")
talkEntry:addResponse("I am a town guard of Cadomyr.")
talkEntry:addResponse("I serve the noble Queen as a town guard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich bin ein W�chter Cadomyrs.")
talkEntry:addResponse("Ich diene dem Reich.")
talkEntry:addResponse("Ich diene dieser m�chtigen Stadt.")
talkEntry:addResponse("Ich bin ein Stadtw�chter von Cadomyr.")
talkEntry:addResponse("Ich diene der edlen K�nigin als ein Stadtw�chter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I am Guard of Cadomyr.")
talkEntry:addResponse("I serve this realm.")
talkEntry:addResponse("I serve this mighty city.")
talkEntry:addResponse("I am a town guard of Cadomyr.")
talkEntry:addResponse("I serve the noble Queen as a town guard.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich bin ein W�chter Cadomyrs.")
talkEntry:addResponse("Ich diene dem Reich.")
talkEntry:addResponse("Ich diene dieser m�chtigen Stadt.")
talkEntry:addResponse("Ich bin ein Stadtw�chter von Cadomyr.")
talkEntry:addResponse("Ich diene der edlen K�nigin als ein Stadtw�chter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gob... what?")
talkEntry:addResponse("I don't know no Gobaith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Gob... was?")
talkEntry:addResponse("Ich kenne kein Gobaith.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Nice to meet you. Pass along.")
talkEntry:addResponse("Very well.")
talkEntry:addResponse("Pass along.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Freut mich euch kennenzulernen. Weitergehen.")
talkEntry:addResponse("Na wunderbar.")
talkEntry:addResponse("Weitergehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gate")
talkEntry:addResponse("Anyone or anything that passes between these walls are under my eyes. Remember that.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tor")
talkEntry:addResponse("Nichts und niemand, der durch dieses Tor geht, entgeht meinen Augen. Denkt immer daran.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hastings")
talkEntry:addTrigger("Baron")
talkEntry:addResponse("I swear, on the day that the gods decide, that man's head will be fell by my blade.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hastings")
talkEntry:addTrigger("Baron")
talkEntry:addResponse("Ich schw�re, dass so wahr mir die G�tter helfen, eines Tages wird der Kopf dieses Mannes durch mein Schwert rollen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Desert")
talkEntry:addResponse("I am but this realm's second greatest protector, the sand is it's first.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("W�ste")
talkEntry:addResponse("Ich bin nur der zweitgr��te Besch�tzer dieses Reiches, die W�ste ist der wichtigste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tomb")
talkEntry:addResponse("The resting place of the greatest of our people is the tomb.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gruft")
talkEntry:addResponse("Die letzte Ruhest�tte der gr��ten Helden unseres Volkes ist die Gruft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Family")
talkEntry:addResponse("Mind your business.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Familie")
talkEntry:addResponse("Das geht euch nichts an.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Palace")
talkEntry:addResponse("If you have no business at the palace, stay away from there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Palast")
talkEntry:addResponse("Wenn ihr im Palast nichts zu suchen habt, dann haltet euch fern von ihm.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Guard")
talkEntry:addResponse("I guard the gate of this city. That it is the mission the queen assigned to me and I am proud to fulfil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wache")
talkEntry:addResponse("Ich bewache das Tor dieser Stadt. Das ist die Aufgabe, die die K�nigin mir �bertragen hat und es erf�llt mich mit Stolz, sie zu erf�llen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("private")
talkEntry:addResponse("I am not a private anymore! The queen promoted me, haha!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gefreite")
talkEntry:addResponse("Ich bin kein Gefreiter mehr! Die K�nigin hat mich bef�rdert, haha!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("He's quite a merry fellow.")
talkEntry:addResponse("The islands must be easy to defend.")
talkEntry:addResponse("The archmage of Runewick; I better keep my mouth shut now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Er ist ein ziemlich freundlicher Kerl.")
talkEntry:addResponse("Die Inseln sind wohl recht einfach zu verteidigen.")
talkEntry:addResponse("Der Erzmagier von Runewick; ich sag jetzt besser nichts mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("He's quite a merry fellow.")
talkEntry:addResponse("The islands must be easy to defend.")
talkEntry:addResponse("The archmage of Runewick; I better keep my mouth shut now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Er ist ein ziemlich freundlicher Kerl.")
talkEntry:addResponse("Die Inseln sind wohl recht einfach zu verteidigen.")
talkEntry:addResponse("Der Erzmagier von Runewick; ich sag jetzt besser nichts mehr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is a stronghold of magicians built in the ocean.")
talkEntry:addResponse("Runewick is a strong city, but the inhabitants have no honour. They do whatever it takes to get what they want.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist eine Feste der Magie, die in das Meer gebaut wurden.")
talkEntry:addResponse("Runewick ist eine beeindruckende Stadt, aber ihre Einwohner sind ehrlos. Sie tun, was immer n�tig ist, um ihre Ziele zu erreichen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("I overheard the crest of the Don is a pig. That fits!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Ich habe geh�rt, dass Wappen des Dons zeigt ein Schwein. Wie passend!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair is a dirty town where money washes hands clean from any sin.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Galmair ist eine dreckige Stadt wo Gold eines jeden H�nde von den S�nden reinw�scht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("If Cadomyr is my heart then Queen Rosaline is my soul.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Wenn Cadomyr mein Herz ist, dann ist K�nigin Rosaline mein Herz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("If Cadomyr is my heart then Queen Rosaline is my soul.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Wenn Cadomyr mein Herz ist, dann ist K�nigin Rosaline mein Herz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("My home and my heart: Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Mein ein und alles: Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("King")
talkEntry:addResponse("Reginald, the greatest king of the last generation. All honest men in Cadomyr aspire to be like him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nig")
talkEntry:addResponse("Reginald, der gro�artigste K�nig der Vergangenheit. Alle ehrbaren M�nner Cadomyrs wollen wie er sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("Reginald, he greatest king of the last generation. All honest men in Cadomyr aspire to be like him.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Reginald")
talkEntry:addResponse("Reginald, der gro�artigste K�nig der Vergangenheit. Alle ehrbaren M�nner Cadomyrs wollen wie er sein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I am Albarian, yes.")
talkEntry:addResponse("You aren't in Albar. Look with your eyes.")
talkEntry:addResponse("Please do not disturb me. I am at work.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Ich bin in der Tat Albarier.")
talkEntry:addResponse("Ihr seid nicht in Albar, schaut euch doch mal um.")
talkEntry:addResponse("St�rt mich bitte nicht, ich bin im Dienst.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("I hear on occasion that they are a foul nation, but one can never fully trust the words of outsiders.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Ich h�rte einst, dass sie ein Volk von Verruchten sind, aber was kann man schon auf das Wort eines Fremden geben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I have never been in Salkamar. I know nothing of them.")
talkEntry:addResponse("Salkamar does not concern my attention.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Ich war nie in Salkamar, also wei� ich auch nichts dar�ber.")
talkEntry:addResponse("Salkamar interessiert mich nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gods")
talkEntry:addResponse("The ones I serve are Adron, Malachin and Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Ich diene den G�ttern Adron, Malach�n und Zhambra.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("My queen loves Adron, the god of festivities.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Meine K�nigin verehrt Adron, den Gott der Festgelage.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("I respect Br�gon. But there is too much fire in this world.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Ich respektiere Br�gon, aber gibt es nicht schon genug Feuer in dieser Welt?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("I will not meet Cherga, but through the fulfillment of my duty.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Ich werde Cherga nur gegen�bertreten, wenn ich in Erf�llung meiner Pflicht falle. ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Elara is not cared for much in this country. I have never sought her guidance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Man schert sich in diesem Reich nicht sonderlich um Elara. Auch ich habe sie nie um Beistand angebetet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan is the father of Elara and hence, as useless as her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Eldan ist Elaras Vater und daher genauso nutzlos wie sie.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari brings rain, but also sand storms. That is all I have to say of her.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Findari bringt zwar den Regen, aber auch Sandst�rme. Das ist, was ich �ber sie zu sagen habe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom was never kind to my mother. I live well, but have no lo- Stop asking me questions and move along.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Irmorom hat es nicht gut mit meiner Mutter gemeint. Mir ist es gut ergangen, aber... Fragt mich nicht nach sowas und geht weiter.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n, the god of battle has saved my life on many occasions.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Malach�n, der Gott der Schlachten, hat mein Leben schon so einige male verschont.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Quiet now! Or I shall remove your tongue?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Seid still! Oder muss ich euch die Zunge herausschneiden?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("I do not serve this god.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Ich diene diesem Gott nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra has forsaken us. It is through our own hands that we grow food in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Oldra hat uns im Stich gelassen. Die Nahrung, die wir zu uns nehmen, ist die Ernte unserer H�nde.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("You can serve Ronagan and end up a lowly thief or you can serve a just god and end up like me.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Ihr k�nnt euch Ronagan verschreiben und endet als erb�rmlicher Gauner oder ihr verschreibt euch einem gerechten Gott und ihr werdet wie ich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("We do not serve Sirani here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Wir dienen hier nicht der Sirani.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("We don't see Tanora often in Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Sonderlich h�ufig haben wir Tanora noch nicht in Cadomyr begr��en d�rfen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara is one of the five. That's it for now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Ushara ist eine der F�nf. Das muss nun gen�gen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("It is through Zhambra that I am able to serve Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Zhambra erm�glicht es mir, Cadomyr zu dienen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("I buy only the safety of the realm and I sell only the crushing of Cadomyr's enemies.")
talkEntry:addResponse("I am no trader.")
talkEntry:addResponse("If you are looking for a trader, go to the market place.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich erkaufe lediglich die Sicherheit des Reiches und biete die Niederschlagung der Feinde Cadomyrs an.")
talkEntry:addResponse("Ich bin kein H�ndler.")
talkEntry:addResponse("Wenn Ihr einen H�ndler sucht, dann geht zum Marktplatz.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Always carry double the water you think you'll need.")
talkEntry:addResponse("I'm on duty and I am not paid for small talk.")
talkEntry:addResponse("I am a town guard, not a story teller.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Nehmt immer genau die zweifache Menge an Wasser mit, die ihr meint, zu brauchen.")
talkEntry:addResponse("Ich bin im Dienst und werde nicht f�r eine nette Plauderei bezahlt.")
talkEntry:addResponse("Ich bin eine Stadtwache und kein Geschichtenerz�hler.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Horatio")
talkEntry:addTrigger("Milenus")
talkEntry:addResponse("That is I. State your business.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Horatio")
talkEntry:addTrigger("Milenus")
talkEntry:addResponse("Das bin ich. Was ist euer Begehr?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me zieht einen beeindruckenden Krumms�bel aus einer Lederscheide.", "#me unsheathes his giant scimitar.")
talkingNPC:addCycleText("#me sch�rft seinen gro�en Krumms�bel.", "#me sharpens his giant scimitar.")
talkingNPC:addCycleText("#me l�sst seinen furchteinfl��enden Krumms�bel zur�ck in seine Lederscheide gleiten.", "#me resheathes his giant scimitar.")
talkingNPC:addCycleText("Weitergehen.", "Pass along.")
talkingNPC:addCycleText("Macht keinen �rger.", "Cause no trouble.")
talkingNPC:addCycleText("Willkommen in Cadomyr.", "Welcome to Cadomyr.")
talkingNPC:addCycleText("Sucht Schutz in der Stadt.", "Take shelter in the town.")
talkingNPC:addCycleText("Was wollt ihr?", "What do you want?")
talkingNPC:addCycleText("Das ist meine einzige Warnung. Lungert hier nicht herum, auch nicht dort dr�ben. Entweder, ihr geht durch das Tor oder zur�ck in die W�ste.", "This is your one and only warning. Do not loiter here, do not loiter there. Either come pass this gate or go back into the desert.")
talkingNPC:addCycleText("Diese widerlichen Magier mit ihren B�chern, Ritualen und Zauberspr�chen!", "Disgusting mages with their books, incantations and spells!")
talkingNPC:addCycleText("Dieser verdammte Don! Ich wei� nichts �ber die Tugenden eines echten Mannes. Er kennt keinen Respekt.", "Blasted Don! He knows nothing about man's toil of real struggle. He knows nothing of proper respect.")
talkingNPC:addCycleText("Don Valerio, pah! Wenn es das Gesetz zulie�e, w�rde ich seinen Kopf abschlagen und seinen K�rper an die Schweine verf�ttern.", "Don Valerio, pah! If Cadomyrian law allowed, I would sever his head and feed his body to the pigs.")
talkingNPC:addCycleText("Galmair, Galmair, Galmair! Reden die anderen V�lker �ber nichts anderes mehr? Warum sollte ich mich um eine Stadt voller Tunichtgute scheren?", "Galmair, Galmair, Galmair! Do outsiders ever talk about anything else? Why would I care about a city full of incompetents?")
talkingNPC:addCycleText("Wer zur K�nigin will, muss zun�chst ein den Palast, wer in den Palast will, muss erst in die Stadt und wer in die Stadt will, muss an mir vorbei.", "Those who wish to see the queen must first be allowed into the palace, those allowed into the palace must first enter the city, those entering the city must first speak to me.")
talkingNPC:addCycleText("Dies ist Cadomyr und der Palast der Edwards. Die derzeitige Regentin der k�niglichen albarischen Blutlinie ist die weise und wundersch�ne K�nigin Rosaline.", "This is Cadomyr and the palace of the Edwards. The current regent of the Albarian royal Edward's bloodline is Queen Rosaline Edwards, a Queen who is both wise and beautiful.")
talkingNPC:addCycleText("Rosaline, ihr seid mein Herz und meine Seele.", "Rosaline, you're my heart, you're my soul, I keep it shining everywhere I go.")
guardNPC:setWarpLocation(119,649,0)
guardNPC:setGuardRange(2,2,4,4)
guardNPC:addWarpedMonsterText("Weg mit dir, widerliche Kreatur!", "Go away, nasty creature!")
guardNPC:addWarpedMonsterText("Hinfort, du Monster!", "Begone, you monster!")
guardNPC:addWarpedPlayerText("Pass blo� auf! Wir brauchen hier kein Gesindel.", "You'd better watch out! We don't need such lowlifes here.")
guardNPC:addHitPlayerText("#me verpasst dem Eindringling einen Hieb 'Verschwinde!'", "#me hits the intruder 'Get lost!'")
mainNPC:addLanguage(0)
mainNPC:addLanguage(1)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Horatio Milenus der Torw�chter, ein gro�er Mann, eingeh�llt in eine schwere R�stung.", "This NPC is Horatio Milenus the gate guardian, a tall man encombered in heavy armour.")
mainNPC:setUseMessage("Zur�ck!", "Back up!")
mainNPC:setConfusedMessage("#me schaut verwirrt umher.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2359)
mainNPC:setEquipment(11, 195)
mainNPC:setEquipment(5, 2731)
mainNPC:setEquipment(6, 95)
mainNPC:setEquipment(4, 530)
mainNPC:setEquipment(9, 367)
mainNPC:setEquipment(10, 771)
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
