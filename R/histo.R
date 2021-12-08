#Input: Bat dataframe using the sex column 
#output: A histogram of male to female ratios fro entire dataframe

#' Plot a histogram
#' 
#' @param df A data frame
#' @param x The x-axis data set
#' @param y The y-axis data set
#' @param title The title 
#' @return Plot of a histogram with x and y values
#' @export

histo_plot <- function(df, x, y, title){
  histogram <- 
    ggplot(data = df, mapping = aes(x={{x}}, y={{y}})) +
    geom_histogram(stat = "identity", fill="#DD8888", width = .8) +
    ggtitle(title) +
    theme(plot.title = element_text(hjust = 0.5))+
    theme(text = element_text(size = 22))
  if (is.ggplot(histogram) == FALSE){
    return("ERROR - not a histogram")
  }
  return(histogram)
}

bar_plot <- function(df, x, fill, title){
  bar_plot <- 
    ggplot() + 
    geom_bar(data = df, aes(x = {{x}}, fill = {{fill}}), position = "dodge") +
    ggtitle(title) +
    theme(plot.title = element_text(hjust = 0.5))+
    theme(text = element_text(size = 22)) 
  if (is.ggplot(bar_plot) == FALSE){
    return("ERROR - not a barplot")
  }
  return(bar_plot)
}

## how to change fill, scale_color_manual
