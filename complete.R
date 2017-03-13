complete <- function(directory, id = 1:332) {
  
  all_files <- list.files(directory, full.names = TRUE)
  sub_files <- all_files[id]
  
  dat <- data.frame()
  output <- data.frame()
  
  for(i in seq_along(sub_files)) {
    dat <- data.frame(read.csv(sub_files[i]))
    
    column1 <- dat[["ID"]][1]
    
    compl_data <- (dat[complete.cases(dat),])
    column2 <- length(compl_data[[1]])
    
    col_data <- cbind.data.frame("id"=column1, "nobs"=column2)
    output <- rbind(output, col_data)
  }
  
  #print(output)
  output
}