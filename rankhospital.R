rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character", na.strings = "Not Available")
  
  ## Check that state is valid
  if (!(state %in% outcomeData$State)) {
    stop(state, " : Invalid State")
  }
  
  outcomePrefix <- "Hospital.30.Day.Death..Mortality..Rates.from."
  outcomeCols <- colnames(outcomeData)
  Outcome_names <- outcomeCols[grep(outcomePrefix, outcomeCols)]
  
  ## Check that outcome is valid
  outcomeName <- paste(outcomePrefix,sub(' ', '.', tools::toTitleCase(outcome)), sep = '')
  
  if (!(outcomeName %in% Outcome_names)) {
    stop(outcome, " : Invalid outcome")
  }
  
  # Get data according to required state
  stateOutcome <- outcomeData[which(outcomeData$State == state),]
  stateOutcomeSub <- cbind.data.frame(stateOutcome$Hospital.Name, as.numeric(stateOutcome[[outcomeName]]))
  colnames(stateOutcomeSub) <- c("Hospital.Name", "Outcome.Name")
  
  # Remove NAs and sort it with hospital name to resolve ties
  rankedHospitals <- plyr::arrange(stateOutcomeSub[complete.cases(stateOutcomeSub),], Outcome.Name, Hospital.Name)
  
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  if (num == "best") { num <- 1 }
  if (num == "worst") { num <- length(rankedHospitals$Hospital.Name) }
    
  rankedHospital <- as.vector(rankedHospitals$Hospital.Name[num])
  return(rankedHospital)
}