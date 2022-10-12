

select
  case_number,
  enf_conclusion_action_code,
  primary_law,
  region_code,
  activity_type_code,
  fed_penalty_assessed_amt,
  state_local_penalty_amt,
  sep_amt,
  compliance_action_cost,
  cost_recovery_awarded_amt
from "postgres"."source"."case_enforcement_conclusions"