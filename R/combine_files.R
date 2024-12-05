#' Combine Two files with Source Column
#'
#'  @param df1 The first data frame to combine.
#' @param df2 The second data frame to combine.
#' @param name1 The name to assign as the source for the first data frame.
#' @param name2 The name to assign as the source for the second data frame.
#'
#' @return A combined data frame with an additional "source" column indicating the origin of each row.
#' @export
#'
combine_logs <- function(df1, df2, name1, name2) {
  combined_df <- bind_rows(
    df1 %>% mutate(source = name1),
    df2 %>% mutate(source = name2)
  )

  return(head(combined_df))
}
