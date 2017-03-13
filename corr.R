corr <- function(directory, threshold = 0) {
  all_files <- list.files(directory, full.names = TRUE)
  
  dat <- data.frame()
  sub_dat <- data.frame()
  
  for(i in seq_along(all_files)) {
    dat <- data.frame(read.csv(all_files[i]))
    compl_data <- (dat[complete.cases(dat),]) 
    comp_len <- length(compl_data$sulfate)
    if(comp_len > threshold) {
      cor_dat <- cor(compl_data$sulfate, compl_data$nitrate, use = "pairwise.complete.obs")
      sub_dat <- rbind(sub_dat, cor_dat)
    }
  }

  out <- numeric()
  #print(length(sub_dat))
  if(length(sub_dat) > 0) {
    out <- sub_dat[[1]]
  }
  
  out
}