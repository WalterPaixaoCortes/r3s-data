{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

with raw_dates as (
select distinct case_number,
       cast(coalesce(sep_amt,'0') as float) as sep_amt
  from {{source('source', 'case_enforcement_conclusion_sep')}})
   
select 
    r.case_number, 
    string_agg(s.sep_category_desc, ',') AS sep_category_desc, 
    r.sep_amt
from raw_dates r inner join {{source('source', 'case_enforcement_conclusion_sep')}} s on r.case_number = s.case_number
group by r.case_number, r.sep_amt
