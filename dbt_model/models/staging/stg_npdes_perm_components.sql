SELECT external_permit_nmbr as npdes_id,
       {{capitalize('component_type_desc')}} as component_type_desc
  FROM {{source('source','npdes_perm_components')}}
  
