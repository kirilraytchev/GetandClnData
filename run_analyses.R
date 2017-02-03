library(reshape2)

y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

A<- cbind(y_test, subject_test)
colnames(A)<-c("Activity", "Subject")

B<- cbind(y_train, subject_train)
colnames(B)<-c("Activity", "Subject")

C<-rbind(A, B)

D<-rbind(X_test, X_train)

colnames(D)<- features[,2]

E<-D[grep("std\\(\\)|mean\\(\\)", colnames(D))]

F<-cbind(C, E)

meltF<-melt(F, id=c("Activity", "Subject"))

meanF<-dcast(meltF, Activity + Subject ~variable, mean)

Final<-merge(activity_labels, meanF, by.x="V1", by.y="Activity")
Final<-Final[,2:69]
names(Final)[1] <- "Activity"
write.table(Final, file="tidy_data_set.txt", sep="\t", row.names = FALSE)