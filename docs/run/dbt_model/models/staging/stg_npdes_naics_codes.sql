create  table staging."stg_npdes_naics_codes"
      as
        select  trim(naics_code) as naics_code, 
        trim(naics_desc) as naics_desc, 
        trim(primary_indicator_flag) as primary_indicator_flag,
        datetime() as load_date
  from source."npdes_naics"
