# Read features and activity labels from respective files
features <- read.delim("UCI HAR Dataset/features.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

# Read respective test data files
testingData <- read.table("UCI HAR Dataset/test/x_test.txt", stringsAsFactors = FALSE)
labelTestingData <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
subjectTestingData <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)

# Read respective train data files
trainingData <- read.table("UCI HAR Dataset/train/x_train.txt", stringsAsFactors = FALSE)
labelTrainingData <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
subjectTrainingData <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)