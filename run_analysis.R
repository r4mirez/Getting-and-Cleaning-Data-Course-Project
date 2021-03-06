# Library loading and unzipping data (zip data file must be in the working directory).
	library(plyr)
	library(dplyr)
	library(tidyr)
	library(stringr)

	unzip("getdata_projectfiles_UCI HAR Dataset.zip")

# STEPS:
# ======


# 1.- Merges the training and the test sets to create one data set.

	# Loading data
	testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
	testX <- read.table("UCI HAR Dataset/test/x_test.txt")
	testY <- read.table("UCI HAR Dataset/test/y_test.txt")

	trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
	trainX <- read.table("UCI HAR Dataset/train/x_train.txt")
	trainY <- read.table("UCI HAR Dataset/train/y_train.txt")

	features <- read.table("UCI HAR Dataset/features.txt")
	activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

	# Joining test and train data sets for each table
	X <- rbind(testX, trainX)
	Y <- rbind(testY, trainY)
	subj <- rbind(trainSubject, testSubject)

	# Setting col names for the different tables
	names(Y) <- "Activity"
	Y$Activity <- as.character(Y$Activity)
	Y$Activity <- as.factor(Y$Activity)
	names(X) <- features[,2]	# using the features.txt info for measurement names
	names(X) <- make.names(names(X), unique = TRUE, allow_ = TRUE)	# Making valid names 
	names(subj) <- "Subject"

	# Creating a data frame with all the data we collected from the different files
	dfAll <- cbind(subj, Y, X)


# 2.- Extracts only the measurements on the mean and standard deviation for each measurement.

	# Selecting only the variables with the words "mean" or "std" in its name.
	indexMeanStd <- grep("mean|std", names(dfAll), ignore.case = TRUE)

	# Creating a data frame with Subject, Activity and the selected variables.
	dfSel <- select(dfAll, Subject, Activity, indexMeanStd)


# 3.- Uses descriptive activity names to name the activities in the data set.

	# Using the labels in activity_label.txt for renaming Activity levels (not numbers any more).
	levels(dfSel$Activity) <- activityLabels[[2]]


# 4.- Appropriately labels the data set with descriptive variable names. 
	
	# Shaping feature names so they have no points or spaces.
	names(dfSel) <- gsub('\\.', " ", names(dfSel))
	names(dfSel) <- str_trim(names(dfSel))
	names(dfSel) <- gsub(" +", "_", names(dfSel))

	# Now, the data set is tidy. It has one measured variable in each column and
	# one observation in each row. The variable names are readable and easy to write.


# 5.- From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
	
	summDf <- dfSel %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
	# This data frame shows the means of the measures for each subject
	# performing each activity. The group_by() function groups the
	# data by Activity and Subject and Feature. summarise_each() summarise the
	# grouped data using the mean() function for each measured variable.

	# Writing the output file:
	write.table(summDf, "tidyDataSet.txt", row.names = FALSE)