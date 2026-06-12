# ReproducibleCode
This repository contains the Assignment for the Reproducible Coding course. It refactors the UCI obesity dataset workflow into a reproducible R project with organized data, reusable functions, and automated tests.

## Virtual Environment Setup for R
This project uses `renv` for package management.

- Activate the project environment with `renv::activate()`
- Restore required packages with `renv::restore()`
- Install any missing package with `renv::install("packageName")`
- Save the current package state with `renv::snapshot()`

## Folder structure
- `R/`: custom functions used in the analysis
- `tests/`: unit tests for the package and functions
- `data/`: dataset files and raw data inputs
- `part1a_r.Rmd`: analysis notebook with data processing and modeling
- `DESCRIPTION`: package metadata
- `NAMESPACE`: package exports and function definitions

## How to run
1. Open the project in RStudio or VS Code
2. Activate renv: `renv::activate()`
3. Restore dependencies: `renv::restore()`
4. Render the notebook: `rmarkdown::render("part1a_r.Rmd")`
5. Run tests: `devtools::test()` or `testthat::test_dir("tests/testthat")`

## Data description
The analysis uses the UCI obesity dataset with 498 real survey records plus synthetic data. The dataset includes demographic, physical, and lifestyle variables, and is used to calculate BMI and assign BMI categories.

### Predicting BMI using the Survey Data
The notebook prepares the survey data for modeling by:

- splitting into training and test sets
- building a model to predict BMI values

### Run random forest
A random forest model is trained on the survey data with a 70/30 train/test split. The model uses predictors such as age, gender, family history, smoking habits, and physical activity.

### Extract predicted values and plot
The notebook compares predicted BMI values with actual BMI values in the test set. It produces diagnostic plots to show model performance visually. Plotting predicted values against real values.

### Define the absolute mean error
Model performance is quantified using mean absolute error (MAE), and the notebook compares the model MAE against a baseline MAE.

## 🤖 AI statement
This project was completed with the assistance of generative AI tools. Specifically:
- **Code assistance**: [Tool,GitHub Copilot] was used to help write and debug R code.
- **Writing assistance**: [Tool, GitHub Copilot] was used to help draft parts of the documentation, partially through inline suggestions.

All AI-generated content was critically reviewed and adapted by the author. The analytical approach, interpretation of results, and conclusions are my own work.
This use complies with the course's AI policy.


