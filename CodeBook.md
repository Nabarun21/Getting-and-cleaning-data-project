
About the data 
=================

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================




The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals (prefix 'time’ to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'freq’ to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Time signals are in seconds. Frequency is in Hz.


Transformations made:

The given data was very raw and in pieces. 

The training set and test set were merged.

A column was added to denote activity performed.

A column was added to denote subject that performed that activity.

The activity “numbers” were changed to descriptive factor variables, viz:

	1 WALKING
	2 WALKING UPSTAIRS
	3 WALKING DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING

The colnames were changed to descriptive names using the names provided.

The names were tidied up.(In particular the “()” were done away with.”t” was change to time, “f” was changed to freq.”-“ were done away with)

Only the variables with mean or std(denoting) standard deviation in their names were extracted.

This dataset was used to produce a new data set.

The plyr package was used.

The new data set shows the AVERAGE of each measure extracted above for each subject performing each activity. There are 30 subjects each 
doing six activities. So there are a total of 180 rows.

For example:
The row with “Subject=3” and “Activity=sitting” shows the average of the measures of all variables when subject “3” was sitting.

The variable names are similarly named. Only AVG was added in front to indicate they are “AVERAGE” measures.


The complete list of variables in the new processed dataset are:
(time measures are in seconds; Frequency measures are in Hz(Hertz))

(Here->mean(): Mean value -> std(): Standard deviation)

(AVG :Average of those values overall for subject activity combination)
 
"AVG_timeBodyAcc_meanX"
"AVG_timeBodyAcc_meanY"
"AVG_timeBodyAcc_meanZ"
"AVG_timeBodyAcc_std_X"
"AVG_timeBodyAcc_std_Y"
"AVG_timeBodyAcc_std_Z"
"AVG_timeGravityAcc_meanX"
"AVG_timeGravityAcc_meanY"
"AVG_timeGravityAcc_meanZ"
"AVG_timeGravityAcc_std_X"
"AVG_timeGravityAcc_std_Y"
"AVG_timeGravityAcc_std_Z"
"AVG_timeBodyAccJerk_meanX"
"AVG_timeBodyAccJerk_meanY"
"AVG_timeBodyAccJerk_meanZ"
"AVG_timeBodyAccJerk_std_X"
"AVG_timeBodyAccJerk_std_Y"
"AVG_timeBodyAccJerk_std_Z"
"AVG_timeBodyGyro_meanX"
"AVG_timeBodyGyro_meanY"
"AVG_timeBodyGyro_meanZ"
"AVG_timeBodyGyro_std_X"
"AVG_timeBodyGyro_std_Y"
"AVG_timeBodyGyro_std_Z"
"AVG_timeBodyGyroJerk_meanX"
"AVG_timeBodyGyroJerk_meanY"
"AVG_timeBodyGyroJerk_meanZ"
"AVG_timeBodyGyroJerk_std_X"
"AVG_timeBodyGyroJerk_std_Y"
"AVG_timeBodyGyroJerk_std_Z"
"AVG_timeBodyAccMag_mean"
"AVG_timeBodyAccMag_std"
"AVG_timeGravityAccMag_mean"
"AVG_timeGravityAccMag_std"
"AVG_timeBodyAccJerkMag_mean"
"AVG_timeBodyAccJerkMag_std"
"AVG_timeBodyGyroMag_mean"
"AVG_timeBodyGyroMag_std"
"AVG_timeBodyGyroJerkMag_mean"
"AVG_timeBodyGyroJerkMag_std"
"AVG_freqBodyAcc_meanX"
"AVG_freqBodyAcc_meanY"
"AVG_freqBodyAcc_meanZ"
"AVG_freqBodyAcc_std_X"
"AVG_freqBodyAcc_std_Y"
"AVG_freqBodyAcc_std_Z"
"AVG_freqBodyAcc_meanFreq_X"
"AVG_freqBodyAcc_meanFreq_Y"
"AVG_freqBodyAcc_meanFreq_Z"
"AVG_freqBodyAccJerk_meanX"
"AVG_freqBodyAccJerk_meanY"
"AVG_freqBodyAccJerk_meanZ"
"AVG_freqBodyAccJerk_std_X"
"AVG_freqBodyAccJerk_std_Y"
"AVG_freqBodyAccJerk_std_Z"
"AVG_freqBodyAccJerk_meanFreq_X"
"AVG_freqBodyAccJerk_meanFreq_Y"
"AVG_freqBodyAccJerk_meanFreq_Z"
"AVG_freqBodyGyro_meanX"
"AVG_freqBodyGyro_meanY"
"AVG_freqBodyGyro_meanZ"
"AVG_freqBodyGyro_std_X"
"AVG_freqBodyGyro_std_Y"
"AVG_freqBodyGyro_std_Z"
"AVG_freqBodyGyro_meanFreq_X"
"AVG_freqBodyGyro_meanFreq_Y"
"AVG_freqBodyGyro_meanFreq_Z"
"AVG_freqBodyAccMag_mean"
"AVG_freqBodyAccMag_std"
"AVG_freqBodyAccMag_meanFreq"
"AVG_freqBodyBodyAccJerkMag_mean"
"AVG_freqBodyBodyAccJerkMag_std"
"AVG_freqBodyBodyAccJerkMag_meanFreq"
"AVG_freqBodyBodyGyroMag_mean"
"AVG_freqBodyBodyGyroMag_std"
"AVG_freqBodyBodyGyroMag_meanFreq"
"AVG_freqBodyBodyGyroJerkMag_mean"
"AVG_freqBodyBodyGyroJerkMag_std"
"AVG_freqBodyBodyGyroJerkMag_meanFreq"
 


 

 
