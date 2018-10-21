pollutantmean<-function(directory,pollutant,id=1:332){
  setwd(directory)
  dire=getwd()
  setwd("..")
  st=0
  lt=0
  for (i in id){
    file=paste(dire,"/",sprintf("%03d", i),".csv", sep = "")
    data<-read.csv(file, header=TRUE)[ c('Date',	'sulfate',	'nitrate',	'ID')]
    d<-data[pollutant]
    d<-d[complete.cases(d), ]
    s<-sum(d)
    l<-length(d)
    st<-st+s
    lt<-lt+l
    }
  st/lt
}