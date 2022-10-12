{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

SELECT case_number,
       cast(coalesce(state_local_penalty_amt,'0') as float) as state_local_penalty_amt,
       cast(coalesce(cost_recovery_amt,'0') as float) as cost_recovery_amt,
       cast(coalesce(fed_penalty,'0') as float) as fed_penalty,
       cast(coalesce(compliance_action_cost,'0') as float) as compliance_action_cost,
       cast(coalesce(sep_cost,'0') as float) as sep_cost
  FROM {{source('source', 'case_enforcement_conclusion_dollars')}}
