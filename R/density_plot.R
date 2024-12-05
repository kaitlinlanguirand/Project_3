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
#' @importFrom ggplot2 ggplot aes geom_density labs theme_minimal theme element_rect element_text
#' @importFrom tidyr pivot_longer
density_plot <- function(df, x_column1, x_column2, plot_title, x_title, y_title) {
  df_long <- df %>%
    tidyr::pivot_longer(cols = c(x_column1, x_column2), names_to = "variable", values_to = "value")

  plot <- ggplot2::ggplot(df_long, ggplot2::aes(x = value, fill = variable)) +
    ggplot2::geom_density(alpha = 0.5) +
    ggplot2::labs(
      title = plot_title,
      x = x_title,
      y = y_title
    ) +
    ggplot2::theme_minimal(base_size = 14)

  return(plot)
}
