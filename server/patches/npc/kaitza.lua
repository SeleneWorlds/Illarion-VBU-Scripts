local consequence_item = require("npc.base.consequence.item")
local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(0)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Kaitza the temple guard. Keywords: quest, Zelphia, profession, Gobaith, gods."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Kaitza der Tempelw�chter. Schl�sselw�rter: Zelphia, Auftrag, Beruf, Gobaith, G�tter."))
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
talkEntry:addResponse("Glory to ze Goddessss.")
talkEntry:addResponse("Greetingsss, landwalker.")
talkEntry:addResponse("#me lowers his head respectfully, 'Greetingsss.'")
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
talkEntry:addResponse("Ehre sei der G�ttin.")
talkEntry:addResponse("Gr�ssse, Landg�nger.")
talkEntry:addResponse("#me senkt seinen kopf respektvoll,'Greetingss'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Glory to ze Goddessss.")
talkEntry:addResponse("Greetingsss, landwalker.")
talkEntry:addResponse("#me lowers his head respectfully, 'Greetingss'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Ehre sei der G�ttin.")
talkEntry:addResponse("Gr�ssse, Landg�nger.")
talkEntry:addResponse("#me neigt sein Haupt respektvoll, 'Gr�ssse'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Glory to ze Goddessss.")
talkEntry:addResponse("Zss. May Zelphia keep your watersss calm.")
talkEntry:addResponse("#me bows his head respectfully, 'Zss. Farewell.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Ehre sssei der G�ttin.")
talkEntry:addResponse("Zzs. M�ge Zelphina deine Wasser beruhig.")
talkEntry:addResponse("#me neigt respektvoll das Haupt: 'Lebt wohl!'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Glory to ze Goddessss.")
talkEntry:addResponse("Zss. May Zelphia keep your waters calm.")
talkEntry:addResponse("#me bows his head respectfully, 'Zss. Farewell.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Ehre sssei der G�ttin.")
talkEntry:addResponse("Zzs. M�ge Zelphina deine Wasser beruhig.")
talkEntry:addResponse("#me neigt respektvoll das Haupt: 'Lebt wohl!'.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Zss. I am... well.")
talkEntry:addResponse("Ze Goddessss watches over me. Zss.")
talkEntry:addResponse("Zelphia keepsss me sssafe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mir geht esss.... gut.")
talkEntry:addResponse("Die G�ttin wacht �ber mich. Zss.")
talkEntry:addResponse("Zelpia besch�tzzt mich.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I am Kaitza. Ssservant of ze Goddessss.")
talkEntry:addResponse("My name isss Kaitza.")
talkEntry:addResponse("I am Kaitza, ze temple guard.")
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
talkEntry:addResponse("Ich bin Kaitza. Diener der G�ttin. Zss.")
talkEntry:addResponse("Mein Name issst Kaiza.")
talkEntry:addResponse("Ich bin Kiatza, der W�chter dess Tempelssss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 7))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Quest updated] Aurora's Staff: Part III"))
talkEntry:addConsequence(consequence_quest(333, "=", 8))
talkEntry:addResponse("Zis dagger? It isss not for sssale. Zss. Although... ze druid, Aurora Sssnow, ssshe hasss zis emerald ring. Get it for me, and I ssshall part with ze dagger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 7))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche I"))
talkEntry:addConsequence(consequence_quest(333, "=", 8))
talkEntry:addResponse("Diessser Dolch? Er issst nicht zzzu kaufen. Zss. Aber... diesse Druidin Aurora Sssnow, ssie hat einen Emerald-Ring. Zss. Gebt mir den Ring und ich �berlassse euch den Dolch. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 7))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("staff")
talkEntry:addTrigger("dagger")
talkEntry:addConsequence(consequence_inform("[Quest updated] Aurora's Staff: Part III"))
talkEntry:addConsequence(consequence_quest(333, "=", 8))
talkEntry:addResponse("Zis dagger? It isss not for sssale. Zss. Although... ze druid, Aurora Sssnow, ssshe hasss zis emerald ring. Get it for me, and I ssshall part with ze dagger.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 7))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("stab")
talkEntry:addTrigger("dolch")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Die Geistereiche I"))
talkEntry:addConsequence(consequence_quest(333, "=", 8))
talkEntry:addResponse("Diessser Dolch? Er issst nicht zzzu kaufen. Zss. Aber... diesse Druidin Aurora Sssnow, ssie hat einen Emerald-Ring. Zss. Gebt mir den Ring und ich �berlassse euch den Dolch. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 8))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Ze dagger isss important to me. Kaitza ssshall only let it go if you bring me zis emerald ring. Aurora Sssnow has it, in <town name>. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 8))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Diessser Dolch issst wichtig f�r mich. Zss. Kaitza gibt ihn nur frot im Tausssch, gegen dem Emerald-Ring.Aurora Ssssnow besitzzt ihn. Ssssucht in <Stadt name>")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 8))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Ze dagger isss important to me. I ssshall only let it go if you bring me zis emerald ring. Aurora Sssnow has it, in <town name>. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 8))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Diessser Dolch issst wichtig f�r mich. Zss. Kaitza gibt ihn nur fort im Tausssch, gegen dem Emerald-Ring. Aurora Ssssnow besitzzt ihn. Ssssucht in <Stadt name>")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 9))
talkEntry:addCondition(condition_item(281, "all", ">", 0, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest updated] Aurora's Staff: Part III."))
talkEntry:addConsequence(consequence_deleteitem(281, 1, nil))
talkEntry:addConsequence(consequence_item(190, 1, 499, nil))
talkEntry:addConsequence(consequence_quest(333, "=", 10))
talkEntry:addResponse("Yesss... zis iss ze one. Gorgeousss... Here iss your dagger, as promisssed. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(333, "=", 9))
talkEntry:addCondition(condition_item(281, "all", ">", 0, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst 80 Kupferst�cke."))
talkEntry:addConsequence(consequence_deleteitem(281, 1, nil))
talkEntry:addConsequence(consequence_item(190, 1, 499, nil))
talkEntry:addConsequence(consequence_quest(333, "=", 10))
talkEntry:addResponse("Ja... dasss issst er, der Dolch. Zss! Grosssartig... Hier isst Euer Doch wie versprochen. Zzs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Fishing For Lizards"))
talkEntry:addConsequence(consequence_quest(335, "=", 1))
talkEntry:addResponse("Zss. You wisssh to help Kaitza? He isss ssso hungry. Pleassse, bring me ten trout. Zey mussst be raw, cooking ruinsss ze fisssh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 0))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Fischen f�r Echsen"))
talkEntry:addConsequence(consequence_quest(335, "=", 1))
talkEntry:addResponse("Zsss. Ihr wollt Kaitza helfen? Er isst so hungrig. Bitte bringt mir 10 Forellenfisssche. Ssie m�sssen roh sssein. Kochen verdirbt das Esssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 0))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Fishing For Lizards"))
talkEntry:addConsequence(consequence_quest(335, "=", 1))
talkEntry:addResponse("Zss. You wisssh to help Kaitza? He isss ssso hungry. Pleassse, bring me ten trout. Zey mussst be raw, cooking ruinsss ze fisssh.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 0))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Fischen f�r Echsen"))
talkEntry:addConsequence(consequence_quest(335, "=", 1))
talkEntry:addResponse("Zsss. Ihr wollt Kaitza helfen? Er isst so hungrig. Bitte bringt mir 10 Forellenfisssche. Ssie m�sssen roh sssein. Kochen verdirbt das Esssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 1))
talkEntry:addCondition(condition_item(73, "all", "<", 10, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zss. Sstill hungry. Bring me ten trout, Kaitza will pay. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 1))
talkEntry:addCondition(condition_item(73, "all", "<", 10, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zss. Sso Hungrig. Bring mir zzzehn Forellen. Kaitza zzzahlt daf�r. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 1))
talkEntry:addCondition(condition_item(73, "all", "<", 10, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Zss. Sstill hungry. Bring me ten trout, Kaitza will pay. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 1))
talkEntry:addCondition(condition_item(73, "all", "<", 10, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Zss. Sso Hungrig. Bring mir zzzehn Forellen. Kaitza zzzahlt daf�r. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 1))
talkEntry:addCondition(condition_item(73, "all", ">", 9, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded three silver coins."))
talkEntry:addConsequence(consequence_money("+", 300))
talkEntry:addConsequence(consequence_deleteitem(73, 10, nil))
talkEntry:addConsequence(consequence_quest(335, "=", 2))
talkEntry:addResponse("Yess... zis isss good, very good. Zss. Here isss your money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 1))
talkEntry:addCondition(condition_item(73, "all", ">", 9, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst drei Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 300))
talkEntry:addConsequence(consequence_deleteitem(73, 10, nil))
talkEntry:addConsequence(consequence_quest(335, "=", 2))
talkEntry:addResponse("Ja... dass ist gut. Sssehr gut. Zss. Hier issst Euer Geld.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[New quest] Fishing For Lizards II"))
talkEntry:addConsequence(consequence_quest(335, "=", 3))
talkEntry:addResponse("Yesss. Ze trout wasss mossst deliciousss. Now, Kaitza wantsss sssome sssalmon. Zsss. Bring me five of zem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 2))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Fischen f�r Echsen II"))
talkEntry:addConsequence(consequence_quest(335, "=", 3))
talkEntry:addResponse("Ja. Szzz. Die Forellen waren ausssgesprochen lecker, Zss. Jetzzzt m�chte Kaitza ein paar Lachsssfische verspeisssen. Bringt mir f�nf Sssst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 2))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addConsequence(consequence_inform("[New quest] Fishing For Lizards II"))
talkEntry:addConsequence(consequence_quest(335, "=", 3))
talkEntry:addResponse("Yesss. Ze trout wasss mossst deliciousss. Now, Kaitza wantsss sssome sssalmon. Zsss. Bring me five of zem.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 2))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addConsequence(consequence_inform("[Neues Quest] Fischen f�r Echsen II"))
talkEntry:addConsequence(consequence_quest(335, "=", 3))
talkEntry:addResponse("Ja. Szzz. Die Forellen waren ausssgesprochen lecker, Zss. Jetzzzt m�chte Kaitza ein paar Lachsssfische verspeisssen. Bringt mir f�nf Sssst�ck.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 3))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Pleassse, you mussst bring Kaitza five deliciousss sssalmon. Do not cook zem, zey mussst be raw.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 3))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Bitte findet f�r Kaitza f�nf ssschamckhafte Lachssse. Kocht sssie nicht. Sssie m�sssen roh sssein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 3))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Pleassse, you mussst bring Kaitza five deliciousss sssalmon. Do not cook zem, zey mussst be raw.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 3))
talkEntry:addCondition(condition_item(355, "all", "<", 5, nil))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Bitte findet f�r Kaitza f�nf ssschamckhafte Lachssse. Kocht sssie nicht. Sssie m�sssen roh sssein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 3))
talkEntry:addCondition(condition_item(355, "all", ">", 4, nil))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest solved] You are awarded a snake sword and four silver coins."))
talkEntry:addConsequence(consequence_money("+", 400))
talkEntry:addConsequence(consequence_deleteitem(355, 5, nil))
talkEntry:addConsequence(consequence_item(2788, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(335, "=", 4))
talkEntry:addResponse("Zese sssalmon look mossst good. Take zis, as payment. Zss. Now leave Kaitza alone to eat hisss fishiesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 3))
talkEntry:addCondition(condition_item(355, "all", ">", 4, nil))
talkEntry:addTrigger(".+")
talkEntry:addConsequence(consequence_inform("[Quest gel�st] Du erh�ltst ein Schlangenschwert und vier Silberst�cke."))
talkEntry:addConsequence(consequence_money("+", 400))
talkEntry:addConsequence(consequence_deleteitem(355, 5, nil))
talkEntry:addConsequence(consequence_item(2788, 1, 799, nil))
talkEntry:addConsequence(consequence_quest(335, "=", 4))
talkEntry:addResponse("Der Lachsss sssieht gut uisss. Nehmt diesss, alsss Bezzzahlung. Zss. Jetzzzt lasst mich in Ruhe essssen. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 4))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Zss. Be gone. Leave Kaitza to enjoy hisss fishiesss in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 4))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Lassst mich allein. Kaitza m�chte ssseine Fisssche in Ruhe esssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 4))
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addResponse("Zss. Be gone. Leave Kaitza to enjoy hisss fishiesss in peace.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(335, "=", 4))
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addResponse("Lassst mich allein. Kaitza m�chte ssseine Fisssche in Ruhe esssen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addResponse("I ssserve ze Goddessss.")
talkEntry:addResponse("Zss. I am a temple guard.")
talkEntry:addResponse("I dessstroy evil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Ich diene der G�ttin. Zss.")
talkEntry:addResponse("Ich bin ein Tempelw�chter. Sss.")
talkEntry:addResponse("Ich bek�mpfe dasss B�ssse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I ssserve ze Goddessss.")
talkEntry:addResponse("Zss. I am a temple guard.")
talkEntry:addResponse("I dessstroy evil.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Ich diene der G�ttin. Zss.")
talkEntry:addResponse("Ich bin ein Tempelw�chter. Sss.")
talkEntry:addResponse("Ich bek�mpfe dasss B�ssse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Zis land wasss very corrupt.")
talkEntry:addResponse("Zis island had much evil, much evil, yesss. Zss.")
talkEntry:addResponse("Zss. Ze people zere, zey were weak.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Diess land war sssehr koorup. Zss.")
talkEntry:addResponse("Diessse Inssel war Heim von viel b�ssem. Ja, sssehr viel b�sses.")
talkEntry:addResponse("Zss. Die Leute dort waren szz... schwach.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Zss. It isss an honour to meet you.")
talkEntry:addResponse("A pleasssure to meet you.")
talkEntry:addResponse("Glory to ze Goddessss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Zss. Es isst eine Ehre Euch zzzu treffen.")
talkEntry:addResponse("Ess issst eine Freude Euch zzzu treffen.")
talkEntry:addResponse("Ehre sssei der G�ttin!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Zss. Ze magicsss isss not to be trusssted.")
talkEntry:addResponse("Zey sssay zat he wasss blesssed by ze human Goddesss Elara.")
talkEntry:addResponse("Ze Archmage rulesss ze town of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Zss. Diesser Magie sssolte man nicht trauen.")
talkEntry:addResponse("Sssie sagen, er ssein von der menssschlichen G�ttin Elara gesssegnet.")
talkEntry:addResponse("Der Erzzzmagier herssscht �ber die Sss... Stadt Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Zss. Ze magicsss isss not to be trusssted.")
talkEntry:addResponse("Zey sssay zat he wasss blesssed by ze human Goddesss Elara.")
talkEntry:addResponse("Ze Archmage rulesss ze town of Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Zss. Diesser Magie sssolte masn nicht trauen.")
talkEntry:addResponse("Sssie sagen, er ssein von der menssschlichen G�ttin Elara gesssegnet.")
talkEntry:addResponse("Der Erzzzmagier herssscht �ber die Sss... Stadt Runewick.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Zss. Runewick isss ze land of wisdom.")
talkEntry:addResponse("Ze people of Runewick are ssstrong of mind, but not of body.")
talkEntry:addResponse("Zese people know nozing of honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Zss. Runewick issst dasss Land des Weisssheit.")
talkEntry:addResponse("Die Leute von Runewivk sssind ss..stark im Geisste, aber nicht im Kampf.")
talkEntry:addResponse("Diessse Leute wisssen nichtsss �ber Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Money... only zis isss important zere.")
talkEntry:addResponse("Zese people knowsss nozing of honour.")
talkEntry:addResponse("Do not trussst a word ze Don uttersss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Geld... Ged issst dass einzzzig wichtige dort.")
talkEntry:addResponse("Diessse Leute wisssen nichtss �ber Ehre.")
talkEntry:addResponse("Glaubt dem Don ssseine Worte bessser nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Zis town isss plagued by corruption.")
talkEntry:addResponse("Gold isss ze only object zat mattersss zere.")
talkEntry:addResponse("Zese people knowss nozing of honour.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Diessse sss..Stadt isst von Koruption geplagt. Zzs.")
talkEntry:addResponse("Gold zzz�hlt dort, alsss einzzigesss.")
talkEntry:addResponse("Diessse Leute wisssen nichtss �ber Ehre.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Honour to ze Queen!")
talkEntry:addResponse("Queen Rosssaline isss ze highest of ze humansss.")
talkEntry:addResponse("Ze noble Queen rulesss ze town of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Ehre sssei der K�nigin.")
talkEntry:addResponse("K�nigin Rossaline issst die h�chssste der Menssschen.")
talkEntry:addResponse("Die edle K�nigin regiert die Stadt Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Honour to ze Queen!")
talkEntry:addResponse("Queen Rosssaline isss ze highest of ze humansss.")
talkEntry:addResponse("Ze noble Queen rulesss ze town of Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Ehre sssei der K�nigin.")
talkEntry:addResponse("K�nigin Rossaline issst die h�chssste der Menssschen.")
talkEntry:addResponse("Die edle K�nigin regiert die Stadt Cadomyr.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Zss. A more honourable people ssshall never be ssseen.")
talkEntry:addResponse("Zis town isss ruled by ze noble Queen Rosssaline. Zss.")
talkEntry:addResponse("Ze enemiesss of Cadomyr ssshall fall beneath our bladesss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Zss. Eherbarer Menssschen alsss diese  waren niemalsss gessehen.")
talkEntry:addResponse("Diessse Stadt wird behersscht von K�ngin Rosssaline. Zss.")
talkEntry:addResponse("Die Feinde Cadomyr sssollen neben unsssere Klingen fallen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("Zss. I know little of ze human sssettlementsss.")
talkEntry:addResponse("I know nozing of zese placesss.")
talkEntry:addResponse("I have no interessst in zis. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Zss. Ich weisss wenig �ber Menssschenst�dte. Zss.")
talkEntry:addResponse("�ber diesssen Ort issst mir nichtss bekannt.")
talkEntry:addResponse("Diesss intessierit Kaita nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Zss. I know little of ze human sssettlementsss.")
talkEntry:addResponse("I know nozing of zese placesss.")
talkEntry:addResponse("I have no interessst in zis. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("Zss. Ich weisss wenig �ber Menssschenst�dte. Zss.")
talkEntry:addResponse("�ber diesssen Ort issst mir nichtss bekannt.")
talkEntry:addResponse("Diesss intessierit Kaita nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Zss. I know little of ze human sssettlementsss.")
talkEntry:addResponse("I know nozing of zese placesss.")
talkEntry:addResponse("I have no interessst in zis. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Zss. Ich weisss wenig �ber Menssschenst�dte. Zss.")
talkEntry:addResponse("�ber diesssen Ort issst mir nichtss bekannt.")
talkEntry:addResponse("Diesss intessierit Kaita nicht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I worship ze Goddessss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Adron")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Adron")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Bragon")
talkEntry:addTrigger("Br�gon")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cherga")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elara")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elara")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Eldan")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Findari")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Findari")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Irmorom")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Malachin")
talkEntry:addTrigger("Malach�n")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Moshran")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Nargun")
talkEntry:addTrigger("Narg�n")
talkEntry:addTrigger("Narg�n")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Oldra")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ronagan")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Sirani")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Glory to ze Goddessss!")
talkEntry:addResponse("Zss. Zelphia watchesss over me.")
talkEntry:addResponse("Ze Island of Eternity awaitsss me. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tanora")
talkEntry:addTrigger("Zelphia")
talkEntry:addResponse("Ehre sei der G�ttin! Zss.")
talkEntry:addResponse("Zss. Zelphia beh�tet mich.")
talkEntry:addResponse("Dass Eiland der Ewigkeit erwatet mich. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ushara")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("All ze Godsss are acknowledged, only Zelphia iss worshiped.")
talkEntry:addResponse("Zelphia iss ze Goddessss of my people. Ze othersss are Godsss of ze other racesss.")
talkEntry:addResponse("Zss. I ressspect zis Godsss followersss. But I do not worship zis God.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Zhambra")
talkEntry:addResponse("Alle G�tter werden anerkannt. Zss. Nur Zelphia wird angebetet. Zss.")
talkEntry:addResponse("Zelphia isst die G�ttin meines Volkesss. Die anderen G�tter sssind f�r andere V�lker.")
talkEntry:addResponse("Zss. Ich verehre einzzzig die G�ttin alein.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("price of")
talkEntry:addResponse("Zss. I have nozing to trade.")
talkEntry:addResponse("I do not ssseek to trade. Zss.")
talkEntry:addResponse("Sssorry, I do not wisssh to trade.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Zss. Ich habe nichtsss zum handeln.")
talkEntry:addResponse("Ich brache nichts zzu handeln.")
talkEntry:addResponse("Entschuldigt, ich bin nicht am Handeln interessiert. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("Zss. What do you wisssh to know?")
talkEntry:addResponse("Perhapsss I have a tasssk for you?")
talkEntry:addResponse("Ssservice to ze Godsss isss ze most honourable life. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl was")
talkEntry:addTrigger("erz�hl etwas")
talkEntry:addResponse("Vielleicht habe ich eine Aufgabe. Zss. Eine Aufgabe f�r Euch.")
talkEntry:addResponse("Der G�ttin zzzu dienen issst die gr�sssste Aufgabe im Leben. Zss.")
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
talkEntry:addTrigger("Kaitza")
talkEntry:addResponse("Zss. Kaitza mussst be working.")
talkEntry:addResponse("#me hisses quietly.")
talkEntry:addResponse("Zere isss evil that mussst be dessstroyed. Ssstop wasting Kaitza'sss time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kaitza")
talkEntry:addResponse("Zss. Kaitza mussss arbeiten.")
talkEntry:addResponse("#me zischt leise.")
talkEntry:addResponse("Es gibt B�sessss in der Welt, dasss zerst�rt werden mussss. Verschwendet nicht meine Zeit. Zss.")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me f�hrt mit dem Finger an der Klinge seiner Waffe entlang.", "#me runs a finger along his blade.")
talkingNPC:addCycleText("#me r�ckt seine R�stung zurecht.", "#me adjusts his armour.")
talkingNPC:addCycleText("#me h�lt sein Schild hoch.", "#me hoists up his shield.")
talkingNPC:addCycleText("#me streckt die Brust raus.", "#me pushes his chest out.")
talkingNPC:addCycleText("#me f�hrt sich mit einer Fingerkralle durchs Gesicht.", "#me runs a clawed finger along his cheek.")
talkingNPC:addCycleText("#me zischt leise.", "#me hisses quietly.")
talkingNPC:addCycleText("#me schlie�t  f�reinen kurzen Momemt seine Augen und atmet tief ein.", "#me closes his eyes for a few moments, breathing deeply.")
talkingNPC:addCycleText("#me fl�stert still ein Gebet.", "#me whispers a silent prayer.")
talkingNPC:addCycleText("F�r die G�ttin! Zss!", "For ze Goddessss!")
talkingNPC:addCycleText("Ehre sssei der G�ttin!", "Glory to ze Goddessss!")
mainNPC:addLanguage(0)
mainNPC:addLanguage(4)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Kaitza der Tempelw�chter.", "This NPC is Kaitza the temple guard.")
mainNPC:setUseMessage("#me faucht drohend.", "#me hisses sharply.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 2407)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 2701)
mainNPC:setEquipment(6, 95)
mainNPC:setEquipment(4, 325)
mainNPC:setEquipment(9, 2116)
mainNPC:setEquipment(10, 326)
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
