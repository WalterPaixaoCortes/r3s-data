
  
    create  table staging."stg_npdes_perm_feature_coords"
      as
        SELECT external_permit_nmbr as npdes_id,
       perm_feature_nmbr,
       perm_feature_id
  FROM source."npdes_perm_feature_coords"

  