class Girdle < Level

  def intro_1
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your ninth labor," says the King, "is to bring back the Amazon Girdle."

The Amazon Girdle is owned by the Queen of the Amazons, a race of female
warriors.

You find the Queen and spot her Girdle.
MY_HEREDOC
end

  def intro_2
text = <<MY_HEREDOC

--------------------------------------------------------------------------

On the way back from the Amazons, you complete a tenth labor,
stealing the Cattle of Geryon.

To accomplish this labor, you kill a monstrous watchdog,
Eurytion (son of the god Ares), and Geryon, yet another
three-headed monster.

You return home and present the Girdle and the Cattle to
the King, who is very pleased.
MY_HEREDOC
end

  def play
    
    puts intro_1 	
    labor_completed = false
    counter = 0
    
    while labor_completed == false do
      counter += 1
      prompt
      action = gets.chomp.downcase  
      if counter == 10
        dead("#{@timeout}")
      elsif action == "ask for girdle"
        labor_completed = true
        puts "\nThe Queen gives you her Girdle."
        puts "\t...that was easy."
      elsif action == "take girdle"
        dead("The Queen is offended by your audacity.  She orders you burned at the stake.")
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end

    puts intro_2
    apples = Apples.new
    apples.play
  end
end