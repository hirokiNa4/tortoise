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



--csvファイル出力
--select 
--    'sales','customers','store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
--    'state_holiday', 	'school_holiday','promo','promo2','store_type',	'assortment',
--    'state', 'logdate', 'rain', 'fog', 'snow', 'hail', 'thunder'
--from dual 
--union --ヘッダーを出力するとき、こーやる
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







--csvファイル出力
--select 
--    'sales','customers','store','day_of_week','logyear','logmonth',  'competition','competition_distance', 'open',
--    'state_holiday', 	'school_holiday','promo','promo2','store_type',	'assortment'
--from dual 
--union --ヘッダーを出力するとき、こーやる
select
    aaa.sales,
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
    bbb.state,
    aaa.logdate
from (
    select
        sales,
        customers,
        logdate,
        store,                        
        day_of_week,                  
        logyear,                      
        logmonth,        
        case
            when competition_distance <> '' then '1'
            when competition_distance = ''  then '0'
        end competition,
        open,                            
        state_holiday,    
        school_holiday,          
        promo,
        case
            when promo2 = '1' then 
                case    
                    when logyear > promo2_since_year then '1'          
                    when logyear <= promo2_since_year then 
                        case
                            when cast(logmonth as signed) >= promo2_since_week/4 then '1'
                            else '0'
                        end
                end
            else '0'
        end promo2,                                    
        store_type,                   
        assortment
    from train_store 
) aaa
left outer join (
    select store, state from store_state
) bbb
on aaa.store = bbb.store
--INTO OUTFILE '/Users/Komai/OneDrive/kaggle/rossmann/R/out/train_20151101_1.csv' FIELDS TERMINATED BY ','
--limit 1000
;




--train_20151103_1.csv
select 
    'id',
    --'sales','customers',
    'store', 'logyear','logmonth', 'day_of_week', 'competition', 'open',
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
    select * from tmp_ts_store_state 
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
INTO OUTFILE '/Users/Komai/Onedrive/tortoise/rossmann/R/data/test_20151103_1.csv' FIELDS TERMINATED BY ','
;








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
    select * from tmp_submission_20151103_1
) bbb
on aaa.id = bbb.id
--limit 1000
INTO OUTFILE '/Users/Komai/Onedrive/tortoise/rossmann/Submission/20151103_1.csv' 
FIELDS TERMINATED BY ','
;






