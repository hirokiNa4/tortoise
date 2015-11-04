create table store (
    store                            varchar(4),
    store_type                       varchar(3),
    assortment                       varchar(3),
    competition_distance             varchar(256),
    competition_open_since_month     varchar(256),
    competition_open_since_year      varchar(256),
    promo2                           varchar(4),
    promo2_since_week                varchar(256),
    promo2_since_year                varchar(256),
    promo_interval                   varchar(512)
)
;



LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/store.csv' 
INTO TABLE store FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;

