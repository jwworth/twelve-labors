def mares()
	labor = "capture the Mares of Diomedes"
	mares_die = "The King hears of your misfortune and orders your execution."
	puts "\n\"Your eigth labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

Diomedes' Mares are a pack of vicious man-eating horses.
They belong to Diomedes, a hero of the Trojan War.

You find the horses and manage to steal them, but
on the way back, are attacked by Diomedes.

An intense battle follows, and in the end, you kill Diomedes.

Later in the journey, the horses become weak from malnutrition.
They must eat or they will die.

WHAT DO YOU WANT TO DO, HERACLES?

- Feed the Mares some berries?
- Keep going?
- Feed the Mares Diomedes' corpse?

MY_HEREDOC

	puts intro 
	prompt
	action = gets.chomp
	action = action.downcase
	
	if action.include? "berries"
		puts "\nYou pick some berries from a nearby bush and feed the Mares."
		puts "They Mares are man-eating horses and the berries kill them instantly."
		dead("#{mares_die}")
	elsif action.include? "keep" or action.include? "going"
		puts "\nYou decide to continue your journey without feeding the Mares."
		puts "They soon die of malnutrition."
		dead("#{mares_die}")
	elsif action.include? "corpse"
		puts "\nYou decide feed the Mares Diomedes' still-warm corpse."
		puts "They eat Diomedes and suddenly turn into docile, tame horses."
		puts "You return to the King with his Mares."
		next_level("SMART MOVE, HERACLES!")
		girdle
	else
		puts "\nWhile you were messing around, the Mares died."
		dead("#{mares_die}")
	end
end