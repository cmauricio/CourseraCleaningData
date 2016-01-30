#####
# Assignment: Getting and Cleaning Data Course Project
#####


##### First point #####
##### Getting the data and merging the databases

# Download the zip file
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
WD<-"~/GitHub/CourseraSubmission4/"
download.file(url,"~/GitHub/CourseraSubmission4/Dataset.zip")
setwd(WD)

# Unziping the file
subject_test<-unzip("Dataset.zip", files = "UCI HAR Dataset/test/subject_test.txt")

# Extracting the individual files
subject_test<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/test/subject_test.txt", sep="")
x_test<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/test/X_test.txt", sep="")
y_test<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/test/y_test.txt", sep="")
subject_train<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/train/subject_train.txt", sep="")
x_train<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/train/X_train.txt", sep="")
y_train<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/train/y_train.txt", sep="")

# Getting the name for the X_measures
features<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/features.txt", sep="")
features<-features[,2]

# Changing the names of the colums in the different files
colnames(x_test)<-features
colnames(x_train)<-features

colnames(subject_test)<-"subjectid"
colnames(subject_train)<-"subjectid"

colnames(y_test)<-"activityname"
colnames(y_train)<-"activityname"

# Merging the test and the train files
mergedTest<-cbind(subject_test,y_test,x_test)

mergedTrain<-cbind(subject_train,y_train,x_train)

#Creating the big database
mergedData<-rbind(mergedTest,mergedTrain)



##### Second point #####
##### Getting the mean and SD measurements

nameArray<-colnames(mergedData)

a<-grep("[Mm]ean|[Ss]td",nameArray)

firstSubset<-mergedData[,a]



##### Third point #####
##### Using descriptive names

labels<-read.table("~/GitHub/CourseraSubmission4/UCI HAR Dataset/activity_labels.txt", sep="")

labels<-as.character(labels$V2)

for (i in 1:nrow(mergedData)) {
     
     if (mergedData[i,2]==1) {
          mergedData[i,2]<-labels[1]
     } else if (mergedData[i,2]==2) {
          mergedData[i,2]<-labels[2]
     } else if (mergedData[i,2]==3) {
          mergedData[i,2]<-labels[3]
     } else if (mergedData[i,2]==4) {
          mergedData[i,2]<-labels[4]
     } else if (mergedData[i,2]==5) {
          mergedData[i,2]<-labels[5]
     } else if (mergedData[i,2]==6) {
          mergedData[i,2]<-labels[6]
     }
     
}

#Note: I did it without usin the "trick" in the guide
#Although i found it more versatile, I couldn't manage to index the vector
#I would be very grateful if you could explain to me how to do it



##### Fourth point #####
##### Naming the dataset with appropriate names

features2<-colnames(mergedData)

# get rid of the parentheses
b<-gsub("[()]", "", features2)
# get rid of the dash
b<-gsub("-",".", b)
# replace the inicial f with "freq"
b<-gsub("^f","freq",b)
# replace the initial t with "time"
b<-gsub("^t","time",b)
# get rid of the commas
b<-gsub(",",".",b)
# get the names in lower case
b<-tolower(b)

# replace the column names in the database
colnames(mergedData)<-b


##### Fifth point #####
##### Average of each variable for each activity and each subject

library(reshape2)

tidyData<-dcast(mergedData, subjectid~activityname, mean)

write.table(tidyData, file="tidyData.csv" , sep = ";", dec = ",")
