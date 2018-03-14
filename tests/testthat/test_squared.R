context("test fonction squared")

test_that("vecteur en sortie", {
  x <- c(2, 3, 3, 9, 5)
  res <- squared(x)
  expect_length(res, length(x))
})
