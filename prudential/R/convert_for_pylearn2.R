#install.packages("caret")
library(caret)

str(d, list.len=ncol(d))
str(d1, list.len=ncol(d1))

# remove columns almost NA
d1 <- d[,-c(38, 48, 62, 70)]

# Employment_Info_1
summary(d1$Employment_Info_1)
d1$Employment_Info_1_na <- ifelse(is.na(d1$Employment_Info_1), 1, 0 )
d1$Employment_Info_1    <- ifelse(is.na(d1$Employment_Info_1),-1, d1$Employment_Info_1 )

# Employment_Info_4
summary(d1$Employment_Info_4)
d1$Employment_Info_4_na <- ifelse(is.na(d1$Employment_Info_4), 1, 0 )
d1$Employment_Info_4    <- ifelse(is.na(d1$Employment_Info_4),-1, d1$Employment_Info_4 )

# Employment_Info_6
summary(d1$Employment_Info_6)
d1$Employment_Info_6_na <- ifelse(is.na(d1$Employment_Info_6), 1, 0 )
d1$Employment_Info_6    <- ifelse(is.na(d1$Employment_Info_6),-1, d1$Employment_Info_6 )

#Insurance_History_5
summary(d1$Insurance_History_5)
d1$Insurance_History_5_na <- ifelse(is.na(d1$Insurance_History_5), 1, 0 )
d1$Insurance_History_5    <- ifelse(is.na(d1$Insurance_History_5),-1, d1$Insurance_History_5 )

# Family_Hist_2
summary(d1$Family_Hist_2) 
d1$Family_Hist_2_na <- ifelse(is.na(d1$Family_Hist_2), 1, 0 )
d1$Family_Hist_2    <- ifelse(is.na(d1$Family_Hist_2),-1, d1$Family_Hist_2 )

# Family_Hist_3
summary(d1$Family_Hist_3) 
d1$Family_Hist_3_na <- ifelse(is.na(d1$Family_Hist_3), 1, 0 )
d1$Family_Hist_3    <- ifelse(is.na(d1$Family_Hist_3),-1, d1$Family_Hist_3 )

# Family_Hist_4
summary(d1$Family_Hist_4) 
d1$Family_Hist_4_na <- ifelse(is.na(d1$Family_Hist_4), 1, 0 )
d1$Family_Hist_4    <- ifelse(is.na(d1$Family_Hist_4),-1, d1$Family_Hist_4 )

# Medical_History_1
summary(d1$Medical_History_1) 
d1$Medical_History_1_na <- ifelse(is.na(d1$Medical_History_1), 1, 0 )
d1$Medical_History_1    <- ifelse(is.na(d1$Medical_History_1),-1, d1$Medical_History_1 )

# Medical_History_15
summary(d1$Medical_History_15) 
d1$Medical_History_15_na <- ifelse(is.na(d1$Medical_History_15), 1, 0 )
d1$Medical_History_15    <- ifelse(is.na(d1$Medical_History_15),-1, d1$Medical_History_15 )

# Response -> numerical vars.
d1$Response <- as.numeric(d1$Response)

# convert categorical variables to dummy
d1.tmp <- dummyVars(~., data=d1)
d1.dummy <- as.data.frame(predict(d1.tmp, d1))

# move "Response" to the top column & d2 is final dataset of conversion process for pylearn2
features<-colnames(d1.dummy)[!(colnames(d1.dummy) %in% c("Id", "Response"))]
d2 <- data.frame(Response = d1.dummy$Response, d1.dummy[,features])
str(d2, list.len=ncol(d2))

#separate original data to train & valid
nr <- nrow(d2)
train <- d2[sample(1:nr,3*nr/4),]
valid <- d2[sample(1:nr,  nr/4),] 

str(train, list.len=ncol(train))


# make a csv file for pylearn2
write.csv(train, "out_for_pylearn2/train_20151129_1.csv",row.names=F)




