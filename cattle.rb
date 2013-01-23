def cattle

intro = <<MY_HEREDOC

On the way back from the Amazons, you complete a tenth labor,
stealing the Cattle of Geryon.

To accomplish this labor, you kill a monstrous watchdog,
Eurytion (son of the god Ares), and Geryon, yet another
three-headed monster.

You return home and present the Girdle and the Cattle to
the King, who is very pleased.
MY_HEREDOC

	puts intro
	next_level("EASY WIN, HERACLES!")
	apples()

end