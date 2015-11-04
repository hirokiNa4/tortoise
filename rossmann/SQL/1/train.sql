create table train (
    store            varchar(4),
    day_of_week      int,
    logdate          varchar(10),
    sales            int,
    customers        int,
    open             varchar(4),
    promo            varchar(4),
    state_holiday    varchar(4),
    school_holiday   varchar(4)
)
;


LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/train.csv' 
INTO TABLE train FIELDS TERMINATED BY ','
IGNORE 1 LINES 
;

