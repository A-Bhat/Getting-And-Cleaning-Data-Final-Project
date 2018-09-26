library(dplyr)

#Download the file and save it in the folder named data
if(!file.exists("data.zip")){
  link<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(link, "data.zip")
}

#unzip the downloaded content
if(!file.exists("UCI HAR Dataset")){
  unzip("data.zip")
}

#read activity_labels and features
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
features<-read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = F)


#Creating a logical vector which gives the position of variables on mean and standard deviation from features
features_reqd<-grepl(".*mean().*|.*std().*", features$V2)

#reading and subsetting training data
train<-read.table("./UCI HAR Dataset/train/X_train.txt", header = F) 
train<-train[,features_reqd]                                 ##subset the columns on mean and sd          
train_act<-read.table("./UCI HAR Dataset/train/y_train.txt", header = F)
train_sub<-read.table("./UCI HAR Dataset/train/subject_train.txt", header = F) 

#merging variables of training data into a df
train_df<-cbind(train_sub, train_act, train)

#reading and subseting test data
test<-read.table("./UCI HAR Dataset/test/X_test.txt", header = F) 
test<-test[,features_reqd]        ##subset the columns on mean and sd          
test_act<-read.table("./UCI HAR Dataset/test/y_test.txt", header = F)
test_sub<-read.table("./UCI HAR Dataset/test/subject_test.txt", header = F) 

#merging variables of test data into a df
test_df<-cbind(test_sub, test_act, test)

#merging training and test data
train_test<-rbind(train_df, test_df)

#Setting the column names
col<-grep(".*mean().*|.*std().*", features$V2, value = T)
features_reqd_names<-gsub("mean\\(\\)", "Mean", col)
features_reqd_names<-gsub("std\\(\\)", "SD", features_reqd_names)
colnames(train_test)<-c("Subject", "Activity", features_reqd_names)

#replacing activities labels by names
train_test$Activity<-factor(train_test$Activity, levels = seq(1,6), labels = activity_labels$V2)

#Creating a dataset with average of each variable for each Subject-Activity pair
avgdf<- train_test %>% group_by(Subject, Activity) %>% summarise_all(c("mean"))
  