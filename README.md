## Getting and Cleaning Data: Course Project
Course Project for Coursera Data Science course III

CodeBook.md describes the variables, the data, and any transformations or work that was performed to clean up the data.

run_analysis.R contains all the code to perform the analyses described in the 5 steps.

The output of the 5th step is called average_data.txt, and uploaded in the course project's page.

## Explanation on run_analysis.R

The script run_analysis.R performs the 5 steps described in the course project's page.

* In step 1, all data with the same dimensions are merged using the rbind( ) function. 
* In step 2, only those columns with the mean and standard deviation measures are taken from the whole dataset. Filter stands for our interest columns. After extracting these columns, they are given the correct names, taken from features.txt.
* In step 3, as activity data is addressed with values 1 to 6, take the activity names and IDs from activity_labels.txt and they are substituted in the dataset.
* In step 4, on the whole dataset, those columns with vague column names are corrected.
* In step 5, generate a new dataset with all the average measures for each subject and activity type. The output file is called average_data.txt, and uploaded to this repository.
