{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  case_number,
  {{capitalize('defendant_name') }} as defendant_name
from {{source('source', 'case_defendants')}}