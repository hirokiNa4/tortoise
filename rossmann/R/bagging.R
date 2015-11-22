#install.packages("adabag")
library(adabag)

train.bag <- bagging(
  sales ~
    avg_sales
  +day_of_week
  #+logyear
  +logmonth
  +competition
  +state_holiday
  +school_holiday
  +promo
  +promo2
  +store_type
  +assortment
  +state
  +rainbow
  +fog
  +snow
  +hail
  +thunder
  ,data = train[bag_sub, ]
)


bag_sub <- c(sample(1:50, 35), sample(51:100, 35), sample(101:150, 35))




