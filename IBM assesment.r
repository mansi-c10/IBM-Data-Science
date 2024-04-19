#For installation of package and libraries.
install.packages("ggplot2")
library(ggplot2)

#For creation of dataframe.
df <- data.frame(
  id = c(1, 2, 3, 4, 5, 6, 7),
  weight = c(20, 27, 24, 22, 23, 25, 28),
  bp = c(140, 130, 120, 134, 100, 116, 143),
  locality = c("urban", "rural", "urban", "urban", "rural", "rural", "urban"),
  smoking = c("no", "yes", "no", "yes", "yes", "no", "yes"),
  tumour = c("small", "small", "large", "small", "large", "small", "large")
)

#For create a scatter plot
ggplot(df, aes(x = weight, y = bp)) +
  geom_point() +
  labs(x = "Weight", y = "Blood Pressure") +
  ggtitle("Weight vs. Blood Pressure")

#For create a stacked bar chart.
ggplot(df, aes(fill = tumour, x = smoking)) +
  geom_bar(position = 'stack', stat = 'count') +
  labs(x = 'Smoking Status', y = 'Count', title = 'Smoking Status vs. Tumour Size')

