
# library to be used:
library(dplyr)

# get train data
xtrain<-read.table('./UCI HAR Dataset/train/X_train.txt', header=FALSE)
ytrain<-read.table('./UCI HAR Dataset/train/y_train.txt', header=FALSE)
subtrain<-<-read.table('./UCI HAR Dataset/train/subject_train.txt', header=FALSE)

# get test data
xtest<-read.table('./UCI HAR Dataset/test/X_test.txt', header=FALSE)
ytest<-read.table('./UCI HAR Dataset/test/y_test.txt', header=FALSE)
subtrain<-<-read.table('./UCI HAR Dataset/train/subject_test.txt', header=FALSE)

# read features description
features<-read.table('./UCI HAR Dataset/features.txt', header=FALSE)

# read activity labels
activity<-read.table('./UCI HAR Dataset/activity_labels.txt', header=FALSE)

#merge of training and test sets
x_total<-rbind(x_train, x_test)
y_total<-rbind(y_train, y_test)
sub_total<-rbind(sub_train, sub_test)

# to keep mean and SD
total_features<-var_names('.*mean\\(\\)|std\\(\\)", features[,2], ignore.case = FALSE),]
x_total<-x_total[,total_features[,1]]

#to name columns
colnames(x_total)<-sel_features[,2]
colnames(y_total)<-"activity"
colnames(sub_total)<-"subject"

# merge final dataset
total<-cbind(sub_total, y_total, x_total)

# turn activities & subjects into factors 
total$activity<-factor(total$activity, levels = activity_labels[,1], labels = activity_labels[,2]) 
total$subject<-as.factor(total$subject) 

# create a summary independent tidy dataset from final dataset 
# with the average of each variable for each activity and each subject. 

total_mean<-total %>% group_by(activity, subject) %>% summarize_all(funs(mean)) 

# export summary dataset
write.table(total_mean, file = "./tidydataset.txt", row.names = FALSE, col.names = TRUE) 
