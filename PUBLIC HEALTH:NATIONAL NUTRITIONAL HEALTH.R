#public health: national nutritional health
#importing data set
nhanes.data <- (read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/nhanes.csv"))
#replacing all missing data with '0' 
cleaned_nhanes <- replace(nhanes.data, is.na(nhanes.data), 0)

#installing ggplot for the purpose of data visualization
install.packages("ggplot2")
library (ggplot2)








