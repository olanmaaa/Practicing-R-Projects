#public health: national nutritional health
#importing data set
nhanes.data <- (read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/nhanes.csv"))
#removing all the rows with missing data signified by 'N/A'
cleaned_nhanes <- na.omit(nhanes.data)
#installing ggplot for the purpose of data visualization
install.packages("ggplot2")
library (ggplot2)






