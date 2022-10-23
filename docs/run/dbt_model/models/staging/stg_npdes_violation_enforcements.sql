
  
    create  table staging."stg_npdes_violation_enforcements"
      as
        SELECT npdes_violation_id,
       violation_desc,
       activity_id,
       activity_type_code
  FROM source."npdes_violation_enforcements"

  