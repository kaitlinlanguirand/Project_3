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
  num_colors <- 100
  colors <- c("darkred", "purple", "gold", "black", "darkred", "slategray","midnightblue")
  plot <- ggplot2::ggplot(df, aes(x = df[[column]])) +
    geom_jitter(
      aes(y = df[[column]]),
      color = sample(colors, nrow(df), replace = TRUE),
      alpha = 0.8,
      width = 0.3,
      height = 0.3,
      size = 3,
      shape = sample(21:25, nrow(df), replace = TRUE)
    ) +
    labs(
      title = title,
      x = x_title,
      y = y_title
    ) +
    coord_cartesian(expand = TRUE) +
    theme_minimal(base_size = 14) +
    theme(
      plot.background = element_rect(fill = "black", color = NA),
      panel.background = element_rect(fill = "darkred", color = NA),
      plot.title = element_text(hjust = 0.5, size = 20, color = "gold", family = "serif"),
      axis.title.x = element_text(size = 14, color =  "darkred", family = "serif"),
      axis.title.y = element_text(size = 14, color = "midnightblue", family = "serif"),
      axis.text.x = element_text(size = 12, angle = 45, hjust = 1, color = "gold"),
      axis.text.y = element_text(size = 12, color = "slategray"),
      strip.background = element_rect(fill =  "darkred", color = "darkred"),
      panel.grid.major = element_line(color = "black", size = 0.5),
      panel.grid.minor = element_line(color = "black", size = 0.3),
      plot.margin = unit(c(1, 1, 1, 1), "cm")
      )

  message("\U0001F5A4 Your graph awaits you.")
  return(plot)
}
