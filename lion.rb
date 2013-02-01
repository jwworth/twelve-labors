class Lion < Level

  def intro
  text = <<MY_HEREDOC
  
--------------------------------------------------------------------------

Begin the TWELVE LABORS OF HERACLES!

You are HERACLES, the son of Zeus, King of the Gods, and the moral Alcmene.
Zeus' wife Hera is on a quest to destroy all of his illegitimate children.
In her quest to destroy you, Hera tricks you into killing your family.

Stricken with grief, you journey to Delphi to consult the wise Oracle.
"How can I purify myself?" you ask the Orcale.

"You must go Tiryns," says the Oracle.  Find King Eurystheus and perform
any TEN LABORS he demands.  Then you will be pure."

--------------------------------------------------------------------------

"Your first labor," says the King, "is to Kill the Nemean Lion."

You travel to Nemea and find the fearsome Lion.
He is a nightmarish beast with thick, leathery hide.
You approach the giant cat with weapons at the ready.

WHAT DO YOU WANT TO DO, HERACLES?

- Attack with your spear?
- Attack with your bow and arrow?
- Wrestle it?
- Run away?
MY_HEREDOC
  end

# The variables below exist for the parent function of same name (under construction)
=begin
  choice_1 = "spear"
  consequence_1 = "The Lion's hide is too thick for your spear!  The Lion eats you."
  choice_2 = "attack with bow and arrow"
  consequence_2 = "The Lion's hide is too thick for your arrows!  The Lion eats you."
  choice_3 = "wrestle lion"
  consequence_3 = "You wrestle the lion, and strangle it with your superhuman strength."
=end

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
      elsif action.include? "spear"
        puts "\nYou attack with your spear!"
        dead("The Lion's hide is too thick for your spear!  The Lion eats you.")
      elsif action.include? "bow" or action.include? "arrow"
        puts "\nYou attack with your bow and arrow!"
        dead("The Lion's hide is too thick for your arrows!  The Lion eats you.")
      elsif action.include? "wrestle"
        labor_completed = true
        puts "\nYou decide to wrestle the Lion!"
        puts "With your incredible strength, you pin the beast and strangle it."
      elsif action.include? "run"
        dead("#{@run_away}")
      elsif action == ""
        do_nothing
      else
        dont_understand
      end
    end
    
    hydra = Hydra.new
    hydra.play 
  end  
end