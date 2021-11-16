#' Multiply together two numbers
#' 
#' @param x A number
#' @param y Another number
#' @return product The product of multiplying x and y
#' @usage
#' mult(4,5)

mult <- function(x, y){
  product <- x*y
  if (is.numeric(product) == FALSE){
    return("ERROR - non-numeric")
  }
  return(product)
}


# run error messages for funsction in project 3 

