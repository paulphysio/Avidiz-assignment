DROP TABLE NEWDATE;
create table pollution_db2.NEWDATE(`Date Time` text, `PM2.5` text, `VPM2.5` text, `location` text);

INSERT INTO pollution_db2.newdate select `Date Time`, `PM2.5`, `VPM2.5`, `location ID` FROM pollution_db2.readings where `Date Time` between '2010-01-01' and '2019-12-31';
ALTER TABLE NEWDATE
MODIFY COLUMN `Date Time` DATETIME;
DROP TABLE mean_table;
create table pollution_db2.mean_table(`mean PM2.5` text, `mean VPM2.5` text);
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'AURN Bristol Centre'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Brislington Depot'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Rupert Street'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'IKEA M32'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Old Market'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Parson Street School' AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Temple Meads Station'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Wells Road'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Trailer Portway P&R'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Newfoundland Road Police Station'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= "Shiner's Garage"  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'AURN St Pauls'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Bath Road'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Cheltenham Road \ Station Road'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Fishponds Road'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'CREATE Centre Roof'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Temple Way'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Colston Avenue'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
INSERT INTO pollution_db2.mean_table SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newdate where location= 'Marlborough Street'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')='09'AND date_format(`Date Time`,'%H')>='07';
