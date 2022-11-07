
  
    

  create  table "postgres"."staging"."stg_icis_facilities__dbt_tmp"
  as (
    SELECT distinct icis_facility_interest_id as icis_fac_id,
       npdes_id,
       trim(facility_uin) as fac_id,
       coalesce(trim(facility_type_code),'Not Informed') as fac_type_code,
       trim(facility_name) as fac_name,
       trim(city) as fac_city,
       trim(state_code) as fac_state,
       trim(zip) as fac_zipcode,
       trim(impaired_waters) as impaired_waters
  FROM "postgres"."source"."icis_facilities"
  );
  