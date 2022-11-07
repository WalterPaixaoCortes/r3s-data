select 
    cas.registry_id, 
    cas.fac_name,
    cas.city,
    cas.fac_state_code,
    cas.case_name,
    cas.defendant_name,
    cas.primary_naics_code,
    con.primary_law,
    cas.enf_outcome_desc,
    cas.activity_status_date::timestamp,
    string_agg(cas.statute_code, ';') as statute_code,
    string_agg(cas.pollutant_desc, ';') as pollutant_desc,
    sum(con.average_annual_value) as average_annual_value,
    sum(cas.total_penalty_assessed_amt) as total_penalty_assessed_amt,
    sum(cas.total_cost_recovery_amt) as total_cost_recovery_amt,
    sum(cas.compliance_action_cost) as compliance_action_cost,
    sum(con.sep_cost) as sep_cost
  from "postgres"."main"."fact_cases" cas 
    inner join "postgres"."main"."fact_case_conclusions" con
    on cas.case_number = con.case_number
 group by cas.registry_id, 
    cas.fac_name,
    cas.city,
    cas.fac_state_code,
    cas.case_name,
    cas.defendant_name,
    cas.primary_naics_code,
    con.primary_law,
    cas.enf_outcome_desc,
    cas.activity_status_date