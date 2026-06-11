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

