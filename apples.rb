def apples()
  labor = "retrieve the Golden Apples of Hesperides"
  puts "\n\"Your eleventh labor,\" says the King, \"is to #{labor}.\""
	
intro = <<MY_HEREDOC

To retreive the Golden Apples of Hesperides, you
request the assistance of the god Atlas.  His daughters
guard the apples.

Atlas agrees to help, and collects the apples for you.
In exchange, you agree to hold the world on your shoulders
while he completes the labor.

When Atlas comes back, he does not want to take the world
back on his shoulders.

WHAT DO YOU WANT TO DO, HERACLES?

- Drop the world?
- Keep holding up the world?
- Ask Atlas to hold the world for 'just a minute'?

MY_HEREDOC

  new_atlas = "Congratulations!  You are the new Atlas, doomed to carry the Earth for eternity."
  puts intro 
  prompt
  action = gets.chomp
  action = action.downcase

  if action.include? "drop"
    puts "\nYou decide to drop the world."
    dead("Mountains crumble, seas boil, the poles realign, and we all die a fiery, horrible death.")
  elsif action.include? "keep holding"
    puts "\nYou decide to keep holding up the world."
    dead("#{new_atlas}")
  elsif action.include? "just a minute" or action.include? "ask"
    puts "\nYou decide ask Atlas to hold up the world for 'just a minute.'"
    puts "'Just so I can put some padding behind my head, Atlas.'"
    puts "When Atlas agrees and takes the world again, you run away with the Apples."
    next_level("SMART, HERACLES!")
    cerebus
  else
    puts "\nWhile you were messing around, Atlas left."
    dead("#{new_atlas}")
  end
end