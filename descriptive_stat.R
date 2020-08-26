airquality<-datasets::airquality

# top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

#data slicing
airquality[,c(1,2)]

#excluding 6th columns
airquality[,-6]

summary(airquality)
#for wind column
airquality$Wind
summary(airquality$Wind)

#plot command
plot(airquality$Wind)
plot(airquality$Wind,airquality$temp,type="p")
plot(airquality)

#points and lines
#p:points , l:lines ,b:both
plot(airquality$Ozone,ylab='ozone concentration',xlab='no of instance',main='ozone level in ny',col='blue')

#horizontal barplot
barplot(airquality$Ozone,main='ozone level in ny',ylab='ozone level',col='blue',
     horiz=F,axes=T)


#histogrm
hist(airquality$Temp,main='solar radiation value in air',xlab='solar rad',col='blue')

#single box & multiple boxplot
boxplot(airquality$Temp,main='single boxplot')
boxplot(airquality,main='multiple boxplot')

#for plot window division
# mfrow=no of rows and columns
#mar=marigin of the grid
#las=1 for horizon,0 for vertical
#bty= border around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty='o')
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type='l')
plot(airquality$Ozone,type='l')
plot(airquality$Ozone,type='l')
barplot(airquality$Ozone,main='ozone contaner',xlab='zone lvel',col='green',horiz=F)
hist(airquality$Solar.R)


boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='multiple boxplot')
