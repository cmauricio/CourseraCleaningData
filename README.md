# CourseraCleaningData
Repository made to contain the files for the last submission of the course Getting and Cleaning Data JHU

#####
# Assignment: Getting and Cleaning Data Course Project
#####


##### First point #####
##### Getting the data and merging the databases

# Download the zip file
# Unziping the file
# Extracting the individual files and asigning them to variables

# Getting the name for the X_measures

# Changing the names of the colums in the different files
# Merging the test and the train files
#Creating the big database

##### Second point #####
##### Getting the mean and SD measurements

# As interpreted by me, no database needed to be exported in this step, 
# therefore this database was only created on code and for this point.

##### Third point #####
##### Using descriptive names

#Note: I did it without usin the "trick" in the guide
#Although i found it more versatile, I couldn't manage to index the vector
#I would be very grateful if you could explain to me how to do it


##### Fourth point #####
##### Naming the dataset with appropriate names

# This part makes use of common expresions in order to evaluate an 
# replace values 

# get rid of the parentheses
# get rid of the dash
# replace the inicial f with "freq"
# replace the initial t with "time"
# get rid of the commas
# get the names in lower case

# replace the column names in the database


##### Fifth point #####
##### Average of each variable for each activity and each subject

# Here I used the dcast funtion instead of the summarise_each function
