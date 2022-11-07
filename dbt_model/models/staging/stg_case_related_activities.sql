{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  distinct case_number,
  activity_status_date,
  activity_type_code
from {{source('source', 'case_related_activities')}}
