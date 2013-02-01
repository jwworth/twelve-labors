class Level

  def initialize
    @quips = ["Try again, Heracles!",
              "You fail, Heracles!",
              "Give up!",
              "You lose!"
              ]
    @timeout = "You have taken too much time!"
    @run_away = "You must have courage!"
  end
  
# The function below is a work in progress, to replace child function of same name
=begin
  def play
    puts intro
    goal_achieved = false
    counter = 0
    
    while goal_achieved == false do
      counter += 1
      prompt
      action = gets.chomp.downcase
      if counter == 10
        dead("#{@timeout}")
      elsif action == choice_1
        puts "testing"
        puts consequence_1
      elsif action == choice_2
        dead("#{consequence_2}")
      elsif action == choice_3
        goal_achieved = true
        puts consequence_3
      elsif action == "run away"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end
  end
=end
  
  def prompt
    print "\n>"
  end
  
  def dead(why)
    puts "\n#{why} \a" + @quips[rand(@quips.length())]
    Process.exit(0)
  end

  def do_nothing
    puts "\nGotta do something."
  end
  
  def dont_understand
    puts "\nI don't understand."
  end 
end