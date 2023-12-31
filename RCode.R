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

# Creating columns for different seasons
cycle2021_date=cycle2021_date %>% mutate(season =
 case_when(month == "03" ~ "Spring",
                                                        month == "04" ~ "Spring",
                                                        month == "05" ~ "Spring",
                                                        month == "06"  ~ "Summer",
                                                        month == "07"  ~ "Summer",
                                                        month == "08"  ~ "Summer",
                                                        month == "09" ~ "Fall",
                                                        month == "10" ~ "Fall",
                                                        month == "11" ~ "Fall",
                                                        month == "12" ~ "Winter",
                                                        month == "01" ~ "Winter",
                                                        month == "02" ~ "Winter")
 )
 cycle2022_date=cycle2022_date %>% mutate(season = 
                                              case_when(month == "03" ~ "Spring",
                                                       month == "04" ~ "Spring",
                                                        month == "05" ~ "Spring",
                                                        month == "06"  ~ "Summer",
                                                        month == "07"  ~ "Summer",
                                                        month == "08"  ~ "Summer",
                                                        month == "09" ~ "Fall",
                                                        month == "10" ~ "Fall",
                                                        month == "11" ~ "Fall",
                                                        month == "12" ~ "Winter",
                                                        month == "01" ~ "Winter",
                                                        month == "02" ~ "Winter")
 )

# Creating columns for different time of day
cycle2021_date=cycle2021_date %>% mutate(time_of_day=case_when(hour == "0" ~ "Night",
                                                        hour == "1" ~ "Night",
                                                        hour == "2" ~ "Night",
                                                        hour == "3" ~ "Night",
                                                        hour == "4" ~ "Night",
                                                        hour == "5" ~ "Night",
                                                        hour == "6" ~ "Morning",
                                                        hour == "7" ~ "Morning",
                                                        hour == "8" ~ "Morning",
                                                        hour == "9" ~ "Morning",
                                                        hour == "10" ~ "Morning",
                                                        hour == "11" ~ "Morning",
                                                        hour == "12" ~ "Afternoon",
                                                        hour == "13" ~ "Afternoon",
                                                        hour == "14" ~ "Afternoon",
                                                        hour == "15" ~ "Afternoon",
                                                        hour == "16" ~ "Afternoon",
                                                        hour == "17" ~ "Afternoon",
                                                        hour == "18" ~ "Evening",
                                                        hour == "19" ~ "Evening",
                                                        hour == "20" ~ "Evening",
                                                        hour == "21" ~ "Evening",
                                                        hour == "22" ~ "Evening",
                                                       hour == "23" ~ "Evening")
 )

cycle2022_date=cycle2022_date %>% mutate(time_of_day=case_when(hour == "0" ~ "Night",
                                                        hour == "1" ~ "Night",
                                                        hour == "2" ~ "Night",
                                                        hour == "3" ~ "Night",
                                                        hour == "4" ~ "Night",
                                                        hour == "5" ~ "Night",
                                                        hour == "6" ~ "Morning",
                                                        hour == "7" ~ "Morning",
                                                        hour == "8" ~ "Morning",
                                                        hour == "9" ~ "Morning",
                                                        hour == "10" ~ "Morning",
                                                        hour == "11" ~ "Morning",
                                                        hour == "12" ~ "Afternoon",
                                                        hour == "13" ~ "Afternoon",
                                                        hour == "14" ~ "Afternoon",
                                                        hour == "15" ~ "Afternoon",
                                                        hour == "16" ~ "Afternoon",
                                                        hour == "17" ~ "Afternoon",
                                                        hour == "18" ~ "Evening",
                                                        hour == "19" ~ "Evening",
                                                        hour == "20" ~ "Evening",
                                                        hour == "21" ~ "Evening",
                                                        hour == "22" ~ "Evening",
                                                        hour == "23" ~ "Evening")
 )

 
# Cleaning the data
cycle2021_date=na.omit(cycle2021_date)
cycle2022_date=na.omit(cycle2022_date)
cycle2021_date=distinct(cycle2021_date)
cycle2022_date=distinct(cycle2022_date)
cycle2021_date=cycle2021_date %>% 
select(-c(ride_id,start_station_id,end_station_id,start_lat,start_lng,end_lat,end_lng))
cycle2022_date=cycle2022_date %>% 
select(-c(ride_id,start_station_id,end_station_id,start_lat,start_lng,end_lat,end_lng))

# Viewing the data
view(cycle2021_date)
view(cycle2022_date)

# Total number of rides
nrow(cycle2021_date)
nrow(cycle2022_date)

# Member types
cycle2021_date %>% group_by(member_casual) %>% count(member_casual)
cycle2022_date %>% group_by(member_casual) %>% count(Member_casual)

# Total rides by member class per bike
cycle2021_date %>% group_by(member_causal,rideable_type) %>% count(rideable_type)
cycle2022_date %>% group_by(member_causal,rideable_type) %>% count(rideable_type)
 
# Total rides per bike
cycle2021_date %>% group_by(rideable_type) %>% count(rideable_type)
cycle2022_date %>% group_by(rideable_type) %>% count(rideable_type)

# Total rides by member class per hour
cycle2021_date %>% group_by(member_casual) %>% count(hour) %>% print(n=48)
cycle2022_date %>% group_by(member_casual) %>% count(hour) %>% print(n=48)

# Total rides per hour
cycle2021_date %>% count(hour) %>% print(n=24)
cycle2022_date %>% count(hour) %>% print(n=24)

# Total rides by member class in morning
cycle2021_date %>% (group_by(member_casual) %>% filter(time_of_day =="Morning")%>%count(time_of_day)
cycle2022_date %>% (group_by(member_casual) %>% filter(time_of_day =="Morning")%>%count(time_of_day)

# Total rides in morning
cycle2021_date %>% filter(time_of_day=="Morning") %>% count (time_of_day)
cycle2022_date %>% filter(time_of_day=="Morning") %>% count (time_of_day)

# Total rides by member class in afternoon
cycle2021_date %>% (group_by(member_casual) %>% filter(time_of_day =="Afternoon")%>%count(time_of_day)
cycle2022_date %>% (group_by(member_casual) %>% filter(time_of_day =="Afternoon")%>%count(time_of_day)

# Total rides in afternoon
cycle2021_date %>% filter(time_of_day=="Afternoon") %>% count (time_of_day)
cycle2022_date %>% filter(time_of_day=="Afternoon") %>% count (time_of_day)

# Total rides by member class in evening 
cycle2021_date %>% (group_by(member_casual) %>% filter(time_of_day =="Evening")%>%count(time_of_day)
cycle2022_date %>% (group_by(member_casual) %>% filter(time_of_day =="Evening")%>%count(time_of_day)

#Total rides in evening
cycle2021_date %>% filter(time_of_day=="Evening") %>% count (time_of_day)
cycle2022_date %>% filter(time_of_day=="Evening") %>% count (time_of_day)

# Total rides by member class in night
cycle2021_date %>% (group_by(member_casual) %>% filter(time_of_day =="Night")%>%count(time_of_day)
cycle2022_date %>% (group_by(member_casual) %>% filter(time_of_day =="Night")%>%count(time_of_day)

# Total rides in night
cycle2021_date %>% filter(time_of_day=="Night") %>% count (time_of_day)
cycle2022_date %>% filter(time_of_day=="Night") %>% count (time_of_day)

# Total rides by member class at all times of day
cycle2021_date %>% group_by(member_casual) %>% count(time_of_day)
cycle2022_date %>% group_by(member_casual) %>% count(time_of_day)

# Total rides at all times of day
cycle2021_date %>% group_by(time_of_day) %>% count(time_of_day)
cycle2022_date %>% group_by(time_of_day) %>% count(time_of_day)

# Total rides by member class by day of week
cycle2021_date %>% group_by(member_casual) %>% count(days_of_week)
cycle2022_date %>% group_by(member_casual) %>% count(day_of_week)

# Total rides by day of week
cycle2021_date %>% count(day_of_week)
cycle2022_date %>% count(day_of_week)

# Total rides by member class by day of month
cycle2021_date %>% group_by(member_casual) %>% count(day) %>% print(n=62)
cycle2022_date %>% group_by(member_casual) %>% count(day) %>% print(n=62)

# Total rides by day of month
cycle2021_date %>% count(day) %>% print(n=31)
cycle2022_date %>% count(day) %>% print(n=31)

# Total rides by member class by month
cycle2021_date %>% group_by(member_casual) %>% count(month) %>% print(n=24)
cycle2022_date %>% group_by(member_casual) %>% count(month) %>% print(n=24)

# Total rides by month
cycle2021_date %>% count(month)
cycle2022_date %>% count(month)

# Total rides by member class in spring season
cycle2021_date %>% group_by(member_casual) %>% filter(season=="Spring") %>% count(season)
cycle2022_date %>% group_by(member_casual) %>% filter(season=="Spring") %>% count(season)

# Total rides in spring season
cycle2021_date %>% filter(season="Spring") %>% count(season)
cycle2022_date %>% filter(season="Spring") %>% count(season)

# Total rides by member class in summer season
cycle2021_date %>% group_by(member_casual) %>% filter(season=="Summer") %>% count(season)
cycle2022_date %>% group_by(member_casual) %>% filter(season=="Summer") %>% count(season)
 
# Total rides in summer season
cycle2021_date %>% filter(season="Summer") %>% count(season)
cycle2022_date %>% filter(season="Summer") %>% count(season)

# Total rides by member class in fall season
cycle2021_date %>% group_by(member_casual) %>% filter(season=="Fall") %>% count(season)
cycle2022_date %>% group_by(member_casual) %>% filter(season=="Fall") %>% count(season)

# Total rides in fall season
cycle2021_date %>% filter(season="Fall") %>% count(season)
cycle2022_date %>% filter(season="Fall") %>% count(season)

# Total rides by member class in winter season
cycle2021_date %>% group_by(member_casual) %>% filter(season=="Winter") %>% count(season)
cycle2022_date %>% group_by(member_casual) %>% filter(season=="Winter") %>% count(season)

# Total rides in winter season
cycle2021_date %>% filter(season="Winter") %>% count(season)
cycle2022_date %>% filter(season="Winter") %>% count(season)

# Total rides by member class in all seasons
cycle2021_date %>% group_by(season,member_casual) %>% count(season)
cycle2022_date %>% group_by(season,member_casual) %>% count(season)

# Total rides in all seasons
cycle2021_date %>% group_by(season) %>% count(season)
cycle2022_date %>% group_by(season) %>% count(season)

# Average ride length
cycle2021_averageRide=mean(cycle2021_date$ride_length)
cycle2022_averageRide=mean(cycle2022_date$ride_length)

# Average ride length by member type
cycle2021_date %>% group_by(member_casual) %>% summarise_at(vars(ride_length),list(time=mean))
cycle2022_date %>% group_by(member_casual) %>% summarise_at(vars(ride_length),list(time=mean))

# Average ride length by type of bike by member class
cycle2021_date %>% group_by(member_casual,rideable_type) %>% summarise_at(vars(ride_length),list(time=mean))
cycle2022_date %>% group_by(member_casual,rideable_type) %>% summarise_at(vars(ride_length),list(time=mean))
                                                                          
$ Average bike length by type of bike
cycle2021_date %>% group_by(hour) %>% summarise_at(vars(ride_length),list(time=mean) %>% print(n=24)
cycle2022_date %>% group_by(hour) %>% summarise_at(vars(ride_length),list(time=mean) %>% print(n=24)




