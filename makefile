a := $(shell date +%D,%T)
b := $(shell cat guessinggame.sh| wc -l)

README.md:guessinggame.sh

	touch README.md
	echo "# Title of my project: The GUESSING GAME">README.md
	echo "## The *code of guessinggame.sh* contains: $(b) lines." >>README.md         
	echo "### The date in 'M/D/Y' and time in 'H/M/S' is : $(a) " >> README.md

clean:
	rm README.md
