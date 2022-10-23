SELECT npdes_id,
       npdes_violation_id,
       violation_type_code,
       violation_desc,
       schedule_event_desc,
       rnc_detection_desc,
       {{format_date('rnc_detection_date')}} as rnc_detection_date,
       {{format_date('rnc_resolution_date')}} as rnc_resolution_date
  FROM {{source('source','npdes_ps_violations')}}