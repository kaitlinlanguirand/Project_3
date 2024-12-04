#' Run one-sample ANOVA and t-test
#'
#' @param df The data frame containing the numeric column you want to analyze.
#' @param numeric_column The name of the numeric column to test (e.g., "Posterior").
#' @param mu The hypothesized value to compare the numeric column's mean to. Default is 0.
#'
#' @return An ANOVA summary table
#' @export
run_anova <- function(df, numeric_column, mu = 0) {
  anova_result <- aov(df[[numeric_column]] ~ 1, data = df)
  result_summary <- summary(anova_result)
  p_value <- result_summary[[1]]$`Pr(>F)`[1]
  F_stat <- result_summary[[1]]$`F value`[1]
  t_test_result <- t.test(df[[numeric_column]], mu = mu)
  message("One-Sample ANOVA F-statistic: ", F_stat)
  message("One-Sample ANOVA p-value: ", p_value)
  message("T-test results for mean comparison against ", mu, ": p-value = ", t_test_result$p.value)
  return(list(anova_summary = result_summary, t_test_result = t_test_result))
}
