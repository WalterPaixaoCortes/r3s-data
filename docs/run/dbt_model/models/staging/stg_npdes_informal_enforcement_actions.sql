

  create  table "postgres"."staging"."stg_npdes_informal_enforcement_actions__dbt_tmp"
  as (
    select 'INFORMAL' as enf_type,
       trim(registry_id) as fac_id,
       trim(npdes_id) as npdes_id,
       trim(agency) as enf_agency,
       trim(activity_type_code) as activity_type_code,
       trim(enf_type_code) as enf_type_code,
       trim(enf_type_desc) as enf_type_desc,
       case when coalesce(achieved_date,'') = '' then null
       else substr(achieved_date,7) || '-' || substr(achieved_date,1,2) || '-' || substr(achieved_date,4,2) || ' 00:00:00'
  end as enf_achieved_date,
       trim(enf_identifier) as enf_identifier,
       trim(activity_id) as activity_id,
       trim(official_flg) as official_flg,
       now() as load_date
  from "postgres"."source"."npdes_informal_enforcement_actions"
  );