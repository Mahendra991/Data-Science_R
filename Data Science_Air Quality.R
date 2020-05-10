airquality <- datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns

airquality[,c(1,4)]
airquality$Month

summary(airquality$Ozone)
summary(airquality)

#####################Plot#################
plot(airquality$Wind)
plot(airquality$Wind,airquality$Temp, type = 'l')
plot(airquality)
plot(airquality$Wind, type = 'l')

barplot(airquality$Wind, xlab = 'Wind Concentration', 
     ylab = 'No of Instances', main = 'Wind levels in NY city',
     col = 'blue')


hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')


#Single box plot
boxplot(airquality$Ozone)

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')



#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(5,5,5,5),  las=1, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

