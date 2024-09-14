# Speedy Data
## Video Demo: <URL https://youtu.be/link_to_video>

## Description:
Speedy Data is an R package designed to speed up the data analysis process by providing easy-to-use tools for data pre-processing, pattern detection, and visualization.

## Understanding:
This project was developed to offer automated functions that simplify data manipulation and visualization. Below are the main functions implemented in the package.

## Functions

### auto_prep
Performs automatic data pre-processing, allowing:
- Removal of missing values.
- Scaling of numeric columns.
- Creation of dummy variables for factor columns.
- Exclusion of the target variable from transformations if specified.

### pattern_detect
Identifies correlation patterns and duplicated rows within the dataset:
- Detects high correlations between numeric variables (absolute correlation > 0.7).
- Identifies duplicated rows and counts them.

### plot
Generates different types of plots based on the provided variables:
- Histograms for numeric variables.
- Bar plots for categorical variables.
- Scatter plots for numeric relationships between two variables.
- Grouped bar plots for comparisons across categories.

