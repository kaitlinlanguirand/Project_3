#' density plot
#'
#' @param df the data frame you want to pull data from
#' @param x_column1 first column you want to plot
#' @param x_column2 second column you want to plot
#' @param title title of plot
#' @param x_title title of x axis
#' @param y_title title of y axis
#'
#' @return A density plot displaying the frequency of column selected
#' @export
density_plot <- function(df, x_column1, x_column2, plot_title, x_title, y_title) {
  df_long <- df %>%
    pivot_longer(cols = c(x_column1, x_column2), names_to = "variable", values_to = "value")

  plot <- ggplot(df_long, aes(x = value, fill = variable)) +
    geom_density(alpha = 0.5) +
    labs(
      title = plot_title,
      x = x_title,
      y = y_title
    ) +
    theme_minimal(base_size = 14) +
    theme(
      plot.background = element_rect(fill = "white", color = NA),
      panel.background = element_rect(fill = "white", color = NA),
      plot.title = element_text(hjust = 0.5, size = 16),
      axis.title.x = element_text(size = 14),
      axis.title.y = element_text(size = 14)
    )
  return(plot)
}
