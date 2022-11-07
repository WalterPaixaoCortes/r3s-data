{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

select
  c.case_number,
  c.state_code,
  c.region_code,
  c.case_name,
  c.activity_type_code,
  c.activity_status_desc,
  c.activity_status_date::timestamp,
  c.enf_outcome_desc,
  c.total_penalty_assessed_amt,
  c.total_cost_recovery_amt,
  c.total_comp_action_amt,
  c.hq_division,
  c.voluntary_self_disclosure_flag,
  c.multimedia_flag,
  et.enf_type_desc,
  v.violation_type_code,
  v.violation_type_desc,
  crs.relief_desc,
  pen.fed_penalty,
  pen.st_lcl_penalty,
  pen.total_sep,
  pen.compliance_action_cost,
  pen.federal_cost_recovery_amt,
  pen.state_local_cost_recovery_amt,
  lsc.statute_code,
  def.defendant_name,
  pol.pollutant_desc,
  prg.program_desc,
  rlt.activity_status_date::timestamp as rlt_activity_status_date,
  rlt.activity_type_code as rlt_activity_type_code,
  fac.registry_id,
  fac.city,
  fac.state_code as fac_state_code,
  fac.zip,
  fac.primary_sic_code,
  fac.primary_naics_code,
  fac.fac_name
from {{ref('stg_case_enforcements')}} c
  inner join {{ref('stg_case_enforcement_type')}} et
    on c.case_number = et.case_number
  inner join {{ref('stg_case_violations')}} v 
    on c.case_number = v.case_number
  inner join {{ref('stg_case_relief_sought')}} crs
    on c.case_number = crs.case_number
  inner join {{ref('stg_case_penalties')}} pen
    on c.case_number = pen.case_number
  inner join {{ref('stg_case_law_sections')}} lsc
    on c.case_number = lsc.case_number
  inner join {{ref('stg_case_defendants')}} def
    on c.case_number = def.case_number
  inner join {{ref('stg_case_pollutants')}} pol
    on c.case_number = pol.case_number
  inner join {{ref('stg_case_programs')}} prg
    on c.case_number = prg.case_number
  inner join {{ref('stg_case_related_activities')}} rlt
    on c.case_number = rlt.case_number    
  inner join {{ref('stg_case_facilities')}} fac
    on c.case_number = fac.case_number        