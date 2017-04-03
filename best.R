best <- function(state, outcome) {
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
  
  # Get data according to required state and sort it with hospital name to resolve ties
  stateOutcome <- plyr::arrange(outcomeData[which(outcomeData$State == state),], Hospital.Name)
  
  # Remove NAs
  stateOutcome <- stateOutcome[!is.na(stateOutcome[[outcomeName]]), ]

  # Get the index of best hospital for required ourcome
  bestHospIndex <- (match(min(as.numeric(stateOutcome[[outcomeName]], na.rm = TRUE)), as.numeric(stateOutcome[[outcomeName]])))
  
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  bestHospital <- stateOutcome$Hospital.Name[bestHospIndex]
  return(bestHospital)
}