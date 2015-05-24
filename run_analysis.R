library(plyr)
# step 1
# Download "UCI HAR Dataset" to your desktop.
setwd("~/Desktop/UCI HAR Dataset")
subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_data <- rbind(subject_train, subject_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)

# step 2
features <- read.table("features.txt")
filter <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, filter]
names(x_data) <- features[filter, 2]

# step 3
activities <- read.table("activity_labels.txt")
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

# step 4
names(subject_data) <- "subject"
alldata <- cbind(x_data, y_data, subject_data)

# step 5
averagedata <- ddply(alldata, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averagedata, "average_data.txt", row.name=FALSE)