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

def prompt()
	print ">"
end

def dead(why)
	puts "#{why}  Goodbye!"
	Process.exit(0)
end

def next_level(message)
	puts "\n#{message}"
	puts "Are you ready for the next challenge (Y or N)?\n\n"
	prompt
	ready = gets.chomp	
	ready = ready.downcase
	
	if ready == "y" or ready == "yes"
		print ""
	else
		puts "\nYou choose not to continue!"
		dead("#{RUN_AWAY}")
	end
	puts "---------------------------------------------------------------------------"
end

def start()

intro = <<MY_HEREDOC
---------------------------------------------------------------------------

Begin the TWELVE LABORS OF HERACLES!

You are HERACLES, the son of Zeus, King of the Gods, and the moral Alcmene.
Zeus' wife Hera is on a quest to destroy all of his illegitimate children.
In her attempt to destroy you, Heracles, Hera has tricked you into killing your family.

Stricken with grief, you journey to Delphi to consult the Oracle.
"How can I purify myself after committing this horrible deed?" you ask.
"To purify yourself," says the Oracle, "you must go Tiryns.  Find King Eurystheus
and perform any TEN LABORS he demands.  Then you will be pure."
MY_HEREDOC

	puts intro
	next_level("GET READY, HERACLES!")
	immortality
end

start()