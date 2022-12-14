
{{ config(materialized='view') }}

SELECT npdes_id,
       activity_id,
       npdes_violation_id,
       perm_feature_nmbr,
       monitoring_location_code,
       dmr_form_value_id,
       limit_value_standard_units,
       violation_type_code,
       violation_type_desc,
       violation_desc,
       parameter_desc,
       standard_unit_desc,
       {{format_date('monitoring_period_end_date')}} as monitoring_period_end_date,
       nmbr_of_report,
       limit_id,
       value_type_code,
       rnc_detection_desc,
       {{format_date('rnc_detection_date')}} as rnc_detection_date,
       {{format_date('rnc_resolution_date')}} as rnc_resolution_date,
       statistical_base_code
  FROM {{source('source','npdes_eff_violations')}}

