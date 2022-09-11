Getting-and-cleaning-data-Week-4-Assignment
==================================================================
Week4 Project for Getting and Cleaning data
This project contains dataset obtained from the link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and the dataset are https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in this folder.
Firstly the dataset were downloaded and unzipped to the working directory in the R file.
Secondly R code was downloadedto the source in the R working directory. Finally, execute R source code to generate tidy data file.
Code : The code combined training dataset and test dataset, and extracted partial variables to create another dataset with the averages of each variable for each activity.the new dataset contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.

The code was written based on the instruction of this assignment

The R script called run_analysis.R does the following. 1.Merges the training and the test sets to create one data set.2.Extracts only the measurements on the mean and standard deviation for each measurement. 3.Uses descriptive activity names to name the activities in the data set4.Appropriately labels the data set with descriptive variable names. 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
