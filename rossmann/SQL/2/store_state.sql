create table store_state (
    store    varchar(4),
    state    varchar(16)
)
;


LOAD DATA LOCAL 
INFILE '/Users/Komai/OneDrive/kaggle/rossmann/data/store_states.csv' 
INTO TABLE store_state FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES
;
update store_state set state = 'BB' where state like '%BB%';
update store_state set state = 'BE' where state like '%BE%';
update store_state set state = 'BW' where state like '%BW%';
update store_state set state = 'BY' where state like '%BY%';
update store_state set state = 'HB' where state like '%HB%';
update store_state set state = 'HE' where state like '%HE%';
update store_state set state = 'HH' where state like '%HH%';
update store_state set state = 'MV' where state like '%MV%';
update store_state set state = 'NI' where state like '%NI%';
update store_state set state = 'NW' where state like '%NW%';
update store_state set state = 'RP' where state like '%RP%';
update store_state set state = 'SH' where state like '%SH%';
update store_state set state = 'SL' where state like '%SL%';
update store_state set state = 'SN' where state like '%SN%';
update store_state set state = 'ST' where state like '%ST%';
update store_state set state = 'TH' where state like '%TH%';
