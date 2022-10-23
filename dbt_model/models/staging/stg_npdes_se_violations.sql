SELECT npdes_id,
       npdes_violation_id,
       violation_type_code,
       violation_desc,
       {{format_date('single_event_violation_date')}} as single_event_violation_date,
       single_event_agency_type_code,
       rnc_detection_desc,
       {{format_date('rnc_resolution_date')}} as rnc_resolution_date
  FROM {{source('source','npdes_se_violations')}}

