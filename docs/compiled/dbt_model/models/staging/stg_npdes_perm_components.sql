SELECT external_permit_nmbr as npdes_id,
       initcap(coalesce(component_type_desc, 'Not Informed')) as component_type_desc
  FROM "postgres"."source"."npdes_perm_components"