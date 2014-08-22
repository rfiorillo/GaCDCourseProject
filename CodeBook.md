Code Book
=========

##Course Project - Getting and Cleaning Data##

###data file: tidy.txt###

Contains 10299 rows and 68 columns.  Each subject and activity lists all means and standard deviations of the measured values.

####Columns####
1.   subject
2.   TimeBodyAcceleration.Mean.X
3.   TimeBodyAcceleration.Mean.Y
4.   TimeBodyAcceleration.Mean.Z
5.   TimeBodyAcceleration.StandardDeviation.X
6.   TimeBodyAcceleration.StandardDeviation.Y
7.   TimeBodyAcceleration.StandardDeviation.Z
8.   TimeGravityAcceleration.Mean.X
9.   TimeGravityAcceleration.Mean.Y
10.   TimeGravityAcceleration.Mean.Z
11.   TimeGravityAcceleration.StandardDeviation.X
12.   TimeGravityAcceleration.StandardDeviation.Y
13.   TimeGravityAcceleration.StandardDeviation.Z
14.   TimeBodyAccelerationJerk.Mean.X
15.   TimeBodyAccelerationJerk.Mean.Y
16.   TimeBodyAccelerationJerk.Mean.Z
17.   TimeBodyAccelerationJerk.StandardDeviation.X
18.   TimeBodyAccelerationJerk.StandardDeviation.Y
19.   TimeBodyAccelerationJerk.StandardDeviation.Z
20.   TimeBodyAngularSpeed.Mean.X
21.   TimeBodyAngularSpeed.Mean.Y
22.   TimeBodyAngularSpeed.Mean.Z
23.   TimeBodyAngularSpeed.StandardDeviation.X
24.   TimeBodyAngularSpeed.StandardDeviation.Y
25.   TimeBodyAngularSpeed.StandardDeviation.Z
26.   TimeBodyAngularAcceleration.Mean.X
27.   TimeBodyAngularAcceleration.Mean.Y
28.   TimeBodyAngularAcceleration.Mean.Z
29.   TimeBodyAngularAcceleration.StandardDeviation.X
30.   TimeBodyAngularAcceleration.StandardDeviation.Y
31.   TimeBodyAngularAcceleration.StandardDeviation.Z
32.   TimeBodyAccelerationMagnitude.Mean
33.   TimeBodyAccelerationMagnitude.StandardDeviation
34.   TimeGravityAccelerationMagnitude.Mean
35.   TimeGravityAccelerationMagnitude.StandardDeviation
36.   TimeBodyAccelerationJerkMagnitude.Mean
37.   TimeBodyAccelerationJerkMagnitude.StandardDeviation
38.   TimeBodyAngularSpeedMagnitude.Mean
39.   TimeBodyAngularSpeedMagnitude.StandardDeviation
40.   TimeBodyAngularAccelerationMagnitude.Mean
41.   TimeBodyAngularAccelerationMagnitude.StandardDeviation
42.   FFTBodyAcceleration.Mean.X
43.   FFTBodyAcceleration.Mean.Y
44.   FFTBodyAcceleration.Mean.Z
45.   FFTBodyAcceleration.StandardDeviation.X
46.   FFTBodyAcceleration.StandardDeviation.Y
47.   FFTBodyAcceleration.StandardDeviation.Z
48.   FFTBodyAccelerationJerk.Mean.X
49.   FFTBodyAccelerationJerk.Mean.Y
50.   FFTBodyAccelerationJerk.Mean.Z
51.   FFTBodyAccelerationJerk.StandardDeviation.X
52.   FFTBodyAccelerationJerk.StandardDeviation.Y
53.   FFTBodyAccelerationJerk.StandardDeviation.Z
54.   FFTBodyAngularSpeed.Mean.X
55.   FFTBodyAngularSpeed.Mean.Y
56.   FFTBodyAngularSpeed.Mean.Z
57.   FFTBodyAngularSpeed.StandardDeviation.X
58.   FFTBodyAngularSpeed.StandardDeviation.Y
59.   FFTBodyAngularSpeed.StandardDeviation.Z
60.   FFTBodyAccelerationMagnitude.Mean
61.   FFTBodyAccelerationMagnitude.StandardDeviation
62.   FFTBodyBodyAccelerationJerkMagnitude.Mean
63.   FFTBodyBodyAccelerationJerkMagnitude.StandardDeviation
64.   FFTBodyBodyAngularSpeedMagnitude.Mean
65.   FFTBodyBodyAngularSpeedMagnitude.StandardDeviation
66.   FFTBodyBodyAngularAccelerationMagnitude.Mean
67.   FFTBodyBodyAngularAccelerationMagnitude.StandardDeviation
68.   activity


####Description####
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###data file: tidy.average.txt###

Contains 180 rows and 68 columns.  Each subject and activity has the variable means and standard deviations mean calculated.

####Columns####
1.   subject
2.   activity
3.   TimeBodyAcceleration.Mean.X
4.   TimeBodyAcceleration.Mean.Y
5.   TimeBodyAcceleration.Mean.Z
6.   TimeBodyAcceleration.StandardDeviation.X
7.   TimeBodyAcceleration.StandardDeviation.Y
8.   TimeBodyAcceleration.StandardDeviation.Z
9.   TimeGravityAcceleration.Mean.X
10.   TimeGravityAcceleration.Mean.Y
11.   TimeGravityAcceleration.Mean.Z
12.   TimeGravityAcceleration.StandardDeviation.X
13.   TimeGravityAcceleration.StandardDeviation.Y
14.   TimeGravityAcceleration.StandardDeviation.Z
15.   TimeBodyAccelerationJerk.Mean.X
16.   TimeBodyAccelerationJerk.Mean.Y
17.   TimeBodyAccelerationJerk.Mean.Z
18.   TimeBodyAccelerationJerk.StandardDeviation.X
19.   TimeBodyAccelerationJerk.StandardDeviation.Y
20.   TimeBodyAccelerationJerk.StandardDeviation.Z
21.   TimeBodyAngularSpeed.Mean.X
22.   TimeBodyAngularSpeed.Mean.Y
23.   TimeBodyAngularSpeed.Mean.Z
24.   TimeBodyAngularSpeed.StandardDeviation.X
25.   TimeBodyAngularSpeed.StandardDeviation.Y
26.   TimeBodyAngularSpeed.StandardDeviation.Z
27.   TimeBodyAngularAcceleration.Mean.X
28.   TimeBodyAngularAcceleration.Mean.Y
29.   TimeBodyAngularAcceleration.Mean.Z
30.   TimeBodyAngularAcceleration.StandardDeviation.X
31.   TimeBodyAngularAcceleration.StandardDeviation.Y
32.   TimeBodyAngularAcceleration.StandardDeviation.Z
33.   TimeBodyAccelerationMagnitude.Mean
34.   TimeBodyAccelerationMagnitude.StandardDeviation
35.   TimeGravityAccelerationMagnitude.Mean
36.   TimeGravityAccelerationMagnitude.StandardDeviation
37.   TimeBodyAccelerationJerkMagnitude.Mean
38.   TimeBodyAccelerationJerkMagnitude.StandardDeviation
39.   TimeBodyAngularSpeedMagnitude.Mean
40.   TimeBodyAngularSpeedMagnitude.StandardDeviation
41.   TimeBodyAngularAccelerationMagnitude.Mean
42.   TimeBodyAngularAccelerationMagnitude.StandardDeviation
43.   FFTBodyAcceleration.Mean.X
44.   FFTBodyAcceleration.Mean.Y
45.   FFTBodyAcceleration.Mean.Z
46.   FFTBodyAcceleration.StandardDeviation.X
47.   FFTBodyAcceleration.StandardDeviation.Y
48.   FFTBodyAcceleration.StandardDeviation.Z
49.   FFTBodyAccelerationJerk.Mean.X
50.   FFTBodyAccelerationJerk.Mean.Y
51.   FFTBodyAccelerationJerk.Mean.Z
52.   FFTBodyAccelerationJerk.StandardDeviation.X
53.   FFTBodyAccelerationJerk.StandardDeviation.Y
54.   FFTBodyAccelerationJerk.StandardDeviation.Z
55.   FFTBodyAngularSpeed.Mean.X
56.   FFTBodyAngularSpeed.Mean.Y
57.   FFTBodyAngularSpeed.Mean.Z
58.   FFTBodyAngularSpeed.StandardDeviation.X
59.   FFTBodyAngularSpeed.StandardDeviation.Y
60.   FFTBodyAngularSpeed.StandardDeviation.Z
61.   FFTBodyAccelerationMagnitude.Mean
62.   FFTBodyAccelerationMagnitude.StandardDeviation
63.   FFTBodyBodyAccelerationJerkMagnitude.Mean
64.   FFTBodyBodyAccelerationJerkMagnitude.StandardDeviation
65.   FFTBodyBodyAngularSpeedMagnitude.Mean
66.   FFTBodyBodyAngularSpeedMagnitude.StandardDeviation
67.   FFTBodyBodyAngularAccelerationMagnitude.Mean
68.   FFTBodyBodyAngularAccelerationMagnitude.StandardDeviation