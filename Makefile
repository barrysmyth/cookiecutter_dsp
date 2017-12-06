# Master/top-level makefile to execute the project.
# Use this to execute the project scripts and build the final product.

.PHONY: run_notebooks all

# Run default makefile in notebooks/ which in turn executes the various
# notebooks in prep/, analysis/, and final/.
run_notebooks:
	@echo "Running Notebooks."
	cd notebooks && make all

all: run_notebooks
