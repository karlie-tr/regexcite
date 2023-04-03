#' Add values
#'
#' @param x A number or NA
#' @param y A number or NA; default is 10
#'
#' @return return NA if `x` or `y` is `NA`; otherwise, return sum of `x` and `y`
#' @export
#'
#' @examples
#' my_add(1)
#' my_add(NA, 1)
#' my_add(1,3)

my_add <- function(x, y = 10) {

  if(!is.double(x) | !is.double(y)) {

    if (is.na(x) | is.na(y)) {
      return (NA)
    }

    if (is.character(x) | is.character(y)) {
      stop ("One of your inputs contains a string value")
    }
  }

  return (x + y)
}
