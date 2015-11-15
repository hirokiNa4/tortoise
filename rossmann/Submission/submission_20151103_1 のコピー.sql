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