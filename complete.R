complete<-function(directory,id=1:332){
  setwd(directory)
  dire=getwd()
  setwd("..")
  a<-NULL
  for (i in id){
    file=paste(dire,"/",sprintf("%03d", i),".csv", sep = "")
    data<-read.csv(file, header=TRUE)[ c('Date',	'sulfate',	'nitrate',	'ID')]
    b<-data[complete.cases(data), ]
    c<-length.POSIXlt(b)
    a<-rbind(a,data.frame(id = i, nobs = c))
  }
a
}