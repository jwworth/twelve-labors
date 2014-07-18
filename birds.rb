class Birds < Level

  def intro
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your sixth labor," says the King, "is to drive out the Stymphalian Birds."

The Stymphalian Birds are a group of man-eating demons who terrorize the
forest.

You approach the birds' nesting grounds, sword at the ready.

The God Haphaestus gives you an advantage in this battle, by making
for you a giant bronze rattle to frighten the birds.
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
      elsif action.include? "shake" and action.include? "rattle"
        labor_completed = true
        puts "\nYou shake the rattle at the birds, and they all fly away."
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end

    bull = Bull.new
    bull.play
  end
end