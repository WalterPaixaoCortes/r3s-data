

select
  c.case_number,
  c.enf_conclusion_action_code,
  c.primary_law,
  a.description as primary_law_desc,
  coalesce('Region ' || trim(c.region_code), 'Not Informed') as region_code,
  c.activity_type_code,
  cast(coalesce(c.fed_penalty_assessed_amt,'0') as float) as fed_penalty_assessed_amt,
  cast(coalesce(c.state_local_penalty_amt,'0') as float) as state_local_penalty_amt,
  cast(coalesce(c.sep_amt,'0') as float) as sep_amt,
  cast(coalesce(c.compliance_action_cost,'0') as float) as compliance_action_cost,
  cast(coalesce(c.cost_recovery_awarded_amt,'0') as float) as cost_recovery_awarded_amt
from "postgres"."source"."case_enforcement_conclusions" c
  left join "postgres"."seed_data"."acronyms" a
    on c.primary_law = a.acronym