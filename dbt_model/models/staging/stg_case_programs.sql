{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  case_number,
  program_desc
from {{source('source', 'case_programs')}}