{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  case_number,
  enf_conclusion_action_code,
  primary_law,
  coalesce('Region ' || trim(region_code), 'Not Informed') as region_code,
  activity_type_code,
  cast(fed_penalty_assessed_amt as float) as fed_penalty_assessed_amt,
  cast(state_local_penalty_amt as float) as state_local_penalty_amt,
  cast(sep_amt as float) as sep_amt,
  cast(compliance_action_cost as float) as compliance_action_cost,
  cast(cost_recovery_awarded_amt as float) as cost_recovery_awarded_amt
from {{source('source', 'case_enforcement_conclusions')}}