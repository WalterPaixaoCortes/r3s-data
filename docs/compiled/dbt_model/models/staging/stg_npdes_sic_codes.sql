select  sic_code, 
        sic_desc, 
        primary_indicator_flag,
        datetime() as load_date
  from source."npdes_sics"