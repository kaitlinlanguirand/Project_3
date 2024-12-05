# Project Three
## R package for data analysis set up
### Author: Kaitlin Languirand


### Package Overview

The LanguirandR package is a comprehensive R tool designed for data cleaning, transformation, and statistical analysis. It offers a range of functions tailored for efficient data manipulation and visualization, ensuring that your data analysis workflow is both streamlined and effective. The package is particularly useful for working with log files, handling missing data, and creating insightful visualizations.

### Installation Instructions

To install the LanguirandR package from GitHub, use the following command in R:
```
devtools::install_github("kaitlinlanguirand/Project_3")
```
Once installed, load the package with:
```
library(LanguirandR)
```


### Functions overview

density_plot()

This function generates a density plot from the specified dataframe and columns. It is particularly useful for visualizing the distribution and density of numerical data.
```
LanguirandR::density_plot()

```

clean_data()

The clean_data() function removes rows containing missing values (NA) from the selected dataframe. This is essential for preparing your dataset before conducting any analysis.
```
LanguirandR::clean_data()

```

combine_logs()

Use the combine_logs() function to merge two log files and optionally rename their sources. This function is ideal for consolidating log data from different sources into a single dataframe.
```
LanguirandR::combine_logs()

```

crazy_histogram()

The crazy_histogram() function creates a unique and visually striking histogram from the selected dataframe. This function adds an element of creativity to your data visualizations.
```
LanguirandR::crazy_histogram()

```

rename_variable()

This function allows you to rename a column in the selected dataframe. It simplifies the process of modifying column names for better clarity and consistency in your datasets.
```
LanguirandR::rename_variable()

```

run_anova()
  
The run_anova() function conducts an ANOVA (Analysis of Variance) test on the chosen dataframe, enabling you to assess whether there are significant differences between group means
```
LanguirandR::run_anova()

```


