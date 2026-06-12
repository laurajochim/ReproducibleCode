library(testthat)

# Load functions from R/
source("R/Rfunctions.R")

test_dir("tests/testthat", reporter = "progress")
