X_test: raw data of 561 measurements from test subjects

y_test: numbered factors assigned to different activity types, for the test group, with same row number as X_test

subject_test: subject numbers for the test group, with same row number as X_test

features: abbreviated names of the 561 measurements

X_train: raw data of 561 measurements from training subjects

y_train: numbered factors assigned to different activity types, for the training group, with same row number as X_train

subject_train: subject number for the training group, with same row number as X_train

activity_labels: descriptive character strings corresponding to the numbered levels for types of activity


varnames: character string for intended column names to replace automatically generated ones in data frames

testonly: data frame containing subject, activity, and 561 measurements, for the test group

colnames(testonly): column names of the data frame testonly

trainonly: data frame containing subject, activity, and 561 measurements, for the training group

colnames(trainonly): column names for the data frame trainonly, which are the same as those for testonly

both: data frame containing data from both the test and the training groups


meanstdnames:extracted variable names for either mean or standard deviation measurements, further cleaned up later

meanstd: subset of the both data frame, containing only mean and standard deviation measurements 


actnames: character string for descriptive activity types, matched with the activity column in meanstd


summary_avg: data set describing the average of the measurements in meanstd, grouped by subject for each activity
