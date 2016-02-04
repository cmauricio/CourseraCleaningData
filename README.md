# CourseraCleaningData
Repository made to contain the files for the last submission of the course Getting and Cleaning Data JHU

By Carlos Mauricio Castaño Díaz

# Assignment: Getting and Cleaning Data Course Project

# Contents of the handout
 - cleaningData.R : R file containing the code used to process and clean the data
 - CodeBook.md : File describing the variables analysed in the database.

The code is divided into five points, each of the points describing a sub task to carry with the code. 

Each point is presented separately, describing the variables and the process.

The R code is commented following this same structure, so the code reader can identify each piece independently. 

#First point ##
Getting the data and merging the databases

*Variables
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

*Procedure
1. Download the zip file
2. Unziping the file
3. Extracting the individual files and asigning them to variables
4. Getting the name for the X_measures
5. Changing the names of the colums in the different files
6. Merging the test and the train files
7. Creating the big database by merging the two previous merges

# Second point #
Getting the mean and SD measurements

*Variables
nameArray (vector of stings): name of the columns of mergedData
a (vector of integers): index of all the columns with the name mean or std on it
firstSubset (data frame): variable containing the subset of columns with the word mean or std

# Third point #
Using descriptive names

*Variables
labels (vector of strings): variable with the data from "activity_labels.txt"
i (integer): counter

*Note: I did it without usin the "trick" in the guide
Although i found it more versatile, I couldn't manage to index the vector
I would be very grateful if you could explain to me how to do it


# Fourth point
Naming the dataset with appropriate names

*Variables
features2 (vector of strings): name of the columns of mergedData
b (vector of strings): filtered subset of features2, according with the specifications. This subset is the transformed into de name of the columns of the database

*Procedure
1. This part makes use of common expresions in order to evaluate an 
2. replace values 
3. get rid of the parentheses
4. get rid of the dash
5. replace the inicial f with "freq"
6. replace the initial t with "time"
7. get rid of the commas
8. get the names in lower case
9. replace the column names in the database


# Fifth point
Average of each variable for each activity and each subject

*Variables
tidyData (data frame): final database of tidy data acording to the submission requirements
