# Run make in the various notebook directories to execute the notebooks.

.PHONY: run_prep run_analysis run_final

# 1. Run data preparation notebooks.
run_prep:
	@echo "Running the data preparation notebooks @ $$(date)."
	cd prep && make all

# 2. Run analysis notebooks.
run_analysis:
	@echo "Running the data analysis notebooks @ $$(date)".
	cd analysis && make all

# 3. Run final notebooks.
run_final:
	@echo "Running final notebooks @ $$(date)".
	cd final && make all

all: run_prep run_analysis run_final
