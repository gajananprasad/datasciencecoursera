rankall <- function(outcome, num = "best") {
  ## Read outcome data
  outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character", na.strings = "Not Available")
  
  # Prefix outcome as per data
  outcomePrefix <- "Hospital.30.Day.Death..Mortality..Rates.from."
  outcomeCols <- colnames(outcomeData)
  Outcome_names <- outcomeCols[grep(outcomePrefix, outcomeCols)]
  
  ## Check that outcome is valid
  outcomeName <- paste(outcomePrefix,sub(' ', '.', tools::toTitleCase(outcome)), sep = '')
  
  if (!(outcomeName %in% Outcome_names)) {
    stop(outcome, " : Invalid outcome")
  }
  
  #print(dim(outcomeData))

  ## For each state, find the hospital of the given rank
  outcomeSub <- subset(outcomeData, !is.na(get(outcomeName)), 
                       select = c(Hospital.Name, State, as.numeric(get(outcomeName))))
  #print(dim(outcomeSub))
  #print(tail(outcomeSub))
  
  outcomeSort <- plyr::arrange(outcomeSub , State, as.numeric(get(outcomeName)), Hospital.Name)
  #print(tail(outcomeSort))

  if (num == "best") { num <- 1 }
  
  
  stateRankData <- aggregate(outcomeSort, by=list(state=outcomeSort$State), 
                         FUN= function(x) {
                           if (num == "worst") { num <- length(x) }
                           x[num]})
  #print(stateRankData)
  rankedHospData <- subset(stateRankData, 
                           TRUE, select=c(Hospital.Name, state))
  rownames(rankedHospData) <- rankedHospData$state
  colnames(rankedHospData) <- c("hospital", "state")

  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  return(rankedHospData)
}