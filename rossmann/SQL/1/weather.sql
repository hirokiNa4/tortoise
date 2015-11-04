create table weather_BB (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;


LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/BB.csv' 
INTO TABLE weather_BB FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;





create table weather_BE (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/BE.csv' 
INTO TABLE weather_BE FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;




create table weather_BW (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/BW.csv' 
INTO TABLE weather_BW FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;







create table weather_BY (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/BY.csv' 
INTO TABLE weather_BY FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;







create table weather_HB (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/HB.csv' 
INTO TABLE weather_HB FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;


create table weather_HE (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/HE.csv' 
INTO TABLE weather_HE FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;





create table weather_HH (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/HH.csv' 
INTO TABLE weather_HH FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;



create table weather_MV (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/MV.csv' 
INTO TABLE weather_MV FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;




create table weather_NI (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/NI.csv' 
INTO TABLE weather_NI FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;




create table weather_NW (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/NW.csv' 
INTO TABLE weather_NW FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;




create table weather_RP (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/RP.csv' 
INTO TABLE weather_RP FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;



create table weather_SH (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/SH.csv' 
INTO TABLE weather_SH FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;





create table weather_SL (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/SL.csv' 
INTO TABLE weather_SL FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;








create table weather_SN (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/SN.csv' 
INTO TABLE weather_SN FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 



create table weather_ST (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/ST.csv' 
INTO TABLE weather_ST FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;





create table weather_TH (
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/weather/TH.csv' 
INTO TABLE weather_TH FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;




create table weather (
    state                          varchar(12),
    logdate                        varchar(10),
    max_temperaturec               varchar(256),
    mean_temperaturec              varchar(256),
    min_temperaturec               varchar(256),
    dew_pointc                     varchar(256),
    meandew_pointc                 varchar(256),
    min_dewpointc                  varchar(256),
    max_humidity                   varchar(256),
    mean_humidity                  varchar(256),
    min_humidity                   varchar(256),
    max_sea_level_pressurehpa      varchar(256),
    mean_sea_level_pressurehpa     varchar(256),
    min_sea_level_pressurehpa      varchar(256),
    max_visibilitykm               varchar(256),
    mean_visibilitykm              varchar(256),
    min_visibilitykm               varchar(256),
    max_wind_speedkm_h             varchar(256),
    mean_wind_speedkm_h            varchar(256),
    max_gust_speedkm_h             varchar(256),
    precipitationmm                varchar(256),
    cloudcover                     varchar(256),
    events                         varchar(256),
    winddirdegrees                 varchar(256)
)
;

insert into weather select 'BB', a.* from weather_BB a;
insert into weather select 'BE', a.* from weather_BE a;
insert into weather select 'BW', a.* from weather_BW a;
insert into weather select 'BY', a.* from weather_BY a;
insert into weather select 'HB', a.* from weather_HB a;
insert into weather select 'HE', a.* from weather_HE a;
insert into weather select 'HH', a.* from weather_HH a;
insert into weather select 'MV', a.* from weather_MV a;
insert into weather select 'NI', a.* from weather_NI a;
insert into weather select 'NW', a.* from weather_NW a;
insert into weather select 'RP', a.* from weather_RP a;
insert into weather select 'SH', a.* from weather_SH a;
insert into weather select 'SL', a.* from weather_SL a;
insert into weather select 'SN', a.* from weather_SN a;
insert into weather select 'ST', a.* from weather_ST a;
insert into weather select 'TH', a.* from weather_TH a;

drop table weather_BB;
drop table weather_BE;
drop table weather_BW;
drop table weather_BY;
drop table weather_HB;
drop table weather_HE;
drop table weather_HH;
drop table weather_MV;
drop table weather_NI;
drop table weather_NW;
drop table weather_RP;
drop table weather_SH;
drop table weather_SL;
drop table weather_SN;
drop table weather_ST;
drop table weather_TH;





