Getting and Cleaning Data Project
=================================

This GitHub repository corresponds to the Course Project of the Getting and Cleaning Data course of the Data Science Specialization offered by Bloomberg School of Public Health of the Johns Hopkins University through Coursera.

The repository comprises the following files and folders:

1. README.md : Contains the information on what the repository is and what its components are.

2. run_analysis.R : The main script for the entire analysis.

3. tidy_data.txt : The tidy data where only average mesaurements on mean and standard deviation variables are taken for both training and test data in a single file where averaging is done with respect to activity and subjects. Tidy data is obtained as output of run_analysis.R. 

4. tidy_data.csv : Its the same tidy data but in csv format.

5. UCI HAR Dataset Folder : The original data folder provided for the project.

6. Getting and Cleaning Data.Rproj : The R Project file created during the analysis.

## Explainig how run_analysis.R works

Step 1. First of all we are reading the name of the features from the features.txt file. We need to merge both training and test data. For the training data we read subject_train.txt (which has labels on subjects ,i.e. individual who performed the activity), X_train.txt (whihch has values on different (561) features) and y_train.txt (which has values on activity lables (which activity is performed)). Similarly we did it for the test data as well.

Step 2. To give proper names to the variables (features) in the X_train and X_test we extract the variables names from    features.txt file and then change the names in X_train and X_test by those names. Similarly we rename the variable in subject_train.txt and subject_test.txt files by "subject label" and the variable in y_train.txt and y_test.txt files by "activity label".

Step 3. Now we merge the different training and test data and create combined X, Combined y and Combined subject data.

Step 4. We need to keep only the features which are values on mean and standard deviation. We do it by means of "grep"            function by exactly matching the keywords mean() and std() and keep only those variables in the combined X data.

Step 5. We create the merged data using "cbind" which has features which are values on mean and standard deviation only, subject labels and activity labels.

Step 6: We create the required independent tidy data set with the average of each variable for each activity and each subject using data.table and lapply. Finally we write (export) this tidy data as a txt file and a csv file.

Step 7:  Similar to this we can combine (stack) the Inertial Signal files (9 for each) for training and test data using rbind.

This files tidy_data.txt and tidy_data.csv are the output of the run_analysis script.

Thanks a lot for your time and consideration!
