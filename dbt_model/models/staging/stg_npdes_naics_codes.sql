select  trim(naics_code) as naics_code, 
        trim(naics_desc) as naics_desc, 
        trim(primary_indicator_flag) as primary_indicator_flag,
        {{current_timestamp()}} as load_date
  from {{source('source','npdes_naics')}}