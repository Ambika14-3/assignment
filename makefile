a := $(shell date +%D,%T)
b := $(shell cat guessinggame.sh| wc -l)

README.md:guessinggame.sh

	touch README.md
	echo "# Title of my project: The GUESSING GAME">README.md
	echo "## In this project you'll guess" >>README.md
	echo "- the number of files in my directory *assignment* ">>README.md
	echo "- get hints to correct your answer" >> README.md
	echo "- get error message for entering invalid answers">>README.md
	echo "## The *guessinggame.sh* contains $(b) lines of code." >>README.md         
	echo "### The date in M/D/Y and time in H/M/S at which *make* was run is : $(a) " >> README.md
	echo "## All the best!" >> README.md

clean:
	rm README.md
