def cerebus
  labor = "fetch Cerebus from the Underworld"
  puts "\n\"Your final labor,\" says the King, \"is to #{labor}.\""
	
intro = <<MY_HEREDOC

To retreive the three-headed dog Cerebus, guardian 
of Hades, you travel into the Underworld.

Hades, god of the Underworld, hears of the journey,
and confronts you at the Gates of Hell.

WHAT DO YOU WANT TO DO, HERACLES?

- Run?
- Fight?

MY_HEREDOC
	
  puts intro 
  prompt
  action = gets.chomp
  action = action.downcase
	
  if action.include? "run"
    dead("\n#{RUN_AWAY}!")
  else
    puts "\nYou choose to fight!"
  end
	
  battling = true
  total_damage = 0
	
  while battling do
    you_hit = rand(7)
    if you_hit > 0
      damage_this_round = rand(7)
      puts "You hit Hades and do #{damage_this_round} points of damage."
      total_damage += damage_this_round
      if total_damage >= 7
        puts "You killed Hades!"
        puts "You run past the dark lord and wrestle Cerebus to the ground!"
        battling = false
        next_level("TOUCHE, HERACLES!")
        immortality
      else
        puts "Try again Heracles!"
      end
    else
      dead("Hades kills you.")
    end
  end
end