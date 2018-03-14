#' Remplace valeurs manquantes par Moyenne ou Médiane
#'
#' @param x numeric vector
#' @param method choise between mean and median
#'
#' @return a numeric
#' @export
#' @importFrom stats median
#'
#' @examples
#' impute_na(c(2, 3, 3, NA, 5))
impute_na <- function(x, method = c("moyenne", "mediane")) {
  method <- match.arg(method)
  if (anyNA(x)) {
    if (method == "moyenne") {
      x[is.na(x)] <- mean(x, na.rm = TRUE)
    } else {
      x[is.na(x)] <- median(x, na.rm = TRUE)
    }
  }
  return(x)
}
