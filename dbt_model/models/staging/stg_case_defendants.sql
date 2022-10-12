{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  case_number,
  initcap(coalesce(defendant_name, 'Not Informed')) as defendant_name
from {{source('source', 'case_defendants')}}