=begin
class Cattle < Level

  def intro
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
    
    puts intro  	
    labor_completed = false
    counter = 0
    
    while labor_completed == false do
      counter += 1
      prompt
      action = gets.chomp.downcase  
      if counter == 10
        dead("#{@timeout}")
            elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end
end
=end