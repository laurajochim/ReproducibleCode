test_that("binary function gives correct output", {
  expect_equal(binary(c("a", "b", "c"), "b"), c(0, 1, 0))
})

test_that("binary function gives error when input is not a character", {
  expect_error(binary(c(a, b, "c", b)))
})
