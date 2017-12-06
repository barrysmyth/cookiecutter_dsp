Data Science in Practice, Cookiecutter Template
==============================

A cookiecutter template for a Python data science project, which creates a logical project structure with sections for data, notebooks, source code, and publications/reports, as below.

```
```
├── LICENSE
├── Makefile           <- Top-level Makefile.
├── README.md          <- Project README.
├── environment.yaml   <- Python dependencies to help.
│
├── data
│   ├── raw            <- The original, immutable data dump.
│   ├── processed      <- Processed datasets.
│   └── final          <- Final data ready for export.
│
├── notebooks          <- Jupyter notebooks.
│   ├── prep           <- Notebooks used for wrangling data.
│   ├── analysis       <- Core analysis notebooks.
│   └── final          <- Clean, final notebooks.
│
├── pubs               <- Analysis reports/publications
│   ├── title1         <- Files for a single publication
|   |   ├── type       <- Source for publication (e.g. tex, md)
│   |   ├── figs       <- Pub/report figures.
│   |   └── data       <- Data for figs/tables in pubs.
│   └── title2         <- Files for a single publication
|         :
├── src                <- Source code for use in this project.
│   ├── __init__.py    <- Makes src a Python module
│   ├── data           <- Scripts to download or generate data.
│   ├── helpers        <- Other helper code.
│   └── viz            <- Visualisation/graphing code.
│
├── docs               <- Project documentation.
```
