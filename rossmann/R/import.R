#d <- read.csv("data//train_20151101_1.csv", header=T)
d <- read.csv("data//train_20151109_1.csv", header=T)
test <- read.csv("data//test_20151109_1.csv", header=T)
  
head(d)
str(d)

d$store <- factor(d$store)
d$day_of_week <- factor(d$day_of_week)
d$logyear <- factor(d$logyear)
d$logmonth <- factor(d$logmonth)
d$competition <- factor(d$competition)
d$open <- factor(d$open)
d$open <- factor(d$open)
d$school_holiday <- factor(d$school_holiday)
d$promo <- factor(d$promo)
d$promo2 <- factor(d$promo2)
d$rain <- factor(d$rain)
d$fog <- factor(d$fog)
d$snow <- factor(d$snow)
d$hail <- factor(d$hail)
d$thunder <- factor(d$thunder)

# d -> train data & valid data
nr <- nrow(d)
train <- d[sample(1:nr,3*nr/4),] 
valid <- d[sample(1:nr,nr/4),]

str(train)
str(valid)


##############################
#edit test data format 
##############################
test$id <- factor(test$id)
test$store <- factor(test$store)
test$day_of_week <- factor(test$day_of_week)
test$logyear <- factor(test$logyear)
test$logmonth <- factor(test$logmonth)
test$competition <- factor(test$competition)
test$open <- factor(test$open)
test$open <- factor(test$open)
test$school_holiday <- factor(test$school_holiday)
test$promo <- factor(test$promo)
test$promo2 <- factor(test$promo2)
test$rain <- factor(test$rain)
test$fog <- factor(test$fog)
test$snow <- factor(test$snow)
test$hail <- factor(test$hail)
test$thunder <- factor(test$thunder)


str(test)









