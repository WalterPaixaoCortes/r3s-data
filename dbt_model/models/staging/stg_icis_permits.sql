SELECT distinct external_permit_nmbr as npdes_id,
       facility_type_indicator,
       permit_type_code,
       major_minor_status_flag,
       permit_status_code,
       cast(coalesce(total_design_flow_nmbr,'0') as float) as total_design_flow_nmbr,
       cast(coalesce(actual_average_flow_nmbr,'0') as float) as actual_average_flow_nmbr,
       {{capitalize('state_water_body_name')}} as state_water_body_name,
       {{capitalize('permit_name')}} as permit_name,
       agency_type_code,
       {{ format_date('issue_date')}} as issue_date,
       {{ format_date('expiration_date')}} as expiration_date,
       permit_comp_status_flag,
       dmr_non_receipt_flag,
       rnc_tracking_flag,
       tmdl_interface_flag,
       pretreatment_indicator_code
  FROM {{source('source','icis_permits')}}
