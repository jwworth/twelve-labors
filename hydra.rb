def hydra
  labor = "kill the Hydra of Lerna"
  puts "\n\"Your second labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

The Hydra of Lerna is a terrible multi-headed serpent with poisonous breath.
For each head that is chopped off, two more regrow.
You confront it with sword at the ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Continue chopping?
- Call for help?
- Wrestle it?
- Run away?

MY_HEREDOC

  puts intro 
  prompt
  action = gets.chomp
  action = action.downcase
	
  if action.include? "continue" or action.include? "chopping"
    puts "\nYou continue chopping.  The heads regrow again and again."
    dead("Eventually you grow tired, and the Hydra bites your head off.")
  elsif action.include? "help"
    puts "\nYou call for help, and your nephew Iolaus rushes to your aid."
    puts "After you chop off each head, Iolaus cauterizes the stump."
    puts "When only one head remains, you bury it under a rock."
    next_level("WELL DONE, HERACLES!")
    hind
  elsif action.include? "wrestle"
    puts "\nYou decide to wrestle the Hydra."
    dead("Your superhuman strength is not enough for this beast.  You die.")
  elsif action.include? "run"
    dead("\n#{RUN_AWAY}!")
   else
    dead("\nWhile you were messing around, the Hydra bit your head off.")
  end
end