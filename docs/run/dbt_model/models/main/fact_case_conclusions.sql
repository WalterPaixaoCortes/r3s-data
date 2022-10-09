create  table main."fact_case_conclusions"
      as
        select
  con.*,
  sep.sep_category_desc,
  sep.sep_amt,
  pol.pollutant_name,
  pol.average_annual_value,
  pol.pollutant_unit_code,
  pol.media_code,
  dol.state_local_penalty_amt,
  dol.cost_recovery_amt,
  dol.fed_penalty,
  dol.compliance_action_cost,
  dol.sep_cost,
  act.comp_action_category_type_desc
from staging."stg_case_enforcement_conclusions" con
  inner join staging."stg_case_enforcement_conclusion_sep" sep
    on con.case_number = sep.case_number
  inner join staging."stg_case_enforcement_conclusion_pollutants" pol
    on con.case_number = pol.case_number
  inner join staging."stg_case_enforcement_conclusion_dollars" dol
    on con.case_number = dol.case_number
  inner join staging."stg_case_enforcement_conclusion_complying_actions" act
    on con.case_number = act.case_number
