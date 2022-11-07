

SELECT activity_id,

       external_permit_nmbr as npdes_id,
       perm_feature_nmbr,
       perm_feature_type_code,
       limit_set_status_flag,
       limit_id,
       case when coalesce(limit_begin_date,'') = '' then null
       else substr(limit_begin_date,7) || '-' || substr(limit_begin_date,1,2) || '-' || substr(limit_begin_date,4,2) || ' 00:00:00'
  end as limit_begin_date,
       case when coalesce(limit_end_date,'') = '' then null
       else substr(limit_end_date,7) || '-' || substr(limit_end_date,1,2) || '-' || substr(limit_end_date,4,2) || ' 00:00:00'
  end as limit_end_date,
       nmbr_of_report,
       parameter_desc,
       monitoring_location_code,
       limit_value_id,
       limit_value_type_code,
       limit_value_nmbr,
       limit_unit_desc,
       standard_unit_desc,
       limit_value_standard_units,
       statistical_base_code,
       statistical_base_type_code,
       limit_value_qualifier_code,
       stay_value_nmbr,
       limit_type_code
  FROM "postgres"."source"."npdes_limits"