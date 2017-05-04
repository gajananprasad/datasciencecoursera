# Download and unzip data file
download.file(
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
  "projectfiles.zip"
)
unzip("projectfiles.zip")

source("read_analysis_data.R")
library("dplyr")

# Merges the training and the test sets to create one data set
sensorData <- rbind(testingData, trainingData)
activityData <- rbind(labelTestingData, labelTrainingData)
subjectData <- rbind(subjectTestingData, subjectTrainingData)

# Extracts only the measurements on the mean and standard deviation for each measurement.
finalSensorData <- sensorData[grep("mean|std", features$V2)]

# Uses descriptive activity names to name the activities in the data set
for (i in seq_along(activityLabels$V1)) {
  activityData$V1 <-
    sub(activityLabels$V1[i], activityLabels$V2[i], activityData$V1)
}

# Bind activity and subject columns
finalSensorData <-
  cbind.data.frame(activityName = activityData$V1,
        participantId = subjectData$V1,
        finalSensorData, stringsAsFactors=FALSE)

# Appropriately labels the data set with descriptive variable names
colnames(finalSensorData) <-
  c(
    "activityName",
    "participantId",
    "avgTimeBodyAccMean-X",
    "avgTimeBodyAccMean-Y",
    "avgTimeBodyAccMean-Z",
    "avgTimeBodyAccStdDev-X",
    "avgTimeBodyAccStdDev-Y",
    "avgTimeBodyAccStdDev-Z",
    "avgTimeGravityAccMean-X",
    "avgTimeGravityAccMean-Y",
    "avgTimeGravityAccMean-Z",
    "avgTimeGravityAccStdDev-X",
    "avgTimeGravityAccStdDev-Y",
    "avgTimeGravityAccStdDev-Z",
    "avgTimeBodyAccJerkMean-X",
    "avgTimeBodyAccJerkMean-Y",
    "avgTimeBodyAccJerkMean-Z",
    "avgTimeBodyAccJerkStdDev-X",
    "avgTimeBodyAccJerkStdDev-Y",
    "avgTimeBodyAccJerkStdDev-Z",
    "avgTimeBodyGyroMean-X",
    "avgTimeBodyGyroMean-Y",
    "avgTimeBodyGyroMean-Z",
    "avgTimeBodyGyroStd-X",
    "avgTimeBodyGyroStd-Y",
    "avgTimeBodyGyroStd-Z",
    "avgTimeBodyGyroJerkMean-X",
    "avgTimeBodyGyroJerkMean-Y",
    "avgTimeBodyGyroJerkMean-Z",
    "avgTimeBodyGyroJerkStd-X",
    "avgTimeBodyGyroJerkStd-Y",
    "avgTimeBodyGyroJerkStd-Z",
    "avgTimeBodyAccMagMean",
    "avgTimeBodyAccMagStd",
    "avgTGravityAccMagMean",
    "avgTGravityAccMagStd",
    "avgTimeBodyAccJerkMagMean",
    "avgTimeBodyAccJerkMagStd",
    "avgTimeBodyGyroMagMean",
    "avgTimeBodyGyroMagStd",
    "avgTimeBodyGyroJerkMagMean",
    "avgTimeBodyGyroJerkMagStd",
    "avgFreqBodyAccMean-X",
    "avgFreqBodyAccMean-Y",
    "avgFreqBodyAccMean-Z",
    "avgFreqBodyAccStd-X",
    "avgFreqBodyAccStd-Y",
    "avgFreqBodyAccStd-Z",
    "avgFreqBodyAccMeanFreq-X",
    "avgFreqBodyAccMeanFreq-Y",
    "avgFreqBodyAccMeanFreq-Z",
    "avgFreqBodyAccJerkMean-X",
    "avgFreqBodyAccJerkMean-Y",
    "avgFreqBodyAccJerkMean-Z",
    "avgFreqBodyAccJerkStd-X",
    "avgFreqBodyAccJerkStd-Y",
    "avgFreqBodyAccJerkStd-Z",
    "avgFreqBodyAccJerkMeanFreq-X",
    "avgFreqBodyAccJerkMeanFreq-Y",
    "avgFreqBodyAccJerkMeanFreq-Z",
    "avgFreqBodyGyroMean-X",
    "avgFreqBodyGyroMean-Y",
    "avgFreqBodyGyroMean-Z",
    "avgFreqBodyGyroStd-X",
    "avgFreqBodyGyroStd-Y",
    "avgFreqBodyGyroStd-Z",
    "avgFreqBodyGyroMeanFreq-X",
    "avgFreqBodyGyroMeanFreq-Y",
    "avgFreqBodyGyroMeanFreq-Z",
    "avgFreqBodyAccMagMean",
    "avgFreqBodyAccMagStd",
    "avgFreqBodyAccMagMeanFreq",
    "avgFreqBodyBodyAccJerkMagMean",
    "avgFreqBodyBodyAccJerkMagStd",
    "avgFreqBodyBodyAccJerkMag-meanFreq",
    "avgFreqBodyBodyGyroMagMean",
    "avgFreqBodyBodyGyroMag-std()",
    "avgFreqBodyBodyGyroMagMeanFreq",
    "avgFreqBodyBodyGyroJerkMagMean",
    "avgFreqBodyBodyGyroJerkMagStd",
    "avgFreqBodyBodyGyroJerkMagMeanFreq"
  )

# creates a second, independent tidy data set with the average of each variable for each activity and each subject.
finalSensorData %>%
  group_by(activityName, participantId) %>%
  summarise_each(funs = funs(mean)) %>%
  write.table("tidySensorData.txt", row.name = FALSE)
