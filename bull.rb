def bull()
  labor = "capture the Cretan Bull"
  puts "\n\"Your seventh labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

"Once again," says the King, "I must say something.
When ridding us of the birds, you enlisted the god Hephaestus.
These labors must be completed by you and you alone, Heracles.
As such, I do not count your last challenge as one of your ten labors.
You must now complete an additional labor, meaning twelve total labors."

You go on the hunt, and finally spot the Cretan Bull.

WHAT DO YOU WANT TO DO, HERACLES?

- Set a trap?
- Throw a net on it?
- Kill it?
- Chase it until it dies of exhaustion?

MY_HEREDOC

	puts intro 
	prompt
	action = gets.chomp
	action = action.downcase
	
	if action.include? "set" or action.include? "trap"
	  puts "\nYou set a net trap in the woods."
		puts "The Bull walks by and is caught in the net!"
		puts "You return to the King with the Bull." 
		next_level("GOOD THINKING, HERACLES!")
		mares()
	elsif action.include? "net" or action.include? "throw"
	  puts "\nYour throw a net on the Bull while it is sleeping."
		dead("The bull wakes up, enraged, and rams a horn through your stomach.")
	elsif action.include? "kill"
    puts "\nYou decide to kill the Bull with your bow and arrow."
    dead("The Hind is sacred to the King of Crete.  He orders your execution.")	
	elsif action.include? "chase"
	  puts "\nYou decide to chase the Boar through the woods."
		dead("Eventually, you get tired and thirsty, and give up your quest.")
	else
	  dead("While you were messing around, the Bull spotted you, and smashes you into a tree.")
	end
end