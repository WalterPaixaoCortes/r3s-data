select 
       prg_id,
       fac_id,
       activity_type_code,
       enf_type_code,
       enf_type_desc,
       enf_achieved_date,
       enf_statute
  from {{ref('stg_epa_informal_enforcement_actions')}}