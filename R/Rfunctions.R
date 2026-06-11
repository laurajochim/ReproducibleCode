######################
#Function script
######################

# BMI calculations
 bmi <- function(weight, height){
  message("Returns the BMI")

  if(any(height >3)){
  warning("Height must be in meters, eg. 1.7 instead of 170")
}
weight/(height)^2

}


#Convert categorical vairbales in to binary numeric variables
binary <- function(variable, reference) {
  message("Returns a binary vairable with 1 as reference.")

  if(!is.character(variable)) {
    stop("Variable must be a character vector.")
  }

  ifelse(variable == reference, 1, 0)
}
