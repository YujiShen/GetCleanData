## TidyData.txt
This file combine the train data and test data, name each measurement with its name, and add corresponding subject, activity labels, activity names in column 562 - 564. I named them with "subject", "ActivityLabels", "ActivityNames".

* **subject**: integer, who performed the activity
* **ActivityLabels**: integer, activity labels
* **ActivityNames**: character, activity names

The detailed explanation for column 1 - 561 see the file "features.info.txt" in the dataset.

The complete list of variables of each feature vector is available in 'features.txt'.

## AveBySubjectActivity.txt
This file is a processed data for "TidyData.txt".

It is the mean of each measurement by subject and activity.

Column 1 and 1 is:

* **subject**: integer, who performed the activity
* **ActivityNames**: character, activity names



The detailed explanation for column 3 - 563 see the file "features.info.txt" in the dataset.

The complete list of variables of each feature vector is available in 'features.txt'.

## Summary.txt
This file is mean and standard deviation for each features (column 1 - 563) in "TidyData.txt". (exluding subject and activity)

* **mean** (row 1): numeric, the mean for each features
* **sd** (row 2): numeric, the standard deviation for each features.

The detailed explanation for column 1 - 561 see the file "features.info.txt" in the dataset.

The complete list of variables of each feature vector is available in 'features.txt'.