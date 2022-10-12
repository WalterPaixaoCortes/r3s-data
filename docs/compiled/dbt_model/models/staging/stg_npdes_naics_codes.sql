select  trim(naics_code) as naics_code, 
        trim(naics_desc) as naics_desc, 
        trim(primary_indicator_flag) as primary_indicator_flag,
        now() as load_date
  from "postgres"."source"."npdes_naics"