# GettingAndCleaningData
Coursera Data Science Course 3

Instructions for this project were as follows:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following:
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The R script in this Repository is named run_analysis.R.

It does three main things:
1.) First it downloads a set of Samsung sensor data from the link above, and saves it to a file named "data.zip" (assuming that file does not already exist). It then unzips that data into your current working directory. 

2.) It then merges several data sets into one.  First, it combines the training and test data, back into one complete set of records. It then adds back in the users that each record came from, and the activity type of each record.

3.) Next, we change the variable names to make them more human readable, and then create a new "tidy" data set consisting of the mean of each variable, grouped by user and activity. 

4.)Finally, we write this new "tidy" data set to the current working directory as a .txt file (again, assuming it does not already exist)

More information about the variables in the original data set and the variables in the tidy data set can be found in the codebook.md file included in this repository.

