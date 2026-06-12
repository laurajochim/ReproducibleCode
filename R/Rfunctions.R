######################
#Function script
######################

# BMI calculations
#"@description
#' Returns the BMI
#' @param weight in kilo
#' @param height in meters
#' @return BMi value
#' @export bmi
#' @examples
#' bmi(70, 1.70)"
 bmi <- function(weight, height){
  message("Returns the BMI")

  if(any(height >3)){
  warning("Height must be in meters, eg. 1.7 instead of 170")
}

if (!is.numeric(weight) | !is.numeric(height)) {
  stop("Both weight and height must be numeric.")
}

weight/(height)^2

}


#Convert categorical vairbales in to binary numeric variables
#' description
#' Returns a binary variable with 1 as reference
#' @param variable as a character
#' @param reference as a character
#' @return A binary vector with 1 as a reference
#' @export
#' @example
#' binary(c(a, b, "c", b))
binary <- function(variable, reference) {
  message("Returns a binary vairable with 1 as reference.")

  if(!is.character(variable)) {
    stop("Variable must be a character vector.")
  }

  ifelse(variable == reference, 1, 0)
}
