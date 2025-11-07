#public health: national nutritional health
#importing data set
nhanes.data <- (read.csv("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/nhanes.csv"))
#understanding the data structure of the dataset
str(nhanes.data)
#the dataset is a data frame composed of 5000 observations of 32 variables

#replacing all missing data in the dataframe with '0' 
cleaned_nhanes <- replace(nhanes.data, is.na(nhanes.data), 0)

#viewing data summary 
summary(cleaned_nhanes)

#creating histograms to visualize the distribution of BMI, Weight(in kg), Weight (in lbs) and Age
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
#the grid of the distributions have been saved in the repository as 'DistributionsGrid'

#determining the mean pulse for all participants
mean_pulse <- mean(cleaned_nhanes$Pulse)
#the mean pulse across all participants is 63.06

#determining the range of the Diastolic Blood Pressure across all participants
range(cleaned_nhanes$BPDia)
#the range of Diastolic Blood Pressure is 0-116

#determining the variance and standard deviation of income across all participants 
income_variance <- var(cleaned_nhanes$Income)
income_sd <- sd(cleaned_nhanes$Income)

#visualizing the relationship between weight and height using scatterplot
#color the points according to:gender,diabetes & smoking status
library(ggplot2)
ggplot(cleaned_nhanes, 
       aes(x=Height, 
           y=Weight, 
           colour=Gender, 
           shape=Diabetes)) 
+ geom_point(size=3,alpha=0.7) 
+ facet_wrap(~SmokingStatus) 
+ labs(title='Weight vs Height Colored by Diabetes Status', 
       x='Height', y='Weight') 
+ theme_minimal()
#the scatterplot of the relationship has been saved in the repository as 'WHScatterplot'

#conducting t-test between the following variables:
#Age and Gender
#BMI and Diabetes
#Alcohol Year and Relationship Status
#and making conclusions on the relationship between them based on P-Value

#Age and Gender
t.test(Age ~ Gender, data = cleaned_nhanes)
#BMI and Diabetes







