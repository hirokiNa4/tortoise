create table train_weather_avg_op1 (
    sales                 int,
    avg_sales             int,
    customers             int,
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


