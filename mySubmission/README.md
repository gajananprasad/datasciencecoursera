---
title: "README.md"
author: "Gajananprasad Arankalle"
date: "May 4, 2017"
output: html_document
---

## R Script to prepare data from Human Activity Recognition Using Smartphones Dataset - V 1.0

The goal of this R script is to prepare tidy data that can be used for later analysis from given smart phones dataset. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The script includes the following files:
=========================================

- 'run-analysis.R'
- 'run-analysis_data.R'

The script uses following packages:
=========================================

- 'dplyr'

=========================================

The 'run-analysis.R' is the main script. It first downloads the zip file from above path and unzip in local work directory.

The 'run-analysis_data.R' reads the data from appropriate training and testing data files to corresponding variables to be used further. It reads training and testing observations data, labels and participant (subject) information. It also reads activity labels and features in R tables.

The script then merges training and test data to create combined data sets for sensor observations data, labels data and participants data.It then extracts only the measurements on the mean and standard deviation for each measurement based on features table. It then Uses descriptive activity names from activity labels file to replace the numeric activities in the activity labels data set.

To create the final one data set, it binds the activity labels data and participants data as columns to sensor observations data. The data set variables are then appropriately labeled with descriptive variable names.

Finally it creates a second, independent tidy data set with the average of each variable for each activity and each participant. The data is written to file "tidySensorData.txt" as an output.


Notes: 
======
- The variable names can further be divided to make data more tidier, but current script restricted to current level
