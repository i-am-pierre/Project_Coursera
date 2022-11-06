README.md: guessinggame.sh
	echo "# Project Coursera Week 4: Guessing Game #" > README.md 
	echo "Created Date: " >> README.md
	date >> README.md
	echo "Number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm -f *.md
