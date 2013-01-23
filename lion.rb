def lion()
  labor = "kill the Nemean Lion"
  puts "\n\"Your first labor,\" says the King, \"is to #{labor}.\""


intro = <<MY_HEREDOC

The Nemean Lion is a fearsome cat with thick, leathery skin.
You confront it with spear at the ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Attack with your spear?
- Attack with your bow and arrow?
- Wrestle it?
- Run away?

MY_HEREDOC

	puts intro 
	prompt
	action = gets.chomp
	action = action.downcase
	
	if action.include? "spear"
	  puts "\nYou attack with your spear."
		dead("The lion's hide is too thick for your spear, Heracles.  The lion eats you alive.")
	elsif action.include? "bow" or action.include? "arrow"
	  puts "\nYou attack with your bow and arrow."
		dead("The lion's hide is too thick for your arrows, Heracles.  The lion eats you alive.")
	elsif action.include? "wrestle"
	  puts "\nYou decide to wrestle the lion."
		puts "With your incredible strength, you pin it to the ground and strangle it."
		next_level("GOOD JOB, HERACLES!")
		hydra()
	elsif action.include? "run"
	  dead("\n#{RUN_AWAY}!")
	else
	  dead("\nWhile you were messing around, the lion ate you alive.")
	end
end