use rossmann;

select * from train limit 2000;
select * from store limit 500;
select * from test limit 500;
--sore IDの一覧
select * from train_id;
select * from test_id;
--train + store
select * from train_store limit 500;
select * from test_store limit 500;
--天気
select * from weather limit 2000;
--store + states
select * from store_state;
--
select * from tmp_tr_store_state limit 500;
select * from tmp_ts_store_state limit 500;
--
select * from tmp_submission_20151103_1;
--train + weather data 
select * from train_weather limit 1000;
select * from test_weather limit 1000;
--train + weather data + sales average by store and day_of_week
select * from train_weather_avg_op1 limit 1000;
select * from test_weather_avg_op1 limit 1000;


--csvファイル出力（train_20151109_1）
select 
    'sales',
    'avg_sales', 'customers','store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
    'state_holiday', 	'school_holiday','promo','promo2','store_type',	'assortment',
    'state', 'logdate', 'rain', 'fog', 'snow', 'hail', 'thunder'
from dual 
union 
select * from train_weather_avg_op1 
INTO OUTFILE '/Users/Komai/OneDrive/tortoise/rossmann/R/data/train_20151109_1.csv' FIELDS TERMINATED BY ','
--limit 1000
;




