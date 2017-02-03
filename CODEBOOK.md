#Code Book

##Data files
* UCI HAR Dataset/test/y_test.txt: Test labels.
* UCI HAR Dataset/features.txt: List of all features.
* UCI HAR Dataset/activity_labels.txt: Links the class labels with their activity name.
* UCI HAR Dataset/train/X_train.txt: Training set.
* UCI HAR Dataset/train/y_train.txt: Training labels.
* UCI HAR Dataset/test/X_test.txt: Test set.

The following files are available for the train and test data. Their descriptions are equivalent.

* UCI HAR Dataset/test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* UCI HAR Dataset/test/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

##The script `run_analyses.R`
1. Requires library: `reshape2`
2. Reads data from the following files:
 + UCI HAR Dataset/test/y_test.txt
 + UCI HAR Dataset/test/subject_test.txt
 + UCI HAR Dataset/train/y_train.txt
 + UCI HAR Dataset/train/subject_train.txt
 + UCI HAR Dataset/test/X_test.txt
 + UCI HAR Dataset/train/X_train.txt
 + UCI HAR Dataset/features.txt
 + UCI HAR Dataset/activity_labels.txt  
Functions list:  
 `read.table()`
3. Performs the following operations:
 + Step 1) Column binds data from y_test and subject_test.
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
Functions list:  
 `cbind()`, `rbind()`, `colnames()`, `melt()`, `dcast()`, `merge()`, `write.table()`
