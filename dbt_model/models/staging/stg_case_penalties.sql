select
  case_number,
  fed_penalty,
  st_lcl_penalty,
  total_sep,
  compliance_action_cost,
  federal_cost_recovery_amt,
  state_local_cost_recovery_amt
from {{source('source', 'case_penalties')}}  