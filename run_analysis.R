rm(list=ls())
library(data.table)

setwd("C:\\Users\\nikol\\Dropbox\\coursera\\collectingdata\\data\\UCI HAR Dataset")

activity_labels_path <- "activity_labels.txt"
features_path <- "features.txt"
test_x_path <-".\\test\\X_test.txt"
test_y_path <-".\\test\\y_test.txt"
test_subject_path <- ".\\test\\subject_test.txt"
train_x_path <-".\\train\\X_train.txt"
train_y_path <-".\\train\\y_train.txt"
train_subject_path <- ".\\train\\subject_train.txt"

# raw data loaded with data.table

activity_labels <- read.table(activity_labels_path, col.names = c("activity_id","activity_label"))
features <- read.table(features_path, header = FALSE)
features <- as.character(features[,2])

## https://stackoverflow.com/questions/2851015/convert-data-frame-columns-from-factors-to-characters

test_x <- read.table(test_x_path)
test_y <- read.table(test_y_path)
test_subject <- read.table(test_subject_path)

train_x <- read.table(train_x_path)
train_y <- read.table(train_y_path)
train_subject <- read.table(train_subject_path)

# task 1. Merge the training and the test sets to create one data set.
test_data <- cbind(cbind(test_x, test_subject), test_y)
train_data <- cbind(cbind(train_x, train_subject), train_y)
merged_data <- rbind(test_data,train_data)

# change labels with features names

names(merged_data) <- c(features,c("subject","activity"))

# task 2. Extract only the measurements on the mean and standard deviation for each measurement. 

merged_data_mean_std <- merged_data[,grepl("subject|activity|mean|std", names(merged_data))]


# task 3. Use descriptive activity names to name the activities in the data set

merged_data_mean_std$activity <- factor(merged_data_mean_std$activity, levels = activity_labels$activity_id, labels = activity_labels$activity_label)
merged_data_mean_std$subject <-as.factor(merged_data_mean_std$subject)

merged_data_mean_std.melted <- melt(merged_data_mean_std, id = c("subject", "activity"))
merged_data_mean_std.mean <- dcast(merged_data_mean_std.melted, subject + activity ~ variable, fun.aggregate = mean)


# task 4. Appropriately label the data set with descriptive variable names. 


new_labels <- names(merged_data_mean_std.mean) 

new_labels <- gsub("-", "_", new_labels)
new_labels <- gsub("[(][)]", "", new_labels)
new_labels <- gsub("^t", "TimeDomain_", new_labels)
new_labels <- gsub("^f", "FrequencyDomain_", new_labels)

new_labels <- gsub("Acc", "_Accelerometer_", new_labels)
new_labels <- gsub('GyroJerk',"_AngularAcceleration", new_labels)
new_labels <- gsub("Gyro", "_Gyroscope_", new_labels)
new_labels <- gsub("Mag", "_Magnitude_", new_labels)

new_labels <- gsub("mean", "_Mean_", new_labels)
new_labels <- gsub("_Mean_$","_Mean", new_labels)
new_labels <- gsub("std", "_StandardDeviation_", new_labels)
new_labels <- gsub("_StandardDeviation_$", "_StandardDeviation", new_labels)

new_labels <- gsub("freq","_Frequency_", new_labels)
new_labels <- gsub("Freq$","_Frequency", new_labels)

new_labels <- gsub("(__)|(___)", "_", new_labels)


names(merged_data_mean_std.mean) <- new_labels

# task 5.  Create a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy_data <- aggregate(merged_data_mean_std.mean[,3:81], by = list(activity = merged_data_mean_std.mean$activity, subject = merged_data_mean_std.mean$subject), mean)

write.csv(x = tidy_data, file = "tidy_data.csv", row.names = FALSE)

