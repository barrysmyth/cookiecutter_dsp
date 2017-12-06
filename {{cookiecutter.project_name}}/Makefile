# This is the root makefile. It contains the main commands for running the
# project and reproducing the final results.
# To do this, the commands below call corresponding make commands stored in
# various folders. For example, the make commands in notebook folders turn
# notebooks into .py files, execute these files, and then clean up the .py
# files aftwards. The make command in the publication folder runs latex to
# generate a publication from the results of the analysis.


.PHONY: notebooks pubs

notebooks:
	@echo "Running Notebooks @ $$(date)."
	cd notebooks && make all

pubs:
	@echo "Generating publications @ $$(date)".
	cd pubs && make all

all: notebooks pubs
