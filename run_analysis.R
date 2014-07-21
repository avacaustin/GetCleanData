## Step 0: Load relevant data

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote="\"")
features <- read.table("./UCI HAR Dataset/features.txt", quote="\"")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote="\"")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", quote="\"")

## Step 1: Merge test and training data into one dataset "both",
##      replacing the automatically generated variable names in the loading
##      step with variable names in "features", add "subject" and "activity"
##      as variables, sorted by "subject"

varnames<-c("subject","activity",as.character(features$V2))
testonly<-cbind(subject_test,y_test,X_test)
colnames(testonly)<-varnames
trainonly<-cbind(subject_train,y_train,X_train)
colnames(trainonly)<-varnames
both<-rbind(testonly,trainonly)
both<-arrange(both,subject)

## Step 2: Extract mean and standard deviation measurements into dataset
##      "meanstd"

meanstdnames<-varnames[grep("mean|std",varnames)]
meanstd<-both[c("subject","activity",meanstdnames)]

## Step 3: Use descriptive activity types, sorted by "subject" and "activity"

meanstd<-arrange(meanstd,subject,activity)
actnames<-activity_labels$V2[meanstd$activity]
meanstd$activity<-actnames

## Step 4: Label the data set with descriptive variable names, delete
##      character that can be interpreted as functions or operators, 
##      keep abbreviations

meanstdnames<-gsub("-mean()","Mean",meanstdnames,fixed=TRUE)
meanstdnames<-gsub("-std()","Std",meanstdnames,fixed=TRUE)
meanstdnames<-gsub("-mean","Mean",meanstdnames,fixed=TRUE)
meanstdnames<-gsub("-","",meanstdnames,fixed=TRUE)
meanstdnames<-gsub("()","",meanstdnames,fixed=TRUE)
colnames(meanstd)<-c("subject","activity",meanstdnames)

## Step 5: Creates a second, independent tidy data set with the average 
##      of each variable for each activity and each subject, sorted by subject
##      number (1:6), and activity type (alphabetically)

summary_avg<-ddply(meanstd,.(subject,activity),numcolwise(mean))


