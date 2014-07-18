class Hydra < Level

  def intro
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your second labor," says the King, "is to kill the Hydra of Lerna."

The Hydra of Lerna is a terrible multi-headed serpent with poisonous breath.
For each head that is chopped off, two more regrow.  You confront it with
sword at the ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Continue chopping?
- Call for help?
- Wrestle it?
- Run away?
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
      elsif action == "continue chopping"
        puts "\nYou continue chopping.  The heads regrow again and again."
        dead("Eventually you grow tired, and the Hydra bites your head off.")
      elsif action.include? "call for help"
        labor_completed = true
        puts "\nYou call for help, and your nephew Iolaus rushes to your aid."
        puts "After you chop off each head, Iolaus cauterizes the stump."
        puts "When only one head remains, you bury it under a rock."
      elsif action.include? "wrestle"
        puts "\nYou decide to wrestle the Hydra."
        dead("Your superhuman strength is not enough for this beast.  You die.")
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end

    hind = Hind.new
    hind.play
  end
end