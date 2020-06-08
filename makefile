a := $(shell date +%D,+%T)

README.md:guessinggame.sh

	touch README.md
	echo "# Title of my project: The GUESSING GAME">README.md
	echo "##The *code of guessinggame.sh* contains:" >>README.md 
	cat guessinggame.sh| wc -l >>README.md         
	echo "#lines" >> README.md
	echo "The date is :" >> README.md
	echo $(a) >>README.md

Clean:
	rm README.md
