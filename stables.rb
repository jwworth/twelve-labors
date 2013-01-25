def stables()
  labor = "clean the Stables of Augeas"
  puts "\n\"Your fifth labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

The Stables of Augeas sit at the junction of two rivers.
They have not been cleaned in thirty years, and are home
to thousands of cattle.  The King has ordered you to clean
them in one day.

MY_HEREDOC

  puts intro	
  stables_clean = false
	
  while stables_clean == false do
    puts "WHAT DO YOU WANT TO DO, HERACLES?\n\n"
    prompt
    action = gets.chomp
    action = action.downcase
    if action.include? "divert river" or action.include? "divert the river"
      puts "\nYou use your superhuman strength to divert the two nearby rivers."
      puts "A tidal wave of water cleans the Stables in a single day."
      next_level("GOOD GOING, HERACLES!")
      stables_clean = true
    elsif action.include? "river"
      puts "You might be onto something.  Remember, you have superhuman strength."
    elsif action.include? "divert"
      puts "You might be onto something.  Remember, that there are two rivers nearby."
    else
      puts "\nThat didn't work.\n"
    end
  end
		
  birds
	
end
