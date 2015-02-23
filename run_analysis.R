#set the url to download the data
URL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#create the directory 'data' to download the data file, if it doesn't exist 
if(!file.exist(./data")){dir.create("./data")}

#download file
download.file(URL,destfile="./data/dataset.zip")

# Uncompress data file
  unzip("./data/dataset.zip")

## 1. Merges the training and the test sets to create one data set
  X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
  X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)  
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE,all=TRUE)
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, all=TRUE)
  x_mergedData <- rbind(X_train, X_test)
  y_mergedData <- rbind(y_train, y_test)
  s_mergedData <- rbind(subject_train, subject_test)
