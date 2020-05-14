e_quakes<-datasets::quakes
e_quakes


####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns

e_quakes[,c(1,2)]
df<-e_quakes[,-5]
df[,-5]
summary(e_quakes[2,1])
summary(e_quakes[1,c(1,3)])
e_quakes$depth
e_quakes$long
e_quakes$lat


###########Summary of the data#########

summary(e_quakes$lat)
summary(e_quakes)
summary(e_quakes$long)
summary(e_quakes$depth)
summary(e_quakes$mag)
summary(e_quakes$stations)

#####################

plot(e_quakes$lat)

plot(e_quakes$depth)

plot(e_quakes$mag)

plot(e_quakes$stations)

plot(e_quakes$long,e_quakes$lat,type="p")

plot(e_quakes)

# points and lines 

plot(e_quakes$lat, type= "b") # p: points, l: lines,b: both

plot(e_quakes$long, xlab = 'Index', 
     ylab = 'Length', main = 'Earthquakes',
     col = 'red', type = "l")

plot(e_quakes$mag, type= "b") # p: points, l: lines,b: both

plot(e_quakes$depth, xlab = 'Index', 
     ylab = 'Depth', main = 'Earthquakes',
     col = 'green', type = "b")


# Horizontal bar plot
barplot(e_quakes$lat, main = 'Earthquakes',
        ylab = 'Latitude', col= 'blue',horiz = F,axes=T)

barplot(e_quakes$long, main = 'Earthquakes',
        ylab = 'Latitude', col= 'green',horiz = F,axes=T)

barplot(e_quakes$mag, main = 'Earthquakes',
        ylab = 'Latitude', col= 'blue',horiz = F,axes=T)
barplot(e_quakes$depth, main = 'Earthquakes',
        ylab = 'Latitude', col= 'blue',horiz = F,axes=T)
barplot(e_quakes$stations, main = 'Earthquakes',
        ylab = 'Latitude', col= 'blue',horiz = F,axes=T)


#Histogram

hist(e_quakes$lat)
hist(e_quakes$long)
hist(e_quakes$depth)
hist(e_quakes$mag)
hist(e_quakes$stations)


hist(e_quakes$lat, 
     main = 'Earthquakes',
     xlab = 'Latitude', col='blue')

hist(e_quakes$long, 
     main = 'Earthquakes',
     xlab = 'Length', col='red')

hist(e_quakes$depth, 
     main = 'Earthquakes',
     xlab = 'Depth', col='green')

hist(e_quakes$mag, 
     main = 'Earthquakes',
     xlab = 'Magnitude', col='yellow')

hist(e_quakes$stations, 
     main = 'Earthquakes',
     xlab = 'Stations', col='orange')


#Single box plot

boxplot(e_quakes$lat,main="Boxplot")

boxplot(e_quakes$long,main="Boxplot")

boxplot(e_quakes$depth,main="Boxplot")

boxplot(e_quakes$mag,main="Boxplot")

boxplot(e_quakes$stations,main="Boxplot")


# Multiple box plots

boxplot(e_quakes,main='Multiple')



#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot


par(mfrow=c(4,4),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$depth)

plot(e_quakes$depth, e_quakes$mag)

plot(e_quakes$lat, type= "l")
plot(e_quakes$long, type= "l")
plot(e_quakes$depth, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$stations, type= "l")

barplot(e_quakes$stations, main = 'Earthquakes',
        xlab = 'Stations', col='green',horiz = TRUE)

hist(e_quakes$long)
hist(e_quakes$lat)
hist(e_quakes$mag)
hist(e_quakes$depth)

boxplot(e_quakes$mag)

boxplot(e_quakes[,0:5], main='Multiple Box plots')





