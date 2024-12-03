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
random_color_bar_plot <- function(df, column, title, x_title, y_title) {
  categories <- unique(df[[column]])
  colors <- sample(colors(), length(categories), replace = FALSE)
  color_map <- setNames(colors, categories)
    ggplot2::ggplot(df, aes(x = factor(df[[column]]), fill = factor(df[[column]]))) +
    geom_bar(position = "dodge", aes(y = after_stat(count)), color = "black", alpha = 0.8) +
    scale_fill_manual(values = color_map) +
    labs(
      title = title,
      x = x_title,
      y = y_title,
      fill = x_title
    ) +
    theme_minimal(base_size = 14) +
    theme(
      plot.background = element_rect(fill = "white", color = NA),
      panel.background = element_rect(fill = "white", color = NA),
      plot.title = element_text(hjust = 0.5, size = 16),
      axis.title.x = element_text(size = 14),
      axis.title.y = element_text(size = 14),
      legend.position = "none",
      axis.text.x = element_text(angle = 45, hjust = 1)
    )
}
