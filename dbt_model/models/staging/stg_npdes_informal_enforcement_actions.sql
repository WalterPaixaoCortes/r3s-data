select 'INFORMAL' as enf_type,
       trim(registry_id) as fac_id,
       trim(npdes_id) as npdes_id,
       trim(agency) as enf_agency,
       trim(activity_type_code) as activity_type_code,
       trim(enf_type_code) as enf_type_code,
       trim(enf_type_desc) as enf_type_desc,
       {{format_date('achieved_date')}} as enf_achieved_date,
       trim(enf_identifier) as enf_identifier,
       trim(activity_id) as activity_id,
       trim(official_flg) as official_flg,
       {{current_timestamp()}} as load_date
  from {{source('source', 'npdes_informal_enforcement_actions')}}
