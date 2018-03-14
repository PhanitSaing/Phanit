context("imputation valeurs manquantes")

test_that("Plus de NA", {
  x <- c(2, 3, 3, NA, 5)
  res <- impute_na(x)
  expect_false(anyNA(res))
  expect
  })

test_that("Pas de NA pas de changement", {
  x <- 1:10
  res <- impute_na(x)
  expect_equal(res,x)
})

test_that("Imputation mediane", {
  x <- rnorm(100)
  x[50] <- NA
  res <- impute_na(x, "mediane")
  expect_equal(res[50], median(x, na.rm = TRUE))
})
