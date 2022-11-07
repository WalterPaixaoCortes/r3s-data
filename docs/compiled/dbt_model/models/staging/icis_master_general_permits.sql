SELECT distinct external_permit_nmbr as npdes_id,
       facility_type_indicator,
       permit_type_code,
       major_minor_status_flag,
       permit_status_code,
       cast(coalesce(total_design_flow_nmbr,'0') as float) as total_design_flow_nmbr,
       cast(coalesce(actual_average_flow_nmbr,'0') as float) as actual_average_flow_nmbr,
       initcap(coalesce(state_water_body_name, 'Not Informed')) as state_water_body_name,
       initcap(coalesce(permit_name, 'Not Informed')) as permit_name,
       agency_type_code,
       case when coalesce(issue_date,'') = '' then null
       else substr(issue_date,7) || '-' || substr(issue_date,1,2) || '-' || substr(issue_date,4,2) || ' 00:00:00'
  end as issue_date,
       case when coalesce(expiration_date,'') = '' then null
       else substr(expiration_date,7) || '-' || substr(expiration_date,1,2) || '-' || substr(expiration_date,4,2) || ' 00:00:00'
  end as expiration_date,
       permit_comp_status_flag,
       rnc_tracking_flag,
       tmdl_interface_flag,
       pretreatment_indicator_code
  FROM "postgres"."source"."icis_master_general_permits"