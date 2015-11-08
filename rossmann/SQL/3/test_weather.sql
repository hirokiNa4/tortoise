create table test_weather (
    id                    varchar(256),
    store                 varchar(4),
    logyear               varchar(256),
    logmonth              varchar(256),    
    day_of_week           varchar(2),
    competition           varchar(1),
    open                  varchar(1),
    state_holiday         varchar(1),
    school_holiday        varchar(1),
    promo                 varchar(1),
    promo2                varchar(1),
    store_type            varchar(1),
    assortment            varchar(1),
    state                 varchar(256),
    logdate               varchar(256),
    rain                  varchar(2),
    fog                   varchar(2),
    snow                  varchar(2),
    hail                  varchar(2),
    thunder               varchar(2)
)
;



insert into train_weather
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
--INTO OUTFILE '/Users/Komai/OneDrive/kaggle/rossmann/R/data/train_20151103_1.csv' FIELDS TERMINATED BY ','
;





