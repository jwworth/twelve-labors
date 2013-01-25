def lion()
  labor = "kill the Nemean Lion"
  puts "\n\"Your first labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

You travel to Nemea and find the fearsome Lion.
He is a nightmarish beast with thick, leathery hide.
You approach the giant cat with weapons at the ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Attack with your spear?
- Attack with your bow and arrow?
- Wrestle it?
- Run away?

MY_HEREDOC

  puts intro 
  prompt; action = gets.chomp
  action = action.downcase
	
  if action.include? "spear"
    puts "\nYou attack with your spear!"
    dead("The Lion's hide is too thick for your spear, Heracles.  The Lion eats you alive.")
  elsif action.include? "bow" or action.include? "arrow"
    puts "\nYou attack with your bow and arrow!"
    dead("The Lion's hide is too thick for your arrows, Heracles.  The Lion eats you alive.")
  elsif action.include? "wrestle"
    puts "\nYou decide to wrestle the Lion!"
    puts "With your incredible strength, you pin the beast to the earth and strangle it."
    next_level("GOOD JOB, HERACLES!")
    hydra
  elsif action.include? "run"
    dead("\n#{RUN_AWAY}!")
  else
    dead("\nWhile you were messing around, the Lion ate you alive.")
  end
end