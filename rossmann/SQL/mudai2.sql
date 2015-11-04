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


select max(logdate), min(logdate) from weather;

select max(logdate), min(logdate) from weather
where state = 'SN' and logdate = ''
;


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
    end thundr
from weather
limit 2000;



