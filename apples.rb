class Apples < Level

  def intro
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your eleventh labor," says the King, "is to retrieve the Golden Apples of
Hesperides."

To retreive the Golden Apples of Hesperides, you request the assistance
of the god Atlas.  His daughters guard the apples.

Atlas agrees to help, and collects the apples for you.  In exchange, you
agree to hold the world on your shoulders while he completes the labor.

When Atlas returns, he argues with you about taking back his burden.

WHAT DO YOU WANT TO DO, HERACLES?

- Drop the world?
- Keep holding up the world?
- Ask Atlas to hold the world for 'just a minute'?
MY_HEREDOC
end

  def play

    puts intro
    new_atlas = "Congratulations, Atlas!  You must now hold the Earth for all eternity."
    labor_completed = false
    counter = 0

    while labor_completed == false do
      counter += 1
      prompt
      action = gets.chomp.downcase
      if counter == 10
        dead("#{@timeout}")
      elsif action == "drop the world"
        puts "\nYou decide to drop the world!"
        dead("Mountains crumble, seas boil, and we all die a fiery, horrible death.")
      elsif action.include? "keep holding"
        puts "\nYou decide to keep holding up the world!"
        dead("#{new_atlas}")
      elsif action.include? "just a minute"
        labor_completed = true
        puts "\nYou decide ask Atlas to hold up the world for 'just a minute.'"
        puts "'Just so I can put some padding behind my head, Atlas.'"
        puts "He agrees and takes the world back.  You run away with the Apples."
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end

    cerebus = Cerebus.new
    cerebus.play
  end
end