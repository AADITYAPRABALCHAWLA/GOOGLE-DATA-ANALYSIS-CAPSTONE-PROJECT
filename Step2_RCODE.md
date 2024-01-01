# Process 
1.Load all the needed libraries

2.Upload all the data into variables

3.Merge all the data year wise

4.Createnew columns for:<br/>
  a.Ride Length - do this by subtracting end_at time from start_at time<br/>
  b.Day of the Week<br/>
  c.Month<br/>
  d.Day<br/>
  e.Year<br/>
  f.Time - convert the time to HH:MM:SS format<br/>
  g.Hour<br/>
  h.Season - Spring, Summer, Winter or Fall<br/>
  i.Time of Day - Night, Morning, Afternoon or Evening<br/>
  
5.Clean the data by following the given steps:<br/>
  a.Removing duplicate rows<br/>
  b.Remove rows with NA values (blank rows)<br/>
  c.Remove where ride_length is 0 or negative (ride_length should be a positive number)<br/>
  d.Remove unnecessary columns: ride_id, start_station_id, end_station_id, start_lat, start_long, end_lat, end_lng<br/>
  
6.Calculate total rides for:<br/>
  a.Total number of rides which was just the row count = 4,152,139<br/>
  b.Member type - casual riders vs. annual members<br/>
  c.Type of Bike - classic vs docked vs electric; separated by member type and total rides for each bike type<br/>
  d.Hour - separated by member type and total rides for each hour in a day<br/>
  e.Time of Day - separated by member type and total rides for each time of day (morning, afternoon, evening, night)<br/>
  f.Day of the Week - separated by member type and total rides for each day of the week<br/>
  g.Day of the Month - separated by member type and total rides for each day of the month<br/>
  h.Month - separated by member type and total rides for each month<br/>
  i.Season - separated by member type and total rides for each season (spring,  summer, fall, winter)<br/>

7.Calculated Average Ride Length for:<br/>
  a.Total average ride length<br/>
  b.Member type - casual riders vs. annual members<br/> 
  c.Type of Bike - separated by member type and average ride length for each bike type<br/>
  d.Hour - separated by member type and average ride length for each hour in a day<br/>
  e.Time of Day - separated by member type and average ride length for each time of day (morning, afternoon, evening, night)<br/>
  f.Day of the Week - separated by member type and average ride length for each day of the week<br/>
  g.Day of the Month - separated by member type and average ride length for each day of the month<br/>
  h.Month - separated by member type and average ride length for each month<br/>
  i.Season - separated by member type and average ride lengths for each season (spring,  summer, fall, winter)<br/>


# CODE
Here is the link for R Code that I have used: [RCode](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/blob/main/RCode.R)

# Total time taken
9 hours

