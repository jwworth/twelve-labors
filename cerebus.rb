class Cerebus < Level

  def intro
text = <<MY_HEREDOC

--------------------------------------------------------------------------

"Your final labor," says the King, "is to fetch Cerebus from the Underworld."

To retreive the three-headed dog Cerebus, guardian of the Underwold, you
venture into the Earth.

Hades, God of the Underworld, hears of the journey, and confronts you at
the Gates of Hell.

WHAT DO YOU WANT TO DO, HERACLES?

- Run?
- Fight?
MY_HEREDOC
end

  def play

    puts intro
    choose_fight = false
    counter = 0

    while choose_fight == false do
      counter += 1
      prompt
      action = gets.chomp.downcase
      if counter == 10
        dead("#{@timeout}")
      elsif action.include? "fight"
        choose_fight = true
        puts "\nYou choose to fight!"
      else
        puts "\nCan't run away!"
      end
    end

    battling = true
    total_damage = 0

    while battling do
      you_hit = rand(7)
      if you_hit > 0
        damage_this_round = rand(7)
        puts "\nYou hit Hades and do #{damage_this_round} points of damage."
        total_damage += damage_this_round
        if total_damage >= 7
          puts "\nYOU KILLED HADES!"
          puts "You run past the dark lord and wrestle Cerebus to the ground!"
          battling = false
        else
          puts "\nTry again Heracles!"
        end
      else
        dead("Hades kills you.")
      end
    end

  immortality = Immortality.new
  immortality.play
  end
end