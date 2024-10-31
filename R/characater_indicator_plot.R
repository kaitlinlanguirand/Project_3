#' Bar plot of Character Indicator
#'
#' @param filepath the path to the file you want to process
#' @param columnname Character Indicator column name
#'
#' @return Plot of Posterior Support by Character Indicator
#' @export
plot_character <- function(filepath, columnname){
  data <- readr::read.delim(filepath, delim = "\t")
  df <- data %>%
    dplyr::select (charcter_indicator) %>%
    plot_bargraph <- ggplot2::ggplot(combined_tl_logs, aes(x = factor(character_indicator), fill = factor(character_indicator))) +
    ggplot2::geom_bar(position = "dodge", aes(y = after_stat(count)), color = "black", alpha = 0.8) +
    ggplot2::labs(
      title = "Posterior Support by Character Indicator",
      x = "Character In ldicator",
      y = "Frequency",
      fill = "Character Indicator"
    )  +
    ggplot2::scale_fill_grey(start = 0.2, end = 0.8) +
    ggplot2::theme_minimal(base_size = 14) +
    ggplot2::theme(
      plot.background = element_rect(fill = "white", color = NA),
      panel.background = element_rect(fill = "white", color = NA),
      plot.title = element_text(hjust = 0.5, size = 16),
      axis.title.x = element_text(size = 14),
      axis.title.y = element_text(size = 14),
      legend.position = "none",
      axis.text.x = element_text(angle = 45, hjust = 1)
    )
}





