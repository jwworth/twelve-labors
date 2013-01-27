require_relative "lion.rb"
require_relative "hydra.rb"
require_relative "hind.rb"
require_relative "boar.rb"
require_relative "stables.rb"
require_relative "birds.rb"
require_relative "bull.rb"
require_relative "mares.rb"
require_relative "girdle.rb"
require_relative "cattle.rb"
require_relative "apples.rb"
require_relative "cerebus.rb"
require_relative "immortality.rb"

RUN_AWAY = "You must have courage, Heracles, to purify yourself.  YOU FAIL!"

def prompt
  print ">"
end

def dead(why)
  puts "#{why}\a Goodbye!"
  Process.exit(0)
end

def next_level(message)
  puts "\n#{message}"
  puts "Are you ready for the next challenge? (Y or N)\n\n"
  valid_input = false
  
  while valid_input == false do
    prompt
    ready = gets.chomp
    ready = ready.upcase
    if ready.include? "Y"
      puts "-" * 75
      valid_input = true
    elsif ready.include? "N"
      dead("#{RUN_AWAY}")
      valid_input = true
    else
      puts "Please provide a valid input:"
    end   
  end
end

def start
  puts "-" * 75
intro = <<MY_HEREDOC

Begin the TWELVE LABORS OF HERACLES!

You are HERACLES, the son of Zeus, King of the Gods, and the moral Alcmene.
Zeus' wife Hera is on a quest to destroy all of his illegitimate children.
In her quest to destroy you, Hera tricks you into killing your family.

Stricken with grief, you journey to Delphi to consult the wise Oracle.
"How can I purify myself?" you ask the Orcale.

"You must go Tiryns," says the Oracle.  Find King Eurystheus and perform
any TEN LABORS he demands.  Then you will be pure."
MY_HEREDOC

  puts intro
  next_level("GET READY, HERACLES!")
  lion
end

start