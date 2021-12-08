#Input: Data frame with NA values
#output: Data frame with NA values removed

#' Remove NA Values
#' 
#' @param x A data frame
#' @return Data frame with no NA values
#' @export
na.remove <- function(x){
  product <- x %>% 
    filter(!is.na(x))
  if (is.data.frame(product) == FALSE){
    return("ERROR - not a dataframe")
  }
  return(product)
}

