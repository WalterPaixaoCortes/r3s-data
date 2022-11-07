{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  distinct case_number,
  enf_type_desc
from {{source('source', 'case_enforcement_type')}}
