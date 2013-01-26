def hydra
  labor = "kill the Hydra of Lerna"
  puts "\n\"Your second labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

The Hydra of Lerna is a terrible beast with many heads.
You confront it with sword at the ready.
Each head you chop off immediately regenerates, causing no damage.

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
    puts "\nYou continue chopping.  The heads continue to grow back over and over again."
    dead("Eventually you grow tired, and the Hydra bites your head off.")
  elsif action.include? "help"
    puts "\nYou call for help, and your nephew Iolaus rushes to your aid."
    puts "He cauterizes each stump after each blow, preventing new heads from growing."
    puts "You bury the final immortal head under a rock."
    next_level("WELL DONE, HERACLES!")
    hind
  elsif action.include? "wrestle"
    puts "\nYou decide to wrestle the Hydra."
    dead("Even with your superhuman strenth, the beast is too strong and kills you.")
  elsif action.include? "run"
    dead("\n#{RUN_AWAY}!")
   else
    dead("\nWhile you were messing around, the Hydra bit your head off.")
  end
end