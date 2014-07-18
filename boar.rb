class Boar < Level

  def intro
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your fourth labor," says the King, "is to capture the Erymanthian Boar."

The Ermanthian Boar is a vicious beast that has terrorized the woodlands
of Psophis for years.

You approach the boar's lair, sword ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Enter the lair?
- Put a net over the door?
- Shout at the boar?
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
      elsif action.include? "enter" or action.include? "lair"
        puts "\nYou enter the lair cautiously, spear at the ready."
        dead("The boar senses your presence, and rams you in the chest.  You bleed out and die.")
      elsif action.include? "net"
        puts "\nYou cautiously place a net trap over the door."
        puts "The boar retreats out a secret back exit and never returns."
        dead("The king grows impatient as you follow the boar across the country, and orders your exection.")
      elsif action.include? "shout"
        labor_completed = true
        puts "\nYou decide to shout into the cave at the boar."
        puts "Enraged, the boar runs out of the cave and straight into a snowbank."
        puts "You put the boar in chains and bring it back to the King."
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end

  stables = Stables.new
  stables.play
  end
end