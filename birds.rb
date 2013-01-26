def birds
  labor = "drive out the Stymphalian Birds"
  puts "\n\"Your sixth labor,\" says the King, \"is to #{labor}.\""

intro = <<MY_HEREDOC

The Stymphalian Birds are a group of man-eating demons
who terrorize the forest.

You approach the birds' nesting grounds, sword at the ready.

The God Haphaestus has given you an advantage in this battle,
by making you a giant bronze rattle to frighten the birds.

MY_HEREDOC

  puts intro	
  birds_gone = false
	
  while birds_gone == false do
    puts "WHAT DO YOU WANT TO DO, HERACLES?\n\n"
    prompt
    action = gets.chomp
    action = action.downcase
    if action.include? "shake" and action.include? "rattle"
        puts "\nYou shake the rattle at the birds, and they all fly away."
        birds_gone = true
    else
      puts "That didn't work."
    end
  end

  next_level("WELL PLAYED, HERACLES!")
  bull
	
end