library(tidyverse)
data <- read_tsv("https://raw.githubusercontent.com/ddojo/ddojo.github.io/refs/heads/main/sessions/33_PoS_uncertain/fig3.tsv")
irr <- rep(data$Bins, data$Irregular)
hist(irr)

data |>
  pivot_longer(Uniform:Irregular) |>
  ggplot(aes(x=Bins, y=value, fill=name)) +
  geom_col() +
  facet_wrap(~ name)
?pivot_longer

mean(data$Irregular)

samplemeans<-data.frame()
for( i in 1:10000){
  sam<-sample(irr,5,replace=F)
  x1<-mean(sam)
  samplemeans<-rbind(samplemeans,x1)
}
samplemeans
hist(samplemeans$X21.6)
sd(samplemeans$X21.6)
mean(samplemeans$X21.6)
abline(v=mean(samplemeans$X21.6),col="red")
abline(v=(mean))


library(ggplot2)
p1<-ggplot(data=samplemeans,aes(x=X13))+
  geom_histogram()+
plot(p1)

head(data)
dim(data)

uniform<-rep(data$Bins,data$Uniform)
hist(uniform,breaks = 30)
uniform<-uniform[-which(uniform==0)]
Normal<-rep(data$Bins,data$Normal)
hist(Normal)
Skewed<-rep(data$Bins,data$Skewed)
hist(Skewed)
hist(irr)

alldata<-cbind(uniform,Normal,Skewed,irr)



bigdf1<-data.frame()
bigdf2<-data.frame()
bigdf3<-data.frame()
bigdf4<-data.frame()


samplingfig<-function(data,samplesize){
df<-data.frame()  
  for(i in 1:10000){
    sam<-sample(data,samplesize,replace=F)
    x1<-mean(sam)
    df<-rbind(df,x1)
    names(df)<-"mean"
  }
return(df)
}

uniform3<-samplingfig(uniform,3)
hist(uniform3$mean)
uniform5<-samplingfig(uniform,5)
hist(uniform5$mean)
uniform10<-samplingfig(uniform,10)
hist(uniform10$mean)
uniform20<-samplingfig(uniform,20)
hist(uniform20$mean)
#

irr3<-samplingfig(irr,3)
irr5<-samplingfig(irr,5)
irr10<-samplingfig(irr,10)
irr20<-samplingfig(irr,20)


hist(irr3$mean)

p1<-ggplot(irr3,aes(x=mean))+
  geom_histogram(color="magenta",fill="green")+
  xlim(c(0,32))+
  theme_classic()+
  ggtitle("Sample means n3")+
  geom_vline(xintercept = mean(irr3$mean),color="red")+
  geom_vline(xintercept = (mean(irr3$mean)+sd(irr3$mean)),color="blue")+
  geom_vline(xintercept = (mean(irr3$mean)-sd(irr3$mean)),color="blue")
p2<-ggplot(irr5,aes(x=mean))+
  geom_histogram(color="brown",fill="black")+
  xlim(c(0,32))+
  theme_classic()+
  ggtitle("Sample means n5")+
  geom_vline(xintercept = mean(irr5$mean),color="red")+
  geom_vline(xintercept = (mean(irr5$mean)+sd(irr5$mean)),color="blue")+
  geom_vline(xintercept = (mean(irr5$mean)-sd(irr5$mean)),color="blue")
p3<-ggplot(irr10,aes(x=mean))+
  geom_histogram(color="blue",fill="green")+
  xlim(c(0,32))+
  theme_classic()+
  ggtitle("Sample means n10")+
  geom_vline(xintercept = mean(irr10$mean),color="red")+
  geom_vline(xintercept = (mean(irr10$mean)+sd(irr10$mean)),color="blue")+
  geom_vline(xintercept = (mean(irr10$mean)-sd(irr10$mean)),color="blue")
p4<-ggplot(irr20,aes(x=mean))+
  geom_histogram()+
  xlim(c(0,32))+
  theme_classic()+
  ggtitle("Sample means n20")+
  geom_vline(xintercept = mean(irr20$mean),color="red")+
  geom_vline(xintercept = (mean(irr20$mean)+sd(irr20$mean)),color="blue")+
  geom_vline(xintercept = (mean(irr20$mean)-sd(irr20$mean)),color="blue")

irr2<-data.frame(value=irr)

p0<-ggplot(irr2,aes(x=value))+
geom_histogram(color="lightblue",fill="yellow")+
  xlim(c(0,32))+
  theme_classic()+
  ggtitle("irregular distribution")+
  geom_vline(xintercept = mean(irr2$value),color="red")+
  geom_vline(xintercept = (mean(irr2$value)+sd(irr2$value)),color="blue")+
  geom_vline(xintercept = (mean(irr2$value)-sd(irr2$value)),color="blue")
p0/p1/p2/p3/p4
