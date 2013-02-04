class Stables < Level

  def intro
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your fifth labor," says the King, "is to clean the Stables of Augeas."

The Stables of Augeas sit at the junction of two rivers. They have not been
cleaned in thirty years, and are home to thousands of cattle.  The King has
ordered you to clean
them in one day.
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
      elsif action.include? "divert river" or action.include? "divert the river"
        labor_completed = true
        puts "\nYou use your superhuman strength to divert the nearby rivers."
        puts "A tidal wave of water cleans the Stables in a single day."
      elsif action.include? "river"
        puts "\nYou might be onto something.  Remember your superhuman strength!"
      elsif action.include? "divert"
        puts "\nYou might be onto something.  Remember the two nearby rivers!"
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end

  birds = Birds.new
  birds.play
	end
end
