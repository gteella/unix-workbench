all: generate_readme
generate_readme:
		@touch README.md
		@echo "- Project Title   : **UNIX-WORKBENCH**" >> README.md
		@echo "- Make was run at : **`date`**" >> README.md
		@echo "- The number of lines of code contained in guessinggame.sh is : `wc -l < guessinggame.sh`" >> README.md

clean:
		@echo "cleaning up"
		@rm -rf README.md

