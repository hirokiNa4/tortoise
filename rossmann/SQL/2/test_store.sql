create table test_store (
    id                            varchar(256),
    store                         varchar(4)   ,
    day_of_week                   int(11)      ,
    logdate                       varchar(10)  ,
    logyear                       varchar(4)   ,
    logmonth                      varchar(2)   ,
    open                          varchar(4)   ,
    promo                         varchar(4)   ,
    state_holiday                 varchar(4)   ,
    school_holiday                varchar(4)   ,
    promo2                        varchar(4)   ,
    promo2_since_week             varchar(256) ,
    promo2_since_year             varchar(256) ,
    promo_interval                varchar(512) ,
    store_type                    varchar(3)   ,
    assortment                    varchar(3)   ,
    competition_distance          varchar(256) ,
    competition_open_since_month  varchar(256) ,
    competition_open_since_year   varchar(256)
)
;



insert into test_store
select 
    aa.*,
    bb.promo2,
    bb.promo2_since_week,
    bb.promo2_since_year,
    bb.promo_interval,
    bb.store_type,
    bb.assortment,
    bb.competition_distance,
    bb.competition_open_since_month,
    bb.competition_open_since_year
from (
    select
        id,
        --sales, 
        store, 
        day_of_week, 
        logdate,  
        substr(logdate, 1,4) logyear,
        substr(logdate, 6,2) logmonth,
        --customers, 
        open,  
        promo, 
        state_holiday,  
        school_holiday
    from test
) aa
left outer join (
    select
        store,
        store_type,
        assortment,
        competition_distance,
        competition_open_since_month,
        competition_open_since_year,
        promo2,
        promo2_since_week,
        promo2_since_year,
        promo_interval
    from store
) bb
on aa.store = bb.store
--limit 100
;
