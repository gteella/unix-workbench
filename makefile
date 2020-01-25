all: generate_readme
generate_readme:
		@rm -rf README.md
		@touch README.md
		@echo "- Project Title   : **UNIX-WORKBENCH**" >> README.md
		@echo "- Make was run at : **`date`**" >> README.md
		@echo "- The number of lines of code contained in guessinggame.sh is : `cat guessinggame.sh | wc -l`" >> README.md

clean:
		@echo "cleaning up"
		@rm -rf README.md

