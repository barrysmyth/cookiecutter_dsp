# Execute notebooks by converting them into .py scripts, executing the scripts,
# and then cleaning up the scripts afterwards.
# make all
#  1. compile notebooks into .py scripts.
#  2. run the .py scripts.
#  3. clean folder by removing .py scripts.


.PHONY : run, compile, all

nbs = $(wildcard *.ipynb)    # The .ipynb files in directory.
scripts = $(nbs:.ipynb=.py)  # The corresponding .py scripts.

# Compile notebooks into python scripts: *.ipynb -> *.py
compile: $(nbs)
	@echo Converting notebooks to .py scripts.
	jupyter nbconvert --to script $^

# Run python scripts; need to use a foreach to run each separately.
run: $(scripts)
	@echo Running notebook scripts.
	$(foreach script,$(scripts), python $(script);)

# Clean up; remove any scripts derived from a notebook.
clean: $(scripts)
	@echo Cleaning up notebook scripts.
	$(info Removing scripts.)
	rm $^

# make all to compile, run, and clean.
all: compile run clean
