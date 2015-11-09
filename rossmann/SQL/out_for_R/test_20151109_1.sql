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
