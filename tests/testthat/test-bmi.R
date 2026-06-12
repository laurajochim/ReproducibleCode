test_that("bmi function returns correct value", {
  expect_equal(bmi(70, 1.70), 24.22, tolerance = 1e-2)
})

test_that("bmi function gives warning for height greater than 3", {
  expect_warning(bmi(70, 170), "Height must be in meters, eg. 1.7 instead of 170")
})

test_that("bmi function gives error for non-numeric input", {
  expect_error(bmi("seventy", 1.7))
})
