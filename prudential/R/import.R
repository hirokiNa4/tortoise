#install.packages("caret")
library(caret)

train <- read.csv("data//train.csv", header=T)

# define categorical variables
train$Product_Info_1 <- as.factor(train$Product_Info_1)
train$Product_Info_2 <- as.factor(train$Product_Info_2)
train$Product_Info_3 <- as.factor(train$Product_Info_3)
train$Product_Info_5 <- as.factor(train$Product_Info_5)
train$Product_Info_6 <- as.factor(train$Product_Info_6)
train$Product_Info_7 <- as.factor(train$Product_Info_7)
train$Employment_Info_2 <- as.factor(train$Employment_Info_2)
train$Employment_Info_3 <- as.factor(train$Employment_Info_3)
train$Employment_Info_5 <- as.factor(train$Employment_Info_5)
train$InsuredInfo_1 <- as.factor(train$InsuredInfo_1)
train$InsuredInfo_2 <- as.factor(train$InsuredInfo_2)
train$InsuredInfo_3 <- as.factor(train$InsuredInfo_3)
train$InsuredInfo_4 <- as.factor(train$InsuredInfo_4)
train$InsuredInfo_5 <- as.factor(train$InsuredInfo_5)
train$InsuredInfo_6 <- as.factor(train$InsuredInfo_6)
train$InsuredInfo_7 <- as.factor(train$InsuredInfo_7)


# convert categorical variables to dummy
train.tmp <- dummyVars(~., data=train)
train.dummy <- as.data.frame(predict(train.tmp, train))

str(train.dummy)











