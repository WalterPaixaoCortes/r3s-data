select  sic_code, 
        sic_desc, 
        primary_indicator_flag,
        {{current_timestamp()}} as load_date
  from {{source('source','npdes_sics')}}