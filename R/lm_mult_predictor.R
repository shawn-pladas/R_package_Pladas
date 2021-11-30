#Input: Data frame with predictor and response columns.
#output: Linear model comparing two predictor columns, numerical and categorical to response column.
#
#' Create a multiple predictor linear model using numerical and categorical data sets
#' 
#' @param df A data frame
#' @param xcol A numerical predictor variable 
#' @param ycol A response variable
#' @param zcol A categorical predictor variable
#' @param title A title
#' @return A linear model of categorical and numerical predictors
#' @usage
#' mult_lm_predictor(df, xcol, ycol, zcol, title)

mult_lm_predictor <- function(df, xcol, ycol, zcol, title) {
  mult_linear_model <- 
    ggplot(data = df, mapping = aes(x = as.numeric(reorder({{xcol}}, {{ycol}})), y = {{ycol}}, color = {{zcol}}), title()) +
    geom_point() +
    scale_color_manual(values = c("coral", "purple")) +
    coord_flip() +
    ggtitle(title) +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(text = element_text(size = 22), axis.text.y = element_text(size= 10)) +
    geom_smooth(method = "lm", color = "navy", size = 0.5, fill = "blue") 
  if (is.ggplot(mult_linear_model) == FALSE){
    return("ERROR - Not a plot")
  }
  return(mult_linear_model)
}


  