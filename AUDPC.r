setwd("~/Documents/Projects/01fusariumpathogenomics/data/2017-07-12")
library("agricolae")
sev <- read.csv("Inoculation Notes-AUDPC.csv")
#str(sev)
sev$DS14 <- as.numeric(as.character(sev$DS14))
sev[1,7]

#practice from APS Rcode - AUDPC+GRAPHS
#Set up disease severity percent measurements
#PART OF CODE YOU CHANGE
ds0<-.3
ds1<-.3
ds2<-.5
#Put these values into a vector without making any changes
disease.severity<-c(ds0,ds1,ds2)

#Time points at which disease severity measurements are made, 
t0<-14
t1<-21
t2<-28

#Put time period into a vector
time.period<-c(t0,t1,t2)

## Apply function to dataframe
audpc(disease.severity,time.period, type = "relative")
#audpc(as.numeric(sev[1,7:9]), time.period)
x<-(1:672)
for (val in x) {
  sev$AUDPC[val]<-print(audpc(as.numeric(sev[val,7:9]), time.period))
}
for (val in x) {
  sev$AUDPCr[val]<-print(audpc(as.numeric(sev[val,7:9]), time.period, type = "relative"))
}
write.csv(sev, file = "severity.csv")