DROP TABLE newTABLE;
create table newtable(`Date Time` datetime, `PM2.5` text, `VPM2.5` text, `location id` text);

INSERT INTO newtable select `Date Time`, `PM2.5`, `VPM2.5`, `location ID` FROM pollution_db2.readings where `Date Time` between '2019-01-01' and '2019-12-31';
ALTER TABLE newtable
MODIFY COLUMN `Date Time` DATETIME;
SELECT `location id`, AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'AURN Bristol Centre'  AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Brislington Depot'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Rupert Street'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'IKEA M32'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Old Market'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Parson Street School'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Temple Meads Station'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Wells Road'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Trailer Portway P&R'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Newfoundland Road Police Station'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= "Shiner's Garage"AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'AURN St Pauls'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Bath Road'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Cheltenham Road \ Station Road'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Fishponds Road'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'CREATE Centre Roof'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Temple Way'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Colston Avenue'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
SELECT AVG(`PM2.5`), AVG(`VPM2.5`) FROM newtable where `location id`= 'Marlborough Street'AND date_format(`Date Time`,'%Y')='2019'AND date_format(`Date Time`,'%H')<='09'AND date_format(`Date Time`,'%H')>='07';
