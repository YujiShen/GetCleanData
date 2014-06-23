## set working directory as the data folder
setwd("/Users/Yuji/Downloads/UCI\ HAR\ Dataset/")
library(plyr)

## read train data
train <- read.table("train/X_train.txt")
## read test data
test <- read.table("test/X_test.txt")
## read feature names
name.features <- read.table("features.txt", colClasses = c("integer", "character"))
## read train subject
train.subject <- read.table("train/subject_train.txt")
## read test subject
test.subject <- read.table("test/subject_test.txt")
## read train activity labels
train.act <- read.table("train/y_train.txt")
## read test activity labels
test.act <- read.table("test/y_test.txt")
## read activity names
name.activity <- read.table("activity_labels.txt")

## name train data
names(train) <- name.features[[2]]
## name test data
names(test) <- name.features[[2]]

## add subject column to train
train$subject <- train.subject[[1]]
## add subject column to test
test$subject <- test.subject[[1]]

## merge train activity name with labels
train.act <- merge(name.activity, train.act, by.x = "V1", by.y = "V1", all.x = T)
## merge test activity name with labels
test.act <- merge(name.activity, test.act, by.x = "V1", by.y = "V1", all.x = T)
## name the activity data.frame
names(train.act) <- c("ActivityLabels", "ActivityNames")
names(test.act) <- c("ActivityLabels", "ActivityNames")

## combine train/ test with their activity
train <- cbind(train, train.act)
test <- cbind(test, test.act)

## combine train and test
data <- rbind(train, test)

# ## get means for each measurement
# #mean.all <- colMeans(data[, 1:561])
# mean.all <- numcolwise(mean)(data[-c(562:564)])
# ## get standard diviation for each measurement
# # sd.all <- apply(data[, 1:561], 2, sd)
# sd.all <- numcolwise(sd)(data[-c(562:564)])
# ## combine summary to data.frame
# summary <- rbind(mean.all, sd.all)
# rownames(summary) <- c("mean", "sd")

###############################################
## "Extract", not "Calculate". 
MeanSd <- subset(data, select = grep("mean|std", ignore.case = T, name.features[[2]]))
###############################################

## calculate the mean by subject and activity
new.data <- ddply(sub.data, .(sub.data$subject, sub.data$ActivityNames), numcolwise(mean))
colnames(new.data)[1:2] <- c("subject", "ActivityNames")

## write the data
write.table(data, file = "TidyData.txt")
write.table(new.data, file = "AveBySubjectActivity.txt")
write.table(MeanSd, file = "MeanSd.txt")
