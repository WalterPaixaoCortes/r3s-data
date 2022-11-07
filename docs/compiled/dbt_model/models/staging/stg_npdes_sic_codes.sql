select  sic_code, 
        sic_desc, 
        primary_indicator_flag,
        now() as load_date
  from "postgres"."source"."npdes_sics"