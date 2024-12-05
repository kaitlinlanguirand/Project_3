#' Clean data
#'
#' @param df the data frame you want to clean
#'
#' @return Cleaned data frame
#' @export
#' @importFrom dplyr mutate across
#' @importFrom tidyr everything
#' @importFrom stringr str_replace_all
#' @importFrom stats na.omit
#' @importFrom utils head
clean_data <- function(df) {
  df <- df %>%
    na.omit() %>%
    mutate(across(everything(), ~ str_replace_all(as.character(.), " ", "."))) %>%
    mutate(across(everything(), ~ str_replace_all(as.character(.), "/", ".")))
  return(head(df))
}



