SELECT npdes_violation_id,
       violation_desc,
       activity_id,
       activity_type_code
  FROM {{source('source','npdes_violation_enforcements')}}
  
