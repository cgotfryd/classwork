puts "Greetings, adventurer! What is your name?"
player = gets.chomp

rounds = 0

puts "You find yourself in a dungeon. There are rooms to your right and to your left. There are loud snorting and howling sounds coming from behind the door on the right. A soft, warm glow can be seen coming from underneath the door on the left. Do you go [1] right or [2] left?"
response = gets.chomp.to_i

if response == 1 then
	puts "You edge slowly towards the door. When you reach it, the doorknob rattles a bit but turns. You push the door open. You hear a loud roar and the last thing you see is a gaping, tooth-filled maw of an unknown beast before it all goes black."
	puts "#{player} was killed by a monster. You lasted #{rounds} rounds"

elsif response == 2 then
	rounds += 1
	puts "You move quietly towards the left, careful not to make too much noise. The door opens easily. In the center of the room is a table with a small candle. Beside it is a sword. Leaning against the wall is a shield. You pick them up, immediately feeling a bit safer. On the right there is another door. Do you go [1] right or [2] back?"
	response = gets.chomp.to_i

	if response == 2 then
		puts "Bravely brandishing your newfound sword and shield, you walk back out of the room. Three loud thumps sound from the door on the other side, and the monster you had heard earlier tears through the door. You see a flash of black fur and yellow eyes. There's a loud roar and the snap of large teeth before it all goes black."
		puts "#{player} was killed by a monster. You lasted #{rounds} rounds"

	elsif response == 1 then
		rounds += 1
		puts "The door creaks open when you push on it, and the loud sound makes you recoil. Inside, a large dog is curled up on some cardboard. He looks up when you walk in and wags his tail. Do you [1] ignore the dog and go back or [2] go over to the dog?"
		response = gets.chomp.to_i

		if response == 1 then
			puts "You back out of the room slowly, careful not to disturb the dog. As you creep back to the door you came in from, your back comes up against something solid. You turn around slowly to find glowing yellow eyes staring back at you. You raise your sword to strike, leaving a gash on the monster in front of you. It raises a large, clawed paw and strikes, knocking you down before you can react."
			puts "#{player} was killed by a monster. You lasted #{rounds} rounds"

		elsif response == 2 then
			rounds += 1
			puts "You walk forward slowly, and the dogs ears lift as you do. His tail wags harder. When you reach him, he stands up to his full height, nearly reaching your shoulders. He licks your face and then bounds out the door you came in from. Loud snarling sounds emenate from the other room. When you turn, you find the dog squaring up with a large beast, both animals have their teeth bared and shoulders squared, ready for a fight. Do you [1] help the dog take down the beast or [2] wait for the dog to defeat the moster?"
			response = gets.chomp.to_i

			if response == 2 then
				puts "The standoff lasts only a few moments before the two beasts launch into combat. All you can see is a mess of dark fur and teeth. The sound is deafening. Pained squealing and angry growls ring out for several terrifying minutes until the dog leaps out of the fight and darts out the door on the far end leaving the monster staring right at you. You wave your sword, but even damaged as the monster is, it's too quick for you to stop."
				puts "#{player} was killed by a monster. You lasted #{rounds} rounds"

			elsif response == 1 then
				rounds += 1
				puts "The dog charges ahead, teeth bared and growling. He clamps down onto the monster's leg while you slash at its chest. The battle takes barely a minute, but time seems to stretch until finally you are standing victorious over the vanquished beast. The dog trots proudly back out the way you came, leading you outside through the door that had hid the monster."
				puts "The monster was slain by #{player}. You were victorious in all #{rounds} rounds!"

			else
				puts "Invalid response. You survived #{rounds} rounds"

			end

		else
			puts "Invalid response. You survived #{rounds} rounds"

		end

	else
		puts "Invalid response. You survived #{rounds} rounds"

	end 

else
	puts "Invalid response. You survived #{rounds} rounds"

end