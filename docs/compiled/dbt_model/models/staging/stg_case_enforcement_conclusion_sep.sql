

with raw_dates as (
select distinct case_number,
       cast(coalesce(sep_amt,'0') as float) as sep_amt
  from source."case_enforcement_conclusion_sep")
   
select 
    r.case_number, 
    group_concat(s.sep_category_desc, ',') AS sep_category_desc, 
    r.sep_amt
from raw_dates r inner join source."case_enforcement_conclusion_sep" s on r.case_number = s.case_number
group by r.case_number, r.sep_amt