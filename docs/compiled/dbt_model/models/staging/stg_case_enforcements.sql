

select 
  case_number,
  state_code,
  region_code,
  case_name,
  activity_type_code,
  activity_status_desc,
  activity_status_date,
  enf_outcome_desc,
  total_penalty_assessed_amt,
  total_cost_recovery_amt,
  total_comp_action_amt,
  hq_division,
  voluntary_self_disclosure_flag,
  multimedia_flag
from "postgres"."source"."case_enforcements"