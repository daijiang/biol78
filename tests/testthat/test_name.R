context("Testing names")

test_that("Error returned when working with non-character input", {
  expect_error(get_binomial_name(1:5))
})

test_that("It should work with character input", {
  expect_equal(get_binomial_name(c("Carex aquatilis Wahlenb.", "Boerhavia coulteri (Hook. f.) S. Watson")),
               c("Carex aquatilis", "Boerhavia coulteri"))
})
