<font color='red'>**UPDATE AFTER SUBMISSION**</font>

After I reviewed other students' code, I found I misunderstood the second step in the assignment:

* Extracts only the measurements on the mean and standard deviation for each measurement. 

Rather than **Extract**, I **Calculate** mean and standard deviation for **every measurement**. "Summary.txt" is the output of my misunderstanding. New output is "MeanSd.txt" under this commit.

So I update this assignment. A little bit in run_analysis.R, and substitute the text file (on Github, not Coursera).

<font color='red'>You should review the commit with SHA: 2f69a0c5e5f01410f4827d741be52229a22536e0.</font>

Sorry to bring you any inconvenience.

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
7. Extract the mean and standard deviation and save it to "MeanSd"
7. Calculate and summarize the data
	8. Calculate the mean by subject and activity
	4. Save it into "new.data"
9. Write data
	10. Write "data" to "TidyData.txt"
	11. Write "new.data" to "AveBySubjectActivity.txt"
	12. Write "MeanSd" to "MeanSd.txt"


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
* **MeanSd**: means and standard diviation for each measurement
* **new.data**: data frame of the mean for each measurement by subject and activity


## The project includes the following files:
* README.md
* run_analysis.R
* CodeBook.md
* MeanSd.txt