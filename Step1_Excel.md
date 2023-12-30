![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/731bcb33-6e61-40aa-9831-87f9e3596c2f)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/1da2eb66-59b5-4091-9c5e-5b027ebe9ce2)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/c0440815-c8e9-4e6c-a341-f36c1343ebb7)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/1be5b828-eb93-47fd-9119-d9e653e1c9a8)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/adf7c194-9646-44ca-94e3-50dc14d36592)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/d4224bca-52fa-4a1b-b6c4-ce23f977aa6c)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/6d5b7c24-325a-4380-8376-3c119541168e)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/b19aa96a-ab05-42a0-bf09-2e394623d135)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/d3342190-702a-460f-9c67-d52d11c61657)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/0e71941b-0c04-4f34-b62c-ded72de17352)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/55d76c7c-7462-47ca-837b-ba97cef61b9e)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/b0e7fd78-67a1-416e-82c2-1e28f1ceb2d1)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/dfdc4fe6-1131-4f03-b747-96b6146d8d5b)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/22e2a8d5-f7c7-4979-a942-6de0d7f1f029)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/1b404f23-7817-4aac-afad-faf9137b86e8)![image](https://github.com/AADITYAPRABALCHAWLA/GOOGLE-DATA-ANALYSIS-CAPSTONE-PROJECT/assets/103323016/1d80317f-16db-4dc6-b70e-d59c531c065c)# Gathering Of Data:
1. Download the trip data from the folloing [link](https://divvy-tripdata.s3.amazonaws.com/index.html).
2. Unzip the files and turn them into csv files.
3. Note down the names of files represented by the months as follows:
     |S.NO| Month| File Name|
     |---|-----|-----|    
     |1.| April 2020| 202004-divvy-tripdata.csv|
     |2.| May 2020| 202005-divvy-tripdata.csv|
     |3.| June 2020| 202006-divvy-tripdata.csv|
     |4.| July 2020| 202007-divvy-tripdata.csv|
     |5.| August 2020| 202008-divvy-tripdata.csv|
     |6.| September 2020| 202009-divvy-tripdata.csv|
     |7.| October 2020| 202010-divvy-tripdata.csv|
     |8.| November 2020| 202011-divvy-tripdata.csv|
     |9.| December 2020| 202012-divvy-tripdata.csv|
     |10.| Janvary 2021| 202101-divvy-tripdata.csv|
     |11.| Febrary 2021| 202102-divvy-tripdata.csv|
     |12.| March 2021| 202103-divvy-tripdata.csv|
     |13.| April 2021| 202104-divvy-tripdata.csv|
     |14.| May 2021| 202105-divvy-tripdata.csv|
     |15.| June 2021| 202106-divvy-tripdata.csv|
     |16.| July 2021| 202107-divvy-tripdata.csv|
     |17.| August 2021| 202108-divvy-tripdata.csv|
     |18.| September 2021| 202109-divvy-tripdata.csv|
     |19.| October 2021| 202110-divvy-tripdata.csv|
     |20.| November 2021| 202111-divvy-tripdata.csv|
     |21.| December 2021| 202112-divvy-tripdata.csv|
     |22.| Janvary 2022| 202201-divvy-tripdata.csv|
     |23.| Febrary 2022| 202202-divvy-tripdata.csv|
     |24.| March 2022| 202203-divvy-tripdata.csv|
     |25.| April 2022| 202204-divvy-tripdata.csv|
     |26.| May 2022| 202205-divvy-tripdata.csv|
     |27.| June 2022| 202206-divvy-tripdata.csv|
     |28.| July 2022| 202207-divvy-tripdata.csv|
     |29.| August 2022| 202208-divvy-tripdata.csv|
     |30.| September 2022| 202209-divvy-tripdata.csv|
     |31.| October 2022| 202210-divvy-tripdata.csv|
     |32.| November 2022| 202211-divvy-tripdata.csv|
     |33.| December 2022| 202212-divvy-tripdata.csv|
     |34.| Janvary 2023| 202301-divvy-tripdata.csv|
     |35.| Febrary 2023| 202302-divvy-tripdata.csv|
     |36.| March 2023| 202303-divvy-tripdata.csv|
     |37.| April 2023| 202304-divvy-tripdata.csv|
     |38.| May 2023| 202305-divvy-tripdata.csv|
     |39.| June 2023| 202306-divvy-tripdata.csv|
     |40.| July 2023| 202307-divvy-tripdata.csv|
     |41.| August 2023| 202308-divvy-tripdata.csv|
     |42.|September 2023| 202309-divvy-tripdata.csv|
     |43.| October 2023| 202310-divvy-tripdata.csv|
     |44.| November 2023| 202311-divvy-tripdata.csv|
   
4. Add the following columns:<br/>
        a. ride_length- calculates total ride length as ended_at - started_at <br/>
        b. day_of_week- calculates day of the week using start_at column using : =TEXT(Col,"dddd") <br/>
6. Calculate the follwoing metrics:<br/>
        a. total no of rides: per hour, per day, per week and for type of bike <br/>
        b. Average ride lentgh between members and casual.<br/>
        c. Calculate the max ridelength for each month.<br/>
        
        
7. Summarize the calculations as follows:<br/>
        |S.NO| Month|Max Ride Length |
     |---|-----|-----|    
     |1.| April 2020|40.77780093|
     |2.| May 2020| 20.06728009|
     |3.| June 2020| 28.66041667|
     |4.| July 2020| 34.69822917|
     |5.| August 2020| 28.36553241|
     |6.| September 2020| 37.69677083|
     |7.| October 2020| 24.80859954|
     |8.| November 2020| 24.95416667|
     |9.| December 2020| 6.764571759|
     |10.| Janvary 2021| 13.76799769|
     |11.| Febrary 2021|20.9230787|
     |12.| March 2021|22.00114583|
     |13.| April 2021| 33.17826389|
     |14.| May 2021| 37.44555556|
     |15.| June 2021| 38.85010417|
     |16.| July 2021| 34.1021875|
     |17.| August 2021|28.90914352|
     |18.| September 2021|22.81842593|
     |19.| October 2021|28.26737269|
     |20.| November 2021|24.30396991|
     |21.| December 2021|21.11149306|
     |22.| Janvary 2022|20.32715278|
     |23.| Febrary 2022|7.573587963|
     |24.| March 2022|23.85699074|
     |25.| April 2022|14.66819444|
     |26.| May 2022| 25.17902778|
     |27.| June 2022|24.8754398|
     |28.| July 2022|23.75612269|
     |29.| August 2022|19.53428241|
     |30.| September 2022|19.2344213|
     |31.| October 2022|28.74114583|
     |32.| November 2022|13.61986111|
     |33.| December 2022|13.30354167|
     |34.| Janvary 2023|23.33592593|
     |35.| Febrary 2023|13.10122685|
     |36.| March 2023|11.67226852|
     |37.| April 2023|12.7746412|
     |38.| May 2023|20.28508102|
     |39.| June 2023|20.46247685|
     |40.| July 2023|35.73708333|
     |41.| August 2023|68.39518519|
     |42.|September 2023|1.047060185|
     |43.| October 2023|1.041631944|
     |44.| November 2023|1.041956019|
   
   

