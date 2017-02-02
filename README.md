#Getting and Cleaning Data Course Project
##Motivation
The purpose of this course project is to demonstrate ability to collect, work with, and clean a data set.The goal is to prepare tidy data that can be used for later analysis.

##The script (run_analyses.R)
1. Reads data from the following files:
 + UCI HAR Dataset/test/y_test.txt
 + UCI HAR Dataset/test/subject_test.txt
 + UCI HAR Dataset/train/y_train.txt
 + UCI HAR Dataset/train/subject_train.txt
 + UCI HAR Dataset/test/X_test.txt
 + UCI HAR Dataset/train/X_train.txt
 + UCI HAR Dataset/features.txt
 + UCI HAR Dataset/activity_labels.txt
2. Performs the following operations:
 + Step 1) It column binds data from y_test and subject_test.
 + Step 2) Assigns column names "Activity" and "Subject" to the resulting data.
 + Step 3) Column binds y_train and subject_traing.
 + Step 4) Assigns column names "Activity" and "Subject" to the resulting data.
 + Step 5) Row binds data from steps 1) and 3).
 + Step 6) Row binds data from X_test and X_train.
 + Step 7) Assigns column names from features.txt to the resulting data in step 6).
 + Step 8) Eliminates column with no std() or mean() in their names.
 + Step 9) Column binds the data from steps 5) and 6).
 + Step 10) Melts data from by "Activity" and "Subject" id.
 + Step 11) Calculates the mean by "Activity" and "Subject".
 + Step 12) Replaces activity values with descriptive ones from activity_labels.txt
 + Step 14) Writes the resulting data to tab delimited tidy_data_set.txt file.
