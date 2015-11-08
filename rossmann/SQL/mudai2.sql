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





select * from MedianTable2;

select 
    avg(a.Val)  MedianVal
from (
    select 
        Val
    from (
        select 
            Val,
            ( 
              select 
                  count(*)+1 
              from 
                  MedianTable2 bb 
              where bb.Val>aa.Val
            )  Rank
        from MedianTable2 aa
    ) a,
    (
        select 
            count(*) RecordCount 
        from MedianTable2
    ) b
    group by a.Val, a.Rank, b.RecordCount
    having 
        mod(b.RecordCount,2) = 0
    and (
        b.RecordCount/2  between a.Rank and a.Rank + count(*)-1
        or b.RecordCount/2+1 between a.Rank and a.Rank+count(*)-1
    )
    or 
        mod(b.RecordCount,2) = 1
    and ceil(b.RecordCount/2) between a.Rank and a.Rank+count(*)-1
)
;



    select 
        *--Val
    from (
        select 
            Val,
            ( 
              select 
                  count(*)+1 
              from 
                  MedianTable2 bb 
              where bb.Val>aa.Val
            )  Rank
        from MedianTable2 aa
    ) a,
    (
        select 
            count(*) RecordCount 
        from MedianTable2
    ) b

         