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
--train + weather data 
select * from train_weather limit 1000;
select * from test_weather limit 1000;
--train + weather data + sales average by store and day_of_week
select * from train_weather_avg_op1 limit 1000;
select * from test_weather_avg_op1 limit 1000;


--
select * from tmp_submission_20151103_1;
select * from tmp_submission_20151109_1;

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





--create submission data 
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
    select * from tmp_submission_20151109_1
) bbb
on aaa.id = bbb.id
--limit 1000
INTO OUTFILE '/Users/Komai/Onedrive/tortoise/rossmann/Submission/20151109_1.csv' 
FIELDS TERMINATED BY ','
;



select * from train_weather_avg_op1 limit 100;


select * from train_op1_flg_yoko;
drop table train_op1_flg_yoko;

--pylean2は文字列を受け付けてくれん
--カテゴリ変数をそれぞ数値化した上で、フラグ化する
insert into train_op1_flg_yoko
select
    sales,
    avg_sales,
    store,
    logyear,
    logmonth,
    day_of_week,
    competition,
    open,
    case state_holiday when 0   then 1 else 0 end state_holiday_0,
    case state_holiday when 'a' then 1 else 0 end state_holiday_a,
    case state_holiday when 'b' then 1 else 0 end state_holiday_b,
    case state_holiday when 'c' then 1 else 0 end state_holiday_c,
    school_holiday,
    promo,
    promo2,
    case store_type when 'a' then 1 else 0 end store_type_a,
    case store_type when 'b' then 1 else 0 end store_type_b,
    case store_type when 'c' then 1 else 0 end store_type_c,
    case store_type when 'd' then 1 else 0 end store_type_d,
    --
    case assortment when 'a' then 1 else 0 end assortment_a,
    case assortment when 'b' then 1 else 0 end assortment_b, 
    case assortment when 'c' then 1 else 0 end assortment_c,
    --
    case state when 'BE' then 1 else 0 end state_BE,
    case state when 'BW' then 1 else 0 end state_BW,
    case state when 'BY' then 1 else 0 end state_BY,
    case state when 'HB' then 1 else 0 end state_HB,
    case state when 'HE' then 1 else 0 end state_HE,
    case state when 'HH' then 1 else 0 end state_HH,
    case state when 'NW' then 1 else 0 end state_NW,
    case state when 'RP' then 1 else 0 end state_RP,
    case state when 'SH' then 1 else 0 end state_SH,
    case state when 'SN' then 1 else 0 end state_SN,
    case state when 'ST' then 1 else 0 end state_ST,
    case state when 'TH' then 1 else 0 end state_TH,    
    
    rain,
    fog,
    snow,
    hail,
    thunder
from train_weather_avg_op1
--limit 1000
;






select count(*) from tmp_submission_20151123_2 aaa
left outer join tmp_submission_20151109_1 bbb
on aaa.id = bbb.id
;

select * from tmp_submission_20151109_1
limit 1000
;





