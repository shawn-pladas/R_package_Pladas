#Input: Data frame with predictor and response columns
#output: Linear model analysis comparing two predictor columns, numerical and categorical.
#
#' Analysis of a multiple predictor linear model using numerical and categorical data sets
#' 
#' @param df A data frame
#' @param response A response variable 
#' @param predictor1 A numerical predictor variable
#' @param predictor2 A categorical predictor variable
#' @return A linear model test summary with of categorical and numerical predictors
#' @export

ancova <- function(df, response, predictor1, predictor2) {
  ancova_fit <- lm({{response}} ~ {{predictor1}} + {{predictor2}}, data = df)
  summary(ancova_fit)
  if (is.data.frame(df) == FALSE){
    return("ERROR - not a dataframe")
  }
  return(summary(ancova_fit))
}
