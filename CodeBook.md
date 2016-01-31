# Getting and Cleaning Data Course Project - Code Book:

## Introduction:
This is the Code Book for the Getting and Cleaning Data Course Project. This file describes the structure of the file "tidyDataSet.txt" and its variables.

## General structure:
This file contains a data set that provides information about several measures of different features obtained with 30 subjects performing 6 different activities. tidyDataSet.txt contains the mean of the measures for every feature in each subject performing each activity.

## Performed transformations
In order to tidy the available data, it has been:
 1. Merged in one data frame
 2. Subset for avoiding variables without the word "mean" or "std" in its names.
 3. Renamed for readability.
 4. Grouped by activity and subject, and summarised using the function mean()
 5. Written into a text file.

## Code for variable names:
 * mean: mean value.
 * std: standard deviation.
 * X/Y/Z: axis for movement.

## Variables in tidyDataSet.txt
 * Activity: type of physical activity the subject was performing during the measurement.
 * Subject: ID number for the subject.
 * tBodyAcc mean X
 * tBodyAcc mean Y
 * tBodyAcc mean Z
 * tBodyAcc std X
 * tBodyAcc std Y
 * tBodyAcc std Z
 * tGravityAcc mean X
 * tGravityAcc mean Y
 * tGravityAcc mean Z
 * tGravityAcc std X
 * tGravityAcc std Y
 * tGravityAcc std Z
 * tBodyAccJerk mean X
 * tBodyAccJerk mean Y
 * tBodyAccJerk mean Z
 * tBodyAccJerk std X
 * tBodyAccJerk std Y
 * tBodyAccJerk std Z
 * tBodyGyro mean X
 * tBodyGyro mean Y
 * tBodyGyro mean Z
 * tBodyGyro std X
 * tBodyGyro std Y
 * tBodyGyro std Z
 * tBodyGyroJerk mean X
 * tBodyGyroJerk mean Y
 * tBodyGyroJerk mean Z
 * tBodyGyroJerk std X
 * tBodyGyroJerk std Y
 * tBodyGyroJerk std Z
 * tBodyAccMag mean
 * tBodyAccMag std
 * tGravityAccMag mean
 * tGravityAccMag std
 * tBodyAccJerkMag mean
 * tBodyAccJerkMag std
 * tBodyGyroMag mean
 * tBodyGyroMag std
 * tBodyGyroJerkMag mean
 * tBodyGyroJerkMag std
 * fBodyAcc mean X
 * fBodyAcc mean Y
 * fBodyAcc mean Z
 * fBodyAcc std X
 * fBodyAcc std Y
 * fBodyAcc std Z
 * fBodyAcc meanFreq X
 * fBodyAcc meanFreq Y
 * fBodyAcc meanFreq Z
 * fBodyAccJerk mean X
 * fBodyAccJerk mean Y
 * fBodyAccJerk mean Z
 * fBodyAccJerk std X
 * fBodyAccJerk std Y
 * fBodyAccJerk std Z
 * fBodyAccJerk meanFreq X
 * fBodyAccJerk meanFreq Y
 * fBodyAccJerk meanFreq Z
 * fBodyGyro mean X
 * fBodyGyro mean Y
 * fBodyGyro mean Z
 * fBodyGyro std X
 * fBodyGyro std Y
 * fBodyGyro std Z
 * fBodyGyro meanFreq X
 * fBodyGyro meanFreq Y
 * fBodyGyro meanFreq Z
 * fBodyAccMag mean
 * fBodyAccMag std
 * fBodyAccMag meanFreq
 * fBodyBodyAccJerkMag mean
 * fBodyBodyAccJerkMag std
 * fBodyBodyAccJerkMag meanFreq
 * fBodyBodyGyroMag mean
 * fBodyBodyGyroMag std
 * fBodyBodyGyroMag meanFreq
 * fBodyBodyGyroJerkMag mean
 * fBodyBodyGyroJerkMag std
 * fBodyBodyGyroJerkMag meanFreq
 * angle tBodyAccMean gravity
 * angle tBodyAccJerkMean gravityMean
 * angle tBodyGyroMean gravityMean
 * angle tBodyGyroJerkMean gravityMean
 * angle X gravityMean
 * angle Y gravityMean
 * angle Z gravityMean

## Measured activities:
 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING