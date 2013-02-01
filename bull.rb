class Bull < Level

  def intro
text = <<MY_HEREDOC
  
--------------------------------------------------------------------------

"Your seventh labor," says the King, "is to capture the Cretan Bull."

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
end

  def play
    
    puts intro  	
    labor_completed = false
    counter = 0
    
    while labor_completed == false do
      counter += 1
      prompt
      action = gets.chomp.downcase  
      if counter == 10
        dead("#{@timeout}")
      elsif action.include? "set" or action.include? "trap"
        labor_completed = true
        puts "\nYou set a net trap in the woods."
        puts "The Bull walks by and is caught in the net!"
        puts "You return to the King with the Bull." 
      elsif action.include? "net" or action.include? "throw"
        puts "\nYour throw a net on the Bull while it is sleeping."
        dead("The bull wakes up, enraged, and rams a horn through your stomach.")
      elsif action.include? "kill"
        puts "\nYou decide to kill the Bull with your bow and arrow."
        dead("The Hind is sacred to the King of Crete.  He orders your execution.")	
      elsif action.include? "chase"
        puts "\nYou decide to chase the Boar through the woods."
        dead("Eventually, you get tired and thirsty, and give up your quest.")
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end
    
    mares = Mares.new
    mares.play
  end
end