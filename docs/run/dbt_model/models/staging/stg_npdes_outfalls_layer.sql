
  
    

  create  table "postgres"."staging"."stg_npdes_outfalls_layer__dbt_tmp"
  as (
    SELECT external_permit_nmbr as npdes_id,
       city,
       state_code,
       zip,
       facility_type_desc,
       permit_type_code,
       permit_status_code,
       total_design_flow_nmbr,
       naics_codes,
       fac_federal_agency_name,
       cwp_current_snc_status,
       cwp_current_viol,
       cwp_date_last_inspection,
       date_last_formal_ea,
       dmr_pounds,
       lim_pollutant,
       permit_effective_date,
       permit_expiration_date,
       permit_termination_date,
       permit_components,
       major_minor_flag,
       state_water_body_name,
       sub_type_desc,
       latlong_type
  FROM "postgres"."source"."npdes_outfalls_layer"
  );
  