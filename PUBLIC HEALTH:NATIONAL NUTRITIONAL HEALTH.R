#public health: national nutritional health
#importing data set
nhanes.data <- (read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/nhanes.csv"))
#replacing all missing data with '0' 
cleaned_nhanes <- replace(nhanes.data, is.na(nhanes.data), 0)

#creating histograms to visualize the distribution of BMI, Weight(in kg), Weight (in lbs)
#firstly create a new column in the df to represent Weight in pounds i.e Weight in kg * 2.2
cleaned_nhanes$WeightInPounds <- cleaned_nhanes$Weight * 2.2
#using par(mfrow) to create a grid layout for the four plots
par (mfrow=c(2,2), mar= c(4.2,4.2,2.5,1.0), mgp= c(2.8,0.7,0))

#Histogram 1: BMI
hist(cleaned_nhanes$BMI, 
     breaks= "Sturges", 
     main="BMI Distribution", 
     xlab="BMI", ylab='Frequency', 
     col="steelblue", 
     border= "black")
#Histogram 2: Weight in kg
hist(cleaned_nhanes$Weight, 
     breaks= "Sturges", 
     main="Weight (in kg) Distribution", 
     xlab="Weight (kg)", 
     ylab='Frequency', 
     col="skyblue", 
     border= "black")
#Histogram 3: Weight in lbs(pounds)
hist(cleaned_nhanes$WeightInPounds, 
     breaks="Sturges", 
     main='Weight (in lbs) Distribution', 
     xlab='Weight (in lbs)', 
     ylab='Frequency', 
     col='blue', 
     border='black')
#Histogram 4: Age
hist(cleaned_nhanes$Age, 
     breaks="Sturges", 
     main='Age Distribution', 
     xlab='Age', 
     ylab='Frequency', 
     col='steelblue', 
     border='black')










