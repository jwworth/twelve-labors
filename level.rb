class Level

  def initialize
    @quips = ["Try again, Heracles!", "You fail, Heracles!",
              "Give up!", "You lose!"]
    @timeout = "You have taken too much time!"
    @run_away = "You must have courage!"
  end

  def prompt
    print "\n>"
  end

  def dead(reason)
    puts "\n#{reason} \a" + @quips[rand(@quips.length())]
    Process.exit(0)
  end

  def do_nothing
    puts "\nYou must act."
  end

  def dont_understand
    puts "\nI don't understand."
  end
end
