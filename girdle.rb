def girdle()
	labor = "bring back the Amazon Girdle"
	puts "\n\"Your ninth labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

The Amazon Girdle is owned by the Queen of the Amazons,
are warring race of women.

You find the Queen and her the Girdle.
MY_HEREDOC

  puts intro
  has_girdle = false
  while has_girdle == false do
	  puts "\nWHAT DO YOU WANT TO DO, HERACLES?\n\n"
		prompt
		action = gets.chomp
		action = action.downcase
		if action.include? "ask" and action.include? "for" and action.include? "girdle"
		  puts "\nThe Queen gives you her Girdle."
			puts "\t\t...that was easy."
			has_girdle = true
		elsif action.include? "take" and "girdle"
		  dead("\nThe Queen is offended by your audacity.  She orders you burned at the stake.")
		else 
		  puts "That didn't work."
		end
	end
	
	next_level("SMOOTH MOVE, HERACLES!")
	cattle
	
end