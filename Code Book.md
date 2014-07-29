## Data Cleaning Project CodeBook

### Original dataset information

This dataset has been generated from **UCI Human Activity Recognition Using Smartphones Dataset Version 1.0**:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universita degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws

For more information about the original dataset please refer to following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Processed dataset information

The original data in this dataset has been reshaped, in order to have all the information required in one only tidy dataset. Subject and activity information has been added to the train and test main datasets. The resulting train and test datasets have been merged. After that, only some of the features have been extracted, those with mean and standard deviation values. Variable names have been fixed, removing hyphen and parenthesis characters and expanding the name components. Text variable values and labels have been left or converted to CamelCase in order to improve readability.

The resulting dataset is a data.frame called **tidy_data** with 68 variables and 10299 observations, and a text file called **tidy\_data.txt**.

There is also a second tidy dataset containing the mean of all variables for each subject and activity in a data.frame called **tidy\_data\_mean** with 68 variables and 180 obsservations, and a text file called **tidy\_data\_mean.txt**. The variable names are the same for both datasets.


### Features list

Here is the list of features in the data frame:

1. 	**Subject**: integer. Experiment subjects. Values: 1:30  
2.	**Activity**: factor. Activities performed by the experiment subjects. Levels: 1 Walking, 2 WalkingUpstairs, 3 WalkingDownstairs, 4 Sitting, 5 Standing, 6 Laying  
3.	**TimeBodyAccelerometerMeanX**: real. Time domain, accelerometer body signal, X axis, Mean value  
4.	**TimeBodyAccelerometerMeanY**: real. Time domain, accelerometer body signal, Y axis, Mean value  
5.	**TimeBodyAccelerometerMeanZ**: real. Time domain, accelerometer body signal, Z axis, Mean value  
6.	**TimeBodyAccelerometerStdDevX**: real. Time domain, accelerometer body signal, X axis, Standard deviation  
7.	**TimeBodyAccelerometerStdDevY**: real. Time domain, accelerometer body signal, Y axis, Standard deviation  
8.	**TimeBodyAccelerometerStdDevZ**: real. Time domain, accelerometer body signal, Z axis, Standard deviation  
9.	**TimeGravityAccelerometerMeanX**: real. Time domain, accelerometer body signal, X axis, Mean value  
10.	**TimeGravityAccelerometerMeanY**: real. Time domain, accelerometer body signal, Y axis, Mean value  
11.	**TimeGravityAccelerometerMeanZ**: real. Time domain, accelerometer body signal, Z axis, Mean value  
12.	**TimeGravityAccelerometerStdDevX**: real. Time domain, accelerometer body signal, X axis, Standard deviation  
13.	**TimeGravityAccelerometerStdDevY**: real. Time domain, accelerometer body signal, Y axis, Standard deviation  
14.	**TimeGravityAccelerometerStdDevZ**: real. Time domain, accelerometer body signal, Z axis, Standard deviation  
15.	**TimeBodyAccelerometerJerkMeanX**: real. Time domain, accelerometer body jerk signal, X axis, Mean value  
16.	**TimeBodyAccelerometerJerkMeanY**: real. Time domain, accelerometer body jerk signal, Y axis, Mean value  
17.	**TimeBodyAccelerometerJerkMeanZ**: real. Time domain, accelerometer body jerk signal, Z axis, Mean value  
18.	**TimeBodyAccelerometerJerkStdDevX**: real. Time domain, accelerometer body jerk signal, X axis, Standard deviation  
19.	**TimeBodyAccelerometerJerkStdDevY**: real. Time domain, accelerometer body jerk signal, Y axis, Standard deviation  
20.	**TimeBodyAccelerometerJerkStdDevZ**: real. Time domain, accelerometer body jerk signal, Z axis, Standard deviation  
21.	**TimeBodyGyroscopeMeanX**: real. Time domain, gyroscope body signal, X axis, Mean value  
22.	**TimeBodyGyroscopeMeanY**: real. Time domain, gyroscope body signal, Y axis, Mean value  
23.	**TimeBodyGyroscopeMeanZ**: real. Time domain, gyroscope body signal, Z axis, Mean value  
24.	**TimeBodyGyroscopeStdDevX**: real. Time domain, gyroscope body signal, X axis, Standard deviation  
25.	**TimeBodyGyroscopeStdDevY**: real. Time domain, gyroscope body signal, Y axis, Standard deviation  
26.	**TimeBodyGyroscopeStdDevZ**: real. Time domain, gyroscope body signal, Z axis, Standard deviation  
27.	**TimeBodyGyroscopeJerkMeanX**: real. Time domain, gyroscope body jerk signal, X axis, Mean value  
28.	**TimeBodyGyroscopeJerkMeanY**: real. Time domain, gyroscope body jerk signal, Y axis, Mean value  
29.	**TimeBodyGyroscopeJerkMeanZ**: real. Time domain, gyroscope body jerk signal, Z axis, Mean value  
30.	**TimeBodyGyroscopeJerkStdDevX**: real. Time domain, gyroscope body jerk signal, X axis, Standard deviation  
31.	**TimeBodyGyroscopeJerkStdDevY**: real. Time domain, gyroscope body jerk signal, Y axis, Standard deviation  
32.	**TimeBodyGyroscopeJerkStdDevZ**: real. Time domain, gyroscope body jerk signal, Z axis, Standard deviation  
33.	**TimeBodyAccelerometerMagnitudeMean**: real. Time domain, accelerometer body signal magnitude, Mean value  
34.	**TimeBodyAccelerometerMagnitudeStdDev**: real. Time domain, accelerometer body signal magnitude, Standard deviation  
35.	**TimeGravityAccelerometerMagnitudeMean**: real. Time domain, accelerometer gravity signal magnitude, Mean value
36.	**TimeGravityAccelerometerMagnitudeStdDev**: real. Time domain, accelerometer gravity signal magnitude, Standard deviation  
37.	**TimeBodyAccelerometerJerkMagnitudeMean**: real. Time domain, accelerometer body jerk signal magnitude, Mean value  
38.	**TimeBodyAccelerometerJerkMagnitudeStdDev**: real. Time domain, accelerometer body jerk signal magnitude, Standard deviation  
39.	**TimeBodyGyroscopeMagnitudeMean**: real. Time domain, gyroscope body signal magnitude, Mean value  
40.	**TimeBodyGyroscopeMagnitudeStdDev**: real. Time domain, gyroscope body signal magnitude, Standard deviation  
41.	**TimeBodyGyroscopeJerkMagnitudeMean**: real. Time domain, gyroscope body jerk signal magnitude, Mean value  
42.	**TimeBodyGyroscopeJerkMagnitudeStdDev**: real. Time domain, gyroscope body jerk signal magnitude, Standard deviation  
43.	**FreqBodyAccelerometerMeanX**: real. Frequency domain, accelerometer body signal, X axis, Mean value  
44.	**FreqBodyAccelerometerMeanY**: real. Frequency domain, accelerometer body signal, Y axis, Mean value  
45.	**FreqBodyAccelerometerMeanZ**: real. Frequency domain, accelerometer body signal, Z axis, Mean value  
46.	**FreqBodyAccelerometerStdDevX**: real. Frequency domain, accelerometer body signal, X axis, Standard deviation  
47.	**FreqBodyAccelerometerStdDevY**: real. Frequency domain, accelerometer body signal, Y axis, Standard deviation  
48.	**FreqBodyAccelerometerStdDevZ**: real. Frequency domain, accelerometer body signal, Z axis, Standard deviation  
49.	**FreqBodyAccelerometerJerkMeanX**: real. Frequency domain, accelerometer body jerk signal, X axis, Mean value  
50.	**FreqBodyAccelerometerJerkMeanY**: real. Frequency domain, accelerometer body jerk signal, Y axis, Mean value  
51.	**FreqBodyAccelerometerJerkMeanZ**: real. Frequency domain, accelerometer body jerk signal, Z axis, Mean value  
52.	**FreqBodyAccelerometerJerkStdDevX**: real. Frequency domain, accelerometer body jerk signal, X axis, Standard deviation  
53.	**FreqBodyAccelerometerJerkStdDevY**: real. Frequency domain, accelerometer body jerk signal, Y axis, Standard deviation  
54.	**FreqBodyAccelerometerJerkStdDevZ**: real. Frequency domain, accelerometer body jerk signal, Z axis, Standard deviation  
55.	**FreqBodyGyroscopeMeanX**: real. Frequency domain, gyroscope body signal, X axis, Mean value  
56.	**FreqBodyGyroscopeMeanY**: real. Frequency domain, gyroscope body signal, Y axis, Mean value  
57.	**FreqBodyGyroscopeMeanZ**: real. Frequency domain, gyroscope body signal, Z axis, Mean value  
58.	**FreqBodyGyroscopeStdDevX**: real. Frequency domain, gyroscope body signal, X axis, Standard deviation  
59.	**FreqBodyGyroscopeStdDevY**: real. Frequency domain, gyroscope body signal, Y axis, Standard deviation  
60.	**FreqBodyGyroscopeStdDevZ**: real. Frequency domain, gyroscope body signal, Z axis, Standard deviation  
61.	**FreqBodyAccelerometerMagnitudeMean**: real. Frequency domain, accelerometer body signal magnitude, Mean value  
62.	**FreqBodyAccelerometerMagnitudeStdDev**: real. Frequency domain, accelerometer body signal magnitude, Standard deviation  
63.	**FreqBodyAccelerometerJerkMagnitudeMean**: real. Frequency domain, accelerometer body jerk signal magnitude, Mean value  
64.	**FreqBodyAccelerometerJerkMagnitudeStdDev**: real. Frequency domain, accelerometer body jerk signal magnitude, Standard deviation  
65.	**FreqBodyGyroscopeMagnitudeMean**: real. Frequency domain, gyroscope body signal magnitude, Mean value  
66.	**FreqBodyGyroscopeMagnitudeStdDev**: real. Frequency domain, gyroscope body signal magnitude, Standard deviation  
67.	**FreqBodyGyroscopeJerkMagnitudeMean**: real. Frequency domain, gyroscope body jerk signal magnitude, Mean value  
68.	**FreqBodyGyroscopeJerkMagnitudeStdDev**: real. Frequency domain, gyroscope body jerk signal magnitude, Standard deviation  