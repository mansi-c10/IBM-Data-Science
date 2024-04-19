# Blood Pressure Analysis with R

This repository contains R code for analyzing blood pressure data. We’ll create visualizations to explore the relationship between weight, blood pressure, smoking status, and tumor size.

# Installation

Make sure you have the ggplot2 package installed. If not, you can install it using the following command: '''install.packages("ggplot2")'''

# Data

We’ll use a sample dataset with the following variables:

- id: Participant ID
- weight: Weight in kilograms
- bp: Blood pressure (systolic)
- locality: Urban or rural
- smoking: Smoking status (yes or no)
- tumour: Tumor size (small or large)

# Scatter Plot: Weight vs. Blood Pressure

''' ggplot(df, aes(x = weight, y = bp)) +
  geom_point() +
  labs(x = "Weight", y = "Blood Pressure") +
  ggtitle("Weight vs. Blood Pressure") '''

This scatter plot shows the relationship between weight and blood pressure.

# Stacked Bar Chart: Smoking Status vs. Tumor Size

(''') ggplot(df, aes(fill = tumour, x = smoking)) +
  geom_bar(position = 'stack', stat = 'count') +
  labs(x = 'Smoking Status', y = 'Count', title = 'Smoking Status vs. Tumour Size') (''')

The stacked bar chart illustrates the distribution of tumor sizes based on smoking status.
