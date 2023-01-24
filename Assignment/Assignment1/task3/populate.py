
import mysql.connector
from mysql.connector import Error
import pandas as pd


con = mysql.connector.connect(host='localhost', user='root', password='Obinnap.com350')
cursor = con.cursor()
cursor.execute('DROP DATABASE IF EXISTS pollution_db2;')
cursor.execute('CREATE DATABASE pollution_db2;')

empdata = pd.read_csv('clean.csv', delimiter = ',')
df = pd.read_csv('Schemas.csv', delimiter = ',')
loc_df=pd.DataFrame({'ID':[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19], 'Location':['AURN Bristol Centre','Brislington Depot','Rupert Street','IKEA M32','Old Market','Parson Street School','Temple Meads Station','Wells Road','Trailer Portway P&R','Newfoundland Road Police Station',"Shiner's Garage",'AURN St Pauls','Bath Road','Cheltenham Road \ Station Road','Fishponds Road','CREATE Centre Roof','Temple Way','Colston Avenue','Marlborough Street'], 'geolocation':['51.4572041156, -2.58564914143','51.4425372726, -2.55995583224', '51.4554331987, -2.59626237324', '51.472551274248936, -2.5648000171332783', '51.4560189999, -2.58348949026', '51.432675707, -2.60495665673', '51.44832588498618, -2.58276986010026', '51.4278638883, -2.56374153315','51.4899934596, -2.68877856929', '51.4610199950486, -2.582618611439765','51.4577930324, -2.56271419977', '51.4628294172, -2.58454081635', '51.4425372726, -2.57137536073', '51.467404601530994, -2.591354888800722', '51.47521197714306, -2.5441866427744717', '51.44726232285324, -2.6222217159231587','51.45273269546031, -2.5841635446239657', '51.455269382758324, -2.596648828557916','51.459843866089386, -2.593398686952629'  ]})


#DATAFRAME FOR THE STATION TABLE
new_df=empdata.drop(columns="geo_point_2d").fillna(0)
for i,row in new_df.iterrows():
            #here %S means string values 
            if row[17]=="AURN Bristol Centre":
                new_df=new_df.replace("AURN Bristol Centre", 1)
            elif row[17]=="Brislington Depot":
                new_df=new_df.replace("Brislington Depot", 2)
            elif row[17]=="Rupert Street":
                new_df=new_df.replace("Rupert Street", 3)
            elif row[17]=="IKEA M32":
                new_df=new_df.replace("IKEA M32", 4)
            elif row[17]=="Old Market":
                new_df=new_df.replace("Old Market", 5)
            elif row[17]=="Parson Street School":
                new_df=new_df.replace("Parson Street School", 6)
            elif row[17]=="Temple Meads Station":
                new_df=new_df.replace("Temple Meads Station", 7)
            elif row[17]=="Wells Road":
                new_df=new_df.replace("Wells Road", 8)
            elif row[17]=="Trailer Portway P&R":
                new_df=new_df.replace("Trailer Portway P&R", 9)
            elif row[17]=="Newfoundland Road Police Station":
                new_df=new_df.replace("Newfoundland Road Police Station", 10)
            elif row[17]=="Shiner's Garage":
                new_df=new_df.replace("Shiner's Garage", 11)
            elif row[17]=="AURN St Pauls":
                new_df=new_df.replace("AURN St Pauls", 12)
            elif row[17]=="Bath Road":
                new_df=new_df.replace("Bath Road", 13)
            elif row[17]=="Cheltenham Road \ Station Road":
                new_df=new_df.replace("Cheltenham Road \ Station Road", 14)
            elif row[17]=="Fishponds Road":
                new_df=new_df.replace("Fishponds Road", 15)
            elif row[17]=="CREATE Centre Roof":
                new_df=new_df.replace("CREATE Centre Roof", 16)
            elif row[17]=="Temple Way":
                new_df=new_df.replace("Temple Way", 17)
            elif row[17]=="Colston Avenue":
                new_df=new_df.replace("Colston Avenue", 18)
            elif row[17]=="Marlborough Street":
                new_df=new_df.replace("Marlborough Street", 19)
print(new_df)
try:
    conn = mysql.connector.connect(host='localhost', database='pollution_db2', user='root', password='Obinnap.com350')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)
        cursor.execute('DROP TABLE IF EXISTS readings;')
        cursor.execute('DROP TABLE IF EXISTS stations;')
        cursor.execute('DROP TABLE IF EXISTS schema_table;')
        print('Creating table....')
# in the below line please pass the create table statement which you want #to create
        cursor.execute("CREATE TABLE `pollution_db2`.`readings` ( `Date Time` datetime, `NOx` double, `NO2` double, `NO` double, `SiteID` int, `PM10` double, `NVPM10` text, `VPM10` text, `NVPM2.5` text, `PM2.5` text, `VPM2.5` text, `CO` text, `O3` text, `SO2` text, `Temperature` text, `RH` text, `Air Pressure` text, `Location ID` int, `DateStart` text, `DateEnd` text, `Current` text, `Instrument Type,` text)")
        cursor.execute("CREATE TABLE `pollution_db2`.`stations` (`ID` int, `location` text, `geolocation` text )")
        cursor.execute("CREATE TABLE `pollution_db2`.`schema_table` (`measure` text, `description` text, `unit` text )")

        print("Table is created....")
        #loop through the data frame
        for i,row in loc_df.iterrows():
            
            #here %S means string values 
           
            #here %S means string values 
            sql = "INSERT INTO pollution_db2.stations VALUES (%s,%s,%s)"
            cursor.execute(sql, tuple(row))
            print("Record inserted")
            # the connection is not auto committed by default, so we must commit to save our changes
            conn.commit()
        for i,row in df.iterrows():
            #here %S means string values 
           
            #here %S means string values 
            sql = "INSERT INTO pollution_db2.schema_table VALUES (%s,%s,%s)"
            cursor.execute(sql, tuple(row))
            print("Record inserted")
            # the connection is not auto committed by default, so we must commit to save our changes
            conn.commit()
        for i,row in new_df.iterrows():
            #here %S means string values 
           
            #here %S means string values 
            sql = "INSERT INTO pollution_db2.readings VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql, tuple(row))
            print("Record inserted")
            # the connection is not auto committed by default, so we must commit to save our changes
            conn.commit()
            
except Error as e:
            print("Error while connecting to MySQL", e)
            

