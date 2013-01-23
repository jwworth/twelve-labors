def boar()
  labor = "capture the Erymanthian Boar"
  puts "\n\"Your fourth labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

The Ermanthian Boar is a vicious beast that has terrorized the
woodlands of Psophis for years.

You approach the boar's lair, sword at the ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Enter the lair?
- Put a net over the door?
- Shout at the boar?
- Run away?

MY_HEREDOC

	puts intro 
	prompt
	action = gets.chomp
	action = action.downcase
	
	if action.include? "enter" or action.include? "lair"
	  puts "\nYou enter the lair cautiously, spear at the ready."
		dead("The boar senses your presence, and rams you in the chest.  You bleed out and die.")
	elsif action.include? "net"
	  puts "\nYou cautiously place a net trap over the door."
		puts "The boar retreats out a secret back exit and never returns."
		dead("The king grows impatient as you follow the boar across the country, and orders your exection.")
	elsif action.include? "shout"
	  puts "\nYou decide to shout into the cave at the boar."
		puts "Enraged, the boar runs out of the cave and straight into a snowbank."
		puts "You put the boar in chains and bring it back to the King."
		next_level("EXCELLENT, HERACLES!")
	  stables()
	elsif action.include? "run"
	  dead("\n#{RUN_AWAY}!")
	else
	  dead("\nWhile you were messing around, the boar ran out of the cave and rammed you to death.")
	end
end