def immortality

conclusion = <<MY_HEREDOC

Having completed all ten labors, plus two extra,
you are purified of your sins.  You are further
granted IMMORTALITY, and are now a divine hero
among men.

CONGRATULATIONS, HERACLES!

MY_HEREDOC

  puts conclusion
  puts "Play again (Y or N)?\n\n"
  prompt
  play_again = gets.chomp	
  play_again = play_again.downcase
	
  if play_again == "y" or play_again == "yes"
    start
  else
  Process.exit(0)
  end
end