install.packages("caret")

library(caret)
library(ggplot2)

train <- read.csv("data//train.csv", header=T)

# define categorical variables
train$Product_Info_1 <- as.factor(train$Product_Info_1)
train$Product_Info_2 <- as.factor(train$Product_Info_2)
train$Product_Info_3 <- as.factor(train$Product_Info_3)

# convert categorical variables to dummy
train.tmp <- dummyVars(~., data=train)
train.dummy <- as.data.frame(predict(train.tmp, train))










