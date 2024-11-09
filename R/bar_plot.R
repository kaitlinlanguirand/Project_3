#' Posterior support bar plot
#'
#' @param df the data frame you want to pull data from
#' @param column the column you want to plot
#' @param title title of plot
#' @param x_title title of x axis
#' @param y_title title of y axis
#'
#' @return A bar graph displaying the frequency of column selected
#' @export
bar_plot <- function(df, column, title, x_title, y_title) {
  ggplot(df, aes(x = factor(column), fill = factor(column))) +
    geom_bar(position = "dodge", aes(y = after_stat(count)), color = "black", alpha = 0.8) +
    labs(
      title = title,
      x = x_title,
      y = y_title,
      fill = x_title
    ) +
    scale_fill_grey(start = 0.2, end = 0.8) +
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
