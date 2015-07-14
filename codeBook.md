# Code Book

This code book summarizes the resulting data fields in `tidydata.txt`.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerator-XYZ and timeGravityAccelerator-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAcceleratorJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timleBodyAcceleratorMagnitude, timeGravityAcceleratorMagnitude, timeBodyAcceleratorJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerator-XYZ, frequencyBodyAcceleratorJerk-XYZ, frequencyBodyGyroscpoe-XYZ, frequencyBodyAcceleratorJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.


## Identifiers

* `activity_label` - The type of activity performed when the corresponding measurements were taken
* `subject` - The ID of the test subject


## Measurements :  all the above variables are means of original variable group by identifiers

* `timeBodyAcceleratormeanX
* `timeBodyAcceleratormeanY
* `timeBodyAcceleratormeanZ
* `timeGravityAcceleratormeanX
* `timeGravityAcceleratormeanY
* `timeGravityAcceleratormeanZ
* `timeBodyAcceleratorJerkmeanX
* `timeBodyAcceleratorJerkmeanY
* `timeBodyAcceleratorJerkmeanZ
* `timeBodyGyroscopemeanX
* `timeBodyGyroscopemeanY
* `timeBodyGyroscopemeanZ
* `timeBodyGyroscopeJerkmeanX
* `timeBodyGyroscopeJerkmeanY
* `timeBodyGyroscopeJerkmeanZ
* `timeBodyAcceleratorMagnitudemean
* `timeGravityAcceleratorMagnitudemean
* `timeBodyAcceleratorJerkMagnitudemean
* `timeBodyGyroscopeMagnitudemean
* `timeBodyGyroscopeJerkMagnitudemean
* `frequencyBodyAcceleratormeanX
* `frequencyBodyAcceleratormeanY
* `frequencyBodyAcceleratormeanZ
* `frequencyBodyAcceleratorJerkmeanX
* `frequencyBodyAcceleratorJerkmeanY
* `frequencyBodyAcceleratorJerkmeanZ
* `frequencyBodyGyroscopemeanX
* `frequencyBodyGyroscopemeanY
* `frequencyBodyGyroscopemeanZ
* `frequencyBodyAcceleratorMagnitudemean
* `frequencyBodyBodyAcceleratorJerkMagnitudemean
* `frequencyBodyBodyGyroscopeMagnitudemean
* `frequencyBodyBodyGyroscopeJerkMagnitudemean
* `timeBodyAcceleratorstdX
* `timeBodyAcceleratorstdY
* `timeBodyAcceleratorstdZ
* `timeGravityAcceleratorstdX
* `timeGravityAcceleratorstdY
* `timeGravityAcceleratorstdZ
* `timeBodyAcceleratorJerkstdX
* `timeBodyAcceleratorJerkstdY
* `timeBodyAcceleratorJerkstdZ
* `timeBodyGyroscopestdX
* `timeBodyGyroscopestdY
* `timeBodyGyroscopestdZ
* `timeBodyGyroscopeJerkstdX
* `timeBodyGyroscopeJerkstdY
* `timeBodyGyroscopeJerkstdZ
* `timeBodyAcceleratorMagnitudestd
* `timeGravityAcceleratorMagnitudestd
* `timeBodyAcceleratorJerkMagnitudestd
* `timeBodyGyroscopeMagnitudestd
* `timeBodyGyroscopeJerkMagnitudestd
* `frequencyBodyAcceleratorstdX
* `frequencyBodyAcceleratorstdY
* `frequencyBodyAcceleratorstdZ
* `frequencyBodyAcceleratorJerkstdX
* `frequencyBodyAcceleratorJerkstdY
* `frequencyBodyAcceleratorJerkstdZ
* `frequencyBodyGyroscopestdX
* `frequencyBodyGyroscopestdY
* `frequencyBodyGyroscopestdZ
* `frequencyBodyAcceleratorMagnitudestd
* `frequencyBodyBodyAcceleratorJerkMagnitudestd
* `frequencyBodyBodyGyroscopeMagnitudestd
* `frequencyBodyBodyGyroscopeJerkMagnitudestd


## Activity Labels

* `WALKING` : subject was walking during the test
* `WALKING_UPSTAIRS` : subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` : subject was walking down a staircase during the test
* `SITTING` : subject was sitting during the test
* `STANDING` : subject was standing during the test
* `LAYING` : subject was laying down during the test