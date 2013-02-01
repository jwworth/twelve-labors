class Mares < Level

  def intro
text = <<MY_HEREDOC
  
--------------------------------------------------------------------------

"Your eigth labor," says the King, "is to capture the Mares of Diomedes."

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
end

  def play
    
    puts intro
    mares_die = "The King hears of your misfortune and orders your execution."
    labor_completed = false
    counter = 0
    
    while labor_completed == false do
      counter += 1
      prompt
      action = gets.chomp.downcase  
      if counter == 10
        dead("#{@timeout}")
      elsif action.include? "berries"
        puts "\nYou pick some berries from a nearby bush and feed the Mares."
        puts "The Mares are carnivores and the berries kill them instantly."
        dead("#{mares_die}")
      elsif action == "keep going"
        puts "\nYou decide to continue your journey without feeding the Mares."
        puts "They soon die of malnutrition."
        dead("#{mares_die}")
      elsif action.include? "corpse"
        labor_completed = true
        puts "\nYou decide feed the Mares Diomedes' still-warm corpse."
        puts "They eat Diomedes and suddenly turn into docile, tame horses."
        puts "You return to the King with his Mares."
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end
  
  girdle = Girdle.new
  girdle.play
  end
end