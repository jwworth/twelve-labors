class Immortality < Level

  def intro
text = <<MY_HEREDOC
  
--------------------------------------------------------------------------

Having completed all ten labors, plus two extra, you are purified of your
sins.  You are further granted IMMORTALITY, and are now a divine hero among
men.

CONGRATULATIONS, HERACLES!
MY_HEREDOC
end

  def play
  
    puts intro
    puts "Play again (Y or N)?"
    prompt
    play_again = gets.chomp.downcase
    
    if play_again == "y" or play_again == "yes"
      lion = Lion.new
      lion.play
    else
      Process.exit(0)
    end
  end
end