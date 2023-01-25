drop table newdate;
create table pollution_db2.NEWDATE(`Date Time` datetime, `PM2.5` double, `VPM2.5` double, `location` text);
ALTER TABLE NEWDATE
MODIFY COLUMN `Date Time` DATETIME;
INSERT INTO pollution_db2.newdate select date_format(`Date Time`,'2019-%m-%d 08:%m:%S'), `PM2.5`, `VPM2.5`, `location id` FROM pollution_db2.readings where `Date Time` between '2010-01-01' and '2019-12-31';

SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'AURN Bristol Centre';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Brislington Depot';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Rupert Street';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'IKEA M32';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Old Market';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Parson Street School';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Temple Meads Station';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Wells Road';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Trailer Portway P&R';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Newfoundland Road Police Station';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= "Shiner's Garage";
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'AURN St Pauls';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Bath Road';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Cheltenham Road \ Station Road';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Fishponds Road';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'CREATE Centre Roof';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Temple Way';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Colston Avenue';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Marlborough Street';
