# Getting and Cleaning Data (Course Project)

## Introduction and content:
This repo contains the final Course Project for the course "Getting and Cleaning Data". Here you can find:
 1. run_analysis.R: A script which performs the required steps for getting, cleaning and grouping the supplied data for this project.
 2. CodeBook.md: A description of each variable and transformation performed to clean the data.

## Description of run_analysis.R
The script run_analysis.R has been exhaustively documented, so every step can be followed by reading the comments in the file. Here are the steps the script performs and some complementary information:
 * Loading libraries
 * Unzipping the data file (it must be in the working directoy, as requested).
 * Loading the data.
 * Creating 6 data frames (3 for training data and 3 for testing data, each one with x_...txt -measured values-, y_...txt -activity coded by number-, and subject_...txt -subject that performed the activities-), and some other with complementary data (name of activities, name of measured features).
 * Making valid variable names.
 * Merging the data in one dataframe.
 * Extracting the varibles which contains the word "mean" or "std", so a new data frame with the values of the desired variables is created.
 * Renaming the factor values for activities in the data set (by using the names in activity_label.txt).
 * Shaping the measured features names for improving readability.
 * Creating a new, independent, tidy data set with the mean of each measured variable for each activity and each subject.
 * Writing this data set into a text file (tidyDataSet.txt).
This way, the output is a tidy data set. Each measured variable is located in a different column, identified by a readable and easy to write name. Each observation is located in a different row.