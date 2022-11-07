
  
    

  create  table "postgres"."staging"."stg_case_penalties__dbt_tmp"
  as (
    

select
  distinct case_number,
  fed_penalty,
  st_lcl_penalty,
  total_sep,
  cast(coalesce(compliance_action_cost,'0') as float) as compliance_action_cost,
  cast(coalesce(federal_cost_recovery_amt,'0') as float) as federal_cost_recovery_amt,
  cast(coalesce(state_local_cost_recovery_amt, '0') as float) as state_local_cost_recovery_amt
from "postgres"."source"."case_penalties"
  );
  