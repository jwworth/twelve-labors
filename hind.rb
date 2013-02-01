class Hind < Level

  def intro
text = <<MY_HEREDOC
  
--------------------------------------------------------------------------

"Your third labor," says the King, "is to capture the Cernitian Hind."

"But first," says the King, "I must say something.
When killing the Hydra, you enlisted the help of your cousin Iolaus.
These labors must be completed by you and you alone, Heracles.
As such, I do not count the slaying of the Hydra as one of your ten labors.
You must now complete an additional labor, meaning eleven total labors."

You go on the hunt, and finally spot the Cerynitian Hind.
It is a beautiful deer with bright golden antlers.

WHAT DO YOU WANT TO DO, HERACLES?

- Set a trap?
- Throw a net?
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
      elsif action == "set a trap"
        puts "\nYou set a trap in the woods."
        puts "The Hind walks by and is caught, but dies of panic in the trap."
        dead("The Hind is sacred to the god Artemis.  Artemis kills you.")
      elsif action == "throw a net"
        labor_completed = true
        puts "\nYour throw a net on the Hind while it is sleeping."
        puts "Trapped, you collect the beast and bring it back to the King."
      elsif action.include? "kill"
        puts "\nYou decide to kill the Hind with your bow and arrow."
        dead("The Hind is sacred to the god Artemis.  Artemis kills you.")	
      elsif action.include? "chase"
        puts "\nYou decide to chase the deer through the woods."
        dead("Eventually, you get tired and thirsty, and give up your quest.")
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end
    
    boar = Boar.new
    boar.play
  end
end