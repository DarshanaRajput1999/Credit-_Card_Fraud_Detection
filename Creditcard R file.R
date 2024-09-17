#IMPORTING DATASET
library(ranger)
library(caret)
library(data.table)
creditcard_data <- read.csv("C:/Users/Saurav N. Thakor/Desktop/credit.csv")
print(creditcard_data)

#DATA EXPLORATION
table(creditcard_data$class)
summary(creditcard_data$Amount)
names(creditcard_data)
sd(creditcard_data$Amount)
nrow(creditcard_data)
dim(creditcard_data)
View(creditcard_data)
summary(creditcard_data)

dim(creditcard_data)
head(creditcard_data,6)
tail(creditcard_data,6)
table(creditcard_data$Class)
summary(creditcard_data$Amount)
names(creditcard_data)
var(creditcard_data$Amount)



# DATA VISUALIZATION
# Separate data for fraud and non-fraud transactions
fraud_data <- subset(creditcard_data, Class == 1)
non_fraud_data <- subset(creditcard_data, Class == 0)

# Create histograms for fraud and non-fraud transactions
par(mfrow = c(1, 2))  # Set up a 1x2 grid for side-by-side plots
hist(fraud_data$Amount, breaks = 30, col = "red", main = "Fraudulent Transactions", xlab = "Amount")
hist(non_fraud_data$Amount, breaks = 30, col = "green", main = "Non-Fraudulent Transactions", xlab = "Amount")
par(mfrow = c(1, 1))  # Reset the plotting layout to default

# CORRELATION
cor_matrix = cor(creditcard_data)
print(cor_matrix)

cor_test <- cor.test(creditcard_data$Class,creditcard_data$Amount)
print(cor_test)

install.packages("corrplot")
library(corrplot)
num_values <- creditcard_data[,2:31]

cormat <- cor(num_values)

corrplot(cormat, method = "ellipse")

#DATA MANIPULATION
head(creditcard_data)
creditcard_data$Amount=scale(creditcard_data$Amount)
NewData=creditcard_data[,-c(1)]
head(NewData)

#DATA MODELING
#SPLITTING DATA IN TO TRAINING AND TESTING SETS
library(caTools)
set.seed(123)
data_sample = sample.split(NewData$Class,SplitRatio=0.80)
train_data = subset(NewData,data_sample==TRUE)
test_data = subset(NewData,data_sample==FALSE)
dim(train_data)
dim(test_data)



# Fit a linear regression model
linear_model <- lm(Amount ~ V1 + V2 + V3, data =creditcard_data)
plot(creditcard_data$V1,creditcard_data$Amount, main = "Multiple Linear Regression", xlab ="V1" , ylab= "Amount")

intercept <- coef(linear_model)[1]
slope <- coef(linear_model)[2]
abline(intercept,b = slope,col ="red")

# Print the summary of the regression model
summary(linear_model)

#LOGISTIC REGRESSION
Logistic_Model=glm(Class~.,test_data,family=binomial())
summary(Logistic_Model)
plot(Logistic_Model)



# T-TEST
# Check the mean values by class
aggregate(Amount ~ Class, data = creditcard_data, FUN = mean)
# Perform t-test
t_test_result <- t.test(creditcard_data$Amount ~ creditcard_data$Class)
# Display the t-test result
print(t_test_result)


# KNN (k- NEASREST NEIGHBORS)setting
install.packages("class")  
library(class) 

# Set the number of neighbors (k)
k <- 5
# Train the KNN model
knn_model <- knn(train_data[, -ncol(train_data)], test_data[, -ncol(test_data)], train_data$Class, k = k)
print(knn_model)
summary(knn_model)








