#' Rename variable in column
#'
#' @param df the data frame you are processing
#' @param column the column name where the variable you want to rename is found
#' @param old_name the name of the variable you wish to change
#' @param new_name the name you want the variable to change to
#'
#' @return Renamed variable
#' @export
#' @importFrom dplyr rename
#' @importFrom rlang sym
rename_variable <- function(df, old_name, new_name) {
  df <- as.data.frame(df)
  if (!old_name %in% colnames(df)) {
    stop(paste("Error: Column", old_name, "does not exist in the table."))
  }
  df <- df %>%
    dplyr::rename(!!new_name := !!rlang::sym(old_name))

  return(colnames(df))
}
