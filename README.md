## Intruduction
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project: 

[Data.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Used files in data set
* features.txt
* activity_labels.txt
* train/X_train.txt
* train/y_train.txt
* test/X_test.txt
* test/y_test.txt
* train/subject_train.txt
* test/subject_test.txt

## Analysis process
1. Set working directory and load required library
2. Read all the text file into data frame
	1. train data, train subject, train activity label
	2. test data, test subject, test activity label
	3. feature names
	4. activity names
3. Merge data and name data
	3. Use feature names describe train and test data
	4. Merge train/ test activity name with labels
	5. Merge train/ test data with their activity data frame
	6. Merge train and test data
	7. Save it into "data"
7. Calculate and summarize the data
	7. Calculate mean and standard deviation by column
	8. Save it into "summary"
	8. Calculate the mean by subject and activity
	4. Save it into "new.data"
9. Write data
	10. Write "data" to "TidyData.txt"
	11. Write "new.data" to "AveBySubjectActivity.txt"
	12. Write "summary" to "Summary.txt"


## Variables
* **name.features**: data frame for "features.txt" (integer, character)
* **name.activity**: data frame for "activity_labels.txt" (character)
* **train.act**: data frame for train/X_train.txt (integer)
* **test.act**: data frame for train/y_train.txt (integer)
* **train**: data frame for test/X_test.txt (integer)
* **test**: data frame for test/y_test.txt (integer)
* **train.subject**: data frame for train/subject_train.txt (integer)
* **test.subject**: data frame for test/subject_test.txt (integer)
* **data**: data frame for merged data
* **sub.data**: data frame subset from "data", which exlude the column "ActivityLabel"
* **mean.all**: means for each measurement
* **sd.all**: standard diviation for each measurement
* **summary**: combine the "mean.all" and "sd.all"
* **new.data**: data frame of the mean for each measurement by subject and activity


## The project includes the following files:
* README.md
* run_analysis.R
* CodeBook.md
* MyData.zip
	* TidyData.txt
	* AveBySubjectActivity.txt
	* Summary.txt