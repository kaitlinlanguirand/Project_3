#' Clean data
#'
#' @param df the data frame you want to clean
#'
#' @return Cleaned data frame
#' @export
clean_data <- function(df) {
  df <- df %>%
    na.omit() %>%
    str_replace_all(df, " ", ".") %>%
    str_replace_all(df, "/", ".")
  return(df)
}




