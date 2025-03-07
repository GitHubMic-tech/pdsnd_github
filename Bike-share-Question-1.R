getwd()
list.files()
chi=read.csv('chicago.csv')
ny=read.csv('new-york-city.csv')
wa=read.csv('washington.csv', sep = ',')


# Add datasets one after another
rbind(chi,ny)
names(chi)
names(wa)

install.packages("ggplot2")

count <- table(chi$Start.Station)


x=tail(sort(count),10)
barplot(x, main="Top 10 starting stations (Chicago, IL)",
        ylab="Number of uses", las=2, col = 'green')
par(mar=c(10,2,1,1))

names(x)

x[names(x)]

