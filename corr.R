corr<-function(directory,threshold=0){
  setwd(directory)
  dire=getwd()
  setwd("..")
  l=length(threshold)
  for (i in id){
    file=paste(dire,"/",sprintf("%03d", i),".csv", sep = "")
    data<-read.csv(file, header=TRUE)[ c('Date',	'sulfate',	'nitrate',	'ID')]
    x<-b["sulfate"]
    y<-b["nitrate"]
    a<-cor(x,y)
  }
}