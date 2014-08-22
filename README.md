
run_analytics.R Process
=======================

##Steps##

1. Define the directory where the dataset is located.  The dataset is downloaded and placed in the current folder from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2. Load the data by calling load.data(dir)
    * subject_train contains the ids
    * y_train contains the activity labels
    * x_train contains the data
  * Reads all of the input files.
  * Combines the test and train datasets.
  * Retains only the mean and standard deviation data points.
  * Data is returned in a list containing the features, activity labels, and the tidy dataset.
3. Tidy the data by improving the labeling by calling label.data(dir)
  * Use gsub to search and replace with improved, full column names.
  * Data is returned in a list containing the features, activity labels, and the tidy dataset.
4. Calculate the mean of the values for each subject and activity by calling gen.datasets(dir)
  * Write out both tidy data sets.
    * tidy.txt is the first tidy set
    * tidy.average.txt is the tidy set with averages per subject and activity



GaCDCourseProject
=================

##Getting and Cleaning Data Course Project##

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 You should create one R script called run_analysis.R that does the following. 

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Good luck!