

select  distinct trim(naics_code) as naics_code, 
                 trim(naics_desc) as naics_desc
  from "postgres"."source"."npdes_naics"