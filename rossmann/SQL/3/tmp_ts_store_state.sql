create table tmp_ts_store_state (
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
    logdate               varchar(256)
)
;

insert into tmp_ts_store_state
select
    aaa.id,
    --aaa.sales,
    --aaa.customers,
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
        id,
        --sales,
        --customers,
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
    from test_store 
) aaa
left outer join (
    select store, state from store_state
) bbb
on aaa.store = bbb.store
limit 1000
;
