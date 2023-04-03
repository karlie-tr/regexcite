testthat::test_that("`my_add` should return a double when `x` and `y` are numbers", {
  testthat::expect_type(my_add(1.3), "double")
  testthat::expect_type(my_add(10, 3), "double")
  testthat::expect_type(my_add(100, 3.2), "double")
})

testthat::test_that("`my_add` should return `NA` when `x` and/or `y` is `NA`", {
  testthat::expect_true(is.na(my_add(NA)))
  testthat::expect_true(is.na(my_add(NA, 3)))
  testthat::expect_true(is.na(my_add(10, NA)))
  testthat::expect_true(is.na(my_add(NA, NA)))
})

testthat::test_that("`my_add` should return an error message when
                    `x` and/or `y` are not numbers", {
  testthat::expect_error(my_add("10"), "One of your inputs contains a string value")
  testthat::expect_error(my_add("10", "20"), "One of your inputs contains a string value")
  testthat::expect_error(my_add(10, "20"), "One of your inputs contains a string value")
  testthat::expect_error(my_add("10", 20), "One of your inputs contains a string value")
  testthat::expect_error(my_add("one", 20), "One of your inputs contains a string value")
})

testthat::test_that("`my_add` should return sum of `x` and `y`", {
  testthat::expect_equal(my_add(10) , 20)
  testthat::expect_equal(my_add(10, 40) , 50)
})
