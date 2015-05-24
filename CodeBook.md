# Variables
* subject_train, x_train, y_train, subject_test, x_test and y_test contain the data from the downloaded files.
* subject_data, x_data and y_data merge the previous datasets to further analysis.
* features contains the correct names for the x_data dataset, which are applied to the column names stored in filter, a numeric vector used to extract the desired data.
* A similar approach is taken with activity names through the activities variable.
* alldata merges x_data, y_data and subject_data in a big dataset.
* Finally, averagedata contains the relevant averages which will be later stored in a .txt file. ddply() from the plyr package is used to apply colMeans().
