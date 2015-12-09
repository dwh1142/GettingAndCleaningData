library(dplyr)
library(tidyr)

#set download url
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#function to download a zipped file and unzip it into working directory
downloadUnzip <- function(fileUrl) {
  if(!file.exists("./data.zip")) {download.file(fileUrl, "./data.zip")}
  unzip("./data.zip")
}

downloadUnzip(fileUrl)

#function to create merged data set
mergeDataSets <-function(path){
  features <- read.table(paste(path,"features.txt", sep="/"))
  activityList <- read.table(paste(path,"activity_labels.txt", sep="/"))
  subject <- rbind(read.table(paste(path,"test","subject_test.txt", sep="/")), read.table(paste(path,"train","subject_train.txt", sep="/")))
  sensorData <- rbind(read.table(paste(path,"train","X_train.txt", sep="/")), read.table(paste(path,"test","X_test.txt", sep="/")))
  names(sensorData) <- features[,2]
  keepCols <- grep("(mean()|std())\\(\\)", names(sensorData))
  sensorData <- sensorData[, keepCols]
  activities <- rbind(read.table(paste(path,"train","y_train.txt", sep="/")), read.table(paste(path,"test","y_test.txt", sep="/")))
  activity <- left_join(activities, activityList, "V1")
  activity <- as.data.frame(activity[,2])
  dataset <<- cbind(subject, activity, sensorData) 
  colnames(dataset)[c(1,2)] <<- c("Subject", "Activity")
}

mergeDataSets("./UCI HAR Dataset")

#rename columns
names(dataset) <- gsub("^t", "Time", names(dataset))
names(dataset) <- gsub("^f", "Frequency", names(dataset))
names(dataset) <- gsub("-mean\\(\\)", "Mean", names(dataset))
names(dataset) <- gsub("-std\\(\\)", "StdDev", names(dataset))
names(dataset) <- gsub("BodyBody", "Body", names(dataset))


#create tidy dataset
tidyData <- dataset %>% 
  group_by(Subject,Activity) %>%
  summarize_each(funs(mean))

names(tidyData)[-c(1,2)] <- gsub("^?", "Mean", names(tidyData)[-c(1,2)])

if(!file.exists("./tidyDataSet.txt")) {write.table(tidyData, file = "tidyDataSet.txt", row.names = F, )}

