SELECT case_number,
       state_local_penalty_amt,
       cost_recovery_amt,
       fed_penalty,
       compliance_action_cost,
       sep_cost
  FROM {{source('source', 'case_enforcement_conclusion_dollars')}}
