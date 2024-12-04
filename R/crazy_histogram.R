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
  colors <- c("black", "darkgray", "dimgray", "slategray", "darkslategray", "indianred4", "purple4", "maroon")
  +
    plot <- ggplot2::ggplot(df, aes(x = df[[column]])) +
    geom_jitter(
      aes(y = df[[column]]),
      color = sample(colors, nrow(df), replace = TRUE),  # Sample goth colors
      alpha = 0.8,
      width = 0.3,
      height = 0.3,
      size = 3,
      shape = sample(21:25, nrow(df), replace = TRUE)  # Random shapes
    ) +
    labs(
      title = title,
      x = x_title,
      y = y_title
    ) +
    coord_cartesian(expand = TRUE) +
    theme_minimal(base_size = 14) +
    theme(
      plot.background = element_rect(fill = "black"),
      panel.background = element_rect(fill = "black"),
      axis.text = element_text(color = "gray", family = "serif", size = 12),
      axis.title = element_text(color = "gray", family = "serif", size = 14),
      plot.title = element_text(color = "darkslategray", family = "serif", size = 16, face = "bold"),
      plot.subtitle = element_text(color = "darkgray", family = "serif", size = 12),
      plot.caption = element_text(color = "darkgray", family = "serif", size = 10),
      axis.ticks = element_line(color = "dimgray"),
      panel.grid = element_line(color = "gray20", linetype = "dotted")
    )

  message("\U0001F5A4 Your graph awaits you.")
  return(plot)
}
