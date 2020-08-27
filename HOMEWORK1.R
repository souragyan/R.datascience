e_quakes<-datasets::quakes
e_quakes

# top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

#data slicing
e_quakes[,c(1,2)]

#excluding 3th columns
e_quakes[,-3]

summary(e_quakes)
#for long column
e_quakes$long
summary(e_quakes$long)

#plot command
plot(e_quakes$long)
plot(e_quakes$long,e_quakes$depth,type="p")
plot(e_quakes)


plot(e_quakes$depth,ylab='depth',xlab='no of instance',main='depth of the area',col='red')

#horizontal barplot
barplot(e_quakes$mag,main='magnitude of places',ylab='magnitude',col='blue',
        horiz=F,axes=T)
#histogrm
hist(e_quakes$stations,main='measurement',xlab='stations',col='blue')

#single box & multiple boxplot
boxplot(e_quakes$lat,main='single boxplot')
boxplot(e_quakes,main='multiple boxplot')

par(mfrow=c(2,2),mar=c(2,5,2,1),las=0,bty='o')

plot(e_quakes)
hist(e_quakes$stations,main='measurement',xlab='stations',col='red')
plot(e_quakes$mag,type='l')
hist(e_quakes$stations)


#moments for skewness & kurtosis
library(moments)
skewness(e_quakes,na.rm=T)
skewness(e_quakes)
kurtosis(e_quakes)
kurtosis(e_quakes,na.rm=T)
var(e_quakes)
sd(e_quakes,na.rm=T)
