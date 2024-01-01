# Load libraries
library(tidyverse) #calculations
library(lubridate) #dates 
library(hms) #time
library(data.table) #exporting data frame

# Load data into variables
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

# Merge all of the data frames into one year view
cycle2021<- rbind (jan2021,feb2021,mar2021,apr2021,may2021,jun2021,jul2021,aug2021,sep2021,oct2021,nov2021,dec2021)

# Remove individual month data frames to clear up space in the environment 
remove(jan2021,feb2021,mar2021,apr2021,may2021,jun2021,jul2021,aug2021,sep2021,oct2021,nov2021,dec2021)
# Create new data frame to contain new columns
cycle2021_date <- cycle2021

# Calculate ride length by subtracting ended_at time from started_at time and converted it to minutes
cycle2021_date$ride_length <- difftime(cycle2021$ended_at, cycle2021$started_at, units = "mins")
cycle2021_date$ride_length <- round(cycle2021_date$ride_length, digits = 1)

# Create columnds for: day of week, month, day, year, time, hour
cycle2021_date$date <- as.Date(cycle2021_date$started_at) #default format is yyyy-mm-dd, use start date
cycle2021_date$day_of_week <- wday(cycle2021$started_at) #calculate the day of the week 
cycle2021_date$day_of_week <- format(as.Date(cycle2021_date$date), "%A") #create column for day of week
cycle2021_date$month <- format(as.Date(cycle2021_date$date), "%m")#create column for month
cycle2021_date$day <- format(as.Date(cycle2021_date$date), "%d") #create column for day
cycle2021_date$year <- format(as.Date(cycle2021_date$date), "%Y") #create column for year
cycle2021_date$time <- format(as.Date(cycle2021_date$date), "%H:%M:%S") #format time as HH:MM:SS
cycle2021_date$time <- as_hms((cycle2021$started_at)) #create new column for time
cycle2021_date$hour <- hour(cycle2021_date$time) #create new column for hour

# Create column for different seasons: Spring, Summer, Fall, Winter
cycle2021_date <-cycle2021_date %>% mutate(season = 
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

# Create column for different time_of_day: Night, Morning, Afternoon, Evening
cycle2021_date <-cycle2021_date %>% mutate(time_of_day = 
                                             case_when(hour == "0" ~ "Night",
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


# Create a column for the month using the full month name
cycle2021_date <-cycle2021_date %>% mutate(month = 
                                             case_when(month == "01" ~ "January",
                                                       month == "02" ~ "February",
                                                       month == "03" ~ "March",
                                                       month == "04" ~ "April",
                                                       month == "05" ~ "May",
                                                       month == "06" ~ "June",
                                                       month == "07" ~ "July",
                                                       month == "08" ~ "August",
                                                       month == "09" ~ "September",
                                                       month == "10" ~ "October",
                                                       month == "11" ~ "November",
                                                       month == "12" ~ "December"
                                                       )
)

# Clean the data
cycle2021_date <- na.omit(cycle2021_date) #remove rows with NA values
cycle2021_date <- distinct(cycle2021_date) #remove duplicate rows 
cycle2021_date <- cycle2021_date[!(cycle2021_date$ride_length <=0),] #remove where ride_length is 0 or negative
cycle2021_date <- cycle2021_date %>%  #remove columns not needed: ride_id, start_station_id, end_station_id, start_lat, start_long, end_lat, end_lng
  select(-c(ride_id, start_station_id, end_station_id,start_lat,start_lng,end_lat,end_lng)) 

# View the final data
View(cycle2021_date)

# Created a new dataframe to use in Tableau
cyclistic_tableau <- cycle2021_date

# Clean the data
cyclistic_tableau <- cyclistic_tableau %>%  #remove columns not needed: start_station_name, end_station_name, time, started_at, ended_at
  select(-c(start_station_name, end_station_name, time, started_at, ended_at))

# Download the new data as a .csv file
fwrite(cyclistic_tableau,"cycle2021_date.csv")


# similiarly you can create data for cycle2022_date
