

  create  table "postgres"."staging"."stg_case_enforcements__dbt_tmp"
  as (
    

select 
  case_number,
  state_code,
  coalesce('Region ' || trim(region_code), 'Not Informed') as region_code,
  initcap(coalesce(case_name, 'Not Informed')) as case_name,
  activity_type_code,
  activity_status_desc,
  activity_status_date::timestamp,
  enf_outcome_desc,
  cast(total_penalty_assessed_amt as float) as total_penalty_assessed_amt,
  cast(total_cost_recovery_amt as float) as total_cost_recovery_amt,
  cast(total_comp_action_amt as float) as total_comp_action_amt,
  hq_division,
  voluntary_self_disclosure_flag,
  multimedia_flag
from "postgres"."source"."case_enforcements"
  );