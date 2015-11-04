create table tmp_submission_20151103_1 (
    id      varchar(256),
    sales   double
)
;



LOAD DATA LOCAL 
INFILE '/Users/Komai/Onedrive/tortoise/rossmann/R/out/out_20151103_1.csv' 
INTO TABLE tmp_submission_20151103_1 FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES 
;

