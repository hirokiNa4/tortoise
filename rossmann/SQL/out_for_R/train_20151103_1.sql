--csvファイル出力
select 
    'sales','customers','store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
    'state_holiday', 	'school_holiday','promo','promo2','store_type',	'assortment',
    'state', 'logdate', 'rain', 'fog', 'snow', 'hail', 'thunder'
from dual 
union --ヘッダーを出力するとき、こーやる
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
--limit 1500
INTO OUTFILE '/Users/Komai/OneDrive/kaggle/rossmann/R/data/train_20151103_1.csv' FIELDS TERMINATED BY ','
;