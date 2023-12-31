#----------------------------------------- R CODE--------------------------------------------------

# loading libraries
library(tidyverse)
library(lubridate)
library(hms)
library(data.table)

# laoding data into varaibles
 jan2021=read.csv("202101-divvy-tripdata.csv")
 feb2021=read.csv("202102-divvy-tripdata.csv")
 mar2021=read.csv("202103-divvy-tripdata.csv")
 apr2021=read.csv("202104-divvy-tripdata.csv")
 may2021=read.csv("202105-divvy-tripdata.csv")
 jun2021=read.csv("202106-divvy-tripdata.csv")
 jul2021=read.csv("202107-divvy-tripdata.csv")
 aug2021=read.csv("202108-divvy-tripdata.csv")
 sep2021=read.csv("202109-divvy-tripdata.csv")
 oct2021=read.csv("202110-divvy-tripdata.csv")
 nov2021=read.csv("202111-divvy-tripdata.csv")
 dec2021=read.csv("202112-divvy-tripdata.csv")
 jan2022=read.csv("202201-divvy-tripdata.csv")
 feb2022=read.csv("202202-divvy-tripdata.csv")
 mar2022=read.csv("202203-divvy-tripdata.csv")
 apr2022=read.csv("202204-divvy-tripdata.csv")
 may2022=read.csv("202205-divvy-tripdata.csv")
 jun2022=read.csv("202206-divvy-tripdata.csv")
 jul2022=read.csv("202207-divvy-tripdata.csv")
 aug2022=read.csv("202208-divvy-tripdata.csv")
 sep2022=read.csv("202209-divvy-tripdata.csv")
 oct2022=read.csv("202210-divvy-tripdata.csv")
 nov2022=read.csv("202211-divvy-tripdata.csv")
 dec2022=read.csv("202212-divvy-tripdata.csv")

# merging data yearwise
cycle2021=rbind(jan2021,feb2021,mar2021,apr2021,may2021,jun2021,jul2021,aug2021,sep2021,oct2021,nov2021,dec2021)
cycle2022=rbind(jan2022,feb2022,mar2022,apr2022,may2022,jun2022,jul2022,aug2022,sep2022,oct2022,nov2022,dec2022)

# creating new data frames to add more columns
cycle2021_date=cycle2021
cycle2022_date=cycle2022

# calculating ride length
cycle2021_date$ride_length=difftime(cycle2021$ended_at,cycle2021$started_at,units="mins")
cycle2022_date$ride_length=difftime(cycle2022$ended_at,cycle2022$started_at,units="mins")

# creating columns for date,day of week, month,day,year,time and hour
cycle2021_date$date=as.Date(cycle2021$started_at)
cycle2022_date$date=as.Date(cycle2022$started_at)
cycle2021_date$days_of_week=wday(cycle2021$started_at)
cycle2022_date$days_of_week=wday(cycle2022$started_at)
cycle2021_date$month=foramt(as.Date(cycle2021$date),"m")
cycle2021_date$days_of_week=format(as.Date(cycle2021_date$date),"%A")
cycle2022_date$days_of_week=format(as.Date(cycle2022_date$date),"%A")
cycle2021_date$month=format(as.Date(cycle2021_date$date),"%m")
cycle2022_date$month=format(as.Date(cycle2022_date$date),"%m")
cycle2022_date$day=format(as.Date(cycle2021_date$date),"%d")
cycle2021_date$day=format(as.Date(cycle2021_date$date),"%d")
cycle2022_date$day=format(as.Date(cycle2022_date$date),"%d")
cycle2021_date$day=format(as.Date(cycle2021_date$date),"%y")
cycle2022_date$day=format(as.Date(cycle2022_date$date),"%y")
cycle2021_date$time=format(as.Date(cycle2022_date$date),"%h:%m:%s")
cycle2021_date$hour=hour(cycle2021_date$time)






 





