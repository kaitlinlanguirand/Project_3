#' Histogram plot with random colors
#'
#'
#' @param df The data frame you want to pull data from. This should be a data frame containing the column you want to plot.
#' @param column The name of the column to plot (should be a numeric variable).
#' @param title The title of the plot.
#' @param x_title The title of the x-axis.
#' @param y_title The title of the y-axis.
#'
#' @return A histogram displaying the frequency of the selected column with random colors.
#' @export
#' @importFrom ggplot2 ggplot aes geom_jitter labs coord_cartesian theme_minimal theme element_rect element_text element_line
crazy_histogram <- function(df, column, title, x_title, y_title) {
colors <- c("black", "dimgray", "darkgray", "gray20", "gray40")
plot <- ggplot2::ggplot(df, aes(x = df[[column]])) +
  geom_jitter(
    aes(y = df[[column]]),
    color = sample(colors, nrow(df), replace = TRUE),
    alpha = 0.8,
    width = 0.3,
    height = 0.3,
    size = sample(c(2, 3, 4), nrow(df), replace = TRUE),
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
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "black"),
    axis.text = element_text(color = "white", family = "Old English Text MT", size = 12),
    axis.title = element_text(color = "white", family = "Old English Text MT", size = 14),
    plot.title = element_text(color = "white", family = "Old English Text MT", size = 16, face = "bold"),
    plot.subtitle = element_text(color = "darkgray", family = "Old English Text MT", size = 12),
    plot.caption = element_text(color = "darkgray", family = "Old English Text MT", size = 10),
    axis.ticks = element_line(color = "white"),
    panel.grid = element_line(color = "gray20", linetype = "dotted")
  )

message("\U0001F5A4 Your graph awaits you.")
return(plot)
}
