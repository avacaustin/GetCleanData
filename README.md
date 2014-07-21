GetCleanData
============

Coursera Course Project for Getting and Cleaning Data

The **run_analysis.R** script was written to import and clean data from the Samsung smart phone activity monitoring experiments. Data was imported from the test and the training set. The script can be devided into the following steps. These steps were also written as annotations in the .R code.

**Step 0:** Load relevant data

**Step 1:** Merge test and training data into one dataset "both", replacing the automatically generated variable names in the loading step with variable names in "features", add "subject" and "activity" as variables, sorted by "subject"

**Step 2:** Extract mean and standard deviation measurements into dataset "meanstd"

**Step 3** Use descriptive activity types, sorted by "subject" and "activity"

**Step 4:** Label the data set with descriptive variable names, delete character that can be interpreted as functions or operators, keep abbreviations

**Step 5:** Creates a second, independent tidy data set with the average of each variable for each activity and each subject, sorted by subject number (1:6), and activity type (alphabetically)
