
library(readxl)
library("ggplot2")  
weather_2009 <- read_excel("C:/Users/DELL/Desktop/2009.xlsx")
weather_2021 <- read_excel("C:/Users/DELL/Desktop/2021.xlsx")
weather_2009$Date <- as.Date(weather_2009$Date)
weather_2021$Date <- as.Date(weather_2021$Date)
p1 <- ggplot(weather_2009,aes(x=Date, y = Wind_Direction_Dominant))+geom_line(aes(color="2009"))+
  geom_line(data = weather_2021,aes(color = "2021") )+scale_x_date(date_labels="%b-%d",
  expand = c(0,0),date_breaks  ="10 day")+
  theme(axis.text.x = element_text(angle=90,size=10, vjust = 0.5))
 
 
p1 + labs(title = "Comparison of the daily weather for Basel for the year 2009 and 2021",
          x = "Date", y = "Wind Direction Dominant(°)",color= "Year")


