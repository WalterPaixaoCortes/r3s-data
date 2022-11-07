
  
    

  create  table "postgres"."main"."fact_case_conclusions__dbt_tmp"
  as (
    

select
  con.*,
  sep.sep_category_desc,
  sep.sep_amt as sep_amt_sep,
  pol.pollutant_name,
  pol.average_annual_value,
  pol.pollutant_unit_code,
  pol.media_code,
  dol.state_local_penalty_amt as state_local_penalty_amt_dol,
  dol.cost_recovery_amt,
  dol.fed_penalty,
  dol.compliance_action_cost as compliance_action_cost_dol,
  dol.sep_cost,
  act.comp_action_category_type_desc
from "postgres"."staging"."stg_case_enforcement_conclusions" con
  inner join "postgres"."staging"."stg_case_enforcement_conclusion_sep" sep
    on con.case_number = sep.case_number
  inner join "postgres"."staging"."stg_case_enforcement_conclusion_pollutants" pol
    on con.case_number = pol.case_number
  inner join "postgres"."staging"."stg_case_enforcement_conclusion_dollars" dol
    on con.case_number = dol.case_number
  inner join "postgres"."staging"."stg_case_enforcement_conclusion_complying_actions" act
    on con.case_number = act.case_number
  );
  