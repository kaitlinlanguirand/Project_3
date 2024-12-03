#' Rename variable in column
#'
#' @param df the data frame you are processing
#' @param column the column name where the variable you want to rename is found
#' @param old_name the name of the variable you wish to change
#' @param new_name the name you want the variable to change to
#'
#' @return Renamed variable
#' @export
rename_variable <- function(df, column, old_name, new_name) {
  df <- df %>%
    dplyr::mutate(across('column', str_replace, 'old_name', 'new_name'))
  return(df)
}
