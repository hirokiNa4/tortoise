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
--train + weather data 
select * from train_weather limit 1000;
select * from test_weather limit 1000;
--train + weather data + sales average by store and day_of_week
select * from train_weather_avg_op1 limit 1000;
select * from test_weather_avg_op1 limit 1000;


--
select * from tmp_submission_20151103_1;
select * from tmp_submission_20151109_1;

--csvファイル出力（test_20151109_1）
select 
    'id',
    'avg_sales', 'store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
    'state_holiday', 	'school_holiday','promo','promo2','store_type',	'assortment',
    'state', 'logdate', 'rain', 'fog', 'snow', 'hail', 'thunder'
from dual 
union 
select * from test_weather_avg_op1 
--INTO OUTFILE '/Users/Komai/OneDrive/tortoise/rossmann/R/data/test_20151109_1.csv' FIELDS TERMINATED BY ','
limit 1000
;





--create submission data 
select 
    'Id', 'Sales'
from dual 
union --ヘッダーを出力するとき、こーやる
select 
    aaa.id,
    case
        when bbb.id is null then 0
        else bbb.sales
    end sales
from ( 
    select * from test
) aaa
left outer join (
    select * from tmp_submission_20151109_1
) bbb
on aaa.id = bbb.id
--limit 1000
INTO OUTFILE '/Users/Komai/Onedrive/tortoise/rossmann/Submission/20151109_1.csv' 
FIELDS TERMINATED BY ','
;














