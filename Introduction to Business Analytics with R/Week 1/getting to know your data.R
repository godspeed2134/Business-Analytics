####Getting to know your data 1####
# inputting the data
df <- read.csv('jan17Items.csv', stringsAsFactors = F, header = T)
dfw <- read.csv('jan17Weather.csv', stringsAsFactors = F, header = T, sep = '\t')

##explore the dataframe
str(df)
str(dfw)
dim(dfw)
nrow(df)
ncol(df)
names(df)

##referencing and susetting using vectors by location
v1 <- c(18:23)
v1[1]
v1[3]
v1[2:4]
v1[c(1,5)]
v2 <- v1[c(1,5)]

##referencing and subsetting using dataframes by location
dfw[1:5,1:3]#rows,column
dfw[1:5,1:5]
dfw[1:5,c(1,2,3)]
dfw2 <- dfw[,1]
dfw2


##referencing and subsetting using dataframes by name
dfw$date
dfw[1:5,c('date','PRCP')]
df$BarCode <- NULL


#exploring the shape of the data -- 
##finding summary of the data
summary(df)
summary(dfw)
summary(df$Price)
summary(df[c('Price','Cost')])


#visually explore the shape of the data
hist(dfw$TMAX)
boxplot(dfw$TMAX)
plot(dfw$TMAX)#scatterplot
plot(dfw$TMIN,dfw$TMAX)
plot(dfw$TMAX,type = 'l')#line chart
plot(dfw[,c('TMIN','TMAX','PRCP')])#for finding a two way relationship
