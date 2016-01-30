# CourseraCleaningData
Repository made to contain the files for the last submission of the course Getting and Cleaning Data JHU

# Assignment: Getting and Cleaning Data Course Project

#First point ##
Getting the data and merging the databases

1. Download the zip file
2. Unziping the file
3. Extracting the individual files and asigning them to variables

4. Getting the name for the X_measures

5. Changing the names of the colums in the different files
6. Merging the test and the train files
7. Creating the big database

# Second point #
Getting the mean and SD measurements

1. As interpreted by me, no database needed to be exported in this step, 
2. therefore this database was only created on code and for this point.

# Third point #
Using descriptive names

- Note: I did it without usin the "trick" in the guide
Although i found it more versatile, I couldn't manage to index the vector
I would be very grateful if you could explain to me how to do it


# Fourth point
Naming the dataset with appropriate names

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

Here I used the dcast funtion instead of the summarise_each function
