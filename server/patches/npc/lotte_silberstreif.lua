local condition_item = require("npc.base.condition.item")
local consequence_quest = require("npc.base.consequence.quest")
local condition_language = require("npc.base.condition.language")
local consequence_deleteitem = require("npc.base.consequence.deleteitem")
local basic = require("npc.base.basic")
local condition_money = require("npc.base.condition.money")
local condition_chance = require("npc.base.condition.chance")
local talk = require("npc.base.talk")
local consequence_money = require("npc.base.consequence.money")
local condition_quest = require("npc.base.condition.quest")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Lotte Silberstreif. She sells lottery tickets. Keywords: rule, one ticket, five ticket, lottery, money, food. Use 'stop' to abort."))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Lotte Silberstreif. Sie verkauft Lotterielose. Schl�sselw�rter: Regel, ein Los, f�nf Lose, Lotterie, Geld, essen. Sage 'stop' wenn du abbrechen willst."))
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
talkEntry:addResponse("Greetings to you!")
talkEntry:addResponse("Hi ho do you want to by a lot?")
talkEntry:addResponse("I'm always pleased to see you here!")
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
talkEntry:addResponse("Seid gegr��t!")
talkEntry:addResponse("Hiho, wollt ihr ein Los kaufen?")
talkEntry:addResponse("Ich freu mich immer euch zu sehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho.")
talkEntry:addResponse("Greetings.")
talkEntry:addResponse("Hello, today you could hit the jackpot.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Hiho.")
talkEntry:addResponse("Gr��e.")
talkEntry:addResponse("Hallo, glaubt mir heute k�nntet ihr das gro�e Los ziehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Take care and come back.")
talkEntry:addResponse("Oldra be with you!")
talkEntry:addResponse("Until next time!")
talkEntry:addResponse("You really don't want to leave yet.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addTrigger("Tsch��")
talkEntry:addTrigger("Tsch�ss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Gehabt euch wohl und komm wieder.")
talkEntry:addResponse("Oldra mit euch!")
talkEntry:addResponse("Man sieht sich.")
talkEntry:addResponse("Ihr wollt doch nicht wirklich schon gehen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Can't say anything's bothering me and ya?")
talkEntry:addResponse("So-so, but I'm fine right now.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie f�hlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Ich kann nicht klagen und ihr?")
talkEntry:addResponse("Ganz gut und selbst?")
talkEntry:addResponse("Mal so, mal so, aber gerade geht es mir ganz gut.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Lotte and who are you?")
talkEntry:addResponse("I'm called Lotte, Lotte Silberstreif, and what's your name?")
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
talkEntry:addResponse("Ich bin die Lotte und wer seid ihr?")
talkEntry:addResponse("Man nennt mich Lotte, Lotte Silberstreif und wie nennt man euch?")
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
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_inform("[Lottery] You have to buy a lottery ticket first. You can buy one ticket by saying 'one ticket', or five tickets by saying 'five tickets'. After you have received your ticket, you trigger the draw with any spoken word or emote. 'Stop', however, will not trigger the draw but returns your money to you."))
talkEntry:addResponse("What at Nargun should we should stop? You do not have a ticket at the moment.")
talkEntry:addResponse("As you demand, let's stop before we start. That's Nargun like.")
talkEntry:addResponse("Come on, a lottery ticket costs ten silver and the first prize in our lottery is five gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du hast noch kein Los gekauft. Du kannst dir ein Los mittels 'ein Los' oder f�nf Lose mittels 'f�nf Lose' kaufen. Anschlie�end bewirkst du die Ziehung mit jeglichen gesprochenen Wort oder Emote. 'Stop' wird jedoch nicht die Ziehung ausl�sen, sondern dir dein Geld wieder geben."))
talkEntry:addResponse("Ich versteh nicht, warum wir aufh�ren sollen. Wir haben doch noch gar nicht angefangen?")
talkEntry:addResponse("Wie ihr wollt. H�ren wir auf bevor wir angefangen haben. So was gef�llt Nargun.")
talkEntry:addResponse("Oh nein, kauft doch wenigstens ein Los f�r lumpige zehn Silberst�cke der erste Preis sind f�nf Goldst�cke.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ticket")
talkEntry:addCondition(condition_chance(2.0))
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Bring her an apple in order to participate in the lottery."))
talkEntry:addConsequence(consequence_quest(672, "=", 10))
talkEntry:addResponse("My stomach feels really empty but I have to watch the lottery. Could you please bring me an apple?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ticket")
talkEntry:addCondition(condition_chance(2.0))
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 2] Bring her five cherries in order to participate in the lottery."))
talkEntry:addConsequence(consequence_quest(672, "=", 20))
talkEntry:addResponse("Did you hear that growling? That's not a monster, my stomach calls for some cherries. Could you please bring me a handful?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("los")
talkEntry:addCondition(condition_chance(2.0))
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Bring ihr einen Apfel, um an der Lotterie teilnehmen zu k�nnen."))
talkEntry:addConsequence(consequence_quest(672, "=", 10))
talkEntry:addResponse("K�nnt ihr mir bitte einen Apfel f�r meinen leeren Magen bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("los")
talkEntry:addCondition(condition_chance(2.0))
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 2] Bring ihr f�nf Kirschen, um an der Lotterie teilnehmen zu k�nnen."))
talkEntry:addConsequence(consequence_quest(672, "=", 20))
talkEntry:addResponse("H�rt ihr das Knurren? Das ist kein Monster, das hinter der Ecke lauert, sondern mein Magen. K�nnt ihr mir bitte eine Handvoll Kirschen bringen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 10))
talkEntry:addCondition(condition_item(15, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Quest solved."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addConsequence(consequence_deleteitem(15, 1, nil))
talkEntry:addResponse("Oh thank you, that's the best medicine. An apple a day keeps the doctor away!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 10))
talkEntry:addCondition(condition_item(15, "all", ">", 0, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Quest abgeschlossen."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addConsequence(consequence_deleteitem(15, 1, nil))
talkEntry:addResponse("Ich danke Euch, das ist die beste Medizin. Ein Apfel am Tag erspart den Arzt sagt man!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 20))
talkEntry:addCondition(condition_item(302, "all", ">", 4, nil))
talkEntry:addTrigger(".*")
talkEntry:addCondition(condition_language("english"))
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 2] Quest solved."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addConsequence(consequence_deleteitem(302, 5, nil))
talkEntry:addResponse("Cherry, cherry, I'm a lady and not hungry anymore!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 20))
talkEntry:addCondition(condition_item(302, "all", ">", 4, nil))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Quest abgeschlossen."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addConsequence(consequence_deleteitem(302, 5, nil))
talkEntry:addResponse("Cherry, cherry. Ich bin eine Lady und nicht mehr hungrig... oder hie� das klein?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 10))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ticket")
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Bring her an apple in order to participate in the lottery."))
talkEntry:addResponse("Listen! What you hear is the sound of my stomach. I can't sell tickets until it has been filled.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 20))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ticket")
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 2] Bring her five cherries in order to participate in the lottery."))
talkEntry:addResponse("I'm waiting for some cherries, then the lottery will start again.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 10))
talkEntry:addTrigger("los")
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 1] Bring ihr einen Apfel, um an der Lotterie teilnehmen zu k�nnen."))
talkEntry:addResponse("Wenn ihr nicht so viel reden w�rdet, k�nntet ihr meinen Magen knurren h�ren. Der ist zu f�llen, bevor ich hier weitermache.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 20))
talkEntry:addTrigger("los")
talkEntry:addConsequence(consequence_inform("[Quest Lotte Silberstreif 2] Bring ihr f�nf Kirschen, um an der Lotterie teilnehmen zu k�nnen."))
talkEntry:addResponse("Ich wart gerade auf eine Lieferung Kirschen. Dann kann ich wieder Lose verkaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("5 ticket")
talkEntry:addTrigger("five ticket")
talkEntry:addCondition(condition_money("<", 5000))
talkEntry:addConsequence(consequence_inform("[Lottery] You don't have sufficent money with you."))
talkEntry:addResponse("Did you count your money? That isn't fifty silver!")
talkEntry:addResponse("Five tickets, each ten silver... makes fifty silver in total. I'm sure there is enough in your chest to fill up your purse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("5 ticket")
talkEntry:addTrigger("five ticket")
talkEntry:addConsequence(consequence_inform("[Lottery] You own five tickets. Say 'stop' to break or anything else to pull out a ball"))
talkEntry:addConsequence(consequence_quest(672, "=", 2))
talkEntry:addConsequence(consequence_money("-", 5000))
talkEntry:addResponse("Five tickets, that's a ticket. Now you can grab into the vase, but only take a single ball.")
talkEntry:addResponse("Fifty silver in the lottery now. Try your luck and let's see if it will be the red ball.")
talkEntry:addResponse("Five tickets for one big chance. I'll watch you selecting the ball.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("5 Los")
talkEntry:addTrigger("f�nf Los")
talkEntry:addCondition(condition_money("<", 5000))
talkEntry:addConsequence(consequence_inform("[Lottery] Du hast nicht genug Geld bei dir."))
talkEntry:addResponse("Haben ihr euer Geld nachgez�hlt? Entweder habt ihr euch vertan oder man hat euch bestohlen.")
talkEntry:addResponse("F�nf Lose, jedes zehn Silberst�cke, ihr braucht also 50 Silberst�cke. Aber ich bin mir sicher, ihr habt genug in eurer Kiste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("5 Los")
talkEntry:addTrigger("f�nf Los")
talkEntry:addConsequence(consequence_inform("[Lottery] Du hast jetzt f�nf Lose. Sage 'Stop' um abzubrechen oder etwas Beliebiges um eine Kugel zu ziehen"))
talkEntry:addConsequence(consequence_quest(672, "=", 2))
talkEntry:addConsequence(consequence_money("-", 5000))
talkEntry:addResponse("F�nf Lose sind schon eine Menge. Greift jetzt in die Vase, aber nehmt nur eine Kugel.")
talkEntry:addResponse("50 Silberst�cke warten darauf, mehr zu werden. Versucht euer Gl�ck und zieht eine Kugel.")
talkEntry:addResponse("F�nf Lose f�r einen Versuch. Ich werde zuschauen, wie ihr euer Gl�ck macht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("1 ticket")
talkEntry:addTrigger("one ticket")
talkEntry:addCondition(condition_money("<", 1000))
talkEntry:addConsequence(consequence_inform("[Lottery] You don't have sufficent money with you."))
talkEntry:addResponse("You can get rich with the lottery but a little investment of ten silver is needed.")
talkEntry:addResponse("One ticket costs ten silver, and you should have it with you and not in your depot.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("1 ticket")
talkEntry:addTrigger("one ticket")
talkEntry:addConsequence(consequence_inform("[Lottery] You own one ticket. Say 'stop' to break or anything else to pull out a ball"))
talkEntry:addConsequence(consequence_quest(672, "=", 1))
talkEntry:addConsequence(consequence_money("-", 1000))
talkEntry:addResponse("Now you can grab into the vase and try your luck. I wish you the red ball.")
talkEntry:addResponse("Ten silver's been paid. Now you can get rich, if you get the right ball out of the vase.")
talkEntry:addResponse("One ticket for one chance. Now it's on you. Get the right ball now!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("1 Los")
talkEntry:addTrigger("ein Los")
talkEntry:addCondition(condition_money("<", 1000))
talkEntry:addConsequence(consequence_inform("[Lottery] Du hast nicht genug Geld bei dir."))
talkEntry:addResponse("Ihr k�nntet heute und hier reich werden, aber eine kleine Investition von zehn Silberst�cken wird vorher erwartet.")
talkEntry:addResponse("Ein Los kostet nur zehn Silberst�cke. Aber die solltet ihr bei euch und nicht nur unerreichbar in eurer Kiste haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 0))
talkEntry:addTrigger("1 Los")
talkEntry:addTrigger("ein Los")
talkEntry:addConsequence(consequence_inform("[Lottery] Du hast jetzt ein Los. Sage 'stop' um abzubrechen oder etwas beliebiges um eine Kugel zu ziehen"))
talkEntry:addConsequence(consequence_quest(672, "=", 1))
talkEntry:addConsequence(consequence_money("-", 1000))
talkEntry:addResponse("Greift jetzt in die Vase und versucht euer Gl�ck. Ich w�nsche euch, dass ihr die rote Kugel erwischt.")
talkEntry:addResponse("Zehn Silberst�cke w�nschen Gesellschaft. Also sorgt daf�r und zieht eine Kugel.")
talkEntry:addResponse("Ein Los - ein Versuch. Jetzt ist es an euch, die richtige Kugel zu ziehen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_inform("[Lottery] You return the ticket. To restart, buy another ticket."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Did you really want to give me your ticket back? Well, I'm not a robber and will return your ten silver coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du gibst das Los zur�ck. Kaufe ein neues Los, wenn du noch mal starten willst."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Ihr wollt das Los wirklich zur�ckgeben? Nun, ich werde euch nicht bestehlen und eure zehn Silberm�nzen zur�ckgeben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(60.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a grey ball. This is a blank and you lose your money."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("The grey ball wins nothing. If you want to win, you have to buy another ticket.")
talkEntry:addResponse("#me looks at the grey ball. 'A blank, what a pity!'")
talkEntry:addResponse("Oh yes, sometimes it seems there are only grey balls in the vase but I can affirm there are other colours as well. Do you want to prove it?")
talkEntry:addResponse("#me looks at the drawn grey ball, 'Grey is no colour and no prize, I'm sorry.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(60.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine graue Kugel. Das ist eine Niete und dein Geld ist verloren."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Die graue Kugel gewinnt nichts. Vielleicht habt ihr mehr Gl�ck beim n�chsten Los?")
talkEntry:addResponse("#me schaut die graue Kugel an und sagt 'Eine Niete, so ein Pech!'")
talkEntry:addResponse("Oh ja, manchmal k�nnte man meinen es gibt nur graue Kugeln in der Vase. Ich versichere euch, das ist nicht so. Ihr k�nnt das gerne mit einem weiteren Los nachpr�fen.")
talkEntry:addResponse("#me nimmt die gezogene graue Kugel entgegen und wirft sie zur�ck in die Vase. 'Weil grau keine Farbe ist, gewinnen sie auch nichts.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(75.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a white ball and get ten silver coins."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("You win ten silver! Why not invest it in another ticket?")
talkEntry:addResponse("#me looks at the pulled ball, 'What at Nargun are you doing? That is a white ball and you get your money back!'")
talkEntry:addResponse("#me examines the white ball some seconds. 'Could it be we had the same ball a short time ago? However, you win your money back!'")
talkEntry:addResponse("#me throws the white ball back into the vase and hands you ten silver coins. 'Do you want another ticket?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(75.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine wei�e Kugel und bekommst zehn Silberm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 1000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Ihr habt zehn Silberst�cke gewonnen! Wollt ihr die nicht in ein weiteres Los investieren?")
talkEntry:addResponse("#me schaut auf die gezogene Kugel. 'Bei Nargun, was macht ihr denn? Das war eine wei�e Kugel und ihr gewinnt euren Einsatz zur�ck.'")
talkEntry:addResponse("#me untersucht die wei�e Kugel eine Weile. 'Kann es sein, dass wir die gleiche Kugel k�rzlich erst hatten? Wie auch immer, euer Geld habt ihr zur�ckgewonnen.'")
talkEntry:addResponse("#me wirft die wei�e Kugel zur�ck in die Vase und reicht dir zehn Silberm�nzen. 'Wollt ihr nicht ein weiteres Los kaufen?'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(48.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a yellow ball and get twenty silver coins."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("You can call yourself lucky. You win twenty silver coins.")
talkEntry:addResponse("#me juggles a short time with the yellow ball that was pulled out of the vase before it disappears into the vase again. 'Twenty silver coins are your prize!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(48.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine gelbe Kugel und bekommst 20 Silberm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 2000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Ihr k�nnt euch gl�cklich sch�tzen denn ihr habt 20 Silberm�nzen gewonnen.")
talkEntry:addResponse("#me jongliert kurz mit der gezogenen gelben Kugel, bevor diese wieder in der Vase verschwindet. '20 Silberm�nzen habt ihr gewonnen!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(76.9))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a blue ball and get fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Half a gold is the prize for getting one of the blue balls. Please take your money.")
talkEntry:addResponse("#me takes the blue ball and returns a number of coins. 'Fifty silver coins, the ticket is paying back multiple!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(76.9))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine blaue Kugel und bekommst 50 Silberm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Eine halbe Goldm�nze bekommt ihr f�r die blaue Kugel. Bitte, hier ist euer Geld.")
talkEntry:addResponse("#me nimmt die blaue Kugel und �berreicht eine Menge M�nzen. '50 Silberm�nzen. Ihr m�sst zugeben, dass sich dieses Los gelohnt hat!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(66.7))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a green ball and get two gold coins."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("It's a long time since I last saw one of the green balls. You show it to me again and this is worth the second prize of two gold coins.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(66.7))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine gr�ne Kugel und bekommst zwei Goldm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 20000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Es ist ja eine halbe Ewigkeit her, dass ich eine gr�ne Kugel gesehen habe. Ich danke euch und verrate euch auch, dass ihr soeben den zweith�chsten Gewinn gezogen habt. Bitte, hier ist euer Gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out the red ball and get five gold coins."))
talkEntry:addConsequence(consequence_money("+", 50000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("#s First prize winner! First prize winner! The lottery of Galmair has a first prize winner!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 1))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst die rote Kugel und bekommst f�nf Goldm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 50000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("#sHauptgewinn! Hauptgewinn! Bei der Lotterie von Galmair wurde ein Hauptgewinn gezogen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_inform("[Lottery] You return the tickets. To restart, buy another ticket."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("What a pity, five tickets are much too expensive for you? Well, I'm not a robber and will return your money.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addTrigger("stop")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du gibst die Lose zur�ck. Kaufe ein neues Los, wenn du noch mal starten willst."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Schade, dass euch f�nf Lose zu teuer sind? Nun, ich werde euch nicht bestehlen und euer Geld zur�ckgeben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(60.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a grey ball. This is a blank and you lose your money."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("The grey ball wins nothing. If you want to win you have to start with new tickets again.")
talkEntry:addResponse("#me looks sad as she recognises the grey ball. 'It's too bad, that's a blank!'")
talkEntry:addResponse("There are tickets of grey balls in the vase, but you can be sure there are others as well. It's just a ticket away to prove it.")
talkEntry:addResponse("#me takes the grey ball and throws it back into the vase. 'Grey wins no prize, I'm sorry.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(60.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine graue Kugel. Das ist eine Niete und dein Geld ist verloren."))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Die graue Kugel gewinnt nichts. Wenn ihr etwas gewinnen wollt, solltet ihr noch ein Los kaufen.")
talkEntry:addResponse("#me schaut traurig, als eine graue Kugel gezogen wird. 'Wie schade, eine Niete!'")
talkEntry:addResponse("In der Vase sind eine Menge grauer Kugeln. Aber ihr k�nnt mit einem weiteren Los gerne nachpr�fen, ob sich noch andere Kugeln finden lassen.")
talkEntry:addResponse("#me nimmt die gezogene graue Kugel entgegen und legt sie zur�ck in die Vase. 'Eine graue Kugel gewinnt nichts.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(75.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a white ball and get fifty silver coins."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("You win fifty silver! Why not buy some more tickets?")
talkEntry:addResponse("#me looks at the pulled ball. 'What at Nargun are you doing? That is a white ball and you get your money back!'")
talkEntry:addResponse("#me examines the white ball some seconds. 'Undoubtedly a white ball. That means you win your money back!'")
talkEntry:addResponse("#me puts the white ball back into the vase and hands over fifty silver coins. 'I could sell you many more tickets!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(75.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine wei�e Kugel und bekommst 50 Silberm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 5000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Ihr habt 50 Silber gewonnen! Warum kauft ihr nicht noch ein paar Lose?")
talkEntry:addResponse("#me schaut auf die Kugel. 'Bei Nargun, was macht ihr denn? Das war eine wei�e Kugel und ihr bekommt euren Einsatz zur�ck.'")
talkEntry:addResponse("#me untersucht die wei�e Kugel eine Weile. 'Unzweifelhaft eine wei�e Kugel und ihr habt euer Geld zur�ckgewonnen.'")
talkEntry:addResponse("#me legt die wei�e Kugel zur�ck in die Vase und �berreicht 50 Silberm�nzen. 'Ich kann euch noch eine ganze Menge mehr Lose verkaufen.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(48.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a yellow ball and get one gold coin."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("You can call yourself lucky. It's a gold coin you've won.")
talkEntry:addResponse("#me strokes the yellow ball before it disappears into the vase again. 'A whole gold coin is your prize!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(48.0))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine gelbe Kugel und bekommst eine Goldm�nze zur�ck."))
talkEntry:addConsequence(consequence_money("+", 10000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Ihr k�nnt euch gl�cklich sch�tzen denn ihr habt ein Goldst�ck gewonnen.")
talkEntry:addResponse("#me streichelt die gezogene gelbe Kugel, bevor diese wieder in der Vase verschwindet. 'Ein ganzes Goldst�ck habt ihr gewonnen!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(76.9))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a blue ball and get two gold coins and fifty silver."))
talkEntry:addConsequence(consequence_money("+", 25000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Two and a half gold is the prize for getting one of the blue balls. Please take your money.")
talkEntry:addResponse("#me takes the blue ball and returns a number of coins. 'Two gold and fifty silver coins, the ticket is paying back multiple!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(76.9))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine blaue Kugel und bekommst zwei Goldm�nzen und 50 Silber zur�ck."))
talkEntry:addConsequence(consequence_money("+", 25000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Zwei Goldm�nzen und 50 Silber bekommt ihr f�r die blaue Kugel. Bitte, hier ist euer Geld.")
talkEntry:addResponse("#me nimmt die blaue Kugel entgegen und �bergibt eine Menge M�nzen. 'Zwei Goldm�nzen und 50 Silberm�nzen, ein lohnendes Gesch�ft f�r euch!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addCondition(condition_chance(66.7))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out a green ball and get ten gold coins."))
talkEntry:addConsequence(consequence_money("+", 100000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("You can find much more green in the forest than here. I don't give away a secret if I tell you that you won second prize. Please take your gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addCondition(condition_chance(66.7))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst eine gr�ne Kugel und bekommst zehn Goldm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 100000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("Im Wald ist gr�n nicht so selten wie hier. Ich verrate kein Geheimnis, wenn ich euch sage, dass ihr soeben den zweith�chsten Gewinn gezogen habt. Bitte, hier ist euer Gold.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lottery] You pull out the red ball and get twenty five gold coins."))
talkEntry:addConsequence(consequence_money("+", 250000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("#s First prize winner! First prize winner! The lottery of Galmair has a first prize winner!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_quest(672, "=", 2))
talkEntry:addCondition(condition_language("german"))
talkEntry:addTrigger(".*")
talkEntry:addConsequence(consequence_inform("[Lotterie] Du ziehst die rote Kugel und bekommst 25 Goldm�nzen zur�ck."))
talkEntry:addConsequence(consequence_money("+", 250000))
talkEntry:addConsequence(consequence_quest(672, "=", 0))
talkEntry:addResponse("#sHauptgewinn! Hauptgewinn! Bei der Lotterie von Galmair wurde ein Hauptgewinn gezogen!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ticket")
talkEntry:addConsequence(consequence_inform("[Lottery information] You can buy one ticket by saying 'one ticket', or five tickets by saying 'five tickets'. After you have received your ticket, you trigger the draw with any spoken word or emote. 'Stop', however, will not trigger the draw but return your money to you."))
talkEntry:addResponse("Quite simple. You pay for a ticket and pull one ball from out of the two hundred and fifty in that vase. There are grey, white, yellow, green, blue and red balls in there but you can't see them. Depending on the colour you can win some silver. The top draw is the red ball. You will get five gold coins for a single ticket you paid ten silver for, and you can buy five tickets at once so you could win twenty five gold with a single ball.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ticket")
talkEntry:addConsequence(consequence_inform("[Lotterieinformation] Du kannst dir ein Los mittels 'ein Los' oder f�nf Lose mittels 'f�nf Lose' kaufen. Anschlie�end bewirkst du die Ziehung mit jeglichen gesprochenen Wort oder Emote. 'Stop' wird jedoch nicht die Ziehung ausl�sen, sondern dir dein Geld wieder geben."))
talkEntry:addResponse("Ganz einfach. Ihr kauft ein Los und holt dann eine Kugel von 250 aus der Vase hier. Es gibt graue, wei�e, gelbe, gr�ne, blaue und rote Kugeln. Je nach Farbe kann man gewinnen. Die rote Kugel ist der Hauptgewinn. Ihr gewinnt f�nf Goldst�cke f�r ein Los, das nur zehn Silberst�cke kostet. Ihr k�nnt sogar f�nf Lose auf einmal ziehen und damit 25 Goldst�cke gewinnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rule")
talkEntry:addTrigger("lottery")
talkEntry:addConsequence(consequence_inform("[Lottery information] You can buy one ticket by saying 'one ticket', or five tickets by saying 'five tickets'. After you have received your ticket, you trigger the draw with any spoken word or emote. 'Stop', however, will not trigger the draw but return your money to you."))
talkEntry:addResponse("Quite simple. You pay for a lottery ticket and pull one ball from out of the two hundred and fifty in that vase. There are grey, white, yellow, green, blue and red balls in there but you can't see them. Depending on the colour you can win some silver. The top draw is the red ball. You will get five gold coins for a single ticket you paid ten silver for, and you can buy five tickets at once so you could win twenty five gold with a single ball.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("regel")
talkEntry:addTrigger("Lotterie")
talkEntry:addConsequence(consequence_inform("[Lotterieinformation] Du kannst dir ein Los mittels 'ein Los' oder f�nf Lose mittels 'f�nf Lose' kaufen. Anschlie�end bewirkst du die Ziehung mit jeglichen gesprochenen Wort oder Emote. 'Stop' wird jedoch nicht die Ziehung ausl�sen, sondern dir dein Geld wieder geben."))
talkEntry:addResponse("Ganz einfach. Ihr kauft ein Los und holt dann eine Kugel von 250 aus der Vase hier. Es gibt graue, wei�e, gelbe, gr�ne, blaue und rote Kugeln. Je nach Farbe kann man gewinnen. Die rote Kugel ist der Hauptgewinn. Ihr gewinnt f�nf Goldst�cke f�r ein Los, das nur zehn Silberst�cke kostet. Ihr k�nnt sogar f�nf Lose auf einmal ziehen und damit 25 Goldst�cke gewinnen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("red")
talkEntry:addResponse("This wins the first prize. With one ticket you will win five gold, but there is a single red ball only.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("green")
talkEntry:addResponse("Green is not the top draw but close to it. Two balls are in that vase and you win two gold per ticket")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("blue")
talkEntry:addResponse("Half a gold you will win if you draw one of the ten blue balls.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("yellow")
talkEntry:addResponse("Twelve balls of yellow colour I put into the vase, and if you draw one you get twice your stake.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("white")
talkEntry:addResponse("About every third ball is white and you win your stake back... Or you draw a second time.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grey")
talkEntry:addResponse("Nun, you can't win with every colour, and grey really isn't a colour, is it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("vase")
talkEntry:addResponse("There are two hundred and fifty balls in that vase. You draw a single ball and depending on the colour you can win.")
talkEntry:addResponse("The balls are made by a highly skilled dwarven stone cutter and it is absolutely impossible to feel what colour you have in your hand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Vase")
talkEntry:addResponse("Wir haben 250 verschiedenfarbige Kugeln in der Vase. Je nachdem was f�r eine Farbe ihr erwischt, k�nnt ihr gewinnen.")
talkEntry:addResponse("Die Kugeln in der Vase haben hervorragende zwergische Steinmetze hergestellt. Man kann �berhaupt nicht f�hlen, welche Farbe sie haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ball")
talkEntry:addResponse("There are two hundred and fifty balls in that vase. You draw a single ball and depending on the colour you can win.")
talkEntry:addResponse("The balls are made by a highly skilled dwarven stone cutter and it is absolutely impossible to feel what colour you have in your hand.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Kugel")
talkEntry:addResponse("Wir haben 250 verschiedenfarbige Kugeln in der Vase. Je nachdem was f�r eine Farbe ihr erwischt, k�nnt ihr gewinnen.")
talkEntry:addResponse("Die Kugeln in der Vase haben hervorragende zwergische Steinmetze hergestellt. Man kann �berhaupt nicht f�hlen, welche Farbe sie haben.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rot")
talkEntry:addResponse("Eine einzige rote Kugel gibt es und die ist der Hauptgewinn. F�r jedes Los bekommt ihr f�nf Goldst�cke, wenn ihr sie erwischt.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gr�n")
talkEntry:addResponse("Eine gr�ne Kugel ist fast wie ein Hauptgewinn. Zwei sind in der Vase und zwei Goldst�cke bekommt man daf�r.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("blau")
talkEntry:addResponse("Zieht ihr eine der zehn blauen Kugeln ist euch ein halbes Goldst�ck sicher.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gelb")
talkEntry:addResponse("F�r eine gelbe Kugel bekommt ihr das doppelte des Einsatzes zur�ck. Insgesamt sind zw�lf davon in der Vase.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wei�")
talkEntry:addResponse("Beinahe jede dritte Kugel ist wei�. Ihr bekommt euer Geld zur�ck oder zieht einfach noch mal.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("grau")
talkEntry:addResponse("Man kann nicht immer nur gewinnen. Und wenn ihr ehrlich seid, grau ist auch keine richtige Farbe.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tar")
talkEntry:addTrigger("feather")
talkEntry:addResponse("The lottery isn't illegal, but take care if you play with Xiao. It is said he has experience with tar and feathers.")
talkEntry:addResponse("Getting tarred and feathered happens if you try to betray someone, but I propose you buy a lottery ticket, not to join a game.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Teer")
talkEntry:addTrigger("Feder")
talkEntry:addResponse("Die Lotterie ist nicht verboten. Aber man sagt, Xiao hat mal Bekanntschaft mit Teer und Federn gemacht.")
talkEntry:addResponse("Wer betr�gt, wird geteert und gefedert. Da gibt es kein Pardon. Aber die Lotterie ist kein Spiel.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cheat")
talkEntry:addTrigger("honest")
talkEntry:addResponse("I don't cheat! I check and count all the balls at least every morning.")
talkEntry:addResponse("Most of the money for the tickets we pay back. You can't say that's cheating.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("betrug")
talkEntry:addTrigger("betr�g")
talkEntry:addTrigger("ehrlich")
talkEntry:addResponse("Ich betr�g doch nicht. Ich z�hle jeden Morgen die Kugeln nach.")
talkEntry:addResponse("Wenn man bei der Lotterie fast alles eingenommene Geld wieder auszahlt, betr�gt man doch nicht!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beginner")
talkEntry:addResponse("There's nothing to learn and everybody has the same chance. Just pull a single ball out of that vase.")
talkEntry:addResponse("It's never too late to buy a ticket.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("anf�nger")
talkEntry:addResponse("Da ist nichts Schweres an der Lotterie. Man muss nur eine Kugel aus der Vase nehmen.")
talkEntry:addResponse("Es ist nie zu sp�t Lose zu kaufen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("money")
talkEntry:addResponse("We pay nearly every coin back, so why not try to get your coins some companions?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("geld")
talkEntry:addResponse("Wir zahlen beinahe jede M�nze die wir einnehmen wieder aus. Warum wollt ihr es dann nicht einmal versuchen, ob sich Gesellschaft f�r eure M�nzen findet?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("luck")
talkEntry:addResponse("Nargun is responsible for your luck, but you have to praise him... Maybe with a ticket.")
talkEntry:addResponse("With a little luck you could multiply the size of your purse!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gl�ck")
talkEntry:addResponse("Nargun ist verantwortlich f�r euer Gl�ck. Aber nur, wenn ihr ihn ehrt. Zum Beispiel mit einem Los.")
talkEntry:addResponse("Mit etwas Gl�ck k�nnt ihr den Umfang eurer Geldb�rse vervielfachen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("archmage")
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("The Archmage bought a ticket but he took it home with him. I'm sure he doesn't study magic. He's trying to find out how to win the first prize, but I tell you he has no chance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Der Erzmagier hat auch schon ein Los gekauft und mitgenommen. Ich glaube fast, der studiert keine Magie, sondern versucht herauszubekommen, wie er den Hauptgewinn in unserer Lotterie ziehen kann. Aber ich sag ihnen gleich, da hat er keine Chance!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick is in the southeast. They don't have a lottery because the Archmage always suspects the other mages might find out how to win with every ticket.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Runewick ist im S�dosten zu finden. Es gibt dort keine Lotterie, weil der Erzmagier bef�rchtet, dass seine Magier herausfinden k�nnten, wie man bei jedem Los den Hauptgewinn zieht.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("The Don doesn't like to lose money. He is not going to buy a ticket but would accept if you buy one.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Der Don verliert nur ungern. Er wird sicher kein Los kaufen. Aber er hat nichts dagegen, wenn Ihr eines kauft.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("We are in Galmair and this is the Galmairian lottery.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Wir sind in Galmair. Und das hier ist die Lotterie Galmairs.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addTrigger("Queen")
talkEntry:addResponse("The Queen plays with gems and mirrors but not with tickets. She's much too proud to play for money, but I'm not sure that one of her seers didn't buy a ticket for her recently.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addTrigger("K�nigin")
talkEntry:addResponse("Der K�nigin spielt mit Edelsteinen und Spiegeln aber nicht mit Losen. Sie ist viel zu vornehm, um um Geld zu spielen. Wobei es durchaus sein k�nnte, dass vor Kurzem einer ihrer Ritter ein Los f�r sie gekauft hat.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr is in the southwest. If you need sand you can go there. They have plenty of sand in the desert.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("Cadomyr ist im S�dwesten zu finden. Wenn ihr Sand wollt, dann geht dahin. Es gibt mehr als genug Sand in der W�ste.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("nargun")
talkEntry:addResponse("No a lottery isn't strictly a game, but if you praise Nargun it might help you win.")
talkEntry:addResponse("Chaos all over. No we should take care he doesn't become too powerful.")
talkEntry:addResponse("If you tidy up you chest you will help Nargun to create chaos. Once your items are in a mess there is no more chance.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("nargun")
talkEntry:addResponse("Nein, genau gesehen ist eine Lotterie kein Spiel. Aber es ist sicher nicht verkehrt, dass man Nargun lobt, wenn man gewinnen will.")
talkEntry:addResponse("�berall Chaos. Das will keiner und so sollte man ihn nicht zu stark werden lassen.")
talkEntry:addResponse("Wer seine Kiste aufr�umt, l�sst nur zu, dass Nargun Chaos erzeugen kann. Was soll er denn machen, wenn in euren Sachen bereits das Chaos regiert?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("temple")
talkEntry:addResponse("Nargun's temple is in Galmair. It's not far away from here.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tempel")
talkEntry:addResponse("Narguns Tempel ist in Galmair, unweit von hier.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("oldra")
talkEntry:addResponse("Thanks to Oldra there has been a rich harvest this past year.")
talkEntry:addResponse("A shrine to Oldra can be found in Yewdale, that's the village near Runewick.")
talkEntry:addResponse("If you believe it or not, the year before last I sacrificed the the best tomatoes to Oldra and last year the harvest was been beyond belief. So what would you say?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("oldra")
talkEntry:addResponse("Wegen Oldra hatten wir letztes Jahr eine reiche Ernte.")
talkEntry:addResponse("Einen Altar, der Oldra geweiht ist, findet ihr in Yewdale. Das ist das Dorf in der N�he von Runewick.")
talkEntry:addResponse("Ob ihr mir glaubt oder nicht, vorletztes Jahr habe ich Oldra die besten Tomaten geopfert. Und letztes Jahr konnte ich unglaublich viel ernten. Was sagt ihr nun?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("If you want to know something about the gods, look for priests or ask in one of the towns.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("G�tter")
talkEntry:addResponse("Wenn ihr etwas �ber die G�tter wissen m�chtet, dann sucht einen Priester oder fragt jemanden in den St�dten.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("food")
talkEntry:addTrigger("eat")
talkEntry:addResponse("I don't like venison, it tastes much too strong. A real soft roasted pork is much better.")
talkEntry:addResponse("Some people eat everything, but that has no style. Where do we go to if we start feeding like animals?")
talkEntry:addResponse("It's not only the taste and smell that creates a good dish, it has to look good as well.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("essen")
talkEntry:addTrigger("speisen")
talkEntry:addResponse("Wild ist nicht mein Fall. Das schmeckt zu streng. Ein guter saftiger Schweinebraten ist viel besser.")
talkEntry:addResponse("Einige Leute essen wirklich alles. Aber das hat doch keinen Stil. Wo kommen wir den hin, wenn wir fressen wie die Tiere.")
talkEntry:addResponse("Nicht nur Geschmack und Geruch bestimmt ein gutes Essen. Auch das Auge isst mit. Deshalb ist es wichtig, einen Teller auch ordentlich zu dekorieren.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("talk")
talkEntry:addTrigger("story")
talkEntry:addTrigger("tell something")
talkEntry:addResponse("A fourth cousin of a friend of mine once ate a pig alone, nothing left except the bones... but don't think she ate it raw. For two days she created one fine dish after another.")
talkEntry:addResponse("It is told there exists a kind of onion that doesn't smell so strong, but the dwarves don't like it and therefore the onion is so spicy nowadays.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erz�hl")
talkEntry:addTrigger("Geschichte")
talkEntry:addResponse("Eine entfernte Verwandte einer Freundin hat mal ein ganzes Schwein alleine gegessen. Nichts als Knochen blieben �brig. Und sie hat zwei Tage ein tolles Gericht nach dem anderen gekocht.")
talkEntry:addResponse("Man sagt, es h�tte mal Zwiebeln gegeben, die nicht so stark rochen. Aber da die Zwerge sie nicht mochten, sind nur noch die scharfen �brig, die wir heutzutage kennen.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("what sell")
talkEntry:addTrigger("what buy")
talkEntry:addTrigger("list wares")
talkEntry:addTrigger("prize of")
talkEntry:addResponse("I'm selling tickets, or five at once. How many do you want?")
talkEntry:addResponse("This is a lottery. Do you know what a lottery ticket seller sells?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("was verkauf")
talkEntry:addTrigger("was kauf")
talkEntry:addTrigger("warenliste")
talkEntry:addTrigger("preis von")
talkEntry:addResponse("Ich verlaufe Lose! Auch wenn hier sonst nichts los ist, Lose bekommt ihr bei mir.")
talkEntry:addResponse("Dies ist eine Lotterie. Und ihr d�rft dreimal raten, was man hier kaufen kann!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Fine, I'm Lotte Silberstreif and how many tickets do you want to buy?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Sch�n, ich bin die Lotte Silberstreif und wie viele Lose wollt ihr kaufen?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Silberstreif")
talkEntry:addResponse("Yes, that is my name, but how about buying a ticket?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Silberstreif")
talkEntry:addResponse("Ja, das ist mein Name. Aber warum wollt ihr kein Los haben?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("Kommt und versucht Euer Gl�ck. Es wird euer Schaden nicht sein!", "Come and try. You will win, I'm sure.")
talkingNPC:addCycleText("#me kaut auf einem Kirschkern herum.", "#me chews a cherry pit.")
talkingNPC:addCycleText("#me wischt ein Staubkorn von der Vase.", "#me wipes some dust from the vase.")
talkingNPC:addCycleText("25 Goldst�cke, das ist der Hauptgewinn!", "Twenty five gold coins, that's the first prize!")
talkingNPC:addCycleText("#me poliert eine Goldm�nze.", "#me polishes a gold coin.")
talkingNPC:addCycleText("#me wischt etwas Staub von ihrem Kleid.", "#me wipes some dust from her dress.")
talkingNPC:addCycleText("#me schaut herum.", "#me looks around.")
talkingNPC:addCycleText("#me spielt mit den B�ndern ihres Kleides.", "#me plays with the cords of her dress.")
talkingNPC:addCycleText("#me richtet sich die Haare mit den Fingern als Kamm.", "#me corrects her hair with her fingers.")
talkingNPC:addCycleText("Kauft ein Los der Lotterie von Galmair!", "Buy a ticket for the Galmairian lottery!")
talkingNPC:addCycleText("#me schaut sich unbeteiligt die Leute an.", "#me examines the people around.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(6)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Dieser NPC ist Lotte Silberstreif die Lottofee.", "This NPC is Lotte Silberstreif a lottery ticket seller.")
mainNPC:setUseMessage("Du greifst mich besser nicht an.", "You had better not touch me.")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(1, 0)
mainNPC:setEquipment(3, 847)
mainNPC:setEquipment(11, 0)
mainNPC:setEquipment(5, 208)
mainNPC:setEquipment(6, 0)
mainNPC:setEquipment(4, 2295)
mainNPC:setEquipment(9, 821)
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
