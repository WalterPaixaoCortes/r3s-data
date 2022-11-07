{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  distinct case_number,
  statute_code
from {{source('source', 'case_law_sections')}}