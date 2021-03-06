# LOADING LIBRARIES
library(data.table)
library(dplyr)
library(tidyr)
library(ggplot2)
library(qqplotr)
library(gridExtra)

# LOADING DATA
data <- as.data.table(read.csv("Desktop/Master_semestre_1/Statistical_computation_and_visualisation/Taxi_Trips_-_2020.csv"))

# DATA WITHOUT NA FOR FARE, TIPS, TOLLS, EXTRAS AND TRIP.TOTAL
data <- na.omit(data,cols=c("Fare","Tips","Tolls","Extras","Trip.Total"))

# LIST OF COMPANIES
List_Company <- data$Company
List_Company <- unique(List_Company)

# EXPLORATORY FOR TRIP.TOTAL BY COMPANY
# max by company
data[,max(Trip.Total),by=Company]
data %>%
  group_by(Company) %>%
  summarise(max(Trip.Total),n=n())
# mean by company
data[,mean(Trip.Total),by=Company]
data %>%
  group_by(Company) %>%
  summarise(mean(Trip.Total),n=n())
# sum by company
data[,sum(Trip.Total),by=Company]
data %>%
  group_by(Company) %>%
  summarise(sum(Trip.Total),n=n())

# Histogram of Trip.Total for each Company
My_Theme = theme(
  axis.title = element_text(size = 8),
  axis.text = element_text(size = 6),
  title = element_text(size = 10))

dt1 <- as.data.table(data[Company=="Top Cab Affiliation"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Top Cab Affiliation", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt2 <- as.data.table(data[Company=="Blue Ribbon Taxi Association Inc."])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Blue Ribbon Taxi Association Inc.", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt3 <- as.data.table(data[Company=="Taxi Affiliation Services"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Taxi Affiliation Services", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt4 <- as.data.table(data[Company=="Sun Taxi"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Sun Taxi", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="Medallion Leasin"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Medallion Leasin", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt2 <- as.data.table(data[Company=="City Service"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "City Service", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt3 <- as.data.table(data[Company=="Chicago Independents"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Chicago Independents", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt4 <- as.data.table(data[Company=="Setare Inc"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Setare Inc", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="Chicago Carriage Cab Corp"])
plot1 <- ggplot() +
  geom_histogram(aes(x=d1t$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Chicago Carriage Cab Corp", x = "log10(Trip.Total)", y = "log10(count)") +
  My_Theme

dt2 <- as.data.table(data[Company=="Star North Management LLC"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Star North Management LLC", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="Flash Cab"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Flash Cab", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="Petani Cab Corp"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Petani Cab Corp", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="Taxicab Insurance Agency, LLC"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Taxicab Insurance Agency, LLC", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="Choice Taxi Association"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Choice Taxi Association", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="Patriot Taxi Dba Peace Taxi Associat"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Patriot Taxi Dba Peace Taxi Associat", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="Chicago Medallion Management"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Chicago Medallion Management", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="24 Seven Taxi"])
plot1 <- ggplot() +
  geom_histogram(aes(x=d1t$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "24 Seven Taxi", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="KOAM Taxi Association"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "KOAM Taxi Association", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="312 Medallion Management Corp"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "312 Medallion Management Corp", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="Suburban Dispatch LLC"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Suburban Dispatch LLC", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="Chicago Taxicab"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Chicago Taxicab", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="Nova Taxi Affiliation Llc"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Nova Taxi Affiliation Llc", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="Taxi Affiliation Service Yellow"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Taxi Affiliation Service Yellow", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="Blue Diamond"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Blue Diamond", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="6743 - 78771 Luhak Corp"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "6743 - 78771 Luhak Corp", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="Metro Jet Taxi A"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Metro Jet Taxi A", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="Leonard Cab Co"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Leonard Cab Co", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="5062 - 34841 Sam Mestas"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "5062 - 34841 Sam Mestas", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="4053 - 40193 Adwar H. Nikola"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "4053 - 40193 Adwar H. Nikola", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="3011 - 66308 JBL Cab Inc."])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3011 - 66308 JBL Cab Inc.", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="U Taxicab"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "U Taxicab", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="3094 - 24059 G.L.B. Cab Co"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3094 - 24059 G.L.B. Cab Co", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="5 Star Taxi"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "5 Star Taxi", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="2092 - 61288 Sbeih company"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "2092 - 61288 Sbeih company", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="3556 - 36214 RC Andrews Cab"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3556 - 36214 RC Andrews Cab", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="6742 - 83735 Tasha ride inc"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "6742 - 83735 Tasha ride inc", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="1085 - 72312 N and W Cab Co"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "1085 - 72312 N and W Cab Co", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="2733 - 74600 Benny Jona"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "2733 - 74600 Benny Jona", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="5874 - 73628 Sergey Cab Corp."])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "5874 - 73628 Sergey Cab Corp.", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="3620 - 52292 David K. Cab Corp."])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3620 - 52292 David K. Cab Corp.", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="4787 - 56058 Reny Cab Co"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "4787 - 56058 Reny Cab Co", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="Checker Taxi Affiliation"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Checker Taxi Affiliation", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="5006 - 39261 Salifu Bawa"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "5006 - 39261 Salifu Bawa", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="4623 - 27290 Jay Kim"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "4623 - 27290 Jay Kim", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="6574 - Babylon Express Inc."])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "6574 - Babylon Express Inc.", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="3623 - 72222 Arrington Enterprises"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3623 - 72222 Arrington Enterprises", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="3721 - Santamaria Express, Alvaro Santamaria"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3721 - Santamaria Express, Alvaro Santamaria", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="3591 - 63480 Chuks Cab"])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "3591 - 63480 Chuks Cab", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)

dt1 <- as.data.table(data[Company=="4523 - 79481 Hazel Transit Inc"])
plot1 <- ggplot() +
  geom_histogram(aes(x=dt1$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "4523 - 79481 Hazel Transit Inc", x = "log10(Trip.Total)", y = "log10(count)")

dt2 <- as.data.table(data[Company=="CMT-Sales"])
plot2 <- ggplot() +
  geom_histogram(aes(x=dt2$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "CMT-Sales", x = "log10(Trip.Total)", y = "log10(count)")

dt3 <- as.data.table(data[Company=="Globe Taxi"])
plot3 <- ggplot() +
  geom_histogram(aes(x=dt3$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Globe Taxi", x = "log10(Trip.Total)", y = "log10(count)")

dt4 <- as.data.table(data[Company=="Metro Jet Cab Association Inc."])
plot4 <- ggplot() +
  geom_histogram(aes(x=dt4$Trip.Total),binwidth = 0.05) +
  scale_y_log10() +
  scale_x_log10() +
  labs(title = "Metro Jet Cab Association Inc.", x = "log10(Trip.Total)", y = "log10(count)")

grid.arrange(plot1,plot2,plot3,plot4,ncol=2)
rm(dt1,dt2,dt3,dt4)
rm(plot1,plot2,plot3,plot4)
rm(My_Theme)

## PLOTS OF MEAN, MAX, AND SUM AGAINST EACH COMPANY
My_Theme = theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

dt = as.data.table(data[,mean(Trip.Total),by=Company])
setnames(dt,c("V1"),c("mean.Trip.Total"))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$mean.Trip.Total)) +
  labs(title = "Bar plot of mean(Trip.Total) against each Company",
       x = "Company", y = "mean(Trip.Total)") +
  coord_flip() +
  My_Theme

dt = as.data.table(data[,max(Trip.Total),by=Company])
setnames(dt,c("V1"),c("max.Trip.Total"))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$max.Trip.Total)) +
  labs(title = "Bar plot of max(Trip.Total) against each Company",
       x = "Company", y = "max(Trip.Total)") +
  coord_flip() +
  My_Theme

dt = as.data.table(data[,sum(Trip.Total),by=Company])
setnames(dt,c("V1"),c("sum.Trip.Total"))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$sum.Trip.Total)) +
  labs(title = "Bar plot of sum(Trip.Total) against each Company",
       x = "Company", y = "sum(Trip.Total)") +
  coord_flip() +
  My_Theme

rm(My_Theme, dt)

## Plots of number of trip against each company

dt <- as.data.table(
  data %>%
  group_by(Company) %>%
  summarise(n=n()))

My_Theme = theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$n)) +
  labs(title = "Bar plot of number of trips against each Company",
       x = "Company", y = "Trips") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of number of driver per Company
dt <- as.data.table(data[,n_distinct(Taxi.ID),by = Company])
setnames(dt,c("V1"),c("n"))

My_Theme = theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$n)) +
  labs(title = "Bar plot of number of drivers against each Company",
       x = "Company", y = "Drivers") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of mean time per trip per Company

dt <- na.omit(data,cols=c("Trip.Seconds"))
dt <- as.data.table(dt[,mean(Trip.Seconds),by=Company])
dt$V1 <- dt$V1 / 60
setnames(dt,c("V1"),c("mean.Trip.Minutes"))

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$mean.Trip.Minutes)) +
  labs(title = "Bar plot of mean of trips time against each Company",
       x = "Company", y = "mean(Trip.Minutes)") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of max time of a trip per Company

dt <- na.omit(data,cols=c("Trip.Seconds"))
dt <- as.data.table(dt[,max(Trip.Seconds),by=Company])
dt$V1 <- dt$V1 / 60
setnames(dt,c("V1"),c("max.Trip.Minutes"))

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$max.Trip.Minutes)) +
  labs(title = "Bar plot of max time of a trip against each Company",
       x = "Company", y = "max(Trip.Minutes)") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of sum of time trip per Company

dt <- na.omit(data,cols=c("Trip.Seconds"))
dt <- as.data.table(dt[,sum(Trip.Seconds),by=Company])
dt$V1 <- dt$V1 / 60
setnames(dt,c("V1"),c("sum.Trip.Minutes"))

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$sum.Trip.Minutes)) +
  labs(title = "Bar plot of sum of trip time against each Company",
       x = "Company", y = "sum(Trip.Minutes)") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of mean miles per trip per Company

dt <- na.omit(data,cols=c("Trip.Miles"))
dt <- as.data.table(dt[,mean(Trip.Miles),by=Company])
setnames(dt,c("V1"),c("mean.Trip.Miles"))

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$mean.Trip.Miles)) +
  labs(title = "Bar plot of mean of trips miles against each Company",
       x = "Company", y = "mean(Trip.Miles)") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of max miles of a trip per Company

dt <- na.omit(data,cols=c("Trip.Miles"))
dt <- as.data.table(dt[,max(Trip.Miles),by=Company])
setnames(dt,c("V1"),c("max.Trip.Miles"))

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$max.Trip.Miles)) +
  labs(title = "Bar plot of max miles of a trip against each Company",
       x = "Company", y = "max(Trip.Miles)") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of sum miles of trips per Company

dt <- na.omit(data,cols=c("Trip.Miles"))
dt <- as.data.table(dt[,sum(Trip.Miles),by=Company])
setnames(dt,c("V1"),c("sum.Trip.Miles"))

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$sum.Trip.Miles)) +
  labs(title = "Bar plot of sum miles of trips against each Company",
       x = "Company", y = "sum(Trip.Miles)") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

## Plot of price per minutes against each Company

dt <- na.omit(data,cols=c("Trip.Seconds","Trip.Total"))
dt$Trip.Seconds <- dt$Trip.Seconds / 60
dt <- as.data.table(filter(dt,Trip.Seconds != 0))
dt <- as.data.table(dt[,mean(Trip.Total / Trip.Seconds),by=Company])

My_Theme <- theme(
  axis.title = element_text(size = 10),
  axis.text.y = element_text(size = 6),
  title = element_text(size = 10))

ggplot() +
  geom_col(aes(x = dt$Company, y = dt$V1)) +
  labs(title = "Bar plot of mean Trip.Total divided by Trip.Minutes against each Company",
       x = "Company", y = "mean") +
  coord_flip() +
  My_Theme

rm(dt, My_Theme)

