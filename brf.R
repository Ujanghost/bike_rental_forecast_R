#libraries
library(prophet)
library(lubridate)
library(ggplot2)

#importing data
data <- read.csv(file.choose(),header = T)
data$dteday <- ymd(data$dteday)


#ploting 
qplot(dteday,cnt,data=data,
      main ='Bike rentals')

#data
ds <- data$dteday
y <- data$cnt
df$temp <- data$temp
df$hum <- data$hum
#creating a data frame

df <- data.frame(ds,y)

#forecasting using prophet
m <- prophet()
m <- add_country_holidays(m,country_name = 'US')
m <- add_regressor(m,'temp')
m<- add_regressor(m,'hum')
m <- fit.prophet(m,df)

#prediction
future <- make_future_dataframe(m,periods = 10)
x <- data.frame(df$temp)
colnames(x) <- 'temp'
y <- data.frame(runif(10,0.1,0.3))
colnames(y) <- 'temp'
future$temp <- rbind(x,y)
future <- as.matrix(future)
forecast <- predict(m,future)

plot(m,forecast)

dyplot.prophet(m,forecast)
prophet_plot_components(m,forecast)

#model validation

pred <- forecast$yhat[1:731]
actual <- df[,2]
plot(actual,pred)
abline(lm(pred~actual),col='red')
summary(lm(pred~actual))
#sarima,halter,winters_expo,
