
	echo "# Peer graded asssignment: Bash, Make, Git, and Github" > README.md
	#echo "---\n" >> README.md	

	echo "\n## Created " >> README.md
	echo `date` >>README.md

	echo "\n## Lines of code in game: " >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md



