# Execute notebooks by converting them into .py scripts, executing the scripts,
# and then cleaning up the scripts afterwards.
# make all
#  1. compile notebooks into .py scripts.
#  2. run the .py scripts.
#  3. clean folder by removing .py scripts.


.PHONY : run, compile, clean, all

nbs = $(wildcard *.ipynb)    # The .ipynb files in directory.
scripts = $(nbs:.ipynb=.py)  # The corresponding .py scripts.

# Compile notebooks into python scripts: *.ipynb -> *.py
ifeq ($(nbs),)
	@echo No notebooks to compile
else
	@echo Compiling data prep notebooks.
	jupyter nbconvert --to script $^
endif

# Run python scripts; need to use a foreach to run each separately.
run: $(scripts)
ifeq ($(scripts),)
	@echo No scripts to run.
else
	@echo Running data prep notebook scripts.
	$(foreach script,$(scripts), python $(script);)
endif

# Clean up; remove any scripts derived from a notebook.
clean: $(scripts)
	@echo Cleaning up notebook scripts.
	$(info Removing scripts.)
	rm $^

# make all to compile, run, and clean.
all: compile run clean
