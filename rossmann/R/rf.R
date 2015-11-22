#install.packages("randomForest")
library(randomForest)

# d -> train data & valid data
nr_train <- nrow(train)
train_sub1 <- train[sample(1:nr_train ,nr_train/25),] 
train_sub2 <- train[sample(1:nr_train ,nr_train/25),] 
train_sub3 <- train[sample(1:nr_train ,nr_train/25),] 
train_sub4 <- train[sample(1:nr_train ,nr_train/25),] 
train_sub5 <- train[sample(1:nr_train ,nr_train/25),] 
train_sub6 <- train[sample(1:nr_train ,nr_train/25),] 
train_sub7 <- train[sample(1:nr_train ,nr_train/25),] 

train.rf7 <- randomForest(
  sales ~
    avg_sales
  +day_of_week
  +logmonth
  +competition
  +state_holiday
  +school_holiday
  +promo
  +promo2
  +store_type
  +assortment
  +state
  +rain
  +fog
  +snow
  +hail
  +thunder
  ,data = train_sub7
)

#モデルで検証データを予測
valid.pre <- predict(
  train.rf3,
  newdata=valid[,-1],
)







