{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}

Project Organization
------------
```
├── LICENSE
├── Makefile           <- Makefile with commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── environment.yaml   <- Environment specification/dependencies to help reproducibility.
│                         Generated with `conda env export > environmet.yaml`
├── data
│   ├── processed      <- The final, canonical data sets for modeling.
│   ├── final          <- Final data ready for export.
│   └── raw            <- The original, immutable data dump.
│
├── notebooks          <- Jupyter notebooks.
│   ├── prep           <- Notebooks used for cleaning, preparing and wrangling data.
│   ├── analysis       <- Core analysis notebooks.
│   └── final          <- Clean, final notebooks.
│
├── pubs               <- Analysis reports/publications
│   ├── tex            <- .tex files for pubs.
│   ├── figs           <- Pub/report figures.
│   └── data           <- Backup data associated with figs/tables in pubs.
│
├── src                <- Source code for use in this project.
│   ├── __init__.py    <- Makes src a Python module
│   │
│   ├── data           <- Scripts to download or generate data
│   ├── helpers        <- Other helper code.
│   └── viz            <- Visualisation/graphing code.
```
