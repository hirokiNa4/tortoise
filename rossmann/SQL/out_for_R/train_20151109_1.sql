--csvファイル出力
select 
    'sales',
    'avg_sales', 'customers','store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
    'state_holiday',    'school_holiday','promo','promo2','store_type', 'assortment',
    'state', 'logdate', 'rain', 'fog', 'snow', 'hail', 'thunder'
from dual 
union 
select * from train_weather_avg_op1 
INTO OUTFILE '/Users/Komai/OneDrive/tortoise/rossmann/R/data/train_20151109_1.csv' FIELDS TERMINATED BY ','
--limit 1000
;