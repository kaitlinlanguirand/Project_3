#' run anova
#'
#' @param df the data frame you want to clean
#' @param num_var the name of the numeric variable
#' @param grp_var the name of the grouping variable
#'
#' @return An ANOVA summary table
#' @export
run_anova <- function(df, numeric_var, group_var) {
  formula <- as.formula(paste(numeric_var, "~", group_var))
  anova_model <- aov(formula, data = df)
  anova_summary <- summary(anova_model)
  return(anova_summary)
}
