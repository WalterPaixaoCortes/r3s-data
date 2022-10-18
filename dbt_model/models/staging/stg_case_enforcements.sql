{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select 
  case_number,
  state_code,
  coalesce('Region ' || trim(region_code), 'Not Informed') as region_code,
  initcap(coalesce(case_name, 'Not Informed')) as case_name,
  activity_type_code,
  activity_status_desc,
  activity_status_date::timestamp,
  enf_outcome_desc,
  cast(coalesce(total_penalty_assessed_amt,'0') as float) as total_penalty_assessed_amt,
  cast(coalesce(total_cost_recovery_amt,'0') as float) as total_cost_recovery_amt,
  cast(coalesce(total_comp_action_amt,'0') as float) as total_comp_action_amt,
  hq_division,
  voluntary_self_disclosure_flag,
  multimedia_flag
from {{source('source', 'case_enforcements')}}  
