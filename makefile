README.md: guessinggame.sh
	echo "Project Coursera Week 4: Guessing Game" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
