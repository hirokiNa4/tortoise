#install.packages("data.table")
#install.packages("h2o")

library(data.table)  
library(h2o)

train <- fread("data/train_20151109_1.csv",stringsAsFactors = T)
test  <- fread("data/test_20151109_1.csv",stringsAsFactors = T)
summary(train)
summary(test)


# seperating out the elements of the date column for the train set
train[,store:=as.factor(store)]
train[,logyear:=as.integer(logyear)]
train[,competition:=as.factor(competition)]
train[,open:=as.factor(open)]
train[,state_holiday:=as.factor(state_holiday)]
train[,school_holiday:=as.factor(school_holiday)]
train[,promo:=as.factor(promo)]
train[,promo2:=as.factor(promo2)]
train[,rain:=as.factor(rain)]
train[,fog:=as.factor(fog)]
train[,snow:=as.factor(snow)]
train[,hail:=as.factor(hail)]
train[,thunder:=as.factor(thunder)]



test[,store:=as.factor(store)]
test[,logyear:=as.integer(logyear)]
test[,competition:=as.factor(competition)]
test[,open:=as.factor(open)]
test[,state_holiday:=as.factor(state_holiday)]
test[,school_holiday:=as.factor(school_holiday)]

## log transformation to not be as sensitive to high sales
## decent rule of thumb: 
##     if the data spans an order of magnitude, consider a log transform
train[,logSales:=log1p(sales)]

## Use H2O's random forest
## Start cluster with all available threads
h2o.init(nthreads=-1,max_mem_size='6G')
## Load data into cluster from R
trainHex<-as.h2o(train)
## Set up variable to use all features other than those specified here
features<-colnames(train)[!(colnames(train) %in% c("sales","customers", "logdate", "logSales"))]
## Train a random forest using all default parameters
rfHex <- h2o.randomForest(x=features,
                          y="logSales", 
                          ntrees = 100,
                          max_depth = 30,
                          nbins_cats = 1115, ## allow it to fit store ID
                          training_frame=trainHex)


summary(rfHex)
## Load test data into cluster from R
testHex<-as.h2o(test)

## Get predictions out; predicts in H2O, as.data.frame gets them into R
predictions<-as.data.frame(h2o.predict(rfHex,testHex[,-c(1)]))
## Return the predictions to the original scale of the Sales data
pred <- expm1(predictions[,1])
summary(pred)
submission <- data.frame(Id=test$id, sales=pred)

cat("saving the submission file\n")
write.csv(submission, "out/out_20151123_2.csv",row.names=F)

















