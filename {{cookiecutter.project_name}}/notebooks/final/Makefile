# Execute notebooks by converting them into .py scripts, executing the scripts,
# and then cleaning up the scripts afterwards.
# make all
#  1. compile notebooks into .py scripts.
#  2. run the .py scripts.
#  3. clean folder by removing .py scripts.


.PHONY : run, compile, clean, all

dir := $(lastword $(notdir $(patsubst %/,%, $(CURDIR))))

nbs = $(wildcard *.ipynb)    # The .ipynb files in directory.
scripts = $(nbs:.ipynb=.py)  # The corresponding .py scripts.

# Compile notebooks into python scripts: *.ipynb -> *.py
compile: $(nbs)
ifeq ($(strip $(nbs)),)
	@echo No notebooks to compile in $(dir).
else
	@echo Compiling notebooks in $(dir).
	jupyter nbconvert --to script $^
endif

# Run python scripts; need to use a foreach to run each separately.
run: $(scripts)
ifeq ($(strip $(nbs)),)
	@echo No scripts to run in $(dir).
else
	@echo Running notebook scripts in $(dir).
	$(foreach script,$(scripts), python $(script);)
endif

# Clean up; remove any scripts derived from a notebook.
clean: $(scripts)
ifeq ($(strip $(nbs)),)
	@echo No scripts to cleanup in $(dir).
else
	@echo Cleaning up notebook scripts in $(dir).
	rm $^
endif

# make all to compile, run, and clean.
all: compile run clean
