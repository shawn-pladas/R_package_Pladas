#Input: two columns with integer numbers
#output: one column of the calculated difference

#' Add column with the calculated difference between two other columns 
#' 
#' @param df A data frame
#' @param xcol A column of high integers
#' @param ycol A column of low integers
#' @return A column with the difference
#' @export

calc_diff <- function(df, xcol, ycol){
  df_plus <- df %>% 
    mutate(difference = ({{xcol}} - {{ycol}}))
  if (is.data.frame(df) == FALSE){
    return("ERROR - not a dataframe")
  }
  return(df_plus)
}


