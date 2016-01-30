# Getting and Cleaning Data (Course Project)

## Introduction and content:
This repo contains the final Course Project for the course "Getting and Cleaning Data". Here you can find:
1. run_analysis.R: A script which performs the required steps for getting, cleaning and grouping the supplied data for this project.
2. CodeBook.md: A description of every variable and transformation performed to clean the data.

## Description of run_analysis.R
The script run_analysis.R has been exhaustively documented, so every step can be followed by reading the comments in the file. Here are the actions the script performs and some complementary information:
0. Loading libraries, downloading data file and unzipping it.
1. Loading the data. Creating 6 data frames (3 for training data and 3 for testing data, each one with x_...txt -measured values-, y_...txt -activity coded by number-, and subject_...txt -subject that performed the activities-), and some other with complementary data (name of activities, name of measured features). Renaming the variables. Merging the data in one dataframe.
2. Extracting the measures which contains the word "mean" or "std", so a new data frame with the values of the desired variables is created.
3. Renaming the factor values for activities in the data set (by using the names in activity_label.txt)
4. Shaping the measured features names for improving readability. Using the gather() function for merging all the features and its values into two columns. Now, the data frame is tidier, more readable and easier to plot, as long as the different measured features are grouped in a column which can be used for separating facets when using ggplot2, for example.
5. Creating a new, independent, tidy data set with the average of each variable for each activity and each subject. This data frame shows the means of the measures for different feature, for each subject, performing each activity. The group_by() function groups the data by Activity, Subject and Feature. This last argument is needed as long as gather() function was used in step 4 for tidying the data.