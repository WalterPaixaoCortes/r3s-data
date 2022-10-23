
  
    create  table staging."stg_npdes_qncr_history"
      as
        SELECT npdes_id,
       yearqtr,
       hlrnc,
       nume90q,
       numcvdt,
       numsvcd,
       numpsch
  FROM source."npdes_qncr_history"

  