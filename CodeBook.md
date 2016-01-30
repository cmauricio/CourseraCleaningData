# CourseraCleaningData
Repository made to contain the files for the last submission of the course Getting and Cleaning Data JHU

# Assignment: Getting and Cleaning Data Course Project

# First point variables

url (string): url of the zip file 
WD (string): path of the working directory
subject_test (data frame): variable containing the data of "subject_test.txt"
x_test (data frame): variable containing the data of "X_test.txt"
y_test (data frame): variable containing the data from "y_test.txt"
subject_train (data frame): variable containing the data of "subject_train.txt"
x_train (data frame): variable containing the data of "X_train.txt"
y_train (data frame): variable containing the data of "y_train.txt"
features (vector of strings): variable containing the data of "features.txt"
mergedTest (data frame): variable containing the data of subject_test, x_test, and y_test
mergedTrain (data frame): variable containing the data of subject_train, x_train, and y_train
mergedData (data frame): variable containing the data of mergedTest and mergedTrain

# Second point

nameArray (vector of stings): name of the columns of mergedData
a (vector of integers): index of all the columns with the name mean or std on it
firstSubset (data frame): variable containing the subset of columns with the word mean or std

# Third point

labels (vector of strings): variable with the data from "activity_labels.txt"
i (integer): counter

# Fourth point

features2 (vector of strings): name of the columns of mergedData
b (vector of strings): filtered subset of features2, according with the specifications.
    This subset is the transformed into de name of the columns of the database

# Fifth point

tidyData (data frame): final database of tidy data acording to subject id and activity name

