#Part 1: Merging the training and test data to create one data set.

#Reading the name of features.
features<-read.table("./UCI HAR Dataset/features.txt")

#Reading the training dataset. 
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")

#Renaming the variables in the training set.
names(X_train)<-features[,2]
names(y_train)<-"activity label"
names(subject_train)<-"subject label"

#Adding a flag to specify training set.
X_train["flag"]<-"training"

#Reading the test dataset. 
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")

#Part 4: Appropriately Labeling the data set with descriptive variable names.

#Renaming the variables in the test set.
names(X_test)<-features[,2]
names(y_test)<-"activity label"
names(subject_test)<-"subject label"

#Merging training and test data.
X_train.test<-rbind(X_train,X_test)
y_train.test<-rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)


#Part 2: Extracting variables on mean and standard deviation only.

mean_only<-names(X_train.test)[grep("mean()",names(X_train.test),fixed=T)]
std_only<-names(X_train.test)[grep("std()",names(X_train.test),fixed=T)]

mean_only<-as.data.frame(mean_only)
std_only<-as.data.frame(std_only)

names(mean_only)<-"variable"
names(std_only)<-"variable"

mean.std_only<-rbind(mean_only,std_only)

X_combined_mean_std<-X_train.test[as.character(mean.std_only[,1])]

# The final combined (training and test) data set with subject and activity lables.

merged_data<-cbind(X_combined_mean_std,y_train.test,subject)

#Part 5:  Creating an independent tidy data set with the average of each variable for each 
#activity and each subject.

library(data.table)
library(sos)
merged_data_table<-data.table(merged_data)
tidy_data<-Merged_data_table[,lapply(.SD,mean),by=c("activity label","subject label")]

tidy_data<-as.data.frame(tidy_data)
tidy_data<-tidy_data[order(tidy_data[,1],tidy_data[,2]),]

#Note: The final tidy data is named as tidy_data.
#Exporting the Tidy Data.






#Reading the activities for training data.
body_acc_x_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
body_acc_x_train["flag"]<-"training"

body_acc_y_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_acc_y_train["flag"]<-"training"

body_acc_z_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
body_acc_z_train["flag"]<-"training"

body_gyro_x_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_x_train["flag"]<-"training"

body_gyro_y_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_gyro_y_train["flag"]<-"training"

body_gyro_z_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
body_gyro_z_train["flag"]<-"training"

total_acc_x_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
total_acc_x_train["flag"]<-"training"

total_acc_y_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
total_acc_y_train["flag"]<-"training"

total_acc_z_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
total_acc_z_train["flag"]<-"training"

#Reading the activities for test data.
body_acc_x_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_x_test["flag"]<-"test"

body_acc_y_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_y_test["flag"]<-"test"

body_acc_z_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_acc_z_test["flag"]<-"test"

body_gyro_x_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_x_test["flag"]<-"test"

body_gyro_y_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_gyro_y_test["flag"]<-"test"

body_gyro_z_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
body_gyro_z_test["flag"]<-"test"

total_acc_x_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_x_test["flag"]<-"test"

total_acc_y_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_y_test["flag"]<-"test"

total_acc_z_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
total_acc_z_test["flag"]<-"test"

#Merging activities for both training and test data.
body_acc_x<-rbind(body_acc_x_train, body_acc_x_test)
body_acc_y<-rbind(body_acc_y_train, body_acc_y_test)
body_acc_z<-rbind(body_acc_z_train, body_acc_z_test)
body_gyro_x<-rbind(body_gyro_x_train, body_gyro_x_test)
body_gyro_y<-rbind(body_gyro_y_train, body_gyro_y_test)
body_gyro_z<-rbind(body_gyro_z_train, body_gyro_z_test)
total_acc_x<-rbind(total_acc_x_train, total_acc_x_test)
total_acc_y<-rbind(total_acc_y_train, total_acc_y_test)
total_acc_z<-rbind(total_acc_z_train, total_acc_z_test)

