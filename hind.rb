def hind()
	labor = "capture the Cerynitian Hind"
	puts "\n\"Your third labor,\" says the King, \"is to #{labor}.\""
	
intro = <<MY_HEREDOC

"But first," says the King, "I must say something.
When killing the Hydra, you enlisted the help of your cousin Iolaus.
These labors must be completed by you and you alone, Heracles.
As such, I do not count the slaying of the Hydra as one of your ten labors.
You must now complete an additional labor, meaning eleven total labors."

You go on the hunt, and finally spot the Cerynitian Hind.
It is a beautiful deer with bright golden antlers.

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
		puts "The Hind walks by and is caught, but dies of panic in the trap."
		dead("The Hind is sacred to the god Artemis.  Artemis is enraged and kills you.")
	elsif action.include? "net" or action.include? "throw"
		puts "\nYour throw a net on the Hind while it is sleeping."
		puts "Trapped, you collect the beast and bring it back to the King."
		next_level("BRAVO, HERACLES!")
		boar
	elsif action.include? "kill"
		puts "\nYou decide to kill the Hind with your bow and arrow."
		dead("The Hind is sacred to the god Artemis.  Artemis is enraged and kills you.")	
	elsif action.include? "chase"
		puts "\nYou decide to chase the deer through the woods."
		dead("Eventually, you get tired and thirsty, and give up your quest.")
	else
		dead("While you were messing around, the Hind ran away, never to be seen again.")
	end
end