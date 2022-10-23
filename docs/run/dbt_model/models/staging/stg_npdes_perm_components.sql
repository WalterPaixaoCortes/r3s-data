
  
    create  table staging."stg_npdes_perm_components"
      as
        SELECT external_permit_nmbr as npdes_id,
       coalesce(component_type_desc, 'Not Informed') as component_type_desc
  FROM source."npdes_perm_components"

  