

# Draft 01
# preparing for internal plot of sunspot


# load data from Beldium server

url <- "http://sidc.be/silso/DATA/SN_y_tot_V2.0.txt"
sunspot.year <- read.csv(url, sep="", dec=".", header=F)
sunspot.year$V1 <- trunc(sunspot.year$V1, prec = 0)
sunspot.year <- sunspot.year[-c(3:4)]
year.min <- min(sunspot.year$V1)
year.max <- max(sunspot.year$V1)
sunspot.year <- sunspot.year[-1]
#sunspot.year$V1 <- paste0(as.character(sunspot.year$V1), "/06/01")  
#sunspot.year <- ts(sunspot.year$V2, as.Date(sunspot.year$V1, format='%Y/%m/%d'))      
sunspot.year <- ts(sunspot.year,start=year.min,end=year.max,frequency=1)
main.data <- sunspot.year

sunspot.arima <- arima(
  main.data, 
  order = c(
    10, 
    3, 
    2))

sunspot.forecast <- predict(sunspot.arima, n.ahead = 40)
plot(main.data,xlim=c(1850, 2030),col="grey",lwd=1.5, 
     ylab="Sunspots Number (SSN)", xlab="Years")
lines(sunspot.forecast$pred, col="green", lwd=1.5)

saveRDS(main.data, file="history.data.Belgium.rds")
saveRDS(sunspot.forecast, file="predicted.dat.Belgium.rds")



