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
--
select * from train_weather limit 1000;



--天気データに平均を付与
insert into train_weather_avg_op1
select
    aaa.sales,
    bbb.avg_sales,
    aaa.customers,
    aaa.store,
    aaa.logyear,
    aaa.logmonth,
    aaa.day_of_week,
    aaa.competition,
    aaa.open,
    aaa.state_holiday,
    aaa.school_holiday,
    aaa.promo,
    aaa.promo2,
    aaa.store_type,
    aaa.assortment,
    aaa.state,
    aaa.logdate,
    aaa.rain,
    aaa.fog,
    aaa.snow,
    aaa.hail,
    aaa.thunder
from (
    select * from train_weather 
) aaa
left outer join (
    select 
        store, day_of_week, avg(sales) avg_sales 
    from train 
    where open = 1
    group by store, day_of_week
) bbb
on aaa.store = bbb.store and aaa.day_of_week = bbb.day_of_week
--limit 1000
;








--csvファイル出力
--select 
--    'sales','customers','store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
--    'state_holiday', 	'school_holiday','promo','promo2','store_type',	'assortment',
--    'state', 'logdate', 'rain', 'fog', 'snow', 'hail', 'thunder'
--from dual 
--union --ヘッダーを出力するとき、こーやる
--insert into train_weather
select 
    aaa.*,
    bbb.rain,
    bbb.fog,
    bbb.snow,
    bbb.hail,
    bbb.thunder
from (
    select * from tmp_tr_store_state 
    where open = 1
) aaa
left outer join (
    select 
        state,
        logdate,
        case 
            when events = '' then '1'
            else '0'
        end sunny,
        case
            when events like '%Rain%' then 1
            else '0'
        end rain,
        case
            when events like '%Fog%' then 1
            else '0'
        end fog,
        case
            when events like '%Snow%' then 1
            else '0'
        end snow,
        case
            when events like '%Hail%' then 1
            else '0'
        end hail,
        case
            when events like '%Thunderstorm%' then 1
            else '0'
        end thunder
    from weather
) bbb
on aaa.state = bbb.state and aaa.logdate = bbb.logdate
limit 1500
--INTO OUTFILE '/Users/Komai/OneDrive/kaggle/rossmann/R/data/train_20151103_1.csv' FIELDS TERMINATED BY ','
;







