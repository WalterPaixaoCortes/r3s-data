SELECT npdes_id,
       yearqtr,
       hlrnc,
       nume90q,
       numcvdt,
       numsvcd,
       numpsch
  FROM {{source('source','npdes_qncr_history')}}
