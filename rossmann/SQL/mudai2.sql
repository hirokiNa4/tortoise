use rossmann;

select * from train limit 2000;
select * from store limit 500;
select * from test limit 500;
--sore IDの一覧
select * from train_id;
select * from test_id;
--train + store
select * from train_store limit 500;
--天気
select * from weather limit 2000;
--store + states
select * from store_state;




--csvファイル出力（test_20151109_1）
select 
    'store', 'day_of_week', 'sales', 'customers', 'open', 'promo',   
    'state_holiday', 	'school_holiday'
from dual 
union 
select store, day_of_week, sales, customers, open, promo, state_holiday,school_holiday  from train 
limit 1000
INTO OUTFILE '/Users/Komai/OneDrive/tortoise/rossmann/python/suuji_dake.csv' FIELDS TERMINATED BY ','

;