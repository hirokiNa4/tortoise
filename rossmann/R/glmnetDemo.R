data <- read.csv("train_20151109_1.csv")
str(data)

data.naomit <- na.omit(data)
summary(data.naomit)
library(glmnet)

glmnet1<-glmnet(as.matrix(data.naomit[,c(2,3,4,5,6,7,8,9)]),as.matrix(data.naomit[,1]),family="gaussian",alpha=1)

help(glmnet)

plot(glmnet1)
coef(glmnet1)
summary(data.naomit[,-1])

cv.glmnet1 <- cv.glmnet(as.matrix(data.naomit[,c(2,3,4,5,6,7,8,9)]),as.matrix(data.naomit[,1]),family="gaussian",alpha=1)
plot(cv.glmnet1)
coef(cv.glmnet1,s=cv.glmnet1$lambda.min)
coef(cv.glmnet1,s=cv.glmnet1$lambda.1se)

predict(cv.glmnet1, newx=as.matrix(data[,c(2,3,4,5,6,7,8,9)]))
abline(v = log(c(cv.glmnet1$lambda.min, cv.glmnet1$lambda.1se)), lty=2)
