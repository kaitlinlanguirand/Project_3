#' Bar plot with random colors
#'
#'
#' @param df The data frame you want to pull data from.
#' @param column The column you want to plot (should be a categorical variable).
#' @param title The title of the plot.
#' @param x_title The title of the x-axis.
#' @param y_title The title of the y-axis.
#'
#' @return A bar graph displaying the frequency of the selected column with random colors.
#' @export
crazy_histogram <- function(df, column, title, x_title, y_title) {
  num_colors <- 50
  colors <- sample(colors(), num_colors, replace = TRUE)
  plot <- ggplot2::ggplot(df, aes(x = df[[column]])) +
    geom_histogram(
      aes(y = ..density..),
      fill = sample(colors(), 1),
      color = "black",
      alpha = 0.8
    ) +
    geom_density(color = "red", size = 1, alpha = 0.7) +
    labs(
      title = title,
      x = x_title,
      y = y_title
    ) +
    theme_minimal(base_size = 14) +
    theme(
      plot.background = element_rect(fill = "white", color = NA),
      panel.background = element_rect(fill = "white", color = NA),
      plot.title = element_text(hjust = 0.5, size = 16),
      axis.title.x = element_text(size = 14),
      axis.title.y = element_text(size = 14),
      axis.text.x = element_text(size = 12, angle = 45, hjust = 1)
    )
  message("\U0001F631 Crazy histogram alert! Colors are out of control!")
  return(plot)
}


