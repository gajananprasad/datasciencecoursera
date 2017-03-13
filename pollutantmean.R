pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  all_files <- list.files(directory, full.names = TRUE)
  sub_files <- all_files[id]
  
  dat <- data.frame()
  output <- data.frame()
  
  for(i in seq_along(sub_files)) {
    dat <- data.frame(read.csv(sub_files[i]))
    
    compl_data <- (dat[complete.cases(dat),])
    output <- rbind(output, compl_data)
  }
  
  mean(output[[pollutant]])
}