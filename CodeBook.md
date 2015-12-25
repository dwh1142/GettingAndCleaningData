#Code Book


##Original Data Set Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


##Activity Labels
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


##Tidy Data Set Info

###Script

The script included with this Code Book does the following:
1. Merges the training, test, subject, and activity data sets into one common dataset
2. Subsets the complete dataset to create a new dataset with only those variables, which have the words "mean" or "std" (referring to mean and standard deviation)
3. Removes all unnecesarry characters from the variable names to make them more readable
4. Summarizes the merged datasets to calculate the mean of each variable, grouped by test subject and activity, to ultimately create a final 'tidyDataSet.txt'


###Variables
These variables indicate the average for each subject, in each activity, of each of the original mean variables in the merged training and test datasets.


Subject
Activity
MeanTimeBodyAccMean-X
MeanTimeBodyAccMean-Y
MeanTimeBodyAccMean-Z
MeanTimeBodyAccStdDev-X
MeanTimeBodyAccStdDev-Y
MeanTimeBodyAccStdDev-Z
MeanTimeGravityAccMean-X
MeanTimeGravityAccMean-Y
MeanTimeGravityAccMean-Z
MeanTimeGravityAccStdDev-X
MeanTimeGravityAccStdDev-Y
MeanTimeGravityAccStdDev-Z
MeanTimeBodyAccJerkMean-X
MeanTimeBodyAccJerkMean-Y
MeanTimeBodyAccJerkMean-Z
MeanTimeBodyAccJerkStdDev-X
MeanTimeBodyAccJerkStdDev-Y
MeanTimeBodyAccJerkStdDev-Z
MeanTimeBodyGyroMean-X
MeanTimeBodyGyroMean-Y
MeanTimeBodyGyroMean-Z
MeanTimeBodyGyroStdDev-X
MeanTimeBodyGyroStdDev-Y
MeanTimeBodyGyroStdDev-Z
MeanTimeBodyGyroJerkMean-X
MeanTimeBodyGyroJerkMean-Y
MeanTimeBodyGyroJerkMean-Z
MeanTimeBodyGyroJerkStdDev-X
MeanTimeBodyGyroJerkStdDev-Y
MeanTimeBodyGyroJerkStdDev-Z
MeanTimeBodyAccMagMean
MeanTimeBodyAccMagStdDev
MeanTimeGravityAccMagMean
MeanTimeGravityAccMagStdDev
MeanTimeBodyAccJerkMagMean
MeanTimeBodyAccJerkMagStdDev
MeanTimeBodyGyroMagMean
MeanTimeBodyGyroMagStdDev
MeanTimeBodyGyroJerkMagMean
MeanTimeBodyGyroJerkMagStdDev
MeanFrequencyBodyAccMean-X
MeanFrequencyBodyAccMean-Y
MeanFrequencyBodyAccMean-Z
MeanFrequencyBodyAccStdDev-X
MeanFrequencyBodyAccStdDev-Y
MeanFrequencyBodyAccStdDev-Z
MeanFrequencyBodyAccJerkMean-X
MeanFrequencyBodyAccJerkMean-Y
MeanFrequencyBodyAccJerkMean-Z
MeanFrequencyBodyAccJerkStdDev-X
MeanFrequencyBodyAccJerkStdDev-Y
MeanFrequencyBodyAccJerkStdDev-Z
MeanFrequencyBodyGyroMean-X
MeanFrequencyBodyGyroMean-Y
MeanFrequencyBodyGyroMean-Z
MeanFrequencyBodyGyroStdDev-X
MeanFrequencyBodyGyroStdDev-Y
MeanFrequencyBodyGyroStdDev-Z
MeanFrequencyBodyAccMagMean
MeanFrequencyBodyAccMagStdDev
MeanFrequencyBodyAccJerkMagMean
MeanFrequencyBodyAccJerkMagStdDev
MeanFrequencyBodyGyroMagMean
MeanFrequencyBodyGyroMagStdDev
MeanFrequencyBodyGyroJerkMagMean
MeanFrequencyBodyGyroJerkMagStdDev

