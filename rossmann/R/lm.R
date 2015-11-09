library(MASS)

head(train)

train.lm <- lm(
  sales ~
    avg_sales
    +day_of_week
#    +logyear
#    +logmonth
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
  ,data = train
)
summary(train.lm)

#AICでモデル最適化（L2正則化をためしてみたい）
train.lm.aic <- stepAIC(train.lm)
summary(train.lm.aic)


#モデルで検証データを予測
valid.pre <- predict(
    train.lm.aic,
    newdata=valid,
    interval= "prediction"
  )

valid.pre.valid <-  data.frame(valid.pre, valid)
valid.pre.valid$residuals <- valid.pre.valid$sales - valid.pre.valid$fit
head(valid.pre.valid, 20)


#############################
#残差の合計
#############################
sum(valid.pre.valid$residuals)



##############################
# make submission data
##############################
test.pre <- predict(
    train.lm.aic,
    newdata=test,
    interval= "prediction"    
  )

test.pre.valid <- data.frame(test.pre, test)
test.pre.valid.out <- test.pre.valid[,c(4,1)]

##############################
# write output data as csv file
##############################
write.csv(
  test.pre.valid.out, 
  "/Users/Komai/Onedrive/tortoise/rossmann/R/out/out_20151109_1.csv", 
  quote=F, 
  col.names=T, 
  row.names=F,
  append=T
)















