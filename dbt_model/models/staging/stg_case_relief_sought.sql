{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  case_number,
  relief_desc
from {{source('source', 'case_relief_sought')}}