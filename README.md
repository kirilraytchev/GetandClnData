GetandClnData
=============

Course project

The script reads data from the following files:
UCI HAR Dataset/test/y_test.txt
UCI HAR Dataset/test/subject_test.txt
UCI HAR Dataset/train/y_train.txt
UCI HAR Dataset/train/subject_train.txt
UCI HAR Dataset/test/X_test.txt
UCI HAR Dataset/train/X_train.txt
UCI HAR Dataset/features.txt
UCI HAR Dataset/activity_labels.txt


The script performs the following operations:
1) It column binds data from y_test and subject_test
2) Assigns column names "Activity" and "Subject" to the resulting data.
3) Column binds y_train and subject_traing.
4) Assigns column names "Activity" and "Subject" to the resulting data.
5) Row binds data from steps 1) and 3).
6) Row binds data from X_test and X_train.
7) Assigns column names from features.txt to the resulting data in step 6).
8) Eliminates column with no std() or mean() in their names.
9) Column binds the data from steps 5) and 6).
10) Melts data from by "Activity" and "Subject" id.
11) Calculates the mean by "Activity" and "Subject".
12) Replaces activity values with descriptive ones from activity_labels.txt
13) Writes the resulting data to tab delimited tidy_data_set.txt file.
