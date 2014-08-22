#You should create one R script called run_analysis.R that does the following. 

#Step 1
#Merges the training and the test sets to create one data set.
#Also loads metadata files in preparation for next steps.
#Returns list of data and metadata
load.data <- function(directory) {

  #initialize data
  data <- list()

  message("loading the features.txt file...")
  data$features <- read.table(paste(directory, "features.txt", sep="/"), col.names=c('id', 'name'), stringsAsFactors=FALSE)
  
  message("loading the activity_labels.txt file...")
  data$activity_labels <- read.table(paste(directory, "activity_labels.txt", sep="/"), col.names=c('id', 'activity'))
  
  message("loading subject_test.txt file...")
  testdata <- cbind(subject=read.table(paste(directory, "test", "subject_test.txt", sep="/"), col.names="subject"),
                         y=read.table(paste(directory, "test", "y_test.txt", sep="/"), col.names="activity.id"),
                         x=read.table(paste(directory, "test", "x_test.txt", sep="/")))
  
  message("loading subject_train.txt file...")
  traindata <- cbind(subject=read.table(paste(directory, "train", "subject_train.txt", sep="/"), col.names="subject"),
                          y=read.table(paste(directory, "train", "y_train.txt", sep="/"), col.names="activity.id"),
                          x=read.table(paste(directory, "train", "X_train.txt", sep="/")))

  message("combining test and train data...")
  #use regex to just get the mean and standard deviation columns
  data$dataset <- rbind(testdata, traindata)[,c(1, 2, grep("mean\\(|std\\(", data$features$name) + 2)]

  return(data)
}

#Step 2
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#Extracts only the measurements on the mean and standard deviation
#for each measurement. 
#Returns the tidy data.

#this function uses regex to rename the columns related to mean and std
rename.columns <- function(column) {
  column <- gsub("Acc", "Acceleration", column)
  column <- gsub("GyroJerk", "AngularAcceleration", column)
  column <- gsub("Gyro", "AngularSpeed", column)
  column <- gsub("Mag", "Magnitude", column)
  column <- gsub("^t", "Time", column)
  column <- gsub("^f", "FFT", column)
  column <- gsub("\\-mean\\(\\)\\-", ".Mean.", column)
  column <- gsub("\\-std\\(\\)\\-", ".StandardDeviation.", column)
  column <- gsub("\\-mean\\(\\)", ".Mean", column)
  column <- gsub("\\-std\\(\\)", ".StandardDeviation", column)
  return(column)
}

label.data <- function(data) {
  #rename with descriptive names
  names(data$dataset) <- c("subject", "activity.id", rename.columns(data$features$name[grep("mean\\(|std\\(", data$features$name)]))
  
  ## Appropriately labels the data set with descriptive activity names.
  data$dataset <- merge(data$dataset, data$activity_labels, by.x="activity.id", by.y="id")
  data$dataset <- data$dataset[,!(names(data$dataset) %in% c("activity.id"))]
  
  return(data)
}

#Step 3
#Creates a second, independent tidy data set with the average of
#each variable for each activity and each subject. 
library(plyr)
library(reshape2)
gen.datasets <- function(data) {

  #use ddply to show means by subject and activity
  data$mean <- ddply(data$dataset, .(subject, activity), numcolwise(mean))

  #write the tidy datasets out
  write.table(data$dataset, file = "tidy.txt",row.names = FALSE)
  write.table(data$mean, file = "tidy.average.txt",row.names = FALSE)
  
  return(data)
}

#generate the data
dir <- "./UCI HAR Dataset"
data <- load.data(dir)
data <- label.data(data)
data <- gen.datasets(data)



