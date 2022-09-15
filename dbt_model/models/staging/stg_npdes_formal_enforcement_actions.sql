select 'FORMAL' as enf_type,
       trim(npdes_id) as npdes_id,
       trim(agency) as enf_agency,
       trim(activity_type_code) as activity_type_code,
       trim(enf_type_code) as enf_type_code,
       trim(enf_type_desc) as enf_type_desc,
       {{format_date('settlement_entered_date')}} as enf_achieved_date,
       trim(enf_identifier) as enf_identifier,
       trim(activity_id) as activity_id,
       cast(fed_penalty_assessed_amt as real) as fed_penalty_assessed_amt,
       cast(state_local_penalty_amt as real) as state_local_penalty_amt,
       {{current_timestamp()}} as load_date
  from {{source('source', 'npdes_formal_enforcement_actions')}}
